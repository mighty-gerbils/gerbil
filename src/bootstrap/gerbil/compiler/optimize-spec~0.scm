(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1770327928)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp201686 (list gxc#::identity::t))
            (__tmp201685 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp201686
         '()
         __tmp201685
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args200483%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args200483%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp201687
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
        (__make-atomic-promise __tmp201687)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx200475%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self200478%_
                (let ((__obj201678
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj201678))
               (__tmp201688
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self200478%_ _%stx200475%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp201688
           gxc#current-compile-method
           _%self200478%_))))
    (define gxc#::extract-receiver::t
      (let ((__tmp201690 (list gxc#::false::t))
            (__tmp201689 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::extract-receiver::t
         '::extract-receiver
         __tmp201690
         '()
         __tmp201689
         '#f)))
    (define gxc#::extract-receiver?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::extract-receiver::t)))
    (define gxc#make-::extract-receiver
      (lambda _%$args200472%_
        (apply make-instance gxc#::extract-receiver::t _%$args200472%_)))
    (define gxc#::extract-receiver-bind-methods!
      (let ((__tmp201691
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
        (__make-atomic-promise __tmp201691)))
    (define gxc#apply-extract-receiver
      (lambda (_%stx200464%_)
        (force gxc#::extract-receiver-bind-methods!)
        (let* ((_%self200467%_
                (let ((__obj201680
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::extract-receiver::t))))
                  __obj201680))
               (__tmp201692
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self200467%_ _%stx200464%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp201692
           gxc#current-compile-method
           _%self200467%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp201694 (list gxc#::void::t))
            (__tmp201693 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp201694
         '(receiver methods slots)
         __tmp201693
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args200461%_
        (apply make-instance gxc#::collect-object-refs::t _%$args200461%_)))
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
      (let ((__tmp201695
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
        (__make-atomic-promise __tmp201695)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords200430%_
               _%receiver200425200431%_
               _%methods200426200432%_
               _%slots200427200433%_
               _%stx200434%_)
        (let* ((_%receiver200437%_
                (if (eq? _%receiver200425200431%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver200425200431%_))
               (_%methods200439%_
                (if (eq? _%methods200426200432%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods200426200432%_))
               (_%slots200441%_
                (if (eq? _%slots200427200433%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots200427200433%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self200443%_
                  (let ((__obj201682
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
                       __obj201682
                       _%receiver200437%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj201682
                       _%methods200439%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj201682
                       _%slots200441%_
                       '3
                       '#f
                       '#f))
                    __obj201682))
                 (__tmp201696
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self200443%_ _%stx200434%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp201696
             gxc#current-compile-method
             _%self200443%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords200450%_ . _%args200451%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords200450%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords200450%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords200450%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords200450%_
                  'slots:
                  absent-value))
               _%args200451%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args200428200457%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args200428200457%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp201698 (list gxc#::basic-xform-expression::t))
            (__tmp201697 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp201698
         '(receiver klass methods slots)
         __tmp201697
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args200421%_
        (apply make-instance gxc#::subst-object-refs::t _%$args200421%_)))
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
      (let ((__tmp201699
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
        (__make-atomic-promise __tmp201699)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords200387%_
               _%receiver200381200388%_
               _%klass200382200389%_
               _%methods200383200390%_
               _%slots200384200391%_
               _%stx200392%_)
        (let* ((_%receiver200395%_
                (if (eq? _%receiver200381200388%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver200381200388%_))
               (_%klass200397%_
                (if (eq? _%klass200382200389%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass200382200389%_))
               (_%methods200399%_
                (if (eq? _%methods200383200390%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods200383200390%_))
               (_%slots200401%_
                (if (eq? _%slots200384200391%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots200384200391%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self200403%_
                  (let ((__obj201684
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
                       __obj201684
                       _%receiver200395%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj201684
                       _%klass200397%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj201684
                       _%methods200399%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj201684
                       _%slots200401%_
                       '4
                       '#f
                       '#f))
                    __obj201684))
                 (__tmp201700
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self200403%_ _%stx200392%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp201700
             gxc#current-compile-method
             _%self200403%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords200410%_ . _%args200411%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords200410%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords200410%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords200410%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords200410%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords200410%_
                  'slots:
                  absent-value))
               _%args200411%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args200385200417%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args200385200417%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self197512%_ _%stx197513%_)
        (letrec ((_%generate-method-bind197515%_
                  (lambda (_%$klass200373%_
                           _%$method-table200374%_
                           _%id200375%_
                           _%$id200376%_)
                    (let ((_%$tmp200378%_
                           (let ((__tmp201701
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp201701))))
                      (cons (cons _%$id200376%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp200378%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table200374%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id200375%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp200378%_ '()))
                    (cons (cons '%#ref (cons _%$tmp200378%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id200375%_
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
                 (_%generate-slot-bind197516%_
                  (lambda (_%$klass200367%_ _%id200368%_ _%$id200369%_)
                    (let ((_%$tmp200371%_
                           (let ((__tmp201702
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp201702))))
                      (cons (cons _%$id200369%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp200371%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass200367%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id200368%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp200371%_ '()))
                        (cons (cons '%#ref (cons _%$tmp200371%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id200368%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl197517%_
                  (lambda (_%$klass200361%_
                           _%$method-table200362%_
                           _%methods-bind200363%_
                           _%slots-bind200364%_
                           _%specializer-impl200365%_)
                    (let ((__tmp201703
                           (cons '%#lambda
                                 (cons (cons _%$klass200361%_
                                             (cons _%$method-table200362%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__foldr1
                                                            cons
                                                            _%slots-bind200364%_
                                                            _%methods-bind200363%_))
                                                         (cons _%specializer-impl200365%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp201703 _%stx197513%_))))
                 (_%generate-specializer-def197518%_
                  (lambda (_%id200357%_
                           _%specializer-id200358%_
                           _%specializer-impl200359%_)
                    (let ((__tmp201704
                           (cons '%#begin
                                 (cons _%stx197513%_
                                       (cons (let ((__tmp201705
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id200358%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl200359%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp201705
                                                _%stx197513%_))
                                             (cons (let ((__tmp201706
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id200357%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id200358%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp201706
                                                      _%stx197513%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp201704 _%stx197513%_)))))
          (let* ((_%__stx200572200573%_ _%stx197513%_)
                 (_%g197521197541%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx200572200573%_)))))
            (let ((_%__kont200574200575%_
                   (lambda (_%g197523197585%_ _%g197524197586%_)
                     (let ((_%method-calls197605%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs197606%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty197607%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?197609%_
                                 (lambda ()
                                   (if (let ((__tmp201707
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%method-calls197605%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp201707))
                                       (let ((__tmp201708
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%slot-refs197606%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp201708))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%g197523197585%_))
                             (let* ((_%__stx200486200487%_ _%g197523197585%_)
                                    (_%g197993198011%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx200486200487%_)))))
                               (let ((_%__kont200488200489%_
                                      (lambda (_%g197995198047%_
                                               _%g197996198048%_
                                               _%g197997198049%_)
                                        (let ((_%receiver198069%_
                                               (let ((_%$e198066%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%g197995198047%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e198066%_
                                                     _%$e198066%_
                                                     _%g197997198049%_))))
                                          (for-each
                                           (lambda (_%g198070198072%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver198069%_
                                              _%method-calls197605%_
                                              _%slot-refs197606%_
                                              _%g198070198072%_))
                                           _%g197995198047%_)
                                          (if (_%no-specializer?197609%_)
                                              _%stx197513%_
                                              (let* ((_%specializer-id198081%_
                                                      (let* ((_%id198075%_
                                                              (let ((__tmp201709
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g197524197586%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp201709 '"::specialize")))
                     (_%specializer-id198078%_
                      (let ((__tmp201710
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx197513%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id198075%_ __tmp201710))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id198078%_))
                _%specializer-id198078%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass198083%_
                                                      (let ((__tmp201711
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp201711)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table198085%_
                                                      (let ((__tmp201712
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp201712)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods198087%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls197605%_)))
                                                     (_%$methods198091%_
                                                      (let ((__tmp201713
                                                             (lambda (_%id198089%_)
                                                               (let ((__tmp201714
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id198089%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp201714)))))
                (declare (not safe))
                (##map __tmp201713 _%methods198087%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_198100%_
                                                      (let ((__tmp201715
                                                             (lambda (_%g198092198095%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g198093198097%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls197605%_
                          _%g198092198095%_
                          _%g198093198097%_)))))
                (declare (not safe))
                (##for-each __tmp201715 _%methods198087%_ _%$methods198091%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind198110%_
                                                      (let ((__tmp201716
                                                             (lambda (_%g198102198105%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g198103198107%_)
                       (_%generate-method-bind197515%_
                        _%$klass198083%_
                        _%$method-table198085%_
                        _%g198102198105%_
                        _%g198103198107%_))))
                (declare (not safe))
                (##map __tmp201716 _%methods198087%_ _%$methods198091%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots198112%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs197606%_)))
                                                     (_%$slots198116%_
                                                      (let ((__tmp201717
                                                             (lambda (_%id198114%_)
                                                               (let ((__tmp201718
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id198114%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp201718)))))
                (declare (not safe))
                (##map __tmp201717 _%slots198112%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_198125%_
                                                      (let ((__tmp201719
                                                             (lambda (_%g198117198120%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g198118198122%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs197606%_
                          _%g198117198120%_
                          _%g198118198122%_)))))
                (declare (not safe))
                (##for-each __tmp201719 _%slots198112%_ _%$slots198116%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind198134%_
                                                      (let ((__tmp201720
                                                             (lambda (_%g198126198129%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g198127198131%_)
                       (_%generate-slot-bind197516%_
                        _%$klass198083%_
                        _%g198126198129%_
                        _%g198127198131%_))))
                (declare (not safe))
                (##map __tmp201720 _%slots198112%_ _%$slots198116%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body198140%_
                                                      (map (lambda (_%g198135198137%_)
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%receiver198069%_
                                                              _%$klass198083%_
                                                              _%method-calls197605%_
                                                              _%slot-refs197606%_
                                                              _%g198135198137%_))
                                                           _%g197995198047%_))
                                                     (_%specializer-impl198142%_
                                                      (let ((__tmp201721
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%g197997198049%_ _%g197996198048%_)
                                 _%specializer-body198140%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp201721 _%stx197513%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl198144%_
                                                      (_%generate-specializer-impl197517%_
                                                       _%$klass198083%_
                                                       _%$method-table198085%_
                                                       _%methods-bind198110%_
                                                       _%slots-bind198134%_
                                                       _%specializer-impl198142%_)))
                                                (let ((__tmp201723
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g197524197586%_)))
                                                      (__tmp201722
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id198081%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp201723
                                                   '" => "
                                                   __tmp201722))
                                                (_%generate-specializer-def197518%_
                                                 _%g197524197586%_
                                                 _%specializer-id198081%_
                                                 _%specializer-impl198144%_))))))
                                     (_%__kont200490200491%_
                                      (lambda () _%stx197513%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx200486200487%_))
                                     (let ((_%e197998198023%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx200486200487%_))))
                                       (let ((_%tl198000198028%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e197998198023%_)))
                                             (_%hd197999198026%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e197998198023%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl198000198028%_))
                                             (let ((_%e198001198031%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl198000198028%_))))
                                               (let ((_%tl198003198036%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e198001198031%_)))
                                                     (_%hd198002198034%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e198001198031%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%hd198002198034%_))
                                                     (let ((_%e198004198039%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd198002198034%_))))
                                                       (let ((_%tl198006198044%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e198004198039%_)))
                     (_%hd198005198042%_
                      (let () (declare (not safe)) (##car _%e198004198039%_))))
                 (_%__kont200488200489%_
                  _%tl198003198036%_
                  _%tl198006198044%_
                  _%hd198005198042%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont200490200491%_))))
                                             (_%__kont200490200491%_))))
                                     (_%__kont200490200491%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%g197523197585%_))
                                 (let* ((_%g198151198170%_
                                         (lambda (_%g198152198167%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g198152198167%_))))
                                        (_%g198150198466%_
                                         (lambda (_%g198152198173%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g198152198173%_))
                                               (let ((_%e198154198175%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g198152198173%_))))
                                                 (let ((_%hd198155198178%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e198154198175%_)))
                                                       (_%tl198156198180%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e198154198175%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%tl198156198180%_))
                                                       (let ((_g201724_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%tl198156198180%_ '0))))
                 (begin
                   (let ((_g201725_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g201724_)
                                (##values-length _g201724_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g201725_ 2)))
                         (error "Context expects 2 values" _g201725_)))
                   (let ((_%target198157198183%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g201724_ 0)))
                         (_%tl198159198185%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g201724_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl198159198185%_))
                         (letrec ((_%loop198160198188%_
                                   (lambda (_%hd198158198191%_
                                            _%clause198164198193%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd198158198191%_))
                                         (let ((_%e198161198195%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd198158198191%_))))
                                           (let ((_%lp-hd198162198198%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e198161198195%_)))
                                                 (_%lp-tl198163198200%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e198161198195%_))))
                                             (_%loop198160198188%_
                                              _%lp-tl198163198200%_
                                              (cons _%lp-hd198162198198%_
                                                    _%clause198164198193%_))))
                                         (let ((_%clause198165198203%_
                                                (reverse _%clause198164198193%_)))
                                           ((lambda (_%g198153198205%_)
                                              (for-each
                                               (lambda (_%clause198219%_)
                                                 (let* ((_%__stx200512200513%_
                                                         _%clause198219%_)
                                                        (_%g198222198237%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx200512200513%_)))))
                                                   (let ((_%__kont200514200515%_
                                                          (lambda (_%g198224198265%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g198225198266%_
                           _%g198226198267%_)
                    (let ((_%receiver198286%_
                           (let ((_%$e198283%_
                                  (gxc#apply-extract-receiver
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f '%#begin))
                                         _%g198224198265%_))))
                             (if _%$e198283%_
                                 _%$e198283%_
                                 _%g198226198267%_))))
                      (for-each
                       (lambda (_%g198287198289%_)
                         (gxc#apply-collect-object-refs__%
                          '#f
                          _%receiver198286%_
                          _%method-calls197605%_
                          _%slot-refs197606%_
                          _%g198287198289%_))
                       _%g198224198265%_))))
                 (_%__kont200516200517%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx200512200513%_))
                                                         (let ((_%e198227198249%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx200512200513%_))))
                   (let ((_%tl198229198254%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e198227198249%_)))
                         (_%hd198228198252%_
                          (let ()
                            (declare (not safe))
                            (##car _%e198227198249%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd198228198252%_))
                         (let ((_%e198230198257%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd198228198252%_))))
                           (let ((_%tl198232198262%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e198230198257%_)))
                                 (_%hd198231198260%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e198230198257%_))))
                             (_%__kont200514200515%_
                              _%tl198229198254%_
                              _%tl198232198262%_
                              _%hd198231198260%_)))
                         (_%__kont200516200517%_))))
                 (_%__kont200516200517%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp201726
                                                      (lambda (_%g198294198297%_
                                                               _%g198295198299%_)
                                                        (cons _%g198294198297%_
                                                              _%g198295198299%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp201726
                                                  '()
                                                  _%g198153198205%_)))
                                              (if (_%no-specializer?197609%_)
                                                  _%stx197513%_
                                                  (let* ((_%specializer-id198308%_
                                                          (let* ((_%id198302%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp201727
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g197524197586%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp201727 '"::specialize")))
                         (_%specializer-id198305%_
                          (let ((__tmp201728
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx197513%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id198302%_
                             __tmp201728))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id198305%_))
                    _%specializer-id198305%_))
                 (_%$klass198310%_
                  (let ((__tmp201729
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp201729)))
                 (_%$method-table198312%_
                  (let ((__tmp201730
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp201730)))
                 (_%methods198314%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls197605%_)))
                 (_%$methods198318%_
                  (let ((__tmp201731
                         (lambda (_%id198316%_)
                           (let ((__tmp201732 (gensym _%id198316%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp201732)))))
                    (declare (not safe))
                    (##map __tmp201731 _%methods198314%_)))
                 (_%_198327%_
                  (let ((__tmp201733
                         (lambda (_%g198319198322%_ _%g198320198324%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%method-calls197605%_
                              _%g198319198322%_
                              _%g198320198324%_)))))
                    (declare (not safe))
                    (##for-each
                     __tmp201733
                     _%methods198314%_
                     _%$methods198318%_)))
                 (_%methods-bind198337%_
                  (let ((__tmp201734
                         (lambda (_%g198329198332%_ _%g198330198334%_)
                           (_%generate-method-bind197515%_
                            _%$klass198310%_
                            _%$method-table198312%_
                            _%g198329198332%_
                            _%g198330198334%_))))
                    (declare (not safe))
                    (##map __tmp201734 _%methods198314%_ _%$methods198318%_)))
                 (_%slots198339%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs197606%_)))
                 (_%$slots198343%_
                  (let ((__tmp201735
                         (lambda (_%id198341%_)
                           (let ((__tmp201736 (gensym _%id198341%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp201736)))))
                    (declare (not safe))
                    (##map __tmp201735 _%slots198339%_)))
                 (_%_198352%_
                  (let ((__tmp201737
                         (lambda (_%g198344198347%_ _%g198345198349%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%slot-refs197606%_
                              _%g198344198347%_
                              _%g198345198349%_)))))
                    (declare (not safe))
                    (##for-each __tmp201737 _%slots198339%_ _%$slots198343%_)))
                 (_%slots-bind198361%_
                  (let ((__tmp201738
                         (lambda (_%g198353198356%_ _%g198354198358%_)
                           (_%generate-slot-bind197516%_
                            _%$klass198310%_
                            _%g198353198356%_
                            _%g198354198358%_))))
                    (declare (not safe))
                    (##map __tmp201738 _%slots198339%_ _%$slots198343%_)))
                 (_%specializer-clauses198459%_
                  (map (lambda (_%clause198363%_)
                         (let* ((_%__stx200532200533%_ _%clause198363%_)
                                (_%g198366198381%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx200532200533%_)))))
                           (let ((_%__kont200534200535%_
                                  (lambda (_%g198368198409%_
                                           _%g198369198410%_
                                           _%g198370198411%_)
                                    (let* ((_%receiver198440%_
                                            (let ((_%$e198437%_
                                                   (gxc#apply-extract-receiver
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#begin))
                                                          _%g198368198409%_))))
                                              (if _%$e198437%_
                                                  _%$e198437%_
                                                  _%g198370198411%_)))
                                           (_%body198446%_
                                            (map (lambda (_%g198441198443%_)
                                                   (gxc#apply-subst-object-refs__%
                                                    '#f
                                                    _%receiver198440%_
                                                    _%$klass198310%_
                                                    _%method-calls197605%_
                                                    _%slot-refs197606%_
                                                    _%g198441198443%_))
                                                 _%g198368198409%_)))
                                      (cons (cons _%g198370198411%_
                                                  _%g198369198410%_)
                                            _%body198446%_))))
                                 (_%__kont200536200537%_
                                  (lambda () _%clause198363%_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx200532200533%_))
                                 (let ((_%e198371198393%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx200532200533%_))))
                                   (let ((_%tl198373198398%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e198371198393%_)))
                                         (_%hd198372198396%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e198371198393%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd198372198396%_))
                                         (let ((_%e198374198401%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd198372198396%_))))
                                           (let ((_%tl198376198406%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e198374198401%_)))
                                                 (_%hd198375198404%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e198374198401%_))))
                                             (_%__kont200534200535%_
                                              _%tl198373198398%_
                                              _%tl198376198406%_
                                              _%hd198375198404%_)))
                                         (_%__kont200536200537%_))))
                                 (_%__kont200536200537%_)))))
                       (let ((__tmp201739
                              (lambda (_%g198451198454%_ _%g198452198456%_)
                                (cons _%g198451198454%_ _%g198452198456%_))))
                         (declare (not safe))
                         (__foldr1 __tmp201739 '() _%g198153198205%_))))
                 (_%specializer-impl198461%_
                  (let ((__tmp201740
                         (cons '%#case-lambda _%specializer-clauses198459%_)))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp201740 _%stx197513%_)))
                 (_%specializer-impl198463%_
                  (_%generate-specializer-impl197517%_
                   _%$klass198310%_
                   _%$method-table198312%_
                   _%methods-bind198337%_
                   _%slots-bind198361%_
                   _%specializer-impl198461%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp201742
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%g197524197586%_)))
                                                          (__tmp201741
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id198308%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp201742
                                                       '" => "
                                                       __tmp201741))
                                                    (_%generate-specializer-def197518%_
                                                     _%g197524197586%_
                                                     _%specializer-id198308%_
                                                     _%specializer-impl198463%_))))
                                            _%clause198165198203%_))))))
                           (_%loop198160198188%_ _%target198157198183%_ '()))
                         (_%g198151198170%_ _%g198152198173%_)))))
               (_%g198151198170%_ _%g198152198173%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g198151198170%_
                                                _%g198152198173%_)))))
                                   (_%g198150198466%_ _%g197523197585%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr?
                                        _%g197523197585%_))
                                     (let* ((_%g198470198500%_
                                             (lambda (_%g198471198497%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g198471198497%_))))
                                            (_%g198469199127%_
                                             (lambda (_%g198471198503%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g198471198503%_))
                                                   (let ((_%e198475198505%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g198471198503%_))))
                                                     (let ((_%hd198476198508%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e198475198505%_)))
                                                           (_%tl198477198510%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e198475198505%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl198477198510%_))
                                                           (let ((_%e198478198513%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl198477198510%_))))
                     (let ((_%hd198479198516%_
                            (let ()
                              (declare (not safe))
                              (##car _%e198478198513%_)))
                           (_%tl198480198518%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e198478198513%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd198479198516%_))
                           (let ((_%e198481198521%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd198479198516%_))))
                             (let ((_%hd198482198524%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e198481198521%_)))
                                   (_%tl198483198526%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e198481198521%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd198482198524%_))
                                   (let ((_%e198484198529%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd198482198524%_))))
                                     (let ((_%hd198485198532%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e198484198529%_)))
                                           (_%tl198486198534%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e198484198529%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd198485198532%_))
                                           (let ((_%e198487198537%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd198485198532%_))))
                                             (let ((_%hd198488198540%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e198487198537%_)))
                                                   (_%tl198489198542%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e198487198537%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl198489198542%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl198486198534%_))
                                                       (let ((_%e198490198545%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl198486198534%_))))
                 (let ((_%hd198491198548%_
                        (let ()
                          (declare (not safe))
                          (##car _%e198490198545%_)))
                       (_%tl198492198550%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e198490198545%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl198492198550%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl198483198526%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl198480198518%_))
                               (let ((_%e198493198553%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl198480198518%_))))
                                 (let ((_%hd198494198556%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e198493198553%_)))
                                       (_%tl198495198558%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e198493198553%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl198495198558%_))
                                       ((lambda (_%g198472198561%_
                                                 _%g198473198562%_
                                                 _%g198474198563%_)
                                          (let* ((_%g198587198605%_
                                                  (lambda (_%g198588198602%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g198588198602%_))))
                                                 (_%g198586198661%_
                                                  (lambda (_%g198588198608%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g198588198608%_))
                                                        (let ((_%e198592198610%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g198588198608%_))))
                  (let ((_%hd198593198613%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198592198610%_)))
                        (_%tl198594198615%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198592198610%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl198594198615%_))
                        (let ((_%e198595198618%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl198594198615%_))))
                          (let ((_%hd198596198621%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198595198618%_)))
                                (_%tl198597198623%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198595198618%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd198596198621%_))
                                (let ((_%e198598198626%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd198596198621%_))))
                                  (let ((_%hd198599198629%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198598198626%_)))
                                        (_%tl198600198631%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198598198626%_))))
                                    ((lambda (_%g198589198634%_
                                              _%g198590198635%_
                                              _%g198591198636%_)
                                       (let ((_%receiver198655%_
                                              (let ((_%$e198652%_
                                                     (gxc#apply-extract-receiver
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))
                                                            _%g198589198634%_))))
                                                (if _%$e198652%_
                                                    _%$e198652%_
                                                    _%g198591198636%_))))
                                         (for-each
                                          (lambda (_%g198656198658%_)
                                            (gxc#apply-collect-object-refs__%
                                             '#f
                                             _%receiver198655%_
                                             _%method-calls197605%_
                                             _%slot-refs197606%_
                                             _%g198656198658%_))
                                          _%g198589198634%_)))
                                     _%tl198597198623%_
                                     _%tl198600198631%_
                                     _%hd198599198629%_)))
                                (_%g198587198605%_ _%g198588198608%_))))
                        (_%g198587198605%_ _%g198588198608%_))))
                (_%g198587198605%_ _%g198588198608%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g198586198661%_
                                             _%g198473198562%_))
                                          (let* ((_%g198664198683%_
                                                  (lambda (_%g198665198680%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g198665198680%_))))
                                                 (_%g198663198805%_
                                                  (lambda (_%g198665198686%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g198665198686%_))
                                                        (let ((_%e198667198688%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g198665198686%_))))
                  (let ((_%hd198668198691%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198667198688%_)))
                        (_%tl198669198693%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198667198688%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl198669198693%_))
                        (let ((_g201743_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%tl198669198693%_
                                  '0))))
                          (begin
                            (let ((_g201744_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g201743_)
                                         (##values-length _g201743_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g201744_ 2)))
                                  (error "Context expects 2 values"
                                         _g201744_)))
                            (let ((_%target198670198696%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g201743_ 0)))
                                  (_%tl198672198698%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g201743_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl198672198698%_))
                                  (letrec ((_%loop198673198701%_
                                            (lambda (_%hd198671198704%_
                                                     _%clause198677198706%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd198671198704%_))
                                                  (let ((_%e198674198708%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd198671198704%_))))
                                                    (let ((_%lp-hd198675198711%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e198674198708%_)))
                                                          (_%lp-tl198676198713%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e198674198708%_))))
                                                      (_%loop198673198701%_
                                                       _%lp-tl198676198713%_
                                                       (cons _%lp-hd198675198711%_
                                                             _%clause198677198706%_))))
                                                  (let ((_%clause198678198716%_
                                                         (reverse _%clause198677198706%_)))
                                                    ((lambda (_%g198666198718%_)
                                                       (for-each
                                                        (lambda (_%clause198731%_)
                                                          (let* ((_%g198733198748%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g198734198745%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g198734198745%_))))
                         (_%g198732198795%_
                          (lambda (_%g198734198751%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g198734198751%_))
                                (let ((_%e198738198753%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g198734198751%_))))
                                  (let ((_%hd198739198756%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198738198753%_)))
                                        (_%tl198740198758%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198738198753%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd198739198756%_))
                                        (let ((_%e198741198761%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd198739198756%_))))
                                          (let ((_%hd198742198764%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e198741198761%_)))
                                                (_%tl198743198766%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e198741198761%_))))
                                            ((lambda (_%g198735198769%_
                                                      _%g198736198770%_
                                                      _%g198737198771%_)
                                               (let ((_%receiver198789%_
                                                      (let ((_%$e198786%_
                                                             (gxc#apply-extract-receiver
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '%#begin))
                            _%g198735198769%_))))
                (if _%$e198786%_ _%$e198786%_ _%g198737198771%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (for-each
                                                  (lambda (_%g198790198792%_)
                                                    (gxc#apply-collect-object-refs__%
                                                     '#f
                                                     _%receiver198789%_
                                                     _%method-calls197605%_
                                                     _%slot-refs197606%_
                                                     _%g198790198792%_))
                                                  _%g198735198769%_)))
                                             _%tl198740198758%_
                                             _%tl198743198766%_
                                             _%hd198742198764%_)))
                                        (_%g198733198748%_
                                         _%g198734198751%_))))
                                (_%g198733198748%_ _%g198734198751%_)))))
                    (_%g198732198795%_ _%clause198731%_)))
                (let ((__tmp201745
                       (lambda (_%g198797198800%_ _%g198798198802%_)
                         (cons _%g198797198800%_ _%g198798198802%_))))
                  (declare (not safe))
                  (__foldr1 __tmp201745 '() _%g198666198718%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%clause198678198716%_))))))
                                    (_%loop198673198701%_
                                     _%target198670198696%_
                                     '()))
                                  (_%g198664198683%_ _%g198665198686%_)))))
                        (_%g198664198683%_ _%g198665198686%_))))
                (_%g198664198683%_ _%g198665198686%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g198663198805%_
                                             _%g198472198561%_))
                                          (if (_%no-specializer?197609%_)
                                              _%stx197513%_
                                              (let* ((_%specializer-id198814%_
                                                      (let* ((_%id198808%_
                                                              (let ((__tmp201746
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g197524197586%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp201746 '"::specialize")))
                     (_%specializer-id198811%_
                      (let ((__tmp201747
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx197513%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id198808%_ __tmp201747))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id198811%_))
                _%specializer-id198811%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass198816%_
                                                      (let ((__tmp201748
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp201748)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table198818%_
                                                      (let ((__tmp201749
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp201749)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods198820%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls197605%_)))
                                                     (_%$methods198824%_
                                                      (let ((__tmp201750
                                                             (lambda (_%id198822%_)
                                                               (let ((__tmp201751
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id198822%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp201751)))))
                (declare (not safe))
                (##map __tmp201750 _%methods198820%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_198833%_
                                                      (let ((__tmp201752
                                                             (lambda (_%g198825198828%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g198826198830%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls197605%_
                          _%g198825198828%_
                          _%g198826198830%_)))))
                (declare (not safe))
                (##for-each __tmp201752 _%methods198820%_ _%$methods198824%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind198843%_
                                                      (let ((__tmp201753
                                                             (lambda (_%g198835198838%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g198836198840%_)
                       (_%generate-method-bind197515%_
                        _%$klass198816%_
                        _%$method-table198818%_
                        _%g198835198838%_
                        _%g198836198840%_))))
                (declare (not safe))
                (##map __tmp201753 _%methods198820%_ _%$methods198824%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots198845%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs197606%_)))
                                                     (_%$slots198849%_
                                                      (let ((__tmp201754
                                                             (lambda (_%id198847%_)
                                                               (let ((__tmp201755
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id198847%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp201755)))))
                (declare (not safe))
                (##map __tmp201754 _%slots198845%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_198858%_
                                                      (let ((__tmp201756
                                                             (lambda (_%g198850198853%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g198851198855%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs197606%_
                          _%g198850198853%_
                          _%g198851198855%_)))))
                (declare (not safe))
                (##for-each __tmp201756 _%slots198845%_ _%$slots198849%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind198867%_
                                                      (let ((__tmp201757
                                                             (lambda (_%g198859198862%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g198860198864%_)
                       (_%generate-slot-bind197516%_
                        _%$klass198816%_
                        _%g198859198862%_
                        _%g198860198864%_))))
                (declare (not safe))
                (##map __tmp201757 _%slots198845%_ _%$slots198849%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-lambda-expr198959%_
                                                      (let* ((_%g198869198887%_
                                                              (lambda (_%g198870198884%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g198870198884%_))))
                     (_%g198868198956%_
                      (lambda (_%g198870198890%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g198870198890%_))
                            (let ((_%e198874198892%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g198870198890%_))))
                              (let ((_%hd198875198895%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e198874198892%_)))
                                    (_%tl198876198897%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e198874198892%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl198876198897%_))
                                    (let ((_%e198877198900%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl198876198897%_))))
                                      (let ((_%hd198878198903%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e198877198900%_)))
                                            (_%tl198879198905%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e198877198900%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd198878198903%_))
                                            (let ((_%e198880198908%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd198878198903%_))))
                                              (let ((_%hd198881198911%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e198880198908%_)))
                                                    (_%tl198882198913%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e198880198908%_))))
                                                ((lambda (_%g198871198916%_
                                                          _%g198872198917%_
                                                          _%g198873198918%_)
                                                   (let* ((_%receiver198947%_
                                                           (let ((_%$e198944%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#apply-extract-receiver
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#begin))
                                 _%g198871198916%_))))
                     (if _%$e198944%_ _%$e198944%_ _%g198873198918%_)))
                  (_%body198953%_
                   (map (lambda (_%g198948198950%_)
                          (gxc#apply-subst-object-refs__%
                           '#f
                           _%receiver198947%_
                           _%$klass198816%_
                           _%method-calls197605%_
                           _%slot-refs197606%_
                           _%g198948198950%_))
                        _%g198871198916%_))
                  (__tmp201758
                   (cons '%#lambda
                         (cons (cons _%g198873198918%_ _%g198872198917%_)
                               _%body198953%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp201758
                                                      _%g198473198562%_)))
                                                 _%tl198879198905%_
                                                 _%tl198882198913%_
                                                 _%hd198881198911%_)))
                                            (_%g198869198887%_
                                             _%g198870198890%_))))
                                    (_%g198869198887%_ _%g198870198890%_))))
                            (_%g198869198887%_ _%g198870198890%_)))))
                (_%g198868198956%_ _%g198473198562%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-case-lambda-expr199120%_
                                                      (let* ((_%g198961198980%_
                                                              (lambda (_%g198962198977%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g198962198977%_))))
                     (_%g198960199117%_
                      (lambda (_%g198962198983%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g198962198983%_))
                            (let ((_%e198964198985%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g198962198983%_))))
                              (let ((_%hd198965198988%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e198964198985%_)))
                                    (_%tl198966198990%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e198964198985%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl198966198990%_))
                                    (let ((_g201759_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl198966198990%_
                                              '0))))
                                      (begin
                                        (let ((_g201760_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g201759_)
                                                     (##values-length
                                                      _g201759_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g201760_ 2)))
                                              (error "Context expects 2 values"
                                                     _g201760_)))
                                        (let ((_%target198967198993%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g201759_ 0)))
                                              (_%tl198969198995%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g201759_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198969198995%_))
                                              (letrec ((_%loop198970198998%_
                                                        (lambda (_%hd198968199001%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%clause198974199003%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd198968199001%_))
                      (let ((_%e198971199005%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd198968199001%_))))
                        (let ((_%lp-hd198972199008%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198971199005%_)))
                              (_%lp-tl198973199010%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198971199005%_))))
                          (_%loop198970198998%_
                           _%lp-tl198973199010%_
                           (cons _%lp-hd198972199008%_
                                 _%clause198974199003%_))))
                      (let ((_%clause198975199013%_
                             (reverse _%clause198974199003%_)))
                        ((lambda (_%g198963199015%_)
                           (let* ((_%clauses199115%_
                                   (map (lambda (_%clause199029%_)
                                          (let* ((_%__stx200552200553%_
                                                  _%clause199029%_)
                                                 (_%g199032199047%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx200552200553%_)))))
                                            (let ((_%__kont200554200555%_
                                                   (lambda (_%g199034199075%_
                                                            _%g199035199076%_
                                                            _%g199036199077%_)
                                                     (let* ((_%receiver199096%_
                                                             (let ((_%$e199093%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#apply-extract-receiver
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#begin))
                                   _%g199034199075%_))))
                       (if _%$e199093%_ _%$e199093%_ _%g199036199077%_)))
                    (_%body199102%_
                     (map (lambda (_%g199097199099%_)
                            (gxc#apply-subst-object-refs__%
                             '#f
                             _%receiver199096%_
                             _%$klass198816%_
                             _%method-calls197605%_
                             _%slot-refs197606%_
                             _%g199097199099%_))
                          _%g199034199075%_)))
               (cons (cons _%g199036199077%_ _%g199035199076%_)
                     _%body199102%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont200556200557%_
                                                   (lambda ()
                                                     _%clause199029%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx200552200553%_))
                                                  (let ((_%e199037199059%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%__stx200552200553%_))))
                                                    (let ((_%tl199039199064%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199037199059%_)))
                                                          (_%hd199038199062%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199037199059%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd199038199062%_))
                                                          (let ((_%e199040199067%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd199038199062%_))))
                    (let ((_%tl199042199072%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199040199067%_)))
                          (_%hd199041199070%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199040199067%_))))
                      (_%__kont200554200555%_
                       _%tl199039199064%_
                       _%tl199042199072%_
                       _%hd199041199070%_)))
                  (_%__kont200556200557%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont200556200557%_)))))
                                        (let ((__tmp201761
                                               (lambda (_%g199107199110%_
                                                        _%g199108199112%_)
                                                 (cons _%g199107199110%_
                                                       _%g199108199112%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp201761
                                           '()
                                           _%g198963199015%_))))
                                  (__tmp201762
                                   (cons '%#case-lambda _%clauses199115%_)))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp201762
                              _%g198472198561%_)))
                         _%clause198975199013%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop198970198998%_
                                                 _%target198967198993%_
                                                 '()))
                                              (_%g198961198980%_
                                               _%g198962198983%_)))))
                                    (_%g198961198980%_ _%g198962198983%_))))
                            (_%g198961198980%_ _%g198962198983%_)))))
                (_%g198960199117%_ _%g198472198561%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl199122%_
                                                      (let ((__tmp201763
                                                             (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons (cons _%g198474198563%_ '())
                                             (cons _%specializer-lambda-expr198959%_
                                                   '()))
                                       '())
                                 (cons _%specializer-case-lambda-expr199120%_
                                       '())))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp201763 _%stx197513%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl199124%_
                                                      (_%generate-specializer-impl197517%_
                                                       _%$klass198816%_
                                                       _%$method-table198818%_
                                                       _%methods-bind198843%_
                                                       _%slots-bind198867%_
                                                       _%specializer-impl199122%_)))
                                                (let ((__tmp201765
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g197524197586%_)))
                                                      (__tmp201764
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id198814%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp201765
                                                   '" => "
                                                   __tmp201764))
                                                (_%generate-specializer-def197518%_
                                                 _%g197524197586%_
                                                 _%specializer-id198814%_
                                                 _%specializer-impl199124%_))))
                                        _%hd198494198556%_
                                        _%hd198491198548%_
                                        _%hd198488198540%_)
                                       (_%g198470198500%_ _%g198471198503%_))))
                               (_%g198470198500%_ _%g198471198503%_))
                           (_%g198470198500%_ _%g198471198503%_))
                       (_%g198470198500%_ _%g198471198503%_))))
               (_%g198470198500%_ _%g198471198503%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g198470198500%_
                                                    _%g198471198503%_))))
                                           (_%g198470198500%_
                                            _%g198471198503%_))))
                                   (_%g198470198500%_ _%g198471198503%_))))
                           (_%g198470198500%_ _%g198471198503%_))))
                   (_%g198470198500%_ _%g198471198503%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g198470198500%_
                                                    _%g198471198503%_)))))
                                       (_%g198469199127%_ _%g197523197585%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr?
                                            _%g197523197585%_))
                                         (let* ((_%g199131199184%_
                                                 (lambda (_%g199132199181%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g199132199181%_))))
                                                (_%g199130200349%_
                                                 (lambda (_%g199132199187%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g199132199187%_))
                                                       (let ((_%e199138199189%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g199132199187%_))))
                 (let ((_%hd199139199192%_
                        (let ()
                          (declare (not safe))
                          (##car _%e199138199189%_)))
                       (_%tl199140199194%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e199138199189%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%hd199139199192%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%hd199139199192%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl199140199194%_))
                               (let ((_%e199141199197%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl199140199194%_))))
                                 (let ((_%hd199142199200%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e199141199197%_)))
                                       (_%tl199143199202%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e199141199197%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd199142199200%_))
                                       (let ((_%e199144199205%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd199142199200%_))))
                                         (let ((_%hd199145199208%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e199144199205%_)))
                                               (_%tl199146199210%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e199144199205%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd199145199208%_))
                                               (let ((_%e199147199213%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd199145199208%_))))
                                                 (let ((_%hd199148199216%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e199147199213%_)))
                                                       (_%tl199149199218%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e199147199213%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd199148199216%_))
                                                       (let ((_%e199150199221%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd199148199216%_))))
                 (let ((_%hd199151199224%_
                        (let ()
                          (declare (not safe))
                          (##car _%e199150199221%_)))
                       (_%tl199152199226%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e199150199221%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl199152199226%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl199149199218%_))
                           (let ((_%e199153199229%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl199149199218%_))))
                             (let ((_%hd199154199232%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e199153199229%_)))
                                   (_%tl199155199234%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e199153199229%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd199154199232%_))
                                   (let ((_%e199156199237%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd199154199232%_))))
                                     (let ((_%hd199157199240%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e199156199237%_)))
                                           (_%tl199158199242%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e199156199237%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd199157199240%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%hd199157199240%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl199158199242%_))
                                                   (let ((_%e199159199245%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl199158199242%_))))
                                                     (let ((_%hd199160199248%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e199159199245%_)))
                                                           (_%tl199161199250%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e199159199245%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd199160199248%_))
                                                           (let ((_%e199162199253%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%hd199160199248%_))))
                     (let ((_%hd199163199256%_
                            (let ()
                              (declare (not safe))
                              (##car _%e199162199253%_)))
                           (_%tl199164199258%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e199162199253%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd199163199256%_))
                           (let ((_%e199165199261%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd199163199256%_))))
                             (let ((_%hd199166199264%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e199165199261%_)))
                                   (_%tl199167199266%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e199165199261%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd199166199264%_))
                                   (let ((_%e199168199269%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd199166199264%_))))
                                     (let ((_%hd199169199272%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e199168199269%_)))
                                           (_%tl199170199274%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e199168199269%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl199170199274%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl199167199266%_))
                                               (let ((_%e199171199277%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl199167199266%_))))
                                                 (let ((_%hd199172199280%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e199171199277%_)))
                                                       (_%tl199173199282%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e199171199277%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl199173199282%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl199164199258%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl199161199250%_))
                       (let ((_%e199174199285%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl199161199250%_))))
                         (let ((_%hd199175199288%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e199174199285%_)))
                               (_%tl199176199290%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e199174199285%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl199176199290%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl199155199234%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl199146199210%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl199143199202%_))
                                           (let ((_%e199177199293%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl199143199202%_))))
                                             (let ((_%hd199178199296%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e199177199293%_)))
                                                   (_%tl199179199298%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e199177199293%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl199179199298%_))
                                                   ((lambda (_%g199133199301%_
                                                             _%g199134199302%_
                                                             _%g199135199303%_
                                                             _%g199136199304%_
                                                             _%g199137199305%_)
                                                      (let* ((_%g199345199407%_
                                                              (lambda (_%g199346199404%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g199346199404%_))))
                     (_%g199344200346%_
                      (lambda (_%g199346199410%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g199346199410%_))
                            (let ((_%e199352199412%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g199346199410%_))))
                              (let ((_%hd199353199415%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e199352199412%_)))
                                    (_%tl199354199417%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e199352199412%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd199353199415%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd199353199415%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl199354199417%_))
                                            (let ((_%e199355199420%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl199354199417%_))))
                                              (let ((_%hd199356199423%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e199355199420%_)))
                                                    (_%tl199357199425%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e199355199420%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl199357199425%_))
                                                    (let ((_%e199358199428%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl199357199425%_))))
                                                      (let ((_%hd199359199431%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e199358199428%_)))
                    (_%tl199360199433%_
                     (let () (declare (not safe)) (##cdr _%e199358199428%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd199359199431%_))
                    (let ((_%e199361199436%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd199359199431%_))))
                      (let ((_%hd199362199439%_
                             (let ()
                               (declare (not safe))
                               (##car _%e199361199436%_)))
                            (_%tl199363199441%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e199361199436%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd199362199439%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _%hd199362199439%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl199363199441%_))
                                    (let ((_%e199364199444%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl199363199441%_))))
                                      (let ((_%hd199365199447%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e199364199444%_)))
                                            (_%tl199366199449%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e199364199444%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd199365199447%_))
                                            (let ((_%e199367199452%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd199365199447%_))))
                                              (let ((_%hd199368199455%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e199367199452%_)))
                                                    (_%tl199369199457%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e199367199452%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd199368199455%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd199368199455%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl199369199457%_))
                                                            (let ((_%e199370199460%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl199369199457%_))))
                      (let ((_%hd199371199463%_
                             (let ()
                               (declare (not safe))
                               (##car _%e199370199460%_)))
                            (_%tl199372199465%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e199370199460%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl199372199465%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl199366199449%_))
                                (let ((_%e199373199468%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl199366199449%_))))
                                  (let ((_%hd199374199471%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199373199468%_)))
                                        (_%tl199375199473%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199373199468%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd199374199471%_))
                                        (let ((_%e199376199476%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd199374199471%_))))
                                          (let ((_%hd199377199479%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e199376199476%_)))
                                                (_%tl199378199481%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e199376199476%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd199377199479%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%hd199377199479%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl199378199481%_))
                                                        (let ((_%e199379199484%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl199378199481%_))))
                  (let ((_%hd199380199487%_
                         (let ()
                           (declare (not safe))
                           (##car _%e199379199484%_)))
                        (_%tl199381199489%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e199379199484%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl199381199489%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl199375199473%_))
                            (let ((_%e199382199492%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl199375199473%_))))
                              (let ((_%hd199383199495%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e199382199492%_)))
                                    (_%tl199384199497%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e199382199492%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd199383199495%_))
                                    (let ((_%e199385199500%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd199383199495%_))))
                                      (let ((_%hd199386199503%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e199385199500%_)))
                                            (_%tl199387199505%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e199385199500%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd199386199503%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd199386199503%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl199387199505%_))
                                                    (let ((_%e199388199508%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl199387199505%_))))
                                                      (let ((_%hd199389199511%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e199388199508%_)))
                    (_%tl199390199513%_
                     (let () (declare (not safe)) (##cdr _%e199388199508%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl199390199513%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl199384199497%_))
                        (if (let ((__tmp201766
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-length _%tl199384199497%_))))
                              (declare (not safe))
                              (##fx>= __tmp201766 '1))
                            (let ((_g201767_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl199384199497%_
                                      '1))))
                              (begin
                                (let ((_g201768_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g201767_)
                                             (##values-length _g201767_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g201768_ 2)))
                                      (error "Context expects 2 values"
                                             _g201768_)))
                                (let ((_%target199391199516%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g201767_ 0)))
                                      (_%tl199393199518%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g201767_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199393199518%_))
                                      (let ((_%e199400199521%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl199393199518%_))))
                                        (let ((_%hd199401199524%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199400199521%_)))
                                              (_%tl199402199526%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199400199521%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199402199526%_))
                                              (letrec ((_%loop199394199529%_
                                                        (lambda (_%hd199392199532%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%kw-ref199398199534%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd199392199532%_))
                      (let ((_%e199395199536%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd199392199532%_))))
                        (let ((_%lp-hd199396199539%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199395199536%_)))
                              (_%lp-tl199397199541%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199395199536%_))))
                          (_%loop199394199529%_
                           _%lp-tl199397199541%_
                           (cons _%lp-hd199396199539%_
                                 _%kw-ref199398199534%_))))
                      (let ((_%kw-ref199399199544%_
                             (reverse _%kw-ref199398199534%_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl199360199433%_))
                            ((lambda (_%g199347199546%_
                                      _%g199348199547%_
                                      _%g199349199548%_
                                      _%g199350199549%_
                                      _%g199351199550%_)
                               (let* ((_%kw-count199601%_
                                       (length (let ((__tmp201769
                                                      (lambda (_%g199593199596%_
                                                               _%g199594199598%_)
                                                        (cons _%g199593199596%_
                                                              _%g199594199598%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp201769
                                                  '()
                                                  _%g199348199547%_))))
                                      (_%self-index199603%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%kw-count199601%_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _%g199135199303%_))
                                     (let* ((_%g199607199621%_
                                             (lambda (_%g199608199618%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g199608199618%_))))
                                            (_%g199606199744%_
                                             (lambda (_%g199608199624%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g199608199624%_))
                                                   (let ((_%e199611199626%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g199608199624%_))))
                                                     (let ((_%hd199612199629%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e199611199626%_)))
                                                           (_%tl199613199631%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e199611199626%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl199613199631%_))
                                                           (let ((_%e199614199634%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl199613199631%_))))
                     (let ((_%hd199615199637%_
                            (let ()
                              (declare (not safe))
                              (##car _%e199614199634%_)))
                           (_%tl199616199639%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e199614199634%_))))
                       ((lambda (_%g199609199642%_ _%g199610199643%_)
                          (let* ((_%self199660%_
                                  (list-ref
                                   _%g199610199643%_
                                   _%self-index199603%_))
                                 (_%receiver199665%_
                                  (let ((_%$e199662%_
                                         (gxc#apply-extract-receiver
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   '%#begin))
                                                _%g199609199642%_))))
                                    (if _%$e199662%_
                                        _%$e199662%_
                                        _%self199660%_))))
                            (for-each
                             (lambda (_%g199667199669%_)
                               (gxc#apply-collect-object-refs__%
                                '#f
                                _%receiver199665%_
                                _%method-calls197605%_
                                _%slot-refs197606%_
                                _%g199667199669%_))
                             _%g199609199642%_)
                            (if (_%no-specializer?197609%_)
                                _%stx197513%_
                                (let* ((_%specializer-id199678%_
                                        (let* ((_%id199672%_
                                                (let ((__tmp201770
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g197524197586%_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp201770
                                                   '"::specialize")))
                                               (_%specializer-id199675%_
                                                (let ((__tmp201771
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _%stx197513%_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _%id199672%_
                                                   __tmp201771))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _%specializer-id199675%_))
                                          _%specializer-id199675%_))
                                       (_%$klass199680%_
                                        (let ((__tmp201772
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__klass))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp201772)))
                                       (_%$method-table199682%_
                                        (let ((__tmp201773
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__method-table))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp201773)))
                                       (_%methods199684%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys
                                           _%method-calls197605%_)))
                                       (_%$methods199688%_
                                        (let ((__tmp201774
                                               (lambda (_%id199686%_)
                                                 (let ((__tmp201775
                                                        (gensym _%id199686%_)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    '"__"
                                                    __tmp201775)))))
                                          (declare (not safe))
                                          (##map __tmp201774
                                                 _%methods199684%_)))
                                       (_%_199697%_
                                        (let ((__tmp201776
                                               (lambda (_%g199689199692%_
                                                        _%g199690199694%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%method-calls197605%_
                                                    _%g199689199692%_
                                                    _%g199690199694%_)))))
                                          (declare (not safe))
                                          (##for-each
                                           __tmp201776
                                           _%methods199684%_
                                           _%$methods199688%_)))
                                       (_%methods-bind199707%_
                                        (let ((__tmp201777
                                               (lambda (_%g199699199702%_
                                                        _%g199700199704%_)
                                                 (_%generate-method-bind197515%_
                                                  _%$klass199680%_
                                                  _%$method-table199682%_
                                                  _%g199699199702%_
                                                  _%g199700199704%_))))
                                          (declare (not safe))
                                          (##map __tmp201777
                                                 _%methods199684%_
                                                 _%$methods199688%_)))
                                       (_%slots199709%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys _%slot-refs197606%_)))
                                       (_%$slots199713%_
                                        (let ((__tmp201778
                                               (lambda (_%id199711%_)
                                                 (let ((__tmp201779
                                                        (gensym _%id199711%_)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    '"__"
                                                    __tmp201779)))))
                                          (declare (not safe))
                                          (##map __tmp201778 _%slots199709%_)))
                                       (_%_199722%_
                                        (let ((__tmp201780
                                               (lambda (_%g199714199717%_
                                                        _%g199715199719%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%slot-refs197606%_
                                                    _%g199714199717%_
                                                    _%g199715199719%_)))))
                                          (declare (not safe))
                                          (##for-each
                                           __tmp201780
                                           _%slots199709%_
                                           _%$slots199713%_)))
                                       (_%slots-bind199731%_
                                        (let ((__tmp201781
                                               (lambda (_%g199723199726%_
                                                        _%g199724199728%_)
                                                 (_%generate-slot-bind197516%_
                                                  _%$klass199680%_
                                                  _%g199723199726%_
                                                  _%g199724199728%_))))
                                          (declare (not safe))
                                          (##map __tmp201781
                                                 _%slots199709%_
                                                 _%$slots199713%_)))
                                       (_%specializer-impl199739%_
                                        (let* ((_%specializer-body199737%_
                                                (map (lambda (_%g199732199734%_)
                                                       (gxc#apply-subst-object-refs__%
                                                        '#f
                                                        _%receiver199665%_
                                                        _%$klass199680%_
                                                        _%method-calls197605%_
                                                        _%slot-refs197606%_
                                                        _%g199732199734%_))
                                                     _%g199609199642%_))
                                               (__tmp201782
                                                (cons '%#let-values
                                                      (cons (cons (cons (cons _%g199137199305%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (cons '%#let-values
                                            (cons (cons (cons (cons _%g199136199304%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (let ((__tmp201783
                                   (cons '%#lambda
                                         (cons _%g199610199643%_
                                               _%specializer-body199737%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp201783
                               _%g199135199303%_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%g199134199302%_
                                                        '())))
                                      '()))
                          '())
                    (cons _%g199133199301%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp201782
                                           _%stx197513%_)))
                                       (_%specializer-impl199741%_
                                        (_%generate-specializer-impl197517%_
                                         _%$klass199680%_
                                         _%$method-table199682%_
                                         _%methods-bind199707%_
                                         _%slots-bind199731%_
                                         _%specializer-impl199739%_)))
                                  (let ((__tmp201785
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g197524197586%_)))
                                        (__tmp201784
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e
                                            _%specializer-id199678%_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp201785
                                     '" => "
                                     __tmp201784))
                                  (_%generate-specializer-def197518%_
                                   _%g197524197586%_
                                   _%specializer-id199678%_
                                   _%specializer-impl199741%_)))))
                        _%tl199616199639%_
                        _%hd199615199637%_)))
                   (_%g199607199621%_ _%g199608199624%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g199607199621%_
                                                    _%g199608199624%_)))))
                                       (_%g199606199744%_ _%g199135199303%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr?
                                            _%g199135199303%_))
                                         (let* ((_%g199748199778%_
                                                 (lambda (_%g199749199775%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g199749199775%_))))
                                                (_%g199747200342%_
                                                 (lambda (_%g199749199781%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g199749199781%_))
                                                       (let ((_%e199753199783%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g199749199781%_))))
                 (let ((_%hd199754199786%_
                        (let ()
                          (declare (not safe))
                          (##car _%e199753199783%_)))
                       (_%tl199755199788%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e199753199783%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl199755199788%_))
                       (let ((_%e199756199791%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl199755199788%_))))
                         (let ((_%hd199757199794%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e199756199791%_)))
                               (_%tl199758199796%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e199756199791%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd199757199794%_))
                               (let ((_%e199759199799%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd199757199794%_))))
                                 (let ((_%hd199760199802%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e199759199799%_)))
                                       (_%tl199761199804%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e199759199799%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd199760199802%_))
                                       (let ((_%e199762199807%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd199760199802%_))))
                                         (let ((_%hd199763199810%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e199762199807%_)))
                                               (_%tl199764199812%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e199762199807%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd199763199810%_))
                                               (let ((_%e199765199815%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd199763199810%_))))
                                                 (let ((_%hd199766199818%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e199765199815%_)))
                                                       (_%tl199767199820%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e199765199815%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl199767199820%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl199764199812%_))
                                                           (let ((_%e199768199823%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl199764199812%_))))
                     (let ((_%hd199769199826%_
                            (let ()
                              (declare (not safe))
                              (##car _%e199768199823%_)))
                           (_%tl199770199828%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e199768199823%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl199770199828%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl199761199804%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl199758199796%_))
                                   (let ((_%e199771199831%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl199758199796%_))))
                                     (let ((_%hd199772199834%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e199771199831%_)))
                                           (_%tl199773199836%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e199771199831%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl199773199836%_))
                                           ((lambda (_%g199750199839%_
                                                     _%g199751199840%_
                                                     _%g199752199841%_)
                                              (let* ((_%g199865199879%_
                                                      (lambda (_%g199866199876%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g199866199876%_))))
                                                     (_%g199864199926%_
                                                      (lambda (_%g199866199882%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g199866199882%_))
                                                            (let ((_%e199869199884%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g199866199882%_))))
                      (let ((_%hd199870199887%_
                             (let ()
                               (declare (not safe))
                               (##car _%e199869199884%_)))
                            (_%tl199871199889%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e199869199884%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl199871199889%_))
                            (let ((_%e199872199892%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl199871199889%_))))
                              (let ((_%hd199873199895%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e199872199892%_)))
                                    (_%tl199874199897%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e199872199892%_))))
                                ((lambda (_%g199867199900%_ _%g199868199901%_)
                                   (let* ((_%self199914%_
                                           (list-ref
                                            _%g199868199901%_
                                            _%self-index199603%_))
                                          (_%receiver199919%_
                                           (let ((_%$e199916%_
                                                  (gxc#apply-extract-receiver
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '%#begin))
                                                         _%g199867199900%_))))
                                             (if _%$e199916%_
                                                 _%$e199916%_
                                                 _%self199914%_))))
                                     (for-each
                                      (lambda (_%g199921199923%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%receiver199919%_
                                         _%method-calls197605%_
                                         _%slot-refs197606%_
                                         _%g199921199923%_))
                                      _%g199867199900%_)))
                                 _%tl199874199897%_
                                 _%hd199873199895%_)))
                            (_%g199865199879%_ _%g199866199882%_))))
                    (_%g199865199879%_ _%g199866199882%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g199864199926%_
                                                 _%g199751199840%_))
                                              (let* ((_%g199929199948%_
                                                      (lambda (_%g199930199945%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g199930199945%_))))
                                                     (_%g199928200057%_
                                                      (lambda (_%g199930199951%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g199930199951%_))
                                                            (let ((_%e199932199953%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g199930199951%_))))
                      (let ((_%hd199933199956%_
                             (let ()
                               (declare (not safe))
                               (##car _%e199932199953%_)))
                            (_%tl199934199958%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e199932199953%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _%tl199934199958%_))
                            (let ((_g201786_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl199934199958%_
                                      '0))))
                              (begin
                                (let ((_g201787_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g201786_)
                                             (##values-length _g201786_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g201787_ 2)))
                                      (error "Context expects 2 values"
                                             _g201787_)))
                                (let ((_%target199935199961%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g201786_ 0)))
                                      (_%tl199937199963%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g201786_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl199937199963%_))
                                      (letrec ((_%loop199938199966%_
                                                (lambda (_%hd199936199969%_
                                                         _%clause199942199971%_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd199936199969%_))
                                                      (let ((_%e199939199973%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd199936199969%_))))
                (let ((_%lp-hd199940199976%_
                       (let () (declare (not safe)) (##car _%e199939199973%_)))
                      (_%lp-tl199941199978%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e199939199973%_))))
                  (_%loop199938199966%_
                   _%lp-tl199941199978%_
                   (cons _%lp-hd199940199976%_ _%clause199942199971%_))))
              (let ((_%clause199943199981%_ (reverse _%clause199942199971%_)))
                ((lambda (_%g199931199983%_)
                   (for-each
                    (lambda (_%clause199996%_)
                      (let* ((_%g199998200009%_
                              (lambda (_%g199999200006%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g199999200006%_))))
                             (_%g199997200047%_
                              (lambda (_%g199999200012%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g199999200012%_))
                                    (let ((_%e200002200014%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g199999200012%_))))
                                      (let ((_%hd200003200017%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e200002200014%_)))
                                            (_%tl200004200019%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e200002200014%_))))
                                        ((lambda (_%g200000200022%_
                                                  _%g200001200023%_)
                                           (let* ((_%self200035%_
                                                   (list-ref
                                                    _%g200001200023%_
                                                    _%self-index199603%_))
                                                  (_%receiver200040%_
                                                   (let ((_%$e200037%_
                                                          (gxc#apply-extract-receiver
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#begin))
                         _%g200000200022%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e200037%_
                                                         _%$e200037%_
                                                         _%self200035%_))))
                                             (for-each
                                              (lambda (_%g200042200044%_)
                                                (gxc#apply-collect-object-refs__%
                                                 '#f
                                                 _%receiver200040%_
                                                 _%method-calls197605%_
                                                 _%slot-refs197606%_
                                                 _%g200042200044%_))
                                              _%g200000200022%_)))
                                         _%tl200004200019%_
                                         _%hd200003200017%_)))
                                    (_%g199998200009%_ _%g199999200012%_)))))
                        (_%g199997200047%_ _%clause199996%_)))
                    (let ((__tmp201788
                           (lambda (_%g200049200052%_ _%g200050200054%_)
                             (cons _%g200049200052%_ _%g200050200054%_))))
                      (declare (not safe))
                      (__foldr1 __tmp201788 '() _%g199931199983%_))))
                 _%clause199943199981%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop199938199966%_
                                         _%target199935199961%_
                                         '()))
                                      (_%g199929199948%_ _%g199930199951%_)))))
                            (_%g199929199948%_ _%g199930199951%_))))
                    (_%g199929199948%_ _%g199930199951%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g199928200057%_
                                                 _%g199750199839%_))
                                              (if (_%no-specializer?197609%_)
                                                  _%stx197513%_
                                                  (let* ((_%specializer-id200066%_
                                                          (let* ((_%id200060%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp201789
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g197524197586%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp201789 '"::specialize")))
                         (_%specializer-id200063%_
                          (let ((__tmp201790
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx197513%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id200060%_
                             __tmp201790))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id200063%_))
                    _%specializer-id200063%_))
                 (_%$klass200068%_
                  (let ((__tmp201791
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp201791)))
                 (_%$method-table200070%_
                  (let ((__tmp201792
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp201792)))
                 (_%methods200072%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls197605%_)))
                 (_%$methods200076%_
                  (let ((__tmp201793
                         (lambda (_%id200074%_)
                           (let ((__tmp201794 (gensym _%id200074%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp201794)))))
                    (declare (not safe))
                    (##map __tmp201793 _%methods200072%_)))
                 (_%_200085%_
                  (let ((__tmp201795
                         (lambda (_%g200077200080%_ _%g200078200082%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%method-calls197605%_
                              _%g200077200080%_
                              _%g200078200082%_)))))
                    (declare (not safe))
                    (##for-each
                     __tmp201795
                     _%methods200072%_
                     _%$methods200076%_)))
                 (_%methods-bind200095%_
                  (let ((__tmp201796
                         (lambda (_%g200087200090%_ _%g200088200092%_)
                           (_%generate-method-bind197515%_
                            _%$klass200068%_
                            _%$method-table200070%_
                            _%g200087200090%_
                            _%g200088200092%_))))
                    (declare (not safe))
                    (##map __tmp201796 _%methods200072%_ _%$methods200076%_)))
                 (_%slots200097%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs197606%_)))
                 (_%$slots200101%_
                  (let ((__tmp201797
                         (lambda (_%id200099%_)
                           (let ((__tmp201798 (gensym _%id200099%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp201798)))))
                    (declare (not safe))
                    (##map __tmp201797 _%slots200097%_)))
                 (_%_200110%_
                  (let ((__tmp201799
                         (lambda (_%g200102200105%_ _%g200103200107%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%slot-refs197606%_
                              _%g200102200105%_
                              _%g200103200107%_)))))
                    (declare (not safe))
                    (##for-each __tmp201799 _%slots200097%_ _%$slots200101%_)))
                 (_%slots-bind200119%_
                  (let ((__tmp201800
                         (lambda (_%g200111200114%_ _%g200112200116%_)
                           (_%generate-slot-bind197516%_
                            _%$klass200068%_
                            _%g200111200114%_
                            _%g200112200116%_))))
                    (declare (not safe))
                    (##map __tmp201800 _%slots200097%_ _%$slots200101%_)))
                 (_%specializer-lambda-expr200197%_
                  (let* ((_%g200121200135%_
                          (lambda (_%g200122200132%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g200122200132%_))))
                         (_%g200120200194%_
                          (lambda (_%g200122200138%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g200122200138%_))
                                (let ((_%e200125200140%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g200122200138%_))))
                                  (let ((_%hd200126200143%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200125200140%_)))
                                        (_%tl200127200145%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200125200140%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl200127200145%_))
                                        (let ((_%e200128200148%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl200127200145%_))))
                                          (let ((_%hd200129200151%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e200128200148%_)))
                                                (_%tl200130200153%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e200128200148%_))))
                                            ((lambda (_%g200123200156%_
                                                      _%g200124200157%_)
                                               (let* ((_%self200180%_
                                                       (list-ref
                                                        _%g200124200157%_
                                                        _%self-index199603%_))
                                                      (_%receiver200185%_
                                                       (let ((_%$e200182%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%g200123200156%_))))
                 (if _%$e200182%_ _%$e200182%_ _%self200180%_)))
              (_%body200191%_
               (map (lambda (_%g200186200188%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver200185%_
                       _%$klass200068%_
                       _%method-calls197605%_
                       _%slot-refs197606%_
                       _%g200186200188%_))
                    _%g200123200156%_))
              (__tmp201801
               (cons '%#lambda (cons _%g200124200157%_ _%body200191%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp201801
                                                  _%g199751199840%_)))
                                             _%tl200130200153%_
                                             _%hd200129200151%_)))
                                        (_%g200121200135%_
                                         _%g200122200138%_))))
                                (_%g200121200135%_ _%g200122200138%_)))))
                    (_%g200120200194%_ _%g199751199840%_)))
                 (_%specializer-case-lambda-expr200335%_
                  (let* ((_%g200199200218%_
                          (lambda (_%g200200200215%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g200200200215%_))))
                         (_%g200198200332%_
                          (lambda (_%g200200200221%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g200200200221%_))
                                (let ((_%e200202200223%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g200200200221%_))))
                                  (let ((_%hd200203200226%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200202200223%_)))
                                        (_%tl200204200228%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200202200223%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl200204200228%_))
                                        (let ((_g201802_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl200204200228%_
                                                  '0))))
                                          (begin
                                            (let ((_g201803_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g201802_)
                                                         (##values-length
                                                          _g201802_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g201803_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g201803_)))
                                            (let ((_%target200205200231%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g201802_
                                                      0)))
                                                  (_%tl200207200233%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g201802_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl200207200233%_))
                                                  (letrec ((_%loop200208200236%_
                                                            (lambda (_%hd200206200239%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause200212200241%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd200206200239%_))
                          (let ((_%e200209200243%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd200206200239%_))))
                            (let ((_%lp-hd200210200246%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e200209200243%_)))
                                  (_%lp-tl200211200248%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e200209200243%_))))
                              (_%loop200208200236%_
                               _%lp-tl200211200248%_
                               (cons _%lp-hd200210200246%_
                                     _%clause200212200241%_))))
                          (let ((_%clause200213200251%_
                                 (reverse _%clause200212200241%_)))
                            ((lambda (_%g200201200253%_)
                               (let* ((_%clauses200330%_
                                       (map (lambda (_%clause200267%_)
                                              (let* ((_%g200269200280%_
                                                      (lambda (_%g200270200277%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g200270200277%_))))
                                                     (_%g200268200320%_
                                                      (lambda (_%g200270200283%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g200270200283%_))
                                                            (let ((_%e200273200285%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g200270200283%_))))
                      (let ((_%hd200274200288%_
                             (let ()
                               (declare (not safe))
                               (##car _%e200273200285%_)))
                            (_%tl200275200290%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e200273200285%_))))
                        ((lambda (_%g200271200293%_ _%g200272200294%_)
                           (let* ((_%self200306%_
                                   (list-ref
                                    _%g200272200294%_
                                    _%self-index199603%_))
                                  (_%receiver200311%_
                                   (let ((_%$e200308%_
                                          (gxc#apply-extract-receiver
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '%#begin))
                                                 _%g200271200293%_))))
                                     (if _%$e200308%_
                                         _%$e200308%_
                                         _%self200306%_)))
                                  (_%body200317%_
                                   (map (lambda (_%g200312200314%_)
                                          (gxc#apply-subst-object-refs__%
                                           '#f
                                           _%receiver200311%_
                                           _%$klass200068%_
                                           _%method-calls197605%_
                                           _%slot-refs197606%_
                                           _%g200312200314%_))
                                        _%g200271200293%_)))
                             (cons _%g200272200294%_ _%body200317%_)))
                         _%tl200275200290%_
                         _%hd200274200288%_)))
                    (_%g200269200280%_ _%g200270200283%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g200268200320%_
                                                 _%clause200267%_)))
                                            (let ((__tmp201804
                                                   (lambda (_%g200322200325%_
                                                            _%g200323200327%_)
                                                     (cons _%g200322200325%_
                                                           _%g200323200327%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp201804
                                               '()
                                               _%g200201200253%_))))
                                      (__tmp201805
                                       (cons '%#case-lambda
                                             _%clauses200330%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp201805
                                  _%g199750199839%_)))
                             _%clause200213200251%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop200208200236%_
                                                     _%target200205200231%_
                                                     '()))
                                                  (_%g200199200218%_
                                                   _%g200200200221%_)))))
                                        (_%g200199200218%_
                                         _%g200200200221%_))))
                                (_%g200199200218%_ _%g200200200221%_)))))
                    (_%g200198200332%_ _%g199750199839%_)))
                 (_%specializer-impl200337%_
                  (let ((__tmp201806
                         (cons '%#let-values
                               (cons (cons (cons (cons _%g199137199305%_ '())
                                                 (cons (cons '%#let-values
                                                             (cons (cons (cons (cons _%g199136199304%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             '())
                                       (cons (let ((__tmp201807
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%g199752199841%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons _%specializer-lambda-expr200197%_
                                          '()))
                              '())
                        (cons _%specializer-case-lambda-expr200335%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp201807
                                                _%stx197513%_))
                                             '()))
                                 '())
                           (cons _%g199134199302%_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons _%g199133199301%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp201806 _%stx197513%_)))
                 (_%specializer-impl200339%_
                  (_%generate-specializer-impl197517%_
                   _%$klass200068%_
                   _%$method-table200070%_
                   _%methods-bind200095%_
                   _%slots-bind200119%_
                   _%specializer-impl200337%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp201809
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%g197524197586%_)))
                                                          (__tmp201808
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id200066%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp201809
                                                       '" => "
                                                       __tmp201808))
                                                    (_%generate-specializer-def197518%_
                                                     _%g197524197586%_
                                                     _%specializer-id200066%_
                                                     _%specializer-impl200339%_))))
                                            _%hd199772199834%_
                                            _%hd199769199826%_
                                            _%hd199766199818%_)
                                           (_%g199748199778%_
                                            _%g199749199781%_))))
                                   (_%g199748199778%_ _%g199749199781%_))
                               (_%g199748199778%_ _%g199749199781%_))
                           (_%g199748199778%_ _%g199749199781%_))))
                   (_%g199748199778%_ _%g199749199781%_))
               (_%g199748199778%_ _%g199749199781%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g199748199778%_
                                                _%g199749199781%_))))
                                       (_%g199748199778%_ _%g199749199781%_))))
                               (_%g199748199778%_ _%g199749199781%_))))
                       (_%g199748199778%_ _%g199749199781%_))))
               (_%g199748199778%_ _%g199749199781%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g199747200342%_
                                            _%g199135199303%_))
                                         _%stx197513%_))))
                             _%hd199401199524%_
                             _%kw-ref199399199544%_
                             _%hd199389199511%_
                             _%hd199380199487%_
                             _%hd199371199463%_)
                            (_%g199345199407%_ _%g199346199410%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop199394199529%_
                                                 _%target199391199516%_
                                                 '()))
                                              (_%g199345199407%_
                                               _%g199346199410%_))))
                                      (_%g199345199407%_ _%g199346199410%_)))))
                            (_%g199345199407%_ _%g199346199410%_))
                        (_%g199345199407%_ _%g199346199410%_))
                    (_%g199345199407%_ _%g199346199410%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g199345199407%_
                                                     _%g199346199410%_))
                                                (_%g199345199407%_
                                                 _%g199346199410%_))
                                            (_%g199345199407%_
                                             _%g199346199410%_))))
                                    (_%g199345199407%_ _%g199346199410%_))))
                            (_%g199345199407%_ _%g199346199410%_))
                        (_%g199345199407%_ _%g199346199410%_))))
                (_%g199345199407%_ _%g199346199410%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g199345199407%_
                                                     _%g199346199410%_))
                                                (_%g199345199407%_
                                                 _%g199346199410%_))))
                                        (_%g199345199407%_
                                         _%g199346199410%_))))
                                (_%g199345199407%_ _%g199346199410%_))
                            (_%g199345199407%_ _%g199346199410%_))))
                    (_%g199345199407%_ _%g199346199410%_))
                (_%g199345199407%_ _%g199346199410%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g199345199407%_
                                                     _%g199346199410%_))))
                                            (_%g199345199407%_
                                             _%g199346199410%_))))
                                    (_%g199345199407%_ _%g199346199410%_))
                                (_%g199345199407%_ _%g199346199410%_))
                            (_%g199345199407%_ _%g199346199410%_))))
                    (_%g199345199407%_ _%g199346199410%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g199345199407%_
                                                     _%g199346199410%_))))
                                            (_%g199345199407%_
                                             _%g199346199410%_))
                                        (_%g199345199407%_ _%g199346199410%_))
                                    (_%g199345199407%_ _%g199346199410%_))))
                            (_%g199345199407%_ _%g199346199410%_)))))
                (_%g199344200346%_ _%g199134199302%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd199178199296%_
                                                    _%hd199175199288%_
                                                    _%hd199172199280%_
                                                    _%hd199169199272%_
                                                    _%hd199151199224%_)
                                                   (_%g199131199184%_
                                                    _%g199132199187%_))))
                                           (_%g199131199184%_
                                            _%g199132199187%_))
                                       (_%g199131199184%_ _%g199132199187%_))
                                   (_%g199131199184%_ _%g199132199187%_))
                               (_%g199131199184%_ _%g199132199187%_))))
                       (_%g199131199184%_ _%g199132199187%_))
                   (_%g199131199184%_ _%g199132199187%_))
               (_%g199131199184%_ _%g199132199187%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g199131199184%_
                                                _%g199132199187%_))
                                           (_%g199131199184%_
                                            _%g199132199187%_))))
                                   (_%g199131199184%_ _%g199132199187%_))))
                           (_%g199131199184%_ _%g199132199187%_))))
                   (_%g199131199184%_ _%g199132199187%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g199131199184%_
                                                    _%g199132199187%_))
                                               (_%g199131199184%_
                                                _%g199132199187%_))
                                           (_%g199131199184%_
                                            _%g199132199187%_))))
                                   (_%g199131199184%_ _%g199132199187%_))))
                           (_%g199131199184%_ _%g199132199187%_))
                       (_%g199131199184%_ _%g199132199187%_))))
               (_%g199131199184%_ _%g199132199187%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g199131199184%_
                                                _%g199132199187%_))))
                                       (_%g199131199184%_ _%g199132199187%_))))
                               (_%g199131199184%_ _%g199132199187%_))
                           (_%g199131199184%_ _%g199132199187%_))
                       (_%g199131199184%_ _%g199132199187%_))))
               (_%g199131199184%_ _%g199132199187%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g199130200349%_
                                            _%g197523197585%_))
                                         _%stx197513%_))))))))
                  (_%__kont200576200577%_ (lambda () _%stx197513%_)))
              (let ((_%__match200605200606%_
                     (lambda (_%e197525197553%_
                              _%hd197526197556%_
                              _%tl197527197558%_
                              _%e197528197561%_
                              _%hd197529197564%_
                              _%tl197530197566%_
                              _%e197531197569%_
                              _%hd197532197572%_
                              _%tl197533197574%_
                              _%e197534197577%_
                              _%hd197535197580%_
                              _%tl197536197582%_)
                       (let ((_%g197523197585%_ _%hd197535197580%_)
                             (_%g197524197586%_ _%hd197532197572%_))
                         (if (let ((__tmp201810
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g197524197586%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp201810))
                             (_%__kont200574200575%_
                              _%g197523197585%_
                              _%g197524197586%_)
                             (_%__kont200576200577%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx200572200573%_))
                    (let ((_%e197525197553%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx200572200573%_))))
                      (let ((_%tl197527197558%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e197525197553%_)))
                            (_%hd197526197556%_
                             (let ()
                               (declare (not safe))
                               (##car _%e197525197553%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl197527197558%_))
                            (let ((_%e197528197561%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl197527197558%_))))
                              (let ((_%tl197530197566%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e197528197561%_)))
                                    (_%hd197529197564%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e197528197561%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd197529197564%_))
                                    (let ((_%e197531197569%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd197529197564%_))))
                                      (let ((_%tl197533197574%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e197531197569%_)))
                                            (_%hd197532197572%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e197531197569%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl197533197574%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl197530197566%_))
                                                (let ((_%e197534197577%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl197530197566%_))))
                                                  (let ((_%tl197536197582%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e197534197577%_)))
                                                        (_%hd197535197580%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e197534197577%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl197536197582%_))
                                                        (_%__match200605200606%_
                                                         _%e197525197553%_
                                                         _%hd197526197556%_
                                                         _%tl197527197558%_
                                                         _%e197528197561%_
                                                         _%hd197529197564%_
                                                         _%tl197530197566%_
                                                         _%e197531197569%_
                                                         _%hd197532197572%_
                                                         _%tl197533197574%_
                                                         _%e197534197577%_
                                                         _%hd197535197580%_
                                                         _%tl197536197582%_)
                                                        (_%__kont200576200577%_))))
                                                (_%__kont200576200577%_))
                                            (_%__kont200576200577%_))))
                                    (_%__kont200576200577%_))))
                            (_%__kont200576200577%_))))
                    (_%__kont200576200577%_))))))))
    (define gxc#extract-receiver-begin-annotation%
      (lambda (_%self197365%_ _%stx197366%_)
        (let* ((_%__stx200608200609%_ _%stx197366%_)
               (_%g197369197402%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx200608200609%_)))))
          (let ((_%__kont200610200611%_
                 (lambda (_%g197371197492%_) _%g197371197492%_))
                (_%__kont200612200613%_
                 (lambda (_%g197387197431%_ _%g197388197432%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self197365%_ _%g197387197431%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx200608200609%_))
                (let ((_%e197372197452%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx200608200609%_))))
                  (let ((_%tl197374197457%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e197372197452%_)))
                        (_%hd197373197455%_
                         (let ()
                           (declare (not safe))
                           (##car _%e197372197452%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl197374197457%_))
                        (let ((_%e197375197460%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl197374197457%_))))
                          (let ((_%tl197377197465%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197375197460%_)))
                                (_%hd197376197463%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197375197460%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd197376197463%_))
                                (let ((_%e197378197468%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd197376197463%_))))
                                  (let ((_%tl197380197473%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197378197468%_)))
                                        (_%hd197379197471%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197378197468%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd197379197471%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@receiver
                                               _%hd197379197471%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl197380197473%_))
                                                (let ((_%e197381197476%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl197380197473%_))))
                                                  (let ((_%tl197383197481%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e197381197476%_)))
                                                        (_%hd197382197479%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e197381197476%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl197383197481%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl197377197465%_))
                                                            (let ((_%e197384197484%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl197377197465%_))))
                      (let ((_%tl197386197489%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e197384197484%_)))
                            (_%hd197385197487%_
                             (let ()
                               (declare (not safe))
                               (##car _%e197384197484%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl197386197489%_))
                            (_%__kont200610200611%_ _%hd197382197479%_)
                            (let ()
                              (declare (not safe))
                              (_%g197369197402%_)))))
                    (let () (declare (not safe)) (_%g197369197402%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl197377197465%_))
                    (let ((_%e197395197423%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl197377197465%_))))
                      (let ((_%tl197397197428%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e197395197423%_)))
                            (_%hd197396197426%_
                             (let ()
                               (declare (not safe))
                               (##car _%e197395197423%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl197397197428%_))
                            (_%__kont200612200613%_
                             _%hd197396197426%_
                             _%hd197376197463%_)
                            (let ()
                              (declare (not safe))
                              (_%g197369197402%_)))))
                    (let () (declare (not safe)) (_%g197369197402%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl197377197465%_))
                                                    (let ((_%e197395197423%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl197377197465%_))))
                                                      (let ((_%tl197397197428%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e197395197423%_)))
                    (_%hd197396197426%_
                     (let () (declare (not safe)) (##car _%e197395197423%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl197397197428%_))
                    (_%__kont200612200613%_
                     _%hd197396197426%_
                     _%hd197376197463%_)
                    (let () (declare (not safe)) (_%g197369197402%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g197369197402%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl197377197465%_))
                                                (let ((_%e197395197423%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl197377197465%_))))
                                                  (let ((_%tl197397197428%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e197395197423%_)))
                                                        (_%hd197396197426%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e197395197423%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl197397197428%_))
                                                        (_%__kont200612200613%_
                                                         _%hd197396197426%_
                                                         _%hd197376197463%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g197369197402%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g197369197402%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl197377197465%_))
                                            (let ((_%e197395197423%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl197377197465%_))))
                                              (let ((_%tl197397197428%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e197395197423%_)))
                                                    (_%hd197396197426%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e197395197423%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl197397197428%_))
                                                    (_%__kont200612200613%_
                                                     _%hd197396197426%_
                                                     _%hd197376197463%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g197369197402%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g197369197402%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl197377197465%_))
                                    (let ((_%e197395197423%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl197377197465%_))))
                                      (let ((_%tl197397197428%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e197395197423%_)))
                                            (_%hd197396197426%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e197395197423%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl197397197428%_))
                                            (_%__kont200612200613%_
                                             _%hd197396197426%_
                                             _%hd197376197463%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g197369197402%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g197369197402%_))))))
                        (let () (declare (not safe)) (_%g197369197402%_)))))
                (let () (declare (not safe)) (_%g197369197402%_)))))))
    (define gxc#extract-receiver-if%
      (lambda (_%self197281%_ _%stx197282%_)
        (let* ((_%g197284197305%_
                (lambda (_%g197285197302%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197285197302%_))))
               (_%g197283197362%_
                (lambda (_%g197285197308%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197285197308%_))
                      (let ((_%e197289197310%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g197285197308%_))))
                        (let ((_%hd197290197313%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197289197310%_)))
                              (_%tl197291197315%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197289197310%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197291197315%_))
                              (let ((_%e197292197318%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl197291197315%_))))
                                (let ((_%hd197293197321%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197292197318%_)))
                                      (_%tl197294197323%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197292197318%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197294197323%_))
                                      (let ((_%e197295197326%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl197294197323%_))))
                                        (let ((_%hd197296197329%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197295197326%_)))
                                              (_%tl197297197331%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197295197326%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197297197331%_))
                                              (let ((_%e197298197334%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl197297197331%_))))
                                                (let ((_%hd197299197337%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197298197334%_)))
                                                      (_%tl197300197339%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197298197334%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197300197339%_))
                                                      ((lambda (_%g197286197342%_
                                                                _%g197287197343%_
                                                                _%g197288197344%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self197281%_
                                                            _%g197287197343%_)))
                                                       _%hd197299197337%_
                                                       _%hd197296197329%_
                                                       _%hd197293197321%_)
                                                      (_%g197284197305%_
                                                       _%g197285197308%_))))
                                              (_%g197284197305%_
                                               _%g197285197308%_))))
                                      (_%g197284197305%_ _%g197285197308%_))))
                              (_%g197284197305%_ _%g197285197308%_))))
                      (_%g197284197305%_ _%g197285197308%_)))))
          (_%g197283197362%_ _%stx197282%_))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self196246%_ _%stx196247%_)
        (let* ((_%__stx200674200675%_ _%stx196247%_)
               (_%g196255196477%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx200674200675%_)))))
          (let ((_%__kont200676200677%_
                 (lambda (_%g196257197230%_
                          _%g196258197231%_
                          _%g196259197232%_
                          _%g196260197233%_)
                   (let ((__tmp201812
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self196246%_ 'methods)))
                         (__tmp201811
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g196258197231%_))))
                     (declare (not safe))
                     (hash-put! __tmp201812 __tmp201811 '#t))
                   (for-each
                    (lambda (_%g197266197268%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self196246%_ _%g197266197268%_)))
                    (let ((__tmp201813
                           (lambda (_%g197270197273%_ _%g197271197275%_)
                             (cons _%g197270197273%_ _%g197271197275%_))))
                      (declare (not safe))
                      (__foldr1 __tmp201813 '() _%g196257197230%_)))))
                (_%__kont200680200681%_
                 (lambda (_%g196300197067%_
                          _%g196301197068%_
                          _%g196302197069%_
                          _%g196303197070%_
                          _%g196304197071%_)
                   (let ((__tmp201815
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self196246%_ 'methods)))
                         (__tmp201814
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g196301197068%_))))
                     (declare (not safe))
                     (hash-put! __tmp201815 __tmp201814 '#t))
                   (for-each
                    (lambda (_%g197111197113%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self196246%_ _%g197111197113%_)))
                    (let ((__tmp201816
                           (lambda (_%g197115197118%_ _%g197116197120%_)
                             (cons _%g197115197118%_ _%g197116197120%_))))
                      (declare (not safe))
                      (__foldr1 __tmp201816 '() _%g196300197067%_)))))
                (_%__kont200684200685%_
                 (lambda (_%g196353196902%_
                          _%g196354196903%_
                          _%g196355196904%_)
                   (let ((__tmp201818
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self196246%_ 'slots)))
                         (__tmp201817
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g196353196902%_))))
                     (declare (not safe))
                     (hash-put! __tmp201818 __tmp201817 '#t))))
                (_%__kont200686200687%_
                 (lambda (_%g196386196779%_
                          _%g196387196780%_
                          _%g196388196781%_
                          _%g196389196782%_)
                   (let ((__tmp201820
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self196246%_ 'slots)))
                         (__tmp201819
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g196387196780%_))))
                     (declare (not safe))
                     (hash-put! __tmp201820 __tmp201819 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self196246%_ _%g196386196779%_))))
                (_%__kont200688200689%_
                 (lambda (_%g196423196653%_ _%g196424196654%_)
                   (let* ((_%accessor196676%_
                           (let ((__tmp201821
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%g196424196654%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp201821)))
                          (_%klass196678%_
                           (let ((__tmp201822
                                  (##structure-ref
                                   _%accessor196676%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx196247%_
                              __tmp201822)))
                          (_%slot196680%_
                           (##structure-ref
                            _%accessor196676%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (if (##structure-ref
                              _%accessor196676%_
                              '4
                              gxc#!accessor::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass196678%_
                                    _%slot196680%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass196678%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp201824
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self196246%_ 'slots)))
                               (__tmp201823
                                (##structure-ref
                                 _%accessor196676%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp201824 __tmp201823 '#t))))))
                (_%__kont200690200691%_
                 (lambda (_%g196446196553%_
                          _%g196447196554%_
                          _%g196448196555%_)
                   (let* ((_%mutator196582%_
                           (let ((__tmp201825
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%g196448196555%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp201825)))
                          (_%klass196584%_
                           (let ((__tmp201826
                                  (##structure-ref
                                   _%mutator196582%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx196247%_
                              __tmp201826)))
                          (_%slot196586%_
                           (##structure-ref
                            _%mutator196582%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (if (##structure-ref
                              _%mutator196582%_
                              '4
                              gxc#!mutator::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass196584%_
                                    _%slot196586%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass196584%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp201827
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self196246%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp201827 _%slot196586%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self196246%_ _%g196446196553%_)))))
                (_%__kont200692200693%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self196246%_ _%stx196247%_)))))
            (let* ((_%__match201173201174%_
                    (lambda (_%e196449196489%_
                             _%hd196450196492%_
                             _%tl196451196494%_
                             _%e196452196497%_
                             _%hd196453196500%_
                             _%tl196454196502%_
                             _%e196455196505%_
                             _%hd196456196508%_
                             _%tl196457196510%_
                             _%e196458196513%_
                             _%hd196459196516%_
                             _%tl196460196518%_
                             _%e196461196521%_
                             _%hd196462196524%_
                             _%tl196463196526%_
                             _%e196464196529%_
                             _%hd196465196532%_
                             _%tl196466196534%_
                             _%e196467196537%_
                             _%hd196468196540%_
                             _%tl196469196542%_
                             _%e196470196545%_
                             _%hd196471196548%_
                             _%tl196472196550%_)
                      (let ((_%g196446196553%_ _%hd196471196548%_)
                            (_%g196447196554%_ _%hd196468196540%_)
                            (_%g196448196555%_ _%hd196459196516%_))
                        (if (and (let ((__tmp201828
                                        (let ((__tmp201829
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%g196448196555%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp201829))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp201828
                                    'gxc#!mutator::t))
                                 (let ((__tmp201830
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self196246%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g196447196554%_
                                    __tmp201830)))
                            (_%__kont200690200691%_
                             _%g196446196553%_
                             _%g196447196554%_
                             _%g196448196555%_)
                            (_%__kont200692200693%_)))))
                   (_%__match201171201172%_
                    (lambda (_%e196449196489%_
                             _%hd196450196492%_
                             _%tl196451196494%_
                             _%e196452196497%_
                             _%hd196453196500%_
                             _%tl196454196502%_
                             _%e196455196505%_
                             _%hd196456196508%_
                             _%tl196457196510%_
                             _%e196458196513%_
                             _%hd196459196516%_
                             _%tl196460196518%_
                             _%e196461196521%_
                             _%hd196462196524%_
                             _%tl196463196526%_
                             _%e196464196529%_
                             _%hd196465196532%_
                             _%tl196466196534%_
                             _%e196467196537%_
                             _%hd196468196540%_
                             _%tl196469196542%_
                             _%e196470196545%_
                             _%hd196471196548%_
                             _%tl196472196550%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl196472196550%_))
                          (_%__match201173201174%_
                           _%e196449196489%_
                           _%hd196450196492%_
                           _%tl196451196494%_
                           _%e196452196497%_
                           _%hd196453196500%_
                           _%tl196454196502%_
                           _%e196455196505%_
                           _%hd196456196508%_
                           _%tl196457196510%_
                           _%e196458196513%_
                           _%hd196459196516%_
                           _%tl196460196518%_
                           _%e196461196521%_
                           _%hd196462196524%_
                           _%tl196463196526%_
                           _%e196464196529%_
                           _%hd196465196532%_
                           _%tl196466196534%_
                           _%e196467196537%_
                           _%hd196468196540%_
                           _%tl196469196542%_
                           _%e196470196545%_
                           _%hd196471196548%_
                           _%tl196472196550%_)
                          (_%__kont200692200693%_))))
                   (_%__match201165201166%_
                    (lambda (_%e196449196489%_
                             _%hd196450196492%_
                             _%tl196451196494%_
                             _%e196452196497%_
                             _%hd196453196500%_
                             _%tl196454196502%_
                             _%e196455196505%_
                             _%hd196456196508%_
                             _%tl196457196510%_
                             _%e196458196513%_
                             _%hd196459196516%_
                             _%tl196460196518%_
                             _%e196461196521%_
                             _%hd196462196524%_
                             _%tl196463196526%_
                             _%e196464196529%_
                             _%hd196465196532%_
                             _%tl196466196534%_
                             _%e196467196537%_
                             _%hd196468196540%_
                             _%tl196469196542%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl196463196526%_))
                          (let ((_%e196470196545%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl196463196526%_))))
                            (let ((_%tl196472196550%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e196470196545%_)))
                                  (_%hd196471196548%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e196470196545%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl196472196550%_))
                                  (_%__match201173201174%_
                                   _%e196449196489%_
                                   _%hd196450196492%_
                                   _%tl196451196494%_
                                   _%e196452196497%_
                                   _%hd196453196500%_
                                   _%tl196454196502%_
                                   _%e196455196505%_
                                   _%hd196456196508%_
                                   _%tl196457196510%_
                                   _%e196458196513%_
                                   _%hd196459196516%_
                                   _%tl196460196518%_
                                   _%e196461196521%_
                                   _%hd196462196524%_
                                   _%tl196463196526%_
                                   _%e196464196529%_
                                   _%hd196465196532%_
                                   _%tl196466196534%_
                                   _%e196467196537%_
                                   _%hd196468196540%_
                                   _%tl196469196542%_
                                   _%e196470196545%_
                                   _%hd196471196548%_
                                   _%tl196472196550%_)
                                  (_%__kont200692200693%_))))
                          (_%__kont200692200693%_))))
                   (_%__match201111201112%_
                    (lambda (_%e196425196597%_
                             _%hd196426196600%_
                             _%tl196427196602%_
                             _%e196428196605%_
                             _%hd196429196608%_
                             _%tl196430196610%_
                             _%e196431196613%_
                             _%hd196432196616%_
                             _%tl196433196618%_
                             _%e196434196621%_
                             _%hd196435196624%_
                             _%tl196436196626%_
                             _%e196437196629%_
                             _%hd196438196632%_
                             _%tl196439196634%_
                             _%e196440196637%_
                             _%hd196441196640%_
                             _%tl196442196642%_
                             _%e196443196645%_
                             _%hd196444196648%_
                             _%tl196445196650%_)
                      (let ((_%g196423196653%_ _%hd196444196648%_)
                            (_%g196424196654%_ _%hd196435196624%_))
                        (if (and (let ((__tmp201831
                                        (let ((__tmp201832
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%g196424196654%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp201832))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp201831
                                    'gxc#!accessor::t))
                                 (let ((__tmp201833
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self196246%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g196423196653%_
                                    __tmp201833)))
                            (_%__kont200688200689%_
                             _%g196423196653%_
                             _%g196424196654%_)
                            (_%__kont200692200693%_)))))
                   (_%__match201109201110%_
                    (lambda (_%e196425196597%_
                             _%hd196426196600%_
                             _%tl196427196602%_
                             _%e196428196605%_
                             _%hd196429196608%_
                             _%tl196430196610%_
                             _%e196431196613%_
                             _%hd196432196616%_
                             _%tl196433196618%_
                             _%e196434196621%_
                             _%hd196435196624%_
                             _%tl196436196626%_
                             _%e196437196629%_
                             _%hd196438196632%_
                             _%tl196439196634%_
                             _%e196440196637%_
                             _%hd196441196640%_
                             _%tl196442196642%_
                             _%e196443196645%_
                             _%hd196444196648%_
                             _%tl196445196650%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl196439196634%_))
                          (_%__match201111201112%_
                           _%e196425196597%_
                           _%hd196426196600%_
                           _%tl196427196602%_
                           _%e196428196605%_
                           _%hd196429196608%_
                           _%tl196430196610%_
                           _%e196431196613%_
                           _%hd196432196616%_
                           _%tl196433196618%_
                           _%e196434196621%_
                           _%hd196435196624%_
                           _%tl196436196626%_
                           _%e196437196629%_
                           _%hd196438196632%_
                           _%tl196439196634%_
                           _%e196440196637%_
                           _%hd196441196640%_
                           _%tl196442196642%_
                           _%e196443196645%_
                           _%hd196444196648%_
                           _%tl196445196650%_)
                          (_%__match201165201166%_
                           _%e196425196597%_
                           _%hd196426196600%_
                           _%tl196427196602%_
                           _%e196428196605%_
                           _%hd196429196608%_
                           _%tl196430196610%_
                           _%e196431196613%_
                           _%hd196432196616%_
                           _%tl196433196618%_
                           _%e196434196621%_
                           _%hd196435196624%_
                           _%tl196436196626%_
                           _%e196437196629%_
                           _%hd196438196632%_
                           _%tl196439196634%_
                           _%e196440196637%_
                           _%hd196441196640%_
                           _%tl196442196642%_
                           _%e196443196645%_
                           _%hd196444196648%_
                           _%tl196445196650%_))))
                   (_%__match201055201056%_
                    (lambda (_%e196390196691%_
                             _%hd196391196694%_
                             _%tl196392196696%_
                             _%e196393196699%_
                             _%hd196394196702%_
                             _%tl196395196704%_
                             _%e196396196707%_
                             _%hd196397196710%_
                             _%tl196398196712%_
                             _%e196399196715%_
                             _%hd196400196718%_
                             _%tl196401196720%_
                             _%e196402196723%_
                             _%hd196403196726%_
                             _%tl196404196728%_
                             _%e196405196731%_
                             _%hd196406196734%_
                             _%tl196407196736%_
                             _%e196408196739%_
                             _%hd196409196742%_
                             _%tl196410196744%_
                             _%e196411196747%_
                             _%hd196412196750%_
                             _%tl196413196752%_
                             _%e196414196755%_
                             _%hd196415196758%_
                             _%tl196416196760%_
                             _%e196417196763%_
                             _%hd196418196766%_
                             _%tl196419196768%_
                             _%e196420196771%_
                             _%hd196421196774%_
                             _%tl196422196776%_)
                      (let ((_%g196386196779%_ _%hd196421196774%_)
                            (_%g196387196780%_ _%hd196418196766%_)
                            (_%g196388196781%_ _%hd196409196742%_)
                            (_%g196389196782%_ _%hd196400196718%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g196389196782%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g196389196782%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp201834
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self196246%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g196388196781%_
                                    __tmp201834)))
                            (_%__kont200686200687%_
                             _%g196386196779%_
                             _%g196387196780%_
                             _%g196388196781%_
                             _%g196389196782%_)
                            (_%__kont200692200693%_)))))
                   (_%__match201047201048%_
                    (lambda (_%e196390196691%_
                             _%hd196391196694%_
                             _%tl196392196696%_
                             _%e196393196699%_
                             _%hd196394196702%_
                             _%tl196395196704%_
                             _%e196396196707%_
                             _%hd196397196710%_
                             _%tl196398196712%_
                             _%e196399196715%_
                             _%hd196400196718%_
                             _%tl196401196720%_
                             _%e196402196723%_
                             _%hd196403196726%_
                             _%tl196404196728%_
                             _%e196405196731%_
                             _%hd196406196734%_
                             _%tl196407196736%_
                             _%e196408196739%_
                             _%hd196409196742%_
                             _%tl196410196744%_
                             _%e196411196747%_
                             _%hd196412196750%_
                             _%tl196413196752%_
                             _%e196414196755%_
                             _%hd196415196758%_
                             _%tl196416196760%_
                             _%e196417196763%_
                             _%hd196418196766%_
                             _%tl196419196768%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl196413196752%_))
                          (let ((_%e196420196771%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl196413196752%_))))
                            (let ((_%tl196422196776%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e196420196771%_)))
                                  (_%hd196421196774%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e196420196771%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl196422196776%_))
                                  (_%__match201055201056%_
                                   _%e196390196691%_
                                   _%hd196391196694%_
                                   _%tl196392196696%_
                                   _%e196393196699%_
                                   _%hd196394196702%_
                                   _%tl196395196704%_
                                   _%e196396196707%_
                                   _%hd196397196710%_
                                   _%tl196398196712%_
                                   _%e196399196715%_
                                   _%hd196400196718%_
                                   _%tl196401196720%_
                                   _%e196402196723%_
                                   _%hd196403196726%_
                                   _%tl196404196728%_
                                   _%e196405196731%_
                                   _%hd196406196734%_
                                   _%tl196407196736%_
                                   _%e196408196739%_
                                   _%hd196409196742%_
                                   _%tl196410196744%_
                                   _%e196411196747%_
                                   _%hd196412196750%_
                                   _%tl196413196752%_
                                   _%e196414196755%_
                                   _%hd196415196758%_
                                   _%tl196416196760%_
                                   _%e196417196763%_
                                   _%hd196418196766%_
                                   _%tl196419196768%_
                                   _%e196420196771%_
                                   _%hd196421196774%_
                                   _%tl196422196776%_)
                                  (_%__kont200692200693%_))))
                          (_%__match201171201172%_
                           _%e196390196691%_
                           _%hd196391196694%_
                           _%tl196392196696%_
                           _%e196393196699%_
                           _%hd196394196702%_
                           _%tl196395196704%_
                           _%e196396196707%_
                           _%hd196397196710%_
                           _%tl196398196712%_
                           _%e196399196715%_
                           _%hd196400196718%_
                           _%tl196401196720%_
                           _%e196402196723%_
                           _%hd196403196726%_
                           _%tl196404196728%_
                           _%e196405196731%_
                           _%hd196406196734%_
                           _%tl196407196736%_
                           _%e196408196739%_
                           _%hd196409196742%_
                           _%tl196410196744%_
                           _%e196411196747%_
                           _%hd196412196750%_
                           _%tl196413196752%_))))
                   (_%__match200969200970%_
                    (lambda (_%e196356196822%_
                             _%hd196357196825%_
                             _%tl196358196827%_
                             _%e196359196830%_
                             _%hd196360196833%_
                             _%tl196361196835%_
                             _%e196362196838%_
                             _%hd196363196841%_
                             _%tl196364196843%_
                             _%e196365196846%_
                             _%hd196366196849%_
                             _%tl196367196851%_
                             _%e196368196854%_
                             _%hd196369196857%_
                             _%tl196370196859%_
                             _%e196371196862%_
                             _%hd196372196865%_
                             _%tl196373196867%_
                             _%e196374196870%_
                             _%hd196375196873%_
                             _%tl196376196875%_
                             _%e196377196878%_
                             _%hd196378196881%_
                             _%tl196379196883%_
                             _%e196380196886%_
                             _%hd196381196889%_
                             _%tl196382196891%_
                             _%e196383196894%_
                             _%hd196384196897%_
                             _%tl196385196899%_)
                      (let ((_%g196353196902%_ _%hd196384196897%_)
                            (_%g196354196903%_ _%hd196375196873%_)
                            (_%g196355196904%_ _%hd196366196849%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g196355196904%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g196355196904%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp201835
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self196246%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g196354196903%_
                                    __tmp201835)))
                            (_%__kont200684200685%_
                             _%g196353196902%_
                             _%g196354196903%_
                             _%g196355196904%_)
                            (_%__match201173201174%_
                             _%e196356196822%_
                             _%hd196357196825%_
                             _%tl196358196827%_
                             _%e196359196830%_
                             _%hd196360196833%_
                             _%tl196361196835%_
                             _%e196362196838%_
                             _%hd196363196841%_
                             _%tl196364196843%_
                             _%e196365196846%_
                             _%hd196366196849%_
                             _%tl196367196851%_
                             _%e196368196854%_
                             _%hd196369196857%_
                             _%tl196370196859%_
                             _%e196371196862%_
                             _%hd196372196865%_
                             _%tl196373196867%_
                             _%e196374196870%_
                             _%hd196375196873%_
                             _%tl196376196875%_
                             _%e196377196878%_
                             _%hd196378196881%_
                             _%tl196379196883%_)))))
                   (_%__match200967200968%_
                    (lambda (_%e196356196822%_
                             _%hd196357196825%_
                             _%tl196358196827%_
                             _%e196359196830%_
                             _%hd196360196833%_
                             _%tl196361196835%_
                             _%e196362196838%_
                             _%hd196363196841%_
                             _%tl196364196843%_
                             _%e196365196846%_
                             _%hd196366196849%_
                             _%tl196367196851%_
                             _%e196368196854%_
                             _%hd196369196857%_
                             _%tl196370196859%_
                             _%e196371196862%_
                             _%hd196372196865%_
                             _%tl196373196867%_
                             _%e196374196870%_
                             _%hd196375196873%_
                             _%tl196376196875%_
                             _%e196377196878%_
                             _%hd196378196881%_
                             _%tl196379196883%_
                             _%e196380196886%_
                             _%hd196381196889%_
                             _%tl196382196891%_
                             _%e196383196894%_
                             _%hd196384196897%_
                             _%tl196385196899%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl196379196883%_))
                          (_%__match200969200970%_
                           _%e196356196822%_
                           _%hd196357196825%_
                           _%tl196358196827%_
                           _%e196359196830%_
                           _%hd196360196833%_
                           _%tl196361196835%_
                           _%e196362196838%_
                           _%hd196363196841%_
                           _%tl196364196843%_
                           _%e196365196846%_
                           _%hd196366196849%_
                           _%tl196367196851%_
                           _%e196368196854%_
                           _%hd196369196857%_
                           _%tl196370196859%_
                           _%e196371196862%_
                           _%hd196372196865%_
                           _%tl196373196867%_
                           _%e196374196870%_
                           _%hd196375196873%_
                           _%tl196376196875%_
                           _%e196377196878%_
                           _%hd196378196881%_
                           _%tl196379196883%_
                           _%e196380196886%_
                           _%hd196381196889%_
                           _%tl196382196891%_
                           _%e196383196894%_
                           _%hd196384196897%_
                           _%tl196385196899%_)
                          (_%__match201047201048%_
                           _%e196356196822%_
                           _%hd196357196825%_
                           _%tl196358196827%_
                           _%e196359196830%_
                           _%hd196360196833%_
                           _%tl196361196835%_
                           _%e196362196838%_
                           _%hd196363196841%_
                           _%tl196364196843%_
                           _%e196365196846%_
                           _%hd196366196849%_
                           _%tl196367196851%_
                           _%e196368196854%_
                           _%hd196369196857%_
                           _%tl196370196859%_
                           _%e196371196862%_
                           _%hd196372196865%_
                           _%tl196373196867%_
                           _%e196374196870%_
                           _%hd196375196873%_
                           _%tl196376196875%_
                           _%e196377196878%_
                           _%hd196378196881%_
                           _%tl196379196883%_
                           _%e196380196886%_
                           _%hd196381196889%_
                           _%tl196382196891%_
                           _%e196383196894%_
                           _%hd196384196897%_
                           _%tl196385196899%_))))
                   (_%__match200957200958%_
                    (lambda (_%e196356196822%_
                             _%hd196357196825%_
                             _%tl196358196827%_
                             _%e196359196830%_
                             _%hd196360196833%_
                             _%tl196361196835%_
                             _%e196362196838%_
                             _%hd196363196841%_
                             _%tl196364196843%_
                             _%e196365196846%_
                             _%hd196366196849%_
                             _%tl196367196851%_
                             _%e196368196854%_
                             _%hd196369196857%_
                             _%tl196370196859%_
                             _%e196371196862%_
                             _%hd196372196865%_
                             _%tl196373196867%_
                             _%e196374196870%_
                             _%hd196375196873%_
                             _%tl196376196875%_
                             _%e196377196878%_
                             _%hd196378196881%_
                             _%tl196379196883%_
                             _%e196380196886%_
                             _%hd196381196889%_
                             _%tl196382196891%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd196381196889%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196382196891%_))
                              (let ((_%e196383196894%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl196382196891%_))))
                                (let ((_%tl196385196899%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196383196894%_)))
                                      (_%hd196384196897%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196383196894%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl196385196899%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl196379196883%_))
                                          (_%__match200969200970%_
                                           _%e196356196822%_
                                           _%hd196357196825%_
                                           _%tl196358196827%_
                                           _%e196359196830%_
                                           _%hd196360196833%_
                                           _%tl196361196835%_
                                           _%e196362196838%_
                                           _%hd196363196841%_
                                           _%tl196364196843%_
                                           _%e196365196846%_
                                           _%hd196366196849%_
                                           _%tl196367196851%_
                                           _%e196368196854%_
                                           _%hd196369196857%_
                                           _%tl196370196859%_
                                           _%e196371196862%_
                                           _%hd196372196865%_
                                           _%tl196373196867%_
                                           _%e196374196870%_
                                           _%hd196375196873%_
                                           _%tl196376196875%_
                                           _%e196377196878%_
                                           _%hd196378196881%_
                                           _%tl196379196883%_
                                           _%e196380196886%_
                                           _%hd196381196889%_
                                           _%tl196382196891%_
                                           _%e196383196894%_
                                           _%hd196384196897%_
                                           _%tl196385196899%_)
                                          (_%__match201047201048%_
                                           _%e196356196822%_
                                           _%hd196357196825%_
                                           _%tl196358196827%_
                                           _%e196359196830%_
                                           _%hd196360196833%_
                                           _%tl196361196835%_
                                           _%e196362196838%_
                                           _%hd196363196841%_
                                           _%tl196364196843%_
                                           _%e196365196846%_
                                           _%hd196366196849%_
                                           _%tl196367196851%_
                                           _%e196368196854%_
                                           _%hd196369196857%_
                                           _%tl196370196859%_
                                           _%e196371196862%_
                                           _%hd196372196865%_
                                           _%tl196373196867%_
                                           _%e196374196870%_
                                           _%hd196375196873%_
                                           _%tl196376196875%_
                                           _%e196377196878%_
                                           _%hd196378196881%_
                                           _%tl196379196883%_
                                           _%e196380196886%_
                                           _%hd196381196889%_
                                           _%tl196382196891%_
                                           _%e196383196894%_
                                           _%hd196384196897%_
                                           _%tl196385196899%_))
                                      (_%__match201171201172%_
                                       _%e196356196822%_
                                       _%hd196357196825%_
                                       _%tl196358196827%_
                                       _%e196359196830%_
                                       _%hd196360196833%_
                                       _%tl196361196835%_
                                       _%e196362196838%_
                                       _%hd196363196841%_
                                       _%tl196364196843%_
                                       _%e196365196846%_
                                       _%hd196366196849%_
                                       _%tl196367196851%_
                                       _%e196368196854%_
                                       _%hd196369196857%_
                                       _%tl196370196859%_
                                       _%e196371196862%_
                                       _%hd196372196865%_
                                       _%tl196373196867%_
                                       _%e196374196870%_
                                       _%hd196375196873%_
                                       _%tl196376196875%_
                                       _%e196377196878%_
                                       _%hd196378196881%_
                                       _%tl196379196883%_))))
                              (_%__match201171201172%_
                               _%e196356196822%_
                               _%hd196357196825%_
                               _%tl196358196827%_
                               _%e196359196830%_
                               _%hd196360196833%_
                               _%tl196361196835%_
                               _%e196362196838%_
                               _%hd196363196841%_
                               _%tl196364196843%_
                               _%e196365196846%_
                               _%hd196366196849%_
                               _%tl196367196851%_
                               _%e196368196854%_
                               _%hd196369196857%_
                               _%tl196370196859%_
                               _%e196371196862%_
                               _%hd196372196865%_
                               _%tl196373196867%_
                               _%e196374196870%_
                               _%hd196375196873%_
                               _%tl196376196875%_
                               _%e196377196878%_
                               _%hd196378196881%_
                               _%tl196379196883%_))
                          (_%__match201171201172%_
                           _%e196356196822%_
                           _%hd196357196825%_
                           _%tl196358196827%_
                           _%e196359196830%_
                           _%hd196360196833%_
                           _%tl196361196835%_
                           _%e196362196838%_
                           _%hd196363196841%_
                           _%tl196364196843%_
                           _%e196365196846%_
                           _%hd196366196849%_
                           _%tl196367196851%_
                           _%e196368196854%_
                           _%hd196369196857%_
                           _%tl196370196859%_
                           _%e196371196862%_
                           _%hd196372196865%_
                           _%tl196373196867%_
                           _%e196374196870%_
                           _%hd196375196873%_
                           _%tl196376196875%_
                           _%e196377196878%_
                           _%hd196378196881%_
                           _%tl196379196883%_))))
                   (_%__match200889200890%_
                    (lambda (_%e196305196941%_
                             _%hd196306196944%_
                             _%tl196307196946%_
                             _%e196308196949%_
                             _%hd196309196952%_
                             _%tl196310196954%_
                             _%e196311196957%_
                             _%hd196312196960%_
                             _%tl196313196962%_
                             _%e196314196965%_
                             _%hd196315196968%_
                             _%tl196316196970%_
                             _%e196317196973%_
                             _%hd196318196976%_
                             _%tl196319196978%_
                             _%e196320196981%_
                             _%hd196321196984%_
                             _%tl196322196986%_
                             _%e196323196989%_
                             _%hd196324196992%_
                             _%tl196325196994%_
                             _%e196326196997%_
                             _%hd196327197000%_
                             _%tl196328197002%_
                             _%e196329197005%_
                             _%hd196330197008%_
                             _%tl196331197010%_
                             _%e196332197013%_
                             _%hd196333197016%_
                             _%tl196334197018%_
                             _%e196335197021%_
                             _%hd196336197024%_
                             _%tl196337197026%_
                             _%e196338197029%_
                             _%hd196339197032%_
                             _%tl196340197034%_
                             _%e196341197037%_
                             _%hd196342197040%_
                             _%tl196343197042%_
                             _%__splice200682200683%_
                             _%target196344197045%_
                             _%tl196346197047%_)
                      (letrec ((_%loop196347197050%_
                                (lambda (_%hd196345197053%_
                                         _%args196351197055%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd196345197053%_))
                                      (let ((_%e196348197057%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd196345197053%_))))
                                        (let ((_%lp-tl196350197062%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196348197057%_)))
                                              (_%lp-hd196349197060%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196348197057%_))))
                                          (_%loop196347197050%_
                                           _%lp-tl196350197062%_
                                           (cons _%lp-hd196349197060%_
                                                 _%args196351197055%_))))
                                      (let ((_%args196352197065%_
                                             (reverse _%args196351197055%_)))
                                        (let ((_%g196300197067%_
                                               _%args196352197065%_)
                                              (_%g196301197068%_
                                               _%hd196342197040%_)
                                              (_%g196302197069%_
                                               _%hd196333197016%_)
                                              (_%g196303197070%_
                                               _%hd196324196992%_)
                                              (_%g196304197071%_
                                               _%hd196315196968%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g196304197071%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g196303197070%_
                                                      'call-method))
                                                   (let ((__tmp201836
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self196246%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g196302197069%_
                                                      __tmp201836)))
                                              (_%__kont200680200681%_
                                               _%g196300197067%_
                                               _%g196301197068%_
                                               _%g196302197069%_
                                               _%g196303197070%_
                                               _%g196304197071%_)
                                              (_%__kont200692200693%_))))))))
                        (_%loop196347197050%_ _%target196344197045%_ '()))))
                   (_%__match200847200848%_
                    (lambda (_%e196305196941%_
                             _%hd196306196944%_
                             _%tl196307196946%_
                             _%e196308196949%_
                             _%hd196309196952%_
                             _%tl196310196954%_
                             _%e196311196957%_
                             _%hd196312196960%_
                             _%tl196313196962%_
                             _%e196314196965%_
                             _%hd196315196968%_
                             _%tl196316196970%_
                             _%e196317196973%_
                             _%hd196318196976%_
                             _%tl196319196978%_
                             _%e196320196981%_
                             _%hd196321196984%_
                             _%tl196322196986%_
                             _%e196323196989%_
                             _%hd196324196992%_
                             _%tl196325196994%_
                             _%e196326196997%_
                             _%hd196327197000%_
                             _%tl196328197002%_
                             _%e196329197005%_
                             _%hd196330197008%_
                             _%tl196331197010%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd196330197008%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196331197010%_))
                              (let ((_%e196332197013%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl196331197010%_))))
                                (let ((_%tl196334197018%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196332197013%_)))
                                      (_%hd196333197016%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196332197013%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl196334197018%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl196328197002%_))
                                          (let ((_%e196335197021%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl196328197002%_))))
                                            (let ((_%tl196337197026%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e196335197021%_)))
                                                  (_%hd196336197024%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e196335197021%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd196336197024%_))
                                                  (let ((_%e196338197029%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd196336197024%_))))
                                                    (let ((_%tl196340197034%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e196338197029%_)))
                                                          (_%hd196339197032%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e196338197029%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd196339197032%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd196339197032%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl196340197034%_))
                          (let ((_%e196341197037%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl196340197034%_))))
                            (let ((_%tl196343197042%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e196341197037%_)))
                                  (_%hd196342197040%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e196341197037%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl196343197042%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl196337197026%_))
                                      (let ((_%__splice200682200683%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl196337197026%_
                                                '0))))
                                        (let ((_%tl196346197047%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice200682200683%_
                                                  '1)))
                                              (_%target196344197045%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice200682200683%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196346197047%_))
                                              (_%__match200889200890%_
                                               _%e196305196941%_
                                               _%hd196306196944%_
                                               _%tl196307196946%_
                                               _%e196308196949%_
                                               _%hd196309196952%_
                                               _%tl196310196954%_
                                               _%e196311196957%_
                                               _%hd196312196960%_
                                               _%tl196313196962%_
                                               _%e196314196965%_
                                               _%hd196315196968%_
                                               _%tl196316196970%_
                                               _%e196317196973%_
                                               _%hd196318196976%_
                                               _%tl196319196978%_
                                               _%e196320196981%_
                                               _%hd196321196984%_
                                               _%tl196322196986%_
                                               _%e196323196989%_
                                               _%hd196324196992%_
                                               _%tl196325196994%_
                                               _%e196326196997%_
                                               _%hd196327197000%_
                                               _%tl196328197002%_
                                               _%e196329197005%_
                                               _%hd196330197008%_
                                               _%tl196331197010%_
                                               _%e196332197013%_
                                               _%hd196333197016%_
                                               _%tl196334197018%_
                                               _%e196335197021%_
                                               _%hd196336197024%_
                                               _%tl196337197026%_
                                               _%e196338197029%_
                                               _%hd196339197032%_
                                               _%tl196340197034%_
                                               _%e196341197037%_
                                               _%hd196342197040%_
                                               _%tl196343197042%_
                                               _%__splice200682200683%_
                                               _%target196344197045%_
                                               _%tl196346197047%_)
                                              (_%__kont200692200693%_))))
                                      (_%__kont200692200693%_))
                                  (_%__kont200692200693%_))))
                          (_%__kont200692200693%_))
                      (_%__kont200692200693%_))
                  (_%__kont200692200693%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont200692200693%_))))
                                          (_%__match201171201172%_
                                           _%e196305196941%_
                                           _%hd196306196944%_
                                           _%tl196307196946%_
                                           _%e196308196949%_
                                           _%hd196309196952%_
                                           _%tl196310196954%_
                                           _%e196311196957%_
                                           _%hd196312196960%_
                                           _%tl196313196962%_
                                           _%e196314196965%_
                                           _%hd196315196968%_
                                           _%tl196316196970%_
                                           _%e196317196973%_
                                           _%hd196318196976%_
                                           _%tl196319196978%_
                                           _%e196320196981%_
                                           _%hd196321196984%_
                                           _%tl196322196986%_
                                           _%e196323196989%_
                                           _%hd196324196992%_
                                           _%tl196325196994%_
                                           _%e196326196997%_
                                           _%hd196327197000%_
                                           _%tl196328197002%_))
                                      (_%__match201171201172%_
                                       _%e196305196941%_
                                       _%hd196306196944%_
                                       _%tl196307196946%_
                                       _%e196308196949%_
                                       _%hd196309196952%_
                                       _%tl196310196954%_
                                       _%e196311196957%_
                                       _%hd196312196960%_
                                       _%tl196313196962%_
                                       _%e196314196965%_
                                       _%hd196315196968%_
                                       _%tl196316196970%_
                                       _%e196317196973%_
                                       _%hd196318196976%_
                                       _%tl196319196978%_
                                       _%e196320196981%_
                                       _%hd196321196984%_
                                       _%tl196322196986%_
                                       _%e196323196989%_
                                       _%hd196324196992%_
                                       _%tl196325196994%_
                                       _%e196326196997%_
                                       _%hd196327197000%_
                                       _%tl196328197002%_))))
                              (_%__match201171201172%_
                               _%e196305196941%_
                               _%hd196306196944%_
                               _%tl196307196946%_
                               _%e196308196949%_
                               _%hd196309196952%_
                               _%tl196310196954%_
                               _%e196311196957%_
                               _%hd196312196960%_
                               _%tl196313196962%_
                               _%e196314196965%_
                               _%hd196315196968%_
                               _%tl196316196970%_
                               _%e196317196973%_
                               _%hd196318196976%_
                               _%tl196319196978%_
                               _%e196320196981%_
                               _%hd196321196984%_
                               _%tl196322196986%_
                               _%e196323196989%_
                               _%hd196324196992%_
                               _%tl196325196994%_
                               _%e196326196997%_
                               _%hd196327197000%_
                               _%tl196328197002%_))
                          (_%__match200957200958%_
                           _%e196305196941%_
                           _%hd196306196944%_
                           _%tl196307196946%_
                           _%e196308196949%_
                           _%hd196309196952%_
                           _%tl196310196954%_
                           _%e196311196957%_
                           _%hd196312196960%_
                           _%tl196313196962%_
                           _%e196314196965%_
                           _%hd196315196968%_
                           _%tl196316196970%_
                           _%e196317196973%_
                           _%hd196318196976%_
                           _%tl196319196978%_
                           _%e196320196981%_
                           _%hd196321196984%_
                           _%tl196322196986%_
                           _%e196323196989%_
                           _%hd196324196992%_
                           _%tl196325196994%_
                           _%e196326196997%_
                           _%hd196327197000%_
                           _%tl196328197002%_
                           _%e196329197005%_
                           _%hd196330197008%_
                           _%tl196331197010%_))))
                   (_%__match200779200780%_
                    (lambda (_%e196261197128%_
                             _%hd196262197131%_
                             _%tl196263197133%_
                             _%e196264197136%_
                             _%hd196265197139%_
                             _%tl196266197141%_
                             _%e196267197144%_
                             _%hd196268197147%_
                             _%tl196269197149%_
                             _%e196270197152%_
                             _%hd196271197155%_
                             _%tl196272197157%_
                             _%e196273197160%_
                             _%hd196274197163%_
                             _%tl196275197165%_
                             _%e196276197168%_
                             _%hd196277197171%_
                             _%tl196278197173%_
                             _%e196279197176%_
                             _%hd196280197179%_
                             _%tl196281197181%_
                             _%e196282197184%_
                             _%hd196283197187%_
                             _%tl196284197189%_
                             _%e196285197192%_
                             _%hd196286197195%_
                             _%tl196287197197%_
                             _%e196288197200%_
                             _%hd196289197203%_
                             _%tl196290197205%_
                             _%__splice200678200679%_
                             _%target196291197208%_
                             _%tl196293197210%_)
                      (letrec ((_%loop196294197213%_
                                (lambda (_%hd196292197216%_
                                         _%args196298197218%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd196292197216%_))
                                      (let ((_%e196295197220%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd196292197216%_))))
                                        (let ((_%lp-tl196297197225%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196295197220%_)))
                                              (_%lp-hd196296197223%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196295197220%_))))
                                          (_%loop196294197213%_
                                           _%lp-tl196297197225%_
                                           (cons _%lp-hd196296197223%_
                                                 _%args196298197218%_))))
                                      (let ((_%args196299197228%_
                                             (reverse _%args196298197218%_)))
                                        (let ((_%g196257197230%_
                                               _%args196299197228%_)
                                              (_%g196258197231%_
                                               _%hd196289197203%_)
                                              (_%g196259197232%_
                                               _%hd196280197179%_)
                                              (_%g196260197233%_
                                               _%hd196271197155%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g196260197233%_
                                                      'call-method))
                                                   (let ((__tmp201837
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self196246%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g196259197232%_
                                                      __tmp201837)))
                                              (_%__kont200676200677%_
                                               _%g196257197230%_
                                               _%g196258197231%_
                                               _%g196259197232%_
                                               _%g196260197233%_)
                                              (_%__match200967200968%_
                                               _%e196261197128%_
                                               _%hd196262197131%_
                                               _%tl196263197133%_
                                               _%e196264197136%_
                                               _%hd196265197139%_
                                               _%tl196266197141%_
                                               _%e196267197144%_
                                               _%hd196268197147%_
                                               _%tl196269197149%_
                                               _%e196270197152%_
                                               _%hd196271197155%_
                                               _%tl196272197157%_
                                               _%e196273197160%_
                                               _%hd196274197163%_
                                               _%tl196275197165%_
                                               _%e196276197168%_
                                               _%hd196277197171%_
                                               _%tl196278197173%_
                                               _%e196279197176%_
                                               _%hd196280197179%_
                                               _%tl196281197181%_
                                               _%e196282197184%_
                                               _%hd196283197187%_
                                               _%tl196284197189%_
                                               _%e196285197192%_
                                               _%hd196286197195%_
                                               _%tl196287197197%_
                                               _%e196288197200%_
                                               _%hd196289197203%_
                                               _%tl196290197205%_))))))))
                        (_%loop196294197213%_ _%target196291197208%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx200674200675%_))
                  (let ((_%e196261197128%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx200674200675%_))))
                    (let ((_%tl196263197133%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e196261197128%_)))
                          (_%hd196262197131%_
                           (let ()
                             (declare (not safe))
                             (##car _%e196261197128%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl196263197133%_))
                          (let ((_%e196264197136%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl196263197133%_))))
                            (let ((_%tl196266197141%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e196264197136%_)))
                                  (_%hd196265197139%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e196264197136%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd196265197139%_))
                                  (let ((_%e196267197144%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd196265197139%_))))
                                    (let ((_%tl196269197149%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e196267197144%_)))
                                          (_%hd196268197147%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e196267197144%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd196268197147%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd196268197147%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl196269197149%_))
                                                  (let ((_%e196270197152%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl196269197149%_))))
                                                    (let ((_%tl196272197157%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e196270197152%_)))
                                                          (_%hd196271197155%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e196270197152%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl196272197157%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl196266197141%_))
                      (let ((_%e196273197160%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl196266197141%_))))
                        (let ((_%tl196275197165%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196273197160%_)))
                              (_%hd196274197163%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196273197160%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd196274197163%_))
                              (let ((_%e196276197168%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd196274197163%_))))
                                (let ((_%tl196278197173%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196276197168%_)))
                                      (_%hd196277197171%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196276197168%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd196277197171%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd196277197171%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl196278197173%_))
                                              (let ((_%e196279197176%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl196278197173%_))))
                                                (let ((_%tl196281197181%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e196279197176%_)))
                                                      (_%hd196280197179%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e196279197176%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl196281197181%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl196275197165%_))
                                                          (let ((_%e196282197184%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl196275197165%_))))
                    (let ((_%tl196284197189%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e196282197184%_)))
                          (_%hd196283197187%_
                           (let ()
                             (declare (not safe))
                             (##car _%e196282197184%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd196283197187%_))
                          (let ((_%e196285197192%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd196283197187%_))))
                            (let ((_%tl196287197197%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e196285197192%_)))
                                  (_%hd196286197195%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e196285197192%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd196286197195%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd196286197195%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl196287197197%_))
                                          (let ((_%e196288197200%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl196287197197%_))))
                                            (let ((_%tl196290197205%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e196288197200%_)))
                                                  (_%hd196289197203%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e196288197200%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl196290197205%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl196284197189%_))
                                                      (let ((_%__splice200678200679%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl196284197189%_
                        '0))))
                (let ((_%tl196293197210%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice200678200679%_ '1)))
                      (_%target196291197208%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice200678200679%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl196293197210%_))
                      (_%__match200779200780%_
                       _%e196261197128%_
                       _%hd196262197131%_
                       _%tl196263197133%_
                       _%e196264197136%_
                       _%hd196265197139%_
                       _%tl196266197141%_
                       _%e196267197144%_
                       _%hd196268197147%_
                       _%tl196269197149%_
                       _%e196270197152%_
                       _%hd196271197155%_
                       _%tl196272197157%_
                       _%e196273197160%_
                       _%hd196274197163%_
                       _%tl196275197165%_
                       _%e196276197168%_
                       _%hd196277197171%_
                       _%tl196278197173%_
                       _%e196279197176%_
                       _%hd196280197179%_
                       _%tl196281197181%_
                       _%e196282197184%_
                       _%hd196283197187%_
                       _%tl196284197189%_
                       _%e196285197192%_
                       _%hd196286197195%_
                       _%tl196287197197%_
                       _%e196288197200%_
                       _%hd196289197203%_
                       _%tl196290197205%_
                       _%__splice200678200679%_
                       _%target196291197208%_
                       _%tl196293197210%_)
                      (_%__match200967200968%_
                       _%e196261197128%_
                       _%hd196262197131%_
                       _%tl196263197133%_
                       _%e196264197136%_
                       _%hd196265197139%_
                       _%tl196266197141%_
                       _%e196267197144%_
                       _%hd196268197147%_
                       _%tl196269197149%_
                       _%e196270197152%_
                       _%hd196271197155%_
                       _%tl196272197157%_
                       _%e196273197160%_
                       _%hd196274197163%_
                       _%tl196275197165%_
                       _%e196276197168%_
                       _%hd196277197171%_
                       _%tl196278197173%_
                       _%e196279197176%_
                       _%hd196280197179%_
                       _%tl196281197181%_
                       _%e196282197184%_
                       _%hd196283197187%_
                       _%tl196284197189%_
                       _%e196285197192%_
                       _%hd196286197195%_
                       _%tl196287197197%_
                       _%e196288197200%_
                       _%hd196289197203%_
                       _%tl196290197205%_))))
              (_%__match200967200968%_
               _%e196261197128%_
               _%hd196262197131%_
               _%tl196263197133%_
               _%e196264197136%_
               _%hd196265197139%_
               _%tl196266197141%_
               _%e196267197144%_
               _%hd196268197147%_
               _%tl196269197149%_
               _%e196270197152%_
               _%hd196271197155%_
               _%tl196272197157%_
               _%e196273197160%_
               _%hd196274197163%_
               _%tl196275197165%_
               _%e196276197168%_
               _%hd196277197171%_
               _%tl196278197173%_
               _%e196279197176%_
               _%hd196280197179%_
               _%tl196281197181%_
               _%e196282197184%_
               _%hd196283197187%_
               _%tl196284197189%_
               _%e196285197192%_
               _%hd196286197195%_
               _%tl196287197197%_
               _%e196288197200%_
               _%hd196289197203%_
               _%tl196290197205%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match201171201172%_
                                                   _%e196261197128%_
                                                   _%hd196262197131%_
                                                   _%tl196263197133%_
                                                   _%e196264197136%_
                                                   _%hd196265197139%_
                                                   _%tl196266197141%_
                                                   _%e196267197144%_
                                                   _%hd196268197147%_
                                                   _%tl196269197149%_
                                                   _%e196270197152%_
                                                   _%hd196271197155%_
                                                   _%tl196272197157%_
                                                   _%e196273197160%_
                                                   _%hd196274197163%_
                                                   _%tl196275197165%_
                                                   _%e196276197168%_
                                                   _%hd196277197171%_
                                                   _%tl196278197173%_
                                                   _%e196279197176%_
                                                   _%hd196280197179%_
                                                   _%tl196281197181%_
                                                   _%e196282197184%_
                                                   _%hd196283197187%_
                                                   _%tl196284197189%_))))
                                          (_%__match201171201172%_
                                           _%e196261197128%_
                                           _%hd196262197131%_
                                           _%tl196263197133%_
                                           _%e196264197136%_
                                           _%hd196265197139%_
                                           _%tl196266197141%_
                                           _%e196267197144%_
                                           _%hd196268197147%_
                                           _%tl196269197149%_
                                           _%e196270197152%_
                                           _%hd196271197155%_
                                           _%tl196272197157%_
                                           _%e196273197160%_
                                           _%hd196274197163%_
                                           _%tl196275197165%_
                                           _%e196276197168%_
                                           _%hd196277197171%_
                                           _%tl196278197173%_
                                           _%e196279197176%_
                                           _%hd196280197179%_
                                           _%tl196281197181%_
                                           _%e196282197184%_
                                           _%hd196283197187%_
                                           _%tl196284197189%_))
                                      (_%__match200847200848%_
                                       _%e196261197128%_
                                       _%hd196262197131%_
                                       _%tl196263197133%_
                                       _%e196264197136%_
                                       _%hd196265197139%_
                                       _%tl196266197141%_
                                       _%e196267197144%_
                                       _%hd196268197147%_
                                       _%tl196269197149%_
                                       _%e196270197152%_
                                       _%hd196271197155%_
                                       _%tl196272197157%_
                                       _%e196273197160%_
                                       _%hd196274197163%_
                                       _%tl196275197165%_
                                       _%e196276197168%_
                                       _%hd196277197171%_
                                       _%tl196278197173%_
                                       _%e196279197176%_
                                       _%hd196280197179%_
                                       _%tl196281197181%_
                                       _%e196282197184%_
                                       _%hd196283197187%_
                                       _%tl196284197189%_
                                       _%e196285197192%_
                                       _%hd196286197195%_
                                       _%tl196287197197%_))
                                  (_%__match201171201172%_
                                   _%e196261197128%_
                                   _%hd196262197131%_
                                   _%tl196263197133%_
                                   _%e196264197136%_
                                   _%hd196265197139%_
                                   _%tl196266197141%_
                                   _%e196267197144%_
                                   _%hd196268197147%_
                                   _%tl196269197149%_
                                   _%e196270197152%_
                                   _%hd196271197155%_
                                   _%tl196272197157%_
                                   _%e196273197160%_
                                   _%hd196274197163%_
                                   _%tl196275197165%_
                                   _%e196276197168%_
                                   _%hd196277197171%_
                                   _%tl196278197173%_
                                   _%e196279197176%_
                                   _%hd196280197179%_
                                   _%tl196281197181%_
                                   _%e196282197184%_
                                   _%hd196283197187%_
                                   _%tl196284197189%_))))
                          (_%__match201171201172%_
                           _%e196261197128%_
                           _%hd196262197131%_
                           _%tl196263197133%_
                           _%e196264197136%_
                           _%hd196265197139%_
                           _%tl196266197141%_
                           _%e196267197144%_
                           _%hd196268197147%_
                           _%tl196269197149%_
                           _%e196270197152%_
                           _%hd196271197155%_
                           _%tl196272197157%_
                           _%e196273197160%_
                           _%hd196274197163%_
                           _%tl196275197165%_
                           _%e196276197168%_
                           _%hd196277197171%_
                           _%tl196278197173%_
                           _%e196279197176%_
                           _%hd196280197179%_
                           _%tl196281197181%_
                           _%e196282197184%_
                           _%hd196283197187%_
                           _%tl196284197189%_))))
                  (_%__match201109201110%_
                   _%e196261197128%_
                   _%hd196262197131%_
                   _%tl196263197133%_
                   _%e196264197136%_
                   _%hd196265197139%_
                   _%tl196266197141%_
                   _%e196267197144%_
                   _%hd196268197147%_
                   _%tl196269197149%_
                   _%e196270197152%_
                   _%hd196271197155%_
                   _%tl196272197157%_
                   _%e196273197160%_
                   _%hd196274197163%_
                   _%tl196275197165%_
                   _%e196276197168%_
                   _%hd196277197171%_
                   _%tl196278197173%_
                   _%e196279197176%_
                   _%hd196280197179%_
                   _%tl196281197181%_))
              (_%__kont200692200693%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont200692200693%_))
                                          (_%__kont200692200693%_))
                                      (_%__kont200692200693%_))))
                              (_%__kont200692200693%_))))
                      (_%__kont200692200693%_))
                  (_%__kont200692200693%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont200692200693%_))
                                              (_%__kont200692200693%_))
                                          (_%__kont200692200693%_))))
                                  (_%__kont200692200693%_))))
                          (_%__kont200692200693%_))))
                  (_%__kont200692200693%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self195189%_ _%stx195190%_)
        (letrec ((_%force-e195192%_
                  (lambda (_%target196244%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target196244%_ '()))
                                      '()))))))
          (let* ((_%__stx201176201177%_ _%stx195190%_)
                 (_%g195200195422%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx201176201177%_)))))
            (let ((_%__kont201178201179%_
                   (lambda (_%g195202196190%_
                            _%g195203196191%_
                            _%g195204196192%_
                            _%g195205196193%_)
                     (let ((_%$method196238%_
                            (let ((__tmp201839
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self195189%_ 'methods)))
                                  (__tmp201838
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g195203196191%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp201839 __tmp201838)))
                           (_%args196239%_
                            (map (lambda (_%g196226196228%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self195189%_
                                      _%g196226196228%_)))
                                 (let ((__tmp201840
                                        (lambda (_%g196230196233%_
                                                 _%g196231196235%_)
                                          (cons _%g196230196233%_
                                                _%g196231196235%_))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp201840
                                    '()
                                    _%g195202196190%_)))))
                       (let ((__tmp201841
                              (cons '%#call
                                    (cons (_%force-e195192%_ _%$method196238%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self195189%_
                                                               'receiver))
                                                            '()))
                                                _%args196239%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp201841 _%stx195190%_)))))
                  (_%__kont201182201183%_
                   (lambda (_%g195245196024%_
                            _%g195246196025%_
                            _%g195247196026%_
                            _%g195248196027%_
                            _%g195249196028%_)
                     (let ((_%$method196080%_
                            (let ((__tmp201843
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self195189%_ 'methods)))
                                  (__tmp201842
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g195246196025%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp201843 __tmp201842)))
                           (_%args196081%_
                            (map (lambda (_%g196068196070%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self195189%_
                                      _%g196068196070%_)))
                                 (let ((__tmp201844
                                        (lambda (_%g196072196075%_
                                                 _%g196073196077%_)
                                          (cons _%g196072196075%_
                                                _%g196073196077%_))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp201844
                                    '()
                                    _%g195245196024%_)))))
                       (let ((__tmp201845
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e195192%_
                                                 _%$method196080%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self195189%_ 'receiver))
                          '()))
              _%args196081%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp201845 _%stx195190%_)))))
                  (_%__kont201186201187%_
                   (lambda (_%g195298195857%_
                            _%g195299195858%_
                            _%g195300195859%_)
                     (let* ((_%$field195891%_
                             (let ((__tmp201847
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self195189%_ 'slots)))
                                   (__tmp201846
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%g195298195857%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp201847 __tmp201846)))
                            (__tmp201848
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self195189%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field195891%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self195189%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp201848 _%stx195190%_))))
                  (_%__kont201188201189%_
                   (lambda (_%g195331195731%_
                            _%g195332195732%_
                            _%g195333195733%_
                            _%g195334195734%_)
                     (let ((_%$field195769%_
                            (let ((__tmp201850
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self195189%_ 'slots)))
                                  (__tmp201849
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g195332195732%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp201850 __tmp201849)))
                           (_%expr195770%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self195189%_
                               _%g195331195731%_))))
                       (let ((__tmp201851
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self195189%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field195769%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self195189%_ 'receiver))
                          '()))
              (cons _%expr195770%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp201851 _%stx195190%_)))))
                  (_%__kont201190201191%_
                   (lambda (_%g195368195603%_ _%g195369195604%_)
                     (let* ((_%accessor195626%_
                             (let ((__tmp201852
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g195369195604%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp201852)))
                            (_%klass195628%_
                             (let ((__tmp201853
                                    (##structure-ref
                                     _%accessor195626%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx195190%_
                                __tmp201853)))
                            (_%slot195630%_
                             (##structure-ref
                              _%accessor195626%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (if (##structure-ref
                                _%accessor195626%_
                                '4
                                gxc#!accessor::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass195628%_
                                      _%slot195630%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass195628%_
                                      '8
                                      '#f
                                      '#f))))
                           _%stx195190%_
                           (let* ((_%$field195636%_
                                   (let ((__tmp201854
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self195189%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp201854 _%slot195630%_)))
                                  (__tmp201855
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self195189%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field195636%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self195189%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp201855
                              _%stx195190%_))))))
                  (_%__kont201192201193%_
                   (lambda (_%g195391195498%_
                            _%g195392195499%_
                            _%g195393195500%_)
                     (let* ((_%mutator195528%_
                             (let ((__tmp201856
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g195393195500%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp201856)))
                            (_%klass195530%_
                             (let ((__tmp201857
                                    (##structure-ref
                                     _%mutator195528%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx195190%_
                                __tmp201857)))
                            (_%slot195532%_
                             (##structure-ref
                              _%mutator195528%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr195534%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self195189%_
                                _%g195391195498%_))))
                       (if (if (##structure-ref
                                _%mutator195528%_
                                '4
                                gxc#!mutator::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass195530%_
                                      _%slot195532%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass195530%_
                                      '8
                                      '#f
                                      '#f))))
                           (let ((__tmp201858
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%g195393195500%_
                                                          '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%g195392195499%_
                                                                '()))
                                                    (cons _%expr195534%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp201858 _%stx195190%_))
                           (let* ((_%$field195540%_
                                   (let ((__tmp201859
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self195189%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp201859 _%slot195532%_)))
                                  (__tmp201860
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self195189%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field195540%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self195189%_ 'receiver))
                               '()))
                   (cons _%expr195534%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp201860
                              _%stx195190%_))))))
                  (_%__kont201194201195%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self195189%_ _%stx195190%_)))))
              (let* ((_%__match201675201676%_
                      (lambda (_%e195394195434%_
                               _%hd195395195437%_
                               _%tl195396195439%_
                               _%e195397195442%_
                               _%hd195398195445%_
                               _%tl195399195447%_
                               _%e195400195450%_
                               _%hd195401195453%_
                               _%tl195402195455%_
                               _%e195403195458%_
                               _%hd195404195461%_
                               _%tl195405195463%_
                               _%e195406195466%_
                               _%hd195407195469%_
                               _%tl195408195471%_
                               _%e195409195474%_
                               _%hd195410195477%_
                               _%tl195411195479%_
                               _%e195412195482%_
                               _%hd195413195485%_
                               _%tl195414195487%_
                               _%e195415195490%_
                               _%hd195416195493%_
                               _%tl195417195495%_)
                        (let ((_%g195391195498%_ _%hd195416195493%_)
                              (_%g195392195499%_ _%hd195413195485%_)
                              (_%g195393195500%_ _%hd195404195461%_))
                          (if (and (let ((__tmp201861
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self195189%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g195392195499%_
                                      __tmp201861))
                                   (let ((__tmp201862
                                          (let ((__tmp201863
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g195393195500%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp201863))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp201862
                                      'gxc#!mutator::t)))
                              (_%__kont201192201193%_
                               _%g195391195498%_
                               _%g195392195499%_
                               _%g195393195500%_)
                              (_%__kont201194201195%_)))))
                     (_%__match201673201674%_
                      (lambda (_%e195394195434%_
                               _%hd195395195437%_
                               _%tl195396195439%_
                               _%e195397195442%_
                               _%hd195398195445%_
                               _%tl195399195447%_
                               _%e195400195450%_
                               _%hd195401195453%_
                               _%tl195402195455%_
                               _%e195403195458%_
                               _%hd195404195461%_
                               _%tl195405195463%_
                               _%e195406195466%_
                               _%hd195407195469%_
                               _%tl195408195471%_
                               _%e195409195474%_
                               _%hd195410195477%_
                               _%tl195411195479%_
                               _%e195412195482%_
                               _%hd195413195485%_
                               _%tl195414195487%_
                               _%e195415195490%_
                               _%hd195416195493%_
                               _%tl195417195495%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl195417195495%_))
                            (_%__match201675201676%_
                             _%e195394195434%_
                             _%hd195395195437%_
                             _%tl195396195439%_
                             _%e195397195442%_
                             _%hd195398195445%_
                             _%tl195399195447%_
                             _%e195400195450%_
                             _%hd195401195453%_
                             _%tl195402195455%_
                             _%e195403195458%_
                             _%hd195404195461%_
                             _%tl195405195463%_
                             _%e195406195466%_
                             _%hd195407195469%_
                             _%tl195408195471%_
                             _%e195409195474%_
                             _%hd195410195477%_
                             _%tl195411195479%_
                             _%e195412195482%_
                             _%hd195413195485%_
                             _%tl195414195487%_
                             _%e195415195490%_
                             _%hd195416195493%_
                             _%tl195417195495%_)
                            (_%__kont201194201195%_))))
                     (_%__match201667201668%_
                      (lambda (_%e195394195434%_
                               _%hd195395195437%_
                               _%tl195396195439%_
                               _%e195397195442%_
                               _%hd195398195445%_
                               _%tl195399195447%_
                               _%e195400195450%_
                               _%hd195401195453%_
                               _%tl195402195455%_
                               _%e195403195458%_
                               _%hd195404195461%_
                               _%tl195405195463%_
                               _%e195406195466%_
                               _%hd195407195469%_
                               _%tl195408195471%_
                               _%e195409195474%_
                               _%hd195410195477%_
                               _%tl195411195479%_
                               _%e195412195482%_
                               _%hd195413195485%_
                               _%tl195414195487%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl195408195471%_))
                            (let ((_%e195415195490%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl195408195471%_))))
                              (let ((_%tl195417195495%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e195415195490%_)))
                                    (_%hd195416195493%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e195415195490%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl195417195495%_))
                                    (_%__match201675201676%_
                                     _%e195394195434%_
                                     _%hd195395195437%_
                                     _%tl195396195439%_
                                     _%e195397195442%_
                                     _%hd195398195445%_
                                     _%tl195399195447%_
                                     _%e195400195450%_
                                     _%hd195401195453%_
                                     _%tl195402195455%_
                                     _%e195403195458%_
                                     _%hd195404195461%_
                                     _%tl195405195463%_
                                     _%e195406195466%_
                                     _%hd195407195469%_
                                     _%tl195408195471%_
                                     _%e195409195474%_
                                     _%hd195410195477%_
                                     _%tl195411195479%_
                                     _%e195412195482%_
                                     _%hd195413195485%_
                                     _%tl195414195487%_
                                     _%e195415195490%_
                                     _%hd195416195493%_
                                     _%tl195417195495%_)
                                    (_%__kont201194201195%_))))
                            (_%__kont201194201195%_))))
                     (_%__match201613201614%_
                      (lambda (_%e195370195547%_
                               _%hd195371195550%_
                               _%tl195372195552%_
                               _%e195373195555%_
                               _%hd195374195558%_
                               _%tl195375195560%_
                               _%e195376195563%_
                               _%hd195377195566%_
                               _%tl195378195568%_
                               _%e195379195571%_
                               _%hd195380195574%_
                               _%tl195381195576%_
                               _%e195382195579%_
                               _%hd195383195582%_
                               _%tl195384195584%_
                               _%e195385195587%_
                               _%hd195386195590%_
                               _%tl195387195592%_
                               _%e195388195595%_
                               _%hd195389195598%_
                               _%tl195390195600%_)
                        (let ((_%g195368195603%_ _%hd195389195598%_)
                              (_%g195369195604%_ _%hd195380195574%_))
                          (if (and (let ((__tmp201864
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self195189%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g195368195603%_
                                      __tmp201864))
                                   (let ((__tmp201865
                                          (let ((__tmp201866
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g195369195604%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp201866))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp201865
                                      'gxc#!accessor::t)))
                              (_%__kont201190201191%_
                               _%g195368195603%_
                               _%g195369195604%_)
                              (_%__kont201194201195%_)))))
                     (_%__match201611201612%_
                      (lambda (_%e195370195547%_
                               _%hd195371195550%_
                               _%tl195372195552%_
                               _%e195373195555%_
                               _%hd195374195558%_
                               _%tl195375195560%_
                               _%e195376195563%_
                               _%hd195377195566%_
                               _%tl195378195568%_
                               _%e195379195571%_
                               _%hd195380195574%_
                               _%tl195381195576%_
                               _%e195382195579%_
                               _%hd195383195582%_
                               _%tl195384195584%_
                               _%e195385195587%_
                               _%hd195386195590%_
                               _%tl195387195592%_
                               _%e195388195595%_
                               _%hd195389195598%_
                               _%tl195390195600%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl195384195584%_))
                            (_%__match201613201614%_
                             _%e195370195547%_
                             _%hd195371195550%_
                             _%tl195372195552%_
                             _%e195373195555%_
                             _%hd195374195558%_
                             _%tl195375195560%_
                             _%e195376195563%_
                             _%hd195377195566%_
                             _%tl195378195568%_
                             _%e195379195571%_
                             _%hd195380195574%_
                             _%tl195381195576%_
                             _%e195382195579%_
                             _%hd195383195582%_
                             _%tl195384195584%_
                             _%e195385195587%_
                             _%hd195386195590%_
                             _%tl195387195592%_
                             _%e195388195595%_
                             _%hd195389195598%_
                             _%tl195390195600%_)
                            (_%__match201667201668%_
                             _%e195370195547%_
                             _%hd195371195550%_
                             _%tl195372195552%_
                             _%e195373195555%_
                             _%hd195374195558%_
                             _%tl195375195560%_
                             _%e195376195563%_
                             _%hd195377195566%_
                             _%tl195378195568%_
                             _%e195379195571%_
                             _%hd195380195574%_
                             _%tl195381195576%_
                             _%e195382195579%_
                             _%hd195383195582%_
                             _%tl195384195584%_
                             _%e195385195587%_
                             _%hd195386195590%_
                             _%tl195387195592%_
                             _%e195388195595%_
                             _%hd195389195598%_
                             _%tl195390195600%_))))
                     (_%__match201557201558%_
                      (lambda (_%e195335195643%_
                               _%hd195336195646%_
                               _%tl195337195648%_
                               _%e195338195651%_
                               _%hd195339195654%_
                               _%tl195340195656%_
                               _%e195341195659%_
                               _%hd195342195662%_
                               _%tl195343195664%_
                               _%e195344195667%_
                               _%hd195345195670%_
                               _%tl195346195672%_
                               _%e195347195675%_
                               _%hd195348195678%_
                               _%tl195349195680%_
                               _%e195350195683%_
                               _%hd195351195686%_
                               _%tl195352195688%_
                               _%e195353195691%_
                               _%hd195354195694%_
                               _%tl195355195696%_
                               _%e195356195699%_
                               _%hd195357195702%_
                               _%tl195358195704%_
                               _%e195359195707%_
                               _%hd195360195710%_
                               _%tl195361195712%_
                               _%e195362195715%_
                               _%hd195363195718%_
                               _%tl195364195720%_
                               _%e195365195723%_
                               _%hd195366195726%_
                               _%tl195367195728%_)
                        (let ((_%g195331195731%_ _%hd195366195726%_)
                              (_%g195332195732%_ _%hd195363195718%_)
                              (_%g195333195733%_ _%hd195354195694%_)
                              (_%g195334195734%_ _%hd195345195670%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g195334195734%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g195334195734%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp201867
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self195189%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g195333195733%_
                                      __tmp201867)))
                              (_%__kont201188201189%_
                               _%g195331195731%_
                               _%g195332195732%_
                               _%g195333195733%_
                               _%g195334195734%_)
                              (_%__kont201194201195%_)))))
                     (_%__match201549201550%_
                      (lambda (_%e195335195643%_
                               _%hd195336195646%_
                               _%tl195337195648%_
                               _%e195338195651%_
                               _%hd195339195654%_
                               _%tl195340195656%_
                               _%e195341195659%_
                               _%hd195342195662%_
                               _%tl195343195664%_
                               _%e195344195667%_
                               _%hd195345195670%_
                               _%tl195346195672%_
                               _%e195347195675%_
                               _%hd195348195678%_
                               _%tl195349195680%_
                               _%e195350195683%_
                               _%hd195351195686%_
                               _%tl195352195688%_
                               _%e195353195691%_
                               _%hd195354195694%_
                               _%tl195355195696%_
                               _%e195356195699%_
                               _%hd195357195702%_
                               _%tl195358195704%_
                               _%e195359195707%_
                               _%hd195360195710%_
                               _%tl195361195712%_
                               _%e195362195715%_
                               _%hd195363195718%_
                               _%tl195364195720%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl195358195704%_))
                            (let ((_%e195365195723%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl195358195704%_))))
                              (let ((_%tl195367195728%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e195365195723%_)))
                                    (_%hd195366195726%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e195365195723%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl195367195728%_))
                                    (_%__match201557201558%_
                                     _%e195335195643%_
                                     _%hd195336195646%_
                                     _%tl195337195648%_
                                     _%e195338195651%_
                                     _%hd195339195654%_
                                     _%tl195340195656%_
                                     _%e195341195659%_
                                     _%hd195342195662%_
                                     _%tl195343195664%_
                                     _%e195344195667%_
                                     _%hd195345195670%_
                                     _%tl195346195672%_
                                     _%e195347195675%_
                                     _%hd195348195678%_
                                     _%tl195349195680%_
                                     _%e195350195683%_
                                     _%hd195351195686%_
                                     _%tl195352195688%_
                                     _%e195353195691%_
                                     _%hd195354195694%_
                                     _%tl195355195696%_
                                     _%e195356195699%_
                                     _%hd195357195702%_
                                     _%tl195358195704%_
                                     _%e195359195707%_
                                     _%hd195360195710%_
                                     _%tl195361195712%_
                                     _%e195362195715%_
                                     _%hd195363195718%_
                                     _%tl195364195720%_
                                     _%e195365195723%_
                                     _%hd195366195726%_
                                     _%tl195367195728%_)
                                    (_%__kont201194201195%_))))
                            (_%__match201673201674%_
                             _%e195335195643%_
                             _%hd195336195646%_
                             _%tl195337195648%_
                             _%e195338195651%_
                             _%hd195339195654%_
                             _%tl195340195656%_
                             _%e195341195659%_
                             _%hd195342195662%_
                             _%tl195343195664%_
                             _%e195344195667%_
                             _%hd195345195670%_
                             _%tl195346195672%_
                             _%e195347195675%_
                             _%hd195348195678%_
                             _%tl195349195680%_
                             _%e195350195683%_
                             _%hd195351195686%_
                             _%tl195352195688%_
                             _%e195353195691%_
                             _%hd195354195694%_
                             _%tl195355195696%_
                             _%e195356195699%_
                             _%hd195357195702%_
                             _%tl195358195704%_))))
                     (_%__match201471201472%_
                      (lambda (_%e195301195777%_
                               _%hd195302195780%_
                               _%tl195303195782%_
                               _%e195304195785%_
                               _%hd195305195788%_
                               _%tl195306195790%_
                               _%e195307195793%_
                               _%hd195308195796%_
                               _%tl195309195798%_
                               _%e195310195801%_
                               _%hd195311195804%_
                               _%tl195312195806%_
                               _%e195313195809%_
                               _%hd195314195812%_
                               _%tl195315195814%_
                               _%e195316195817%_
                               _%hd195317195820%_
                               _%tl195318195822%_
                               _%e195319195825%_
                               _%hd195320195828%_
                               _%tl195321195830%_
                               _%e195322195833%_
                               _%hd195323195836%_
                               _%tl195324195838%_
                               _%e195325195841%_
                               _%hd195326195844%_
                               _%tl195327195846%_
                               _%e195328195849%_
                               _%hd195329195852%_
                               _%tl195330195854%_)
                        (let ((_%g195298195857%_ _%hd195329195852%_)
                              (_%g195299195858%_ _%hd195320195828%_)
                              (_%g195300195859%_ _%hd195311195804%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g195300195859%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g195300195859%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp201868
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self195189%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g195299195858%_
                                      __tmp201868)))
                              (_%__kont201186201187%_
                               _%g195298195857%_
                               _%g195299195858%_
                               _%g195300195859%_)
                              (_%__match201675201676%_
                               _%e195301195777%_
                               _%hd195302195780%_
                               _%tl195303195782%_
                               _%e195304195785%_
                               _%hd195305195788%_
                               _%tl195306195790%_
                               _%e195307195793%_
                               _%hd195308195796%_
                               _%tl195309195798%_
                               _%e195310195801%_
                               _%hd195311195804%_
                               _%tl195312195806%_
                               _%e195313195809%_
                               _%hd195314195812%_
                               _%tl195315195814%_
                               _%e195316195817%_
                               _%hd195317195820%_
                               _%tl195318195822%_
                               _%e195319195825%_
                               _%hd195320195828%_
                               _%tl195321195830%_
                               _%e195322195833%_
                               _%hd195323195836%_
                               _%tl195324195838%_)))))
                     (_%__match201469201470%_
                      (lambda (_%e195301195777%_
                               _%hd195302195780%_
                               _%tl195303195782%_
                               _%e195304195785%_
                               _%hd195305195788%_
                               _%tl195306195790%_
                               _%e195307195793%_
                               _%hd195308195796%_
                               _%tl195309195798%_
                               _%e195310195801%_
                               _%hd195311195804%_
                               _%tl195312195806%_
                               _%e195313195809%_
                               _%hd195314195812%_
                               _%tl195315195814%_
                               _%e195316195817%_
                               _%hd195317195820%_
                               _%tl195318195822%_
                               _%e195319195825%_
                               _%hd195320195828%_
                               _%tl195321195830%_
                               _%e195322195833%_
                               _%hd195323195836%_
                               _%tl195324195838%_
                               _%e195325195841%_
                               _%hd195326195844%_
                               _%tl195327195846%_
                               _%e195328195849%_
                               _%hd195329195852%_
                               _%tl195330195854%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl195324195838%_))
                            (_%__match201471201472%_
                             _%e195301195777%_
                             _%hd195302195780%_
                             _%tl195303195782%_
                             _%e195304195785%_
                             _%hd195305195788%_
                             _%tl195306195790%_
                             _%e195307195793%_
                             _%hd195308195796%_
                             _%tl195309195798%_
                             _%e195310195801%_
                             _%hd195311195804%_
                             _%tl195312195806%_
                             _%e195313195809%_
                             _%hd195314195812%_
                             _%tl195315195814%_
                             _%e195316195817%_
                             _%hd195317195820%_
                             _%tl195318195822%_
                             _%e195319195825%_
                             _%hd195320195828%_
                             _%tl195321195830%_
                             _%e195322195833%_
                             _%hd195323195836%_
                             _%tl195324195838%_
                             _%e195325195841%_
                             _%hd195326195844%_
                             _%tl195327195846%_
                             _%e195328195849%_
                             _%hd195329195852%_
                             _%tl195330195854%_)
                            (_%__match201549201550%_
                             _%e195301195777%_
                             _%hd195302195780%_
                             _%tl195303195782%_
                             _%e195304195785%_
                             _%hd195305195788%_
                             _%tl195306195790%_
                             _%e195307195793%_
                             _%hd195308195796%_
                             _%tl195309195798%_
                             _%e195310195801%_
                             _%hd195311195804%_
                             _%tl195312195806%_
                             _%e195313195809%_
                             _%hd195314195812%_
                             _%tl195315195814%_
                             _%e195316195817%_
                             _%hd195317195820%_
                             _%tl195318195822%_
                             _%e195319195825%_
                             _%hd195320195828%_
                             _%tl195321195830%_
                             _%e195322195833%_
                             _%hd195323195836%_
                             _%tl195324195838%_
                             _%e195325195841%_
                             _%hd195326195844%_
                             _%tl195327195846%_
                             _%e195328195849%_
                             _%hd195329195852%_
                             _%tl195330195854%_))))
                     (_%__match201459201460%_
                      (lambda (_%e195301195777%_
                               _%hd195302195780%_
                               _%tl195303195782%_
                               _%e195304195785%_
                               _%hd195305195788%_
                               _%tl195306195790%_
                               _%e195307195793%_
                               _%hd195308195796%_
                               _%tl195309195798%_
                               _%e195310195801%_
                               _%hd195311195804%_
                               _%tl195312195806%_
                               _%e195313195809%_
                               _%hd195314195812%_
                               _%tl195315195814%_
                               _%e195316195817%_
                               _%hd195317195820%_
                               _%tl195318195822%_
                               _%e195319195825%_
                               _%hd195320195828%_
                               _%tl195321195830%_
                               _%e195322195833%_
                               _%hd195323195836%_
                               _%tl195324195838%_
                               _%e195325195841%_
                               _%hd195326195844%_
                               _%tl195327195846%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd195326195844%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl195327195846%_))
                                (let ((_%e195328195849%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl195327195846%_))))
                                  (let ((_%tl195330195854%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e195328195849%_)))
                                        (_%hd195329195852%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e195328195849%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl195330195854%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl195324195838%_))
                                            (_%__match201471201472%_
                                             _%e195301195777%_
                                             _%hd195302195780%_
                                             _%tl195303195782%_
                                             _%e195304195785%_
                                             _%hd195305195788%_
                                             _%tl195306195790%_
                                             _%e195307195793%_
                                             _%hd195308195796%_
                                             _%tl195309195798%_
                                             _%e195310195801%_
                                             _%hd195311195804%_
                                             _%tl195312195806%_
                                             _%e195313195809%_
                                             _%hd195314195812%_
                                             _%tl195315195814%_
                                             _%e195316195817%_
                                             _%hd195317195820%_
                                             _%tl195318195822%_
                                             _%e195319195825%_
                                             _%hd195320195828%_
                                             _%tl195321195830%_
                                             _%e195322195833%_
                                             _%hd195323195836%_
                                             _%tl195324195838%_
                                             _%e195325195841%_
                                             _%hd195326195844%_
                                             _%tl195327195846%_
                                             _%e195328195849%_
                                             _%hd195329195852%_
                                             _%tl195330195854%_)
                                            (_%__match201549201550%_
                                             _%e195301195777%_
                                             _%hd195302195780%_
                                             _%tl195303195782%_
                                             _%e195304195785%_
                                             _%hd195305195788%_
                                             _%tl195306195790%_
                                             _%e195307195793%_
                                             _%hd195308195796%_
                                             _%tl195309195798%_
                                             _%e195310195801%_
                                             _%hd195311195804%_
                                             _%tl195312195806%_
                                             _%e195313195809%_
                                             _%hd195314195812%_
                                             _%tl195315195814%_
                                             _%e195316195817%_
                                             _%hd195317195820%_
                                             _%tl195318195822%_
                                             _%e195319195825%_
                                             _%hd195320195828%_
                                             _%tl195321195830%_
                                             _%e195322195833%_
                                             _%hd195323195836%_
                                             _%tl195324195838%_
                                             _%e195325195841%_
                                             _%hd195326195844%_
                                             _%tl195327195846%_
                                             _%e195328195849%_
                                             _%hd195329195852%_
                                             _%tl195330195854%_))
                                        (_%__match201673201674%_
                                         _%e195301195777%_
                                         _%hd195302195780%_
                                         _%tl195303195782%_
                                         _%e195304195785%_
                                         _%hd195305195788%_
                                         _%tl195306195790%_
                                         _%e195307195793%_
                                         _%hd195308195796%_
                                         _%tl195309195798%_
                                         _%e195310195801%_
                                         _%hd195311195804%_
                                         _%tl195312195806%_
                                         _%e195313195809%_
                                         _%hd195314195812%_
                                         _%tl195315195814%_
                                         _%e195316195817%_
                                         _%hd195317195820%_
                                         _%tl195318195822%_
                                         _%e195319195825%_
                                         _%hd195320195828%_
                                         _%tl195321195830%_
                                         _%e195322195833%_
                                         _%hd195323195836%_
                                         _%tl195324195838%_))))
                                (_%__match201673201674%_
                                 _%e195301195777%_
                                 _%hd195302195780%_
                                 _%tl195303195782%_
                                 _%e195304195785%_
                                 _%hd195305195788%_
                                 _%tl195306195790%_
                                 _%e195307195793%_
                                 _%hd195308195796%_
                                 _%tl195309195798%_
                                 _%e195310195801%_
                                 _%hd195311195804%_
                                 _%tl195312195806%_
                                 _%e195313195809%_
                                 _%hd195314195812%_
                                 _%tl195315195814%_
                                 _%e195316195817%_
                                 _%hd195317195820%_
                                 _%tl195318195822%_
                                 _%e195319195825%_
                                 _%hd195320195828%_
                                 _%tl195321195830%_
                                 _%e195322195833%_
                                 _%hd195323195836%_
                                 _%tl195324195838%_))
                            (_%__match201673201674%_
                             _%e195301195777%_
                             _%hd195302195780%_
                             _%tl195303195782%_
                             _%e195304195785%_
                             _%hd195305195788%_
                             _%tl195306195790%_
                             _%e195307195793%_
                             _%hd195308195796%_
                             _%tl195309195798%_
                             _%e195310195801%_
                             _%hd195311195804%_
                             _%tl195312195806%_
                             _%e195313195809%_
                             _%hd195314195812%_
                             _%tl195315195814%_
                             _%e195316195817%_
                             _%hd195317195820%_
                             _%tl195318195822%_
                             _%e195319195825%_
                             _%hd195320195828%_
                             _%tl195321195830%_
                             _%e195322195833%_
                             _%hd195323195836%_
                             _%tl195324195838%_))))
                     (_%__match201391201392%_
                      (lambda (_%e195250195898%_
                               _%hd195251195901%_
                               _%tl195252195903%_
                               _%e195253195906%_
                               _%hd195254195909%_
                               _%tl195255195911%_
                               _%e195256195914%_
                               _%hd195257195917%_
                               _%tl195258195919%_
                               _%e195259195922%_
                               _%hd195260195925%_
                               _%tl195261195927%_
                               _%e195262195930%_
                               _%hd195263195933%_
                               _%tl195264195935%_
                               _%e195265195938%_
                               _%hd195266195941%_
                               _%tl195267195943%_
                               _%e195268195946%_
                               _%hd195269195949%_
                               _%tl195270195951%_
                               _%e195271195954%_
                               _%hd195272195957%_
                               _%tl195273195959%_
                               _%e195274195962%_
                               _%hd195275195965%_
                               _%tl195276195967%_
                               _%e195277195970%_
                               _%hd195278195973%_
                               _%tl195279195975%_
                               _%e195280195978%_
                               _%hd195281195981%_
                               _%tl195282195983%_
                               _%e195283195986%_
                               _%hd195284195989%_
                               _%tl195285195991%_
                               _%e195286195994%_
                               _%hd195287195997%_
                               _%tl195288195999%_
                               _%__splice201184201185%_
                               _%target195289196002%_
                               _%tl195291196004%_)
                        (letrec ((_%loop195292196007%_
                                  (lambda (_%hd195290196010%_
                                           _%args195296196012%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd195290196010%_))
                                        (let ((_%e195293196014%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd195290196010%_))))
                                          (let ((_%lp-tl195295196019%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e195293196014%_)))
                                                (_%lp-hd195294196017%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e195293196014%_))))
                                            (_%loop195292196007%_
                                             _%lp-tl195295196019%_
                                             (cons _%lp-hd195294196017%_
                                                   _%args195296196012%_))))
                                        (let ((_%args195297196022%_
                                               (reverse _%args195296196012%_)))
                                          (let ((_%g195245196024%_
                                                 _%args195297196022%_)
                                                (_%g195246196025%_
                                                 _%hd195287195997%_)
                                                (_%g195247196026%_
                                                 _%hd195278195973%_)
                                                (_%g195248196027%_
                                                 _%hd195269195949%_)
                                                (_%g195249196028%_
                                                 _%hd195260195925%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g195249196028%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g195248196027%_
                                                        'call-method))
                                                     (let ((__tmp201869
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self195189%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%g195247196026%_
                                                        __tmp201869)))
                                                (_%__kont201182201183%_
                                                 _%g195245196024%_
                                                 _%g195246196025%_
                                                 _%g195247196026%_
                                                 _%g195248196027%_
                                                 _%g195249196028%_)
                                                (_%__kont201194201195%_))))))))
                          (_%loop195292196007%_ _%target195289196002%_ '()))))
                     (_%__match201349201350%_
                      (lambda (_%e195250195898%_
                               _%hd195251195901%_
                               _%tl195252195903%_
                               _%e195253195906%_
                               _%hd195254195909%_
                               _%tl195255195911%_
                               _%e195256195914%_
                               _%hd195257195917%_
                               _%tl195258195919%_
                               _%e195259195922%_
                               _%hd195260195925%_
                               _%tl195261195927%_
                               _%e195262195930%_
                               _%hd195263195933%_
                               _%tl195264195935%_
                               _%e195265195938%_
                               _%hd195266195941%_
                               _%tl195267195943%_
                               _%e195268195946%_
                               _%hd195269195949%_
                               _%tl195270195951%_
                               _%e195271195954%_
                               _%hd195272195957%_
                               _%tl195273195959%_
                               _%e195274195962%_
                               _%hd195275195965%_
                               _%tl195276195967%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd195275195965%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl195276195967%_))
                                (let ((_%e195277195970%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl195276195967%_))))
                                  (let ((_%tl195279195975%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e195277195970%_)))
                                        (_%hd195278195973%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e195277195970%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl195279195975%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl195273195959%_))
                                            (let ((_%e195280195978%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl195273195959%_))))
                                              (let ((_%tl195282195983%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e195280195978%_)))
                                                    (_%hd195281195981%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e195280195978%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd195281195981%_))
                                                    (let ((_%e195283195986%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd195281195981%_))))
                                                      (let ((_%tl195285195991%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e195283195986%_)))
                    (_%hd195284195989%_
                     (let () (declare (not safe)) (##car _%e195283195986%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd195284195989%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd195284195989%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl195285195991%_))
                            (let ((_%e195286195994%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl195285195991%_))))
                              (let ((_%tl195288195999%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e195286195994%_)))
                                    (_%hd195287195997%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e195286195994%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl195288195999%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl195282195983%_))
                                        (let ((_%__splice201184201185%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl195282195983%_
                                                  '0))))
                                          (let ((_%tl195291196004%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice201184201185%_
                                                    '1)))
                                                (_%target195289196002%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice201184201185%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl195291196004%_))
                                                (_%__match201391201392%_
                                                 _%e195250195898%_
                                                 _%hd195251195901%_
                                                 _%tl195252195903%_
                                                 _%e195253195906%_
                                                 _%hd195254195909%_
                                                 _%tl195255195911%_
                                                 _%e195256195914%_
                                                 _%hd195257195917%_
                                                 _%tl195258195919%_
                                                 _%e195259195922%_
                                                 _%hd195260195925%_
                                                 _%tl195261195927%_
                                                 _%e195262195930%_
                                                 _%hd195263195933%_
                                                 _%tl195264195935%_
                                                 _%e195265195938%_
                                                 _%hd195266195941%_
                                                 _%tl195267195943%_
                                                 _%e195268195946%_
                                                 _%hd195269195949%_
                                                 _%tl195270195951%_
                                                 _%e195271195954%_
                                                 _%hd195272195957%_
                                                 _%tl195273195959%_
                                                 _%e195274195962%_
                                                 _%hd195275195965%_
                                                 _%tl195276195967%_
                                                 _%e195277195970%_
                                                 _%hd195278195973%_
                                                 _%tl195279195975%_
                                                 _%e195280195978%_
                                                 _%hd195281195981%_
                                                 _%tl195282195983%_
                                                 _%e195283195986%_
                                                 _%hd195284195989%_
                                                 _%tl195285195991%_
                                                 _%e195286195994%_
                                                 _%hd195287195997%_
                                                 _%tl195288195999%_
                                                 _%__splice201184201185%_
                                                 _%target195289196002%_
                                                 _%tl195291196004%_)
                                                (_%__kont201194201195%_))))
                                        (_%__kont201194201195%_))
                                    (_%__kont201194201195%_))))
                            (_%__kont201194201195%_))
                        (_%__kont201194201195%_))
                    (_%__kont201194201195%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont201194201195%_))))
                                            (_%__match201673201674%_
                                             _%e195250195898%_
                                             _%hd195251195901%_
                                             _%tl195252195903%_
                                             _%e195253195906%_
                                             _%hd195254195909%_
                                             _%tl195255195911%_
                                             _%e195256195914%_
                                             _%hd195257195917%_
                                             _%tl195258195919%_
                                             _%e195259195922%_
                                             _%hd195260195925%_
                                             _%tl195261195927%_
                                             _%e195262195930%_
                                             _%hd195263195933%_
                                             _%tl195264195935%_
                                             _%e195265195938%_
                                             _%hd195266195941%_
                                             _%tl195267195943%_
                                             _%e195268195946%_
                                             _%hd195269195949%_
                                             _%tl195270195951%_
                                             _%e195271195954%_
                                             _%hd195272195957%_
                                             _%tl195273195959%_))
                                        (_%__match201673201674%_
                                         _%e195250195898%_
                                         _%hd195251195901%_
                                         _%tl195252195903%_
                                         _%e195253195906%_
                                         _%hd195254195909%_
                                         _%tl195255195911%_
                                         _%e195256195914%_
                                         _%hd195257195917%_
                                         _%tl195258195919%_
                                         _%e195259195922%_
                                         _%hd195260195925%_
                                         _%tl195261195927%_
                                         _%e195262195930%_
                                         _%hd195263195933%_
                                         _%tl195264195935%_
                                         _%e195265195938%_
                                         _%hd195266195941%_
                                         _%tl195267195943%_
                                         _%e195268195946%_
                                         _%hd195269195949%_
                                         _%tl195270195951%_
                                         _%e195271195954%_
                                         _%hd195272195957%_
                                         _%tl195273195959%_))))
                                (_%__match201673201674%_
                                 _%e195250195898%_
                                 _%hd195251195901%_
                                 _%tl195252195903%_
                                 _%e195253195906%_
                                 _%hd195254195909%_
                                 _%tl195255195911%_
                                 _%e195256195914%_
                                 _%hd195257195917%_
                                 _%tl195258195919%_
                                 _%e195259195922%_
                                 _%hd195260195925%_
                                 _%tl195261195927%_
                                 _%e195262195930%_
                                 _%hd195263195933%_
                                 _%tl195264195935%_
                                 _%e195265195938%_
                                 _%hd195266195941%_
                                 _%tl195267195943%_
                                 _%e195268195946%_
                                 _%hd195269195949%_
                                 _%tl195270195951%_
                                 _%e195271195954%_
                                 _%hd195272195957%_
                                 _%tl195273195959%_))
                            (_%__match201459201460%_
                             _%e195250195898%_
                             _%hd195251195901%_
                             _%tl195252195903%_
                             _%e195253195906%_
                             _%hd195254195909%_
                             _%tl195255195911%_
                             _%e195256195914%_
                             _%hd195257195917%_
                             _%tl195258195919%_
                             _%e195259195922%_
                             _%hd195260195925%_
                             _%tl195261195927%_
                             _%e195262195930%_
                             _%hd195263195933%_
                             _%tl195264195935%_
                             _%e195265195938%_
                             _%hd195266195941%_
                             _%tl195267195943%_
                             _%e195268195946%_
                             _%hd195269195949%_
                             _%tl195270195951%_
                             _%e195271195954%_
                             _%hd195272195957%_
                             _%tl195273195959%_
                             _%e195274195962%_
                             _%hd195275195965%_
                             _%tl195276195967%_))))
                     (_%__match201281201282%_
                      (lambda (_%e195206196088%_
                               _%hd195207196091%_
                               _%tl195208196093%_
                               _%e195209196096%_
                               _%hd195210196099%_
                               _%tl195211196101%_
                               _%e195212196104%_
                               _%hd195213196107%_
                               _%tl195214196109%_
                               _%e195215196112%_
                               _%hd195216196115%_
                               _%tl195217196117%_
                               _%e195218196120%_
                               _%hd195219196123%_
                               _%tl195220196125%_
                               _%e195221196128%_
                               _%hd195222196131%_
                               _%tl195223196133%_
                               _%e195224196136%_
                               _%hd195225196139%_
                               _%tl195226196141%_
                               _%e195227196144%_
                               _%hd195228196147%_
                               _%tl195229196149%_
                               _%e195230196152%_
                               _%hd195231196155%_
                               _%tl195232196157%_
                               _%e195233196160%_
                               _%hd195234196163%_
                               _%tl195235196165%_
                               _%__splice201180201181%_
                               _%target195236196168%_
                               _%tl195238196170%_)
                        (letrec ((_%loop195239196173%_
                                  (lambda (_%hd195237196176%_
                                           _%args195243196178%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd195237196176%_))
                                        (let ((_%e195240196180%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd195237196176%_))))
                                          (let ((_%lp-tl195242196185%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e195240196180%_)))
                                                (_%lp-hd195241196183%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e195240196180%_))))
                                            (_%loop195239196173%_
                                             _%lp-tl195242196185%_
                                             (cons _%lp-hd195241196183%_
                                                   _%args195243196178%_))))
                                        (let ((_%args195244196188%_
                                               (reverse _%args195243196178%_)))
                                          (let ((_%g195202196190%_
                                                 _%args195244196188%_)
                                                (_%g195203196191%_
                                                 _%hd195234196163%_)
                                                (_%g195204196192%_
                                                 _%hd195225196139%_)
                                                (_%g195205196193%_
                                                 _%hd195216196115%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g195205196193%_
                                                        'call-method))
                                                     (let ((__tmp201870
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self195189%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%g195204196192%_
                                                        __tmp201870)))
                                                (_%__kont201178201179%_
                                                 _%g195202196190%_
                                                 _%g195203196191%_
                                                 _%g195204196192%_
                                                 _%g195205196193%_)
                                                (_%__match201469201470%_
                                                 _%e195206196088%_
                                                 _%hd195207196091%_
                                                 _%tl195208196093%_
                                                 _%e195209196096%_
                                                 _%hd195210196099%_
                                                 _%tl195211196101%_
                                                 _%e195212196104%_
                                                 _%hd195213196107%_
                                                 _%tl195214196109%_
                                                 _%e195215196112%_
                                                 _%hd195216196115%_
                                                 _%tl195217196117%_
                                                 _%e195218196120%_
                                                 _%hd195219196123%_
                                                 _%tl195220196125%_
                                                 _%e195221196128%_
                                                 _%hd195222196131%_
                                                 _%tl195223196133%_
                                                 _%e195224196136%_
                                                 _%hd195225196139%_
                                                 _%tl195226196141%_
                                                 _%e195227196144%_
                                                 _%hd195228196147%_
                                                 _%tl195229196149%_
                                                 _%e195230196152%_
                                                 _%hd195231196155%_
                                                 _%tl195232196157%_
                                                 _%e195233196160%_
                                                 _%hd195234196163%_
                                                 _%tl195235196165%_))))))))
                          (_%loop195239196173%_ _%target195236196168%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx201176201177%_))
                    (let ((_%e195206196088%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx201176201177%_))))
                      (let ((_%tl195208196093%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e195206196088%_)))
                            (_%hd195207196091%_
                             (let ()
                               (declare (not safe))
                               (##car _%e195206196088%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl195208196093%_))
                            (let ((_%e195209196096%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl195208196093%_))))
                              (let ((_%tl195211196101%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e195209196096%_)))
                                    (_%hd195210196099%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e195209196096%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd195210196099%_))
                                    (let ((_%e195212196104%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd195210196099%_))))
                                      (let ((_%tl195214196109%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e195212196104%_)))
                                            (_%hd195213196107%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e195212196104%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd195213196107%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd195213196107%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl195214196109%_))
                                                    (let ((_%e195215196112%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl195214196109%_))))
                                                      (let ((_%tl195217196117%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e195215196112%_)))
                    (_%hd195216196115%_
                     (let () (declare (not safe)) (##car _%e195215196112%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl195217196117%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl195211196101%_))
                        (let ((_%e195218196120%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl195211196101%_))))
                          (let ((_%tl195220196125%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e195218196120%_)))
                                (_%hd195219196123%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e195218196120%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd195219196123%_))
                                (let ((_%e195221196128%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd195219196123%_))))
                                  (let ((_%tl195223196133%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e195221196128%_)))
                                        (_%hd195222196131%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e195221196128%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd195222196131%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd195222196131%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl195223196133%_))
                                                (let ((_%e195224196136%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl195223196133%_))))
                                                  (let ((_%tl195226196141%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e195224196136%_)))
                                                        (_%hd195225196139%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e195224196136%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl195226196141%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl195220196125%_))
                                                            (let ((_%e195227196144%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl195220196125%_))))
                      (let ((_%tl195229196149%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e195227196144%_)))
                            (_%hd195228196147%_
                             (let ()
                               (declare (not safe))
                               (##car _%e195227196144%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd195228196147%_))
                            (let ((_%e195230196152%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd195228196147%_))))
                              (let ((_%tl195232196157%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e195230196152%_)))
                                    (_%hd195231196155%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e195230196152%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd195231196155%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd195231196155%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl195232196157%_))
                                            (let ((_%e195233196160%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl195232196157%_))))
                                              (let ((_%tl195235196165%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e195233196160%_)))
                                                    (_%hd195234196163%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e195233196160%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl195235196165%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl195229196149%_))
                                                        (let ((_%__splice201180201181%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice->vector
                          _%tl195229196149%_
                          '0))))
                  (let ((_%tl195238196170%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice201180201181%_ '1)))
                        (_%target195236196168%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice201180201181%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl195238196170%_))
                        (_%__match201281201282%_
                         _%e195206196088%_
                         _%hd195207196091%_
                         _%tl195208196093%_
                         _%e195209196096%_
                         _%hd195210196099%_
                         _%tl195211196101%_
                         _%e195212196104%_
                         _%hd195213196107%_
                         _%tl195214196109%_
                         _%e195215196112%_
                         _%hd195216196115%_
                         _%tl195217196117%_
                         _%e195218196120%_
                         _%hd195219196123%_
                         _%tl195220196125%_
                         _%e195221196128%_
                         _%hd195222196131%_
                         _%tl195223196133%_
                         _%e195224196136%_
                         _%hd195225196139%_
                         _%tl195226196141%_
                         _%e195227196144%_
                         _%hd195228196147%_
                         _%tl195229196149%_
                         _%e195230196152%_
                         _%hd195231196155%_
                         _%tl195232196157%_
                         _%e195233196160%_
                         _%hd195234196163%_
                         _%tl195235196165%_
                         _%__splice201180201181%_
                         _%target195236196168%_
                         _%tl195238196170%_)
                        (_%__match201469201470%_
                         _%e195206196088%_
                         _%hd195207196091%_
                         _%tl195208196093%_
                         _%e195209196096%_
                         _%hd195210196099%_
                         _%tl195211196101%_
                         _%e195212196104%_
                         _%hd195213196107%_
                         _%tl195214196109%_
                         _%e195215196112%_
                         _%hd195216196115%_
                         _%tl195217196117%_
                         _%e195218196120%_
                         _%hd195219196123%_
                         _%tl195220196125%_
                         _%e195221196128%_
                         _%hd195222196131%_
                         _%tl195223196133%_
                         _%e195224196136%_
                         _%hd195225196139%_
                         _%tl195226196141%_
                         _%e195227196144%_
                         _%hd195228196147%_
                         _%tl195229196149%_
                         _%e195230196152%_
                         _%hd195231196155%_
                         _%tl195232196157%_
                         _%e195233196160%_
                         _%hd195234196163%_
                         _%tl195235196165%_))))
                (_%__match201469201470%_
                 _%e195206196088%_
                 _%hd195207196091%_
                 _%tl195208196093%_
                 _%e195209196096%_
                 _%hd195210196099%_
                 _%tl195211196101%_
                 _%e195212196104%_
                 _%hd195213196107%_
                 _%tl195214196109%_
                 _%e195215196112%_
                 _%hd195216196115%_
                 _%tl195217196117%_
                 _%e195218196120%_
                 _%hd195219196123%_
                 _%tl195220196125%_
                 _%e195221196128%_
                 _%hd195222196131%_
                 _%tl195223196133%_
                 _%e195224196136%_
                 _%hd195225196139%_
                 _%tl195226196141%_
                 _%e195227196144%_
                 _%hd195228196147%_
                 _%tl195229196149%_
                 _%e195230196152%_
                 _%hd195231196155%_
                 _%tl195232196157%_
                 _%e195233196160%_
                 _%hd195234196163%_
                 _%tl195235196165%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match201673201674%_
                                                     _%e195206196088%_
                                                     _%hd195207196091%_
                                                     _%tl195208196093%_
                                                     _%e195209196096%_
                                                     _%hd195210196099%_
                                                     _%tl195211196101%_
                                                     _%e195212196104%_
                                                     _%hd195213196107%_
                                                     _%tl195214196109%_
                                                     _%e195215196112%_
                                                     _%hd195216196115%_
                                                     _%tl195217196117%_
                                                     _%e195218196120%_
                                                     _%hd195219196123%_
                                                     _%tl195220196125%_
                                                     _%e195221196128%_
                                                     _%hd195222196131%_
                                                     _%tl195223196133%_
                                                     _%e195224196136%_
                                                     _%hd195225196139%_
                                                     _%tl195226196141%_
                                                     _%e195227196144%_
                                                     _%hd195228196147%_
                                                     _%tl195229196149%_))))
                                            (_%__match201673201674%_
                                             _%e195206196088%_
                                             _%hd195207196091%_
                                             _%tl195208196093%_
                                             _%e195209196096%_
                                             _%hd195210196099%_
                                             _%tl195211196101%_
                                             _%e195212196104%_
                                             _%hd195213196107%_
                                             _%tl195214196109%_
                                             _%e195215196112%_
                                             _%hd195216196115%_
                                             _%tl195217196117%_
                                             _%e195218196120%_
                                             _%hd195219196123%_
                                             _%tl195220196125%_
                                             _%e195221196128%_
                                             _%hd195222196131%_
                                             _%tl195223196133%_
                                             _%e195224196136%_
                                             _%hd195225196139%_
                                             _%tl195226196141%_
                                             _%e195227196144%_
                                             _%hd195228196147%_
                                             _%tl195229196149%_))
                                        (_%__match201349201350%_
                                         _%e195206196088%_
                                         _%hd195207196091%_
                                         _%tl195208196093%_
                                         _%e195209196096%_
                                         _%hd195210196099%_
                                         _%tl195211196101%_
                                         _%e195212196104%_
                                         _%hd195213196107%_
                                         _%tl195214196109%_
                                         _%e195215196112%_
                                         _%hd195216196115%_
                                         _%tl195217196117%_
                                         _%e195218196120%_
                                         _%hd195219196123%_
                                         _%tl195220196125%_
                                         _%e195221196128%_
                                         _%hd195222196131%_
                                         _%tl195223196133%_
                                         _%e195224196136%_
                                         _%hd195225196139%_
                                         _%tl195226196141%_
                                         _%e195227196144%_
                                         _%hd195228196147%_
                                         _%tl195229196149%_
                                         _%e195230196152%_
                                         _%hd195231196155%_
                                         _%tl195232196157%_))
                                    (_%__match201673201674%_
                                     _%e195206196088%_
                                     _%hd195207196091%_
                                     _%tl195208196093%_
                                     _%e195209196096%_
                                     _%hd195210196099%_
                                     _%tl195211196101%_
                                     _%e195212196104%_
                                     _%hd195213196107%_
                                     _%tl195214196109%_
                                     _%e195215196112%_
                                     _%hd195216196115%_
                                     _%tl195217196117%_
                                     _%e195218196120%_
                                     _%hd195219196123%_
                                     _%tl195220196125%_
                                     _%e195221196128%_
                                     _%hd195222196131%_
                                     _%tl195223196133%_
                                     _%e195224196136%_
                                     _%hd195225196139%_
                                     _%tl195226196141%_
                                     _%e195227196144%_
                                     _%hd195228196147%_
                                     _%tl195229196149%_))))
                            (_%__match201673201674%_
                             _%e195206196088%_
                             _%hd195207196091%_
                             _%tl195208196093%_
                             _%e195209196096%_
                             _%hd195210196099%_
                             _%tl195211196101%_
                             _%e195212196104%_
                             _%hd195213196107%_
                             _%tl195214196109%_
                             _%e195215196112%_
                             _%hd195216196115%_
                             _%tl195217196117%_
                             _%e195218196120%_
                             _%hd195219196123%_
                             _%tl195220196125%_
                             _%e195221196128%_
                             _%hd195222196131%_
                             _%tl195223196133%_
                             _%e195224196136%_
                             _%hd195225196139%_
                             _%tl195226196141%_
                             _%e195227196144%_
                             _%hd195228196147%_
                             _%tl195229196149%_))))
                    (_%__match201611201612%_
                     _%e195206196088%_
                     _%hd195207196091%_
                     _%tl195208196093%_
                     _%e195209196096%_
                     _%hd195210196099%_
                     _%tl195211196101%_
                     _%e195212196104%_
                     _%hd195213196107%_
                     _%tl195214196109%_
                     _%e195215196112%_
                     _%hd195216196115%_
                     _%tl195217196117%_
                     _%e195218196120%_
                     _%hd195219196123%_
                     _%tl195220196125%_
                     _%e195221196128%_
                     _%hd195222196131%_
                     _%tl195223196133%_
                     _%e195224196136%_
                     _%hd195225196139%_
                     _%tl195226196141%_))
                (_%__kont201194201195%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont201194201195%_))
                                            (_%__kont201194201195%_))
                                        (_%__kont201194201195%_))))
                                (_%__kont201194201195%_))))
                        (_%__kont201194201195%_))
                    (_%__kont201194201195%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont201194201195%_))
                                                (_%__kont201194201195%_))
                                            (_%__kont201194201195%_))))
                                    (_%__kont201194201195%_))))
                            (_%__kont201194201195%_))))
                    (_%__kont201194201195%_))))))))))
