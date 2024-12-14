(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1734215273)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp178215 (list gxc#::identity::t))
            (__tmp178214 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp178215
         '()
         __tmp178214
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args177012%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args177012%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp178216
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
        (__make-promise __tmp178216)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx177004%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self177007%_
                (let ((__obj178207
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj178207))
               (__tmp178217
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self177007%_ _%stx177004%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp178217
           gxc#current-compile-method
           _%self177007%_))))
    (define gxc#::extract-receiver::t
      (let ((__tmp178219 (list gxc#::false::t))
            (__tmp178218 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::extract-receiver::t
         '::extract-receiver
         __tmp178219
         '()
         __tmp178218
         '#f)))
    (define gxc#::extract-receiver?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::extract-receiver::t)))
    (define gxc#make-::extract-receiver
      (lambda _%$args177001%_
        (apply make-instance gxc#::extract-receiver::t _%$args177001%_)))
    (define gxc#::extract-receiver-bind-methods!
      (let ((__tmp178220
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
        (__make-promise __tmp178220)))
    (define gxc#apply-extract-receiver
      (lambda (_%stx176993%_)
        (force gxc#::extract-receiver-bind-methods!)
        (let* ((_%self176996%_
                (let ((__obj178209
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::extract-receiver::t))))
                  __obj178209))
               (__tmp178221
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self176996%_ _%stx176993%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp178221
           gxc#current-compile-method
           _%self176996%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp178223 (list gxc#::void::t))
            (__tmp178222 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp178223
         '(receiver methods slots)
         __tmp178222
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args176990%_
        (apply make-instance gxc#::collect-object-refs::t _%$args176990%_)))
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
      (let ((__tmp178224
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
        (__make-promise __tmp178224)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords176956%_
               _%receiver176951176957%_
               _%methods176952176959%_
               _%slots176953176961%_
               _%stx176963%_)
        (let* ((_%receiver176966%_
                (if (eq? _%receiver176951176957%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver176951176957%_))
               (_%methods176968%_
                (if (eq? _%methods176952176959%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods176952176959%_))
               (_%slots176970%_
                (if (eq? _%slots176953176961%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots176953176961%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self176972%_
                  (let ((__obj178211
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
                       __obj178211
                       _%receiver176966%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj178211
                       _%methods176968%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj178211
                       _%slots176970%_
                       '3
                       '#f
                       '#f))
                    __obj178211))
                 (__tmp178225
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self176972%_ _%stx176963%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp178225
             gxc#current-compile-method
             _%self176972%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords176979%_ . _%args176980%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords176979%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords176979%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords176979%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords176979%_
                  'slots:
                  absent-value))
               _%args176980%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args176954176986%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args176954176986%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp178227 (list gxc#::basic-xform-expression::t))
            (__tmp178226 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp178227
         '(receiver klass methods slots)
         __tmp178226
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args176947%_
        (apply make-instance gxc#::subst-object-refs::t _%$args176947%_)))
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
      (let ((__tmp178228
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
        (__make-promise __tmp178228)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords176909%_
               _%receiver176903176910%_
               _%klass176904176912%_
               _%methods176905176914%_
               _%slots176906176916%_
               _%stx176918%_)
        (let* ((_%receiver176921%_
                (if (eq? _%receiver176903176910%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver176903176910%_))
               (_%klass176923%_
                (if (eq? _%klass176904176912%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass176904176912%_))
               (_%methods176925%_
                (if (eq? _%methods176905176914%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods176905176914%_))
               (_%slots176927%_
                (if (eq? _%slots176906176916%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots176906176916%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self176929%_
                  (let ((__obj178213
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
                       __obj178213
                       _%receiver176921%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj178213
                       _%klass176923%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj178213
                       _%methods176925%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj178213
                       _%slots176927%_
                       '4
                       '#f
                       '#f))
                    __obj178213))
                 (__tmp178229
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self176929%_ _%stx176918%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp178229
             gxc#current-compile-method
             _%self176929%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords176936%_ . _%args176937%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords176936%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords176936%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords176936%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords176936%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords176936%_
                  'slots:
                  absent-value))
               _%args176937%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args176907176943%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args176907176943%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self174018%_ _%stx174019%_)
        (letrec ((_%generate-method-bind174021%_
                  (lambda (_%$klass176895%_
                           _%$method-table176896%_
                           _%id176897%_
                           _%$id176898%_)
                    (let ((_%$tmp176900%_
                           (let ((__tmp178230
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp178230))))
                      (cons (cons _%$id176898%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp176900%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table176896%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id176897%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp176900%_ '()))
                    (cons (cons '%#ref (cons _%$tmp176900%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id176897%_
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
                 (_%generate-slot-bind174022%_
                  (lambda (_%$klass176889%_ _%id176890%_ _%$id176891%_)
                    (let ((_%$tmp176893%_
                           (let ((__tmp178231
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp178231))))
                      (cons (cons _%$id176891%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp176893%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass176889%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id176890%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp176893%_ '()))
                        (cons (cons '%#ref (cons _%$tmp176893%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id176890%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl174023%_
                  (lambda (_%$klass176883%_
                           _%$method-table176884%_
                           _%methods-bind176885%_
                           _%slots-bind176886%_
                           _%specializer-impl176887%_)
                    (let ((__tmp178232
                           (cons '%#lambda
                                 (cons (cons _%$klass176883%_
                                             (cons _%$method-table176884%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__foldr1
                                                            cons
                                                            _%slots-bind176886%_
                                                            _%methods-bind176885%_))
                                                         (cons _%specializer-impl176887%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp178232 _%stx174019%_))))
                 (_%generate-specializer-def174024%_
                  (lambda (_%id176879%_
                           _%specializer-id176880%_
                           _%specializer-impl176881%_)
                    (let ((__tmp178233
                           (cons '%#begin
                                 (cons _%stx174019%_
                                       (cons (let ((__tmp178234
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id176880%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl176881%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp178234
                                                _%stx174019%_))
                                             (cons (let ((__tmp178235
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id176879%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id176880%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp178235
                                                      _%stx174019%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp178233 _%stx174019%_)))))
          (let* ((_%__stx177101177102%_ _%stx174019%_)
                 (_%g174027174047%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx177101177102%_)))))
            (let ((_%__kont177103177104%_
                   (lambda (_%L174091%_ _%L174092%_)
                     (let ((_%method-calls174111%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs174112%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty174113%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?174115%_
                                 (lambda ()
                                   (if (fxzero? (let ()
                                                  (declare (not safe))
                                                  (__hash-length
                                                   _%method-calls174111%_)))
                                       (fxzero? (let ()
                                                  (declare (not safe))
                                                  (__hash-length
                                                   _%slot-refs174112%_)))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%L174091%_))
                             (let* ((_%__stx177015177016%_ _%L174091%_)
                                    (_%g174503174521%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx177015177016%_)))))
                               (let ((_%__kont177017177018%_
                                      (lambda (_%L174557%_
                                               _%L174558%_
                                               _%L174559%_)
                                        (let ((_%receiver174579%_
                                               (let ((_%$e174576%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%L174557%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e174576%_
                                                     _%$e174576%_
                                                     _%L174559%_))))
                                          (for-each
                                           (lambda (_%g174580174582%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver174579%_
                                              _%method-calls174111%_
                                              _%slot-refs174112%_
                                              _%g174580174582%_))
                                           _%L174557%_)
                                          (if (_%no-specializer?174115%_)
                                              _%stx174019%_
                                              (let* ((_%specializer-id174591%_
                                                      (let* ((_%id174585%_
                                                              (let ((__tmp178236
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L174092%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp178236 '"::specialize")))
                     (_%specializer-id174588%_
                      (let ((__tmp178237
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx174019%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id174585%_ __tmp178237))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id174588%_))
                _%specializer-id174588%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass174593%_
                                                      (let ((__tmp178238
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp178238)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table174595%_
                                                      (let ((__tmp178239
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp178239)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods174597%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls174111%_)))
                                                     (_%$methods174601%_
                                                      (map (lambda (_%id174599%_)
                                                             (let ((__tmp178240
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id174599%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp178240)))
                   _%methods174597%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_174610%_
                                                      (for-each
                                                       (lambda (_%g174602174605%_
                                                                _%g174603174607%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%method-calls174111%_
                                                            _%g174602174605%_
                                                            _%g174603174607%_)))
                                                       _%methods174597%_
                                                       _%$methods174601%_))
                                                     (_%methods-bind174620%_
                                                      (map (lambda (_%g174612174615%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g174613174617%_)
                     (_%generate-method-bind174021%_
                      _%$klass174593%_
                      _%$method-table174595%_
                      _%g174612174615%_
                      _%g174613174617%_))
                   _%methods174597%_
                   _%$methods174601%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots174622%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs174112%_)))
                                                     (_%$slots174626%_
                                                      (map (lambda (_%id174624%_)
                                                             (let ((__tmp178241
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id174624%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp178241)))
                   _%slots174622%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_174635%_
                                                      (for-each
                                                       (lambda (_%g174627174630%_
                                                                _%g174628174632%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%slot-refs174112%_
                                                            _%g174627174630%_
                                                            _%g174628174632%_)))
                                                       _%slots174622%_
                                                       _%$slots174626%_))
                                                     (_%slots-bind174644%_
                                                      (map (lambda (_%g174636174639%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g174637174641%_)
                     (_%generate-slot-bind174022%_
                      _%$klass174593%_
                      _%g174636174639%_
                      _%g174637174641%_))
                   _%slots174622%_
                   _%$slots174626%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body174650%_
                                                      (map (lambda (_%g174645174647%_)
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%receiver174579%_
                                                              _%$klass174593%_
                                                              _%method-calls174111%_
                                                              _%slot-refs174112%_
                                                              _%g174645174647%_))
                                                           _%L174557%_))
                                                     (_%specializer-impl174652%_
                                                      (let ((__tmp178242
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%L174559%_ _%L174558%_)
                                 _%specializer-body174650%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp178242 _%stx174019%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl174654%_
                                                      (_%generate-specializer-impl174023%_
                                                       _%$klass174593%_
                                                       _%$method-table174595%_
                                                       _%methods-bind174620%_
                                                       _%slots-bind174644%_
                                                       _%specializer-impl174652%_)))
                                                (let ((__tmp178244
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L174092%_)))
                                                      (__tmp178243
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id174591%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp178244
                                                   '" => "
                                                   __tmp178243))
                                                (_%generate-specializer-def174024%_
                                                 _%L174092%_
                                                 _%specializer-id174591%_
                                                 _%specializer-impl174654%_))))))
                                     (_%__kont177019177020%_
                                      (lambda () _%stx174019%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx177015177016%_))
                                     (let ((_%e174508174533%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx177015177016%_))))
                                       (let ((_%tl174510174538%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e174508174533%_)))
                                             (_%hd174509174536%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e174508174533%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl174510174538%_))
                                             (let ((_%e174511174541%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl174510174538%_))))
                                               (let ((_%tl174513174546%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e174511174541%_)))
                                                     (_%hd174512174544%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e174511174541%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%hd174512174544%_))
                                                     (let ((_%e174514174549%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd174512174544%_))))
                                                       (let ((_%tl174516174554%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e174514174549%_)))
                     (_%hd174515174552%_
                      (let () (declare (not safe)) (##car _%e174514174549%_))))
                 (_%__kont177017177018%_
                  _%tl174513174546%_
                  _%tl174516174554%_
                  _%hd174515174552%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont177019177020%_))))
                                             (_%__kont177019177020%_))))
                                     (_%__kont177019177020%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%L174091%_))
                                 (let* ((_%g174661174680%_
                                         (lambda (_%g174662174677%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g174662174677%_))))
                                        (_%g174660174978%_
                                         (lambda (_%g174662174683%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g174662174683%_))
                                               (let ((_%e174664174685%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g174662174683%_))))
                                                 (let ((_%hd174665174688%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e174664174685%_)))
                                                       (_%tl174666174690%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e174664174685%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%tl174666174690%_))
                                                       (let ((_g178245_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%tl174666174690%_ '0))))
                 (begin
                   (let ((_g178246_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g178245_)
                                (##values-length _g178245_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g178246_ 2)))
                         (error "Context expects 2 values" _g178246_)))
                   (let ((_%target174667174693%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g178245_ 0)))
                         (_%tl174669174695%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g178245_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl174669174695%_))
                         (letrec ((_%loop174670174698%_
                                   (lambda (_%hd174668174701%_
                                            _%clause174674174703%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd174668174701%_))
                                         (let ((_%e174671174706%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd174668174701%_))))
                                           (let ((_%lp-hd174672174709%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e174671174706%_)))
                                                 (_%lp-tl174673174711%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e174671174706%_))))
                                             (_%loop174670174698%_
                                              _%lp-tl174673174711%_
                                              (cons _%lp-hd174672174709%_
                                                    _%clause174674174703%_))))
                                         (let ((_%clause174675174714%_
                                                (reverse _%clause174674174703%_)))
                                           ((lambda (_%L174717%_)
                                              (for-each
                                               (lambda (_%clause174731%_)
                                                 (let* ((_%__stx177041177042%_
                                                         _%clause174731%_)
                                                        (_%g174734174749%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx177041177042%_)))))
                                                   (let ((_%__kont177043177044%_
                                                          (lambda (_%L174777%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L174778%_
                           _%L174779%_)
                    (let ((_%receiver174798%_
                           (let ((_%$e174795%_
                                  (gxc#apply-extract-receiver
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f '%#begin))
                                         _%L174777%_))))
                             (if _%$e174795%_ _%$e174795%_ _%L174779%_))))
                      (for-each
                       (lambda (_%g174799174801%_)
                         (gxc#apply-collect-object-refs__%
                          '#f
                          _%receiver174798%_
                          _%method-calls174111%_
                          _%slot-refs174112%_
                          _%g174799174801%_))
                       _%L174777%_))))
                 (_%__kont177045177046%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx177041177042%_))
                                                         (let ((_%e174739174761%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx177041177042%_))))
                   (let ((_%tl174741174766%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e174739174761%_)))
                         (_%hd174740174764%_
                          (let ()
                            (declare (not safe))
                            (##car _%e174739174761%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd174740174764%_))
                         (let ((_%e174742174769%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd174740174764%_))))
                           (let ((_%tl174744174774%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e174742174769%_)))
                                 (_%hd174743174772%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e174742174769%_))))
                             (_%__kont177043177044%_
                              _%tl174741174766%_
                              _%tl174744174774%_
                              _%hd174743174772%_)))
                         (_%__kont177045177046%_))))
                 (_%__kont177045177046%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp178247
                                                      (lambda (_%g174806174809%_
                                                               _%g174807174811%_)
                                                        (cons _%g174806174809%_
                                                              _%g174807174811%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp178247
                                                  '()
                                                  _%L174717%_)))
                                              (if (_%no-specializer?174115%_)
                                                  _%stx174019%_
                                                  (let* ((_%specializer-id174820%_
                                                          (let* ((_%id174814%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp178248
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L174092%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp178248 '"::specialize")))
                         (_%specializer-id174817%_
                          (let ((__tmp178249
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx174019%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id174814%_
                             __tmp178249))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id174817%_))
                    _%specializer-id174817%_))
                 (_%$klass174822%_
                  (let ((__tmp178250
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp178250)))
                 (_%$method-table174824%_
                  (let ((__tmp178251
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp178251)))
                 (_%methods174826%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls174111%_)))
                 (_%$methods174830%_
                  (map (lambda (_%id174828%_)
                         (let ((__tmp178252 (gensym _%id174828%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp178252)))
                       _%methods174826%_))
                 (_%_174839%_
                  (for-each
                   (lambda (_%g174831174834%_ _%g174832174836%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%method-calls174111%_
                        _%g174831174834%_
                        _%g174832174836%_)))
                   _%methods174826%_
                   _%$methods174830%_))
                 (_%methods-bind174849%_
                  (map (lambda (_%g174841174844%_ _%g174842174846%_)
                         (_%generate-method-bind174021%_
                          _%$klass174822%_
                          _%$method-table174824%_
                          _%g174841174844%_
                          _%g174842174846%_))
                       _%methods174826%_
                       _%$methods174830%_))
                 (_%slots174851%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs174112%_)))
                 (_%$slots174855%_
                  (map (lambda (_%id174853%_)
                         (let ((__tmp178253 (gensym _%id174853%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp178253)))
                       _%slots174851%_))
                 (_%_174864%_
                  (for-each
                   (lambda (_%g174856174859%_ _%g174857174861%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%slot-refs174112%_
                        _%g174856174859%_
                        _%g174857174861%_)))
                   _%slots174851%_
                   _%$slots174855%_))
                 (_%slots-bind174873%_
                  (map (lambda (_%g174865174868%_ _%g174866174870%_)
                         (_%generate-slot-bind174022%_
                          _%$klass174822%_
                          _%g174865174868%_
                          _%g174866174870%_))
                       _%slots174851%_
                       _%$slots174855%_))
                 (_%specializer-clauses174971%_
                  (map (lambda (_%clause174875%_)
                         (let* ((_%__stx177061177062%_ _%clause174875%_)
                                (_%g174878174893%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx177061177062%_)))))
                           (let ((_%__kont177063177064%_
                                  (lambda (_%L174921%_ _%L174922%_ _%L174923%_)
                                    (let* ((_%receiver174952%_
                                            (let ((_%$e174949%_
                                                   (gxc#apply-extract-receiver
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#begin))
                                                          _%L174921%_))))
                                              (if _%$e174949%_
                                                  _%$e174949%_
                                                  _%L174923%_)))
                                           (_%body174958%_
                                            (map (lambda (_%g174953174955%_)
                                                   (gxc#apply-subst-object-refs__%
                                                    '#f
                                                    _%receiver174952%_
                                                    _%$klass174822%_
                                                    _%method-calls174111%_
                                                    _%slot-refs174112%_
                                                    _%g174953174955%_))
                                                 _%L174921%_)))
                                      (cons (cons _%L174923%_ _%L174922%_)
                                            _%body174958%_))))
                                 (_%__kont177065177066%_
                                  (lambda () _%clause174875%_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx177061177062%_))
                                 (let ((_%e174883174905%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx177061177062%_))))
                                   (let ((_%tl174885174910%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e174883174905%_)))
                                         (_%hd174884174908%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e174883174905%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd174884174908%_))
                                         (let ((_%e174886174913%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd174884174908%_))))
                                           (let ((_%tl174888174918%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e174886174913%_)))
                                                 (_%hd174887174916%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e174886174913%_))))
                                             (_%__kont177063177064%_
                                              _%tl174885174910%_
                                              _%tl174888174918%_
                                              _%hd174887174916%_)))
                                         (_%__kont177065177066%_))))
                                 (_%__kont177065177066%_)))))
                       (let ((__tmp178254
                              (lambda (_%g174963174966%_ _%g174964174968%_)
                                (cons _%g174963174966%_ _%g174964174968%_))))
                         (declare (not safe))
                         (__foldr1 __tmp178254 '() _%L174717%_))))
                 (_%specializer-impl174973%_
                  (let ((__tmp178255
                         (cons '%#case-lambda _%specializer-clauses174971%_)))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp178255 _%stx174019%_)))
                 (_%specializer-impl174975%_
                  (_%generate-specializer-impl174023%_
                   _%$klass174822%_
                   _%$method-table174824%_
                   _%methods-bind174849%_
                   _%slots-bind174873%_
                   _%specializer-impl174973%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp178257
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L174092%_)))
                                                          (__tmp178256
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id174820%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp178257
                                                       '" => "
                                                       __tmp178256))
                                                    (_%generate-specializer-def174024%_
                                                     _%L174092%_
                                                     _%specializer-id174820%_
                                                     _%specializer-impl174975%_))))
                                            _%clause174675174714%_))))))
                           (_%loop174670174698%_ _%target174667174693%_ '()))
                         (_%g174661174680%_ _%g174662174683%_)))))
               (_%g174661174680%_ _%g174662174683%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g174661174680%_
                                                _%g174662174683%_)))))
                                   (_%g174660174978%_ _%L174091%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _%L174091%_))
                                     (let* ((_%g174982175012%_
                                             (lambda (_%g174983175009%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g174983175009%_))))
                                            (_%g174981175643%_
                                             (lambda (_%g174983175015%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g174983175015%_))
                                                   (let ((_%e174987175017%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g174983175015%_))))
                                                     (let ((_%hd174988175020%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e174987175017%_)))
                                                           (_%tl174989175022%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e174987175017%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl174989175022%_))
                                                           (let ((_%e174990175025%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl174989175022%_))))
                     (let ((_%hd174991175028%_
                            (let ()
                              (declare (not safe))
                              (##car _%e174990175025%_)))
                           (_%tl174992175030%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e174990175025%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd174991175028%_))
                           (let ((_%e174993175033%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd174991175028%_))))
                             (let ((_%hd174994175036%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e174993175033%_)))
                                   (_%tl174995175038%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e174993175033%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd174994175036%_))
                                   (let ((_%e174996175041%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd174994175036%_))))
                                     (let ((_%hd174997175044%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e174996175041%_)))
                                           (_%tl174998175046%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e174996175041%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd174997175044%_))
                                           (let ((_%e174999175049%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd174997175044%_))))
                                             (let ((_%hd175000175052%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e174999175049%_)))
                                                   (_%tl175001175054%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e174999175049%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl175001175054%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl174998175046%_))
                                                       (let ((_%e175002175057%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl174998175046%_))))
                 (let ((_%hd175003175060%_
                        (let ()
                          (declare (not safe))
                          (##car _%e175002175057%_)))
                       (_%tl175004175062%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e175002175057%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl175004175062%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl174995175038%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl174992175030%_))
                               (let ((_%e175005175065%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl174992175030%_))))
                                 (let ((_%hd175006175068%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e175005175065%_)))
                                       (_%tl175007175070%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e175005175065%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl175007175070%_))
                                       ((lambda (_%L175073%_
                                                 _%L175074%_
                                                 _%L175075%_)
                                          (let* ((_%g175099175117%_
                                                  (lambda (_%g175100175114%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g175100175114%_))))
                                                 (_%g175098175173%_
                                                  (lambda (_%g175100175120%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g175100175120%_))
                                                        (let ((_%e175104175122%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g175100175120%_))))
                  (let ((_%hd175105175125%_
                         (let ()
                           (declare (not safe))
                           (##car _%e175104175122%_)))
                        (_%tl175106175127%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e175104175122%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl175106175127%_))
                        (let ((_%e175107175130%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl175106175127%_))))
                          (let ((_%hd175108175133%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e175107175130%_)))
                                (_%tl175109175135%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e175107175130%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd175108175133%_))
                                (let ((_%e175110175138%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd175108175133%_))))
                                  (let ((_%hd175111175141%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e175110175138%_)))
                                        (_%tl175112175143%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e175110175138%_))))
                                    ((lambda (_%L175146%_
                                              _%L175147%_
                                              _%L175148%_)
                                       (let ((_%receiver175167%_
                                              (let ((_%$e175164%_
                                                     (gxc#apply-extract-receiver
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))
                                                            _%L175146%_))))
                                                (if _%$e175164%_
                                                    _%$e175164%_
                                                    _%L175148%_))))
                                         (for-each
                                          (lambda (_%g175168175170%_)
                                            (gxc#apply-collect-object-refs__%
                                             '#f
                                             _%receiver175167%_
                                             _%method-calls174111%_
                                             _%slot-refs174112%_
                                             _%g175168175170%_))
                                          _%L175146%_)))
                                     _%tl175109175135%_
                                     _%tl175112175143%_
                                     _%hd175111175141%_)))
                                (_%g175099175117%_ _%g175100175120%_))))
                        (_%g175099175117%_ _%g175100175120%_))))
                (_%g175099175117%_ _%g175100175120%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g175098175173%_ _%L175074%_))
                                          (let* ((_%g175176175195%_
                                                  (lambda (_%g175177175192%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g175177175192%_))))
                                                 (_%g175175175319%_
                                                  (lambda (_%g175177175198%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g175177175198%_))
                                                        (let ((_%e175179175200%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g175177175198%_))))
                  (let ((_%hd175180175203%_
                         (let ()
                           (declare (not safe))
                           (##car _%e175179175200%_)))
                        (_%tl175181175205%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e175179175200%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl175181175205%_))
                        (let ((_g178258_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%tl175181175205%_
                                  '0))))
                          (begin
                            (let ((_g178259_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g178258_)
                                         (##values-length _g178258_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g178259_ 2)))
                                  (error "Context expects 2 values"
                                         _g178259_)))
                            (let ((_%target175182175208%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g178258_ 0)))
                                  (_%tl175184175210%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g178258_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl175184175210%_))
                                  (letrec ((_%loop175185175213%_
                                            (lambda (_%hd175183175216%_
                                                     _%clause175189175218%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd175183175216%_))
                                                  (let ((_%e175186175221%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd175183175216%_))))
                                                    (let ((_%lp-hd175187175224%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e175186175221%_)))
                                                          (_%lp-tl175188175226%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e175186175221%_))))
                                                      (_%loop175185175213%_
                                                       _%lp-tl175188175226%_
                                                       (cons _%lp-hd175187175224%_
                                                             _%clause175189175218%_))))
                                                  (let ((_%clause175190175229%_
                                                         (reverse _%clause175189175218%_)))
                                                    ((lambda (_%L175232%_)
                                                       (for-each
                                                        (lambda (_%clause175245%_)
                                                          (let* ((_%g175247175262%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g175248175259%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g175248175259%_))))
                         (_%g175246175309%_
                          (lambda (_%g175248175265%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g175248175265%_))
                                (let ((_%e175252175267%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g175248175265%_))))
                                  (let ((_%hd175253175270%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e175252175267%_)))
                                        (_%tl175254175272%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e175252175267%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd175253175270%_))
                                        (let ((_%e175255175275%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd175253175270%_))))
                                          (let ((_%hd175256175278%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e175255175275%_)))
                                                (_%tl175257175280%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e175255175275%_))))
                                            ((lambda (_%L175283%_
                                                      _%L175284%_
                                                      _%L175285%_)
                                               (let ((_%receiver175303%_
                                                      (let ((_%$e175300%_
                                                             (gxc#apply-extract-receiver
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '%#begin))
                            _%L175283%_))))
                (if _%$e175300%_ _%$e175300%_ _%L175285%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (for-each
                                                  (lambda (_%g175304175306%_)
                                                    (gxc#apply-collect-object-refs__%
                                                     '#f
                                                     _%receiver175303%_
                                                     _%method-calls174111%_
                                                     _%slot-refs174112%_
                                                     _%g175304175306%_))
                                                  _%L175283%_)))
                                             _%tl175254175272%_
                                             _%tl175257175280%_
                                             _%hd175256175278%_)))
                                        (_%g175247175262%_
                                         _%g175248175265%_))))
                                (_%g175247175262%_ _%g175248175265%_)))))
                    (_%g175246175309%_ _%clause175245%_)))
                (let ((__tmp178260
                       (lambda (_%g175311175314%_ _%g175312175316%_)
                         (cons _%g175311175314%_ _%g175312175316%_))))
                  (declare (not safe))
                  (__foldr1 __tmp178260 '() _%L175232%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%clause175190175229%_))))))
                                    (_%loop175185175213%_
                                     _%target175182175208%_
                                     '()))
                                  (_%g175176175195%_ _%g175177175198%_)))))
                        (_%g175176175195%_ _%g175177175198%_))))
                (_%g175176175195%_ _%g175177175198%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g175175175319%_ _%L175073%_))
                                          (if (_%no-specializer?174115%_)
                                              _%stx174019%_
                                              (let* ((_%specializer-id175328%_
                                                      (let* ((_%id175322%_
                                                              (let ((__tmp178261
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L174092%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp178261 '"::specialize")))
                     (_%specializer-id175325%_
                      (let ((__tmp178262
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx174019%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id175322%_ __tmp178262))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id175325%_))
                _%specializer-id175325%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass175330%_
                                                      (let ((__tmp178263
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp178263)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table175332%_
                                                      (let ((__tmp178264
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp178264)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods175334%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls174111%_)))
                                                     (_%$methods175338%_
                                                      (map (lambda (_%id175336%_)
                                                             (let ((__tmp178265
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id175336%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp178265)))
                   _%methods175334%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_175347%_
                                                      (for-each
                                                       (lambda (_%g175339175342%_
                                                                _%g175340175344%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%method-calls174111%_
                                                            _%g175339175342%_
                                                            _%g175340175344%_)))
                                                       _%methods175334%_
                                                       _%$methods175338%_))
                                                     (_%methods-bind175357%_
                                                      (map (lambda (_%g175349175352%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g175350175354%_)
                     (_%generate-method-bind174021%_
                      _%$klass175330%_
                      _%$method-table175332%_
                      _%g175349175352%_
                      _%g175350175354%_))
                   _%methods175334%_
                   _%$methods175338%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots175359%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs174112%_)))
                                                     (_%$slots175363%_
                                                      (map (lambda (_%id175361%_)
                                                             (let ((__tmp178266
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id175361%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp178266)))
                   _%slots175359%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_175372%_
                                                      (for-each
                                                       (lambda (_%g175364175367%_
                                                                _%g175365175369%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%slot-refs174112%_
                                                            _%g175364175367%_
                                                            _%g175365175369%_)))
                                                       _%slots175359%_
                                                       _%$slots175363%_))
                                                     (_%slots-bind175381%_
                                                      (map (lambda (_%g175373175376%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g175374175378%_)
                     (_%generate-slot-bind174022%_
                      _%$klass175330%_
                      _%g175373175376%_
                      _%g175374175378%_))
                   _%slots175359%_
                   _%$slots175363%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-lambda-expr175473%_
                                                      (let* ((_%g175383175401%_
                                                              (lambda (_%g175384175398%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g175384175398%_))))
                     (_%g175382175470%_
                      (lambda (_%g175384175404%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g175384175404%_))
                            (let ((_%e175388175406%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g175384175404%_))))
                              (let ((_%hd175389175409%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e175388175406%_)))
                                    (_%tl175390175411%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e175388175406%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl175390175411%_))
                                    (let ((_%e175391175414%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl175390175411%_))))
                                      (let ((_%hd175392175417%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e175391175414%_)))
                                            (_%tl175393175419%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e175391175414%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd175392175417%_))
                                            (let ((_%e175394175422%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd175392175417%_))))
                                              (let ((_%hd175395175425%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e175394175422%_)))
                                                    (_%tl175396175427%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e175394175422%_))))
                                                ((lambda (_%L175430%_
                                                          _%L175431%_
                                                          _%L175432%_)
                                                   (let* ((_%receiver175461%_
                                                           (let ((_%$e175458%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#apply-extract-receiver
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#begin))
                                 _%L175430%_))))
                     (if _%$e175458%_ _%$e175458%_ _%L175432%_)))
                  (_%body175467%_
                   (map (lambda (_%g175462175464%_)
                          (gxc#apply-subst-object-refs__%
                           '#f
                           _%receiver175461%_
                           _%$klass175330%_
                           _%method-calls174111%_
                           _%slot-refs174112%_
                           _%g175462175464%_))
                        _%L175430%_))
                  (__tmp178267
                   (cons '%#lambda
                         (cons (cons _%L175432%_ _%L175431%_)
                               _%body175467%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp178267
                                                      _%L175074%_)))
                                                 _%tl175393175419%_
                                                 _%tl175396175427%_
                                                 _%hd175395175425%_)))
                                            (_%g175383175401%_
                                             _%g175384175404%_))))
                                    (_%g175383175401%_ _%g175384175404%_))))
                            (_%g175383175401%_ _%g175384175404%_)))))
                (_%g175382175470%_ _%L175074%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-case-lambda-expr175636%_
                                                      (let* ((_%g175475175494%_
                                                              (lambda (_%g175476175491%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g175476175491%_))))
                     (_%g175474175633%_
                      (lambda (_%g175476175497%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g175476175497%_))
                            (let ((_%e175478175499%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g175476175497%_))))
                              (let ((_%hd175479175502%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e175478175499%_)))
                                    (_%tl175480175504%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e175478175499%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl175480175504%_))
                                    (let ((_g178268_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl175480175504%_
                                              '0))))
                                      (begin
                                        (let ((_g178269_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g178268_)
                                                     (##values-length
                                                      _g178268_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g178269_ 2)))
                                              (error "Context expects 2 values"
                                                     _g178269_)))
                                        (let ((_%target175481175507%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g178268_ 0)))
                                              (_%tl175483175509%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g178268_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl175483175509%_))
                                              (letrec ((_%loop175484175512%_
                                                        (lambda (_%hd175482175515%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%clause175488175517%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd175482175515%_))
                      (let ((_%e175485175520%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd175482175515%_))))
                        (let ((_%lp-hd175486175523%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e175485175520%_)))
                              (_%lp-tl175487175525%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e175485175520%_))))
                          (_%loop175484175512%_
                           _%lp-tl175487175525%_
                           (cons _%lp-hd175486175523%_
                                 _%clause175488175517%_))))
                      (let ((_%clause175489175528%_
                             (reverse _%clause175488175517%_)))
                        ((lambda (_%L175531%_)
                           (let* ((_%clauses175631%_
                                   (map (lambda (_%clause175545%_)
                                          (let* ((_%__stx177081177082%_
                                                  _%clause175545%_)
                                                 (_%g175548175563%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx177081177082%_)))))
                                            (let ((_%__kont177083177084%_
                                                   (lambda (_%L175591%_
                                                            _%L175592%_
                                                            _%L175593%_)
                                                     (let* ((_%receiver175612%_
                                                             (let ((_%$e175609%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#apply-extract-receiver
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#begin))
                                   _%L175591%_))))
                       (if _%$e175609%_ _%$e175609%_ _%L175593%_)))
                    (_%body175618%_
                     (map (lambda (_%g175613175615%_)
                            (gxc#apply-subst-object-refs__%
                             '#f
                             _%receiver175612%_
                             _%$klass175330%_
                             _%method-calls174111%_
                             _%slot-refs174112%_
                             _%g175613175615%_))
                          _%L175591%_)))
               (cons (cons _%L175593%_ _%L175592%_) _%body175618%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont177085177086%_
                                                   (lambda ()
                                                     _%clause175545%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx177081177082%_))
                                                  (let ((_%e175553175575%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%__stx177081177082%_))))
                                                    (let ((_%tl175555175580%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e175553175575%_)))
                                                          (_%hd175554175578%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e175553175575%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd175554175578%_))
                                                          (let ((_%e175556175583%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd175554175578%_))))
                    (let ((_%tl175558175588%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e175556175583%_)))
                          (_%hd175557175586%_
                           (let ()
                             (declare (not safe))
                             (##car _%e175556175583%_))))
                      (_%__kont177083177084%_
                       _%tl175555175580%_
                       _%tl175558175588%_
                       _%hd175557175586%_)))
                  (_%__kont177085177086%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont177085177086%_)))))
                                        (let ((__tmp178270
                                               (lambda (_%g175623175626%_
                                                        _%g175624175628%_)
                                                 (cons _%g175623175626%_
                                                       _%g175624175628%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp178270
                                           '()
                                           _%L175531%_))))
                                  (__tmp178271
                                   (cons '%#case-lambda _%clauses175631%_)))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp178271 _%L175073%_)))
                         _%clause175489175528%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop175484175512%_
                                                 _%target175481175507%_
                                                 '()))
                                              (_%g175475175494%_
                                               _%g175476175497%_)))))
                                    (_%g175475175494%_ _%g175476175497%_))))
                            (_%g175475175494%_ _%g175476175497%_)))))
                (_%g175474175633%_ _%L175073%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl175638%_
                                                      (let ((__tmp178272
                                                             (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons (cons _%L175075%_ '())
                                             (cons _%specializer-lambda-expr175473%_
                                                   '()))
                                       '())
                                 (cons _%specializer-case-lambda-expr175636%_
                                       '())))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp178272 _%stx174019%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl175640%_
                                                      (_%generate-specializer-impl174023%_
                                                       _%$klass175330%_
                                                       _%$method-table175332%_
                                                       _%methods-bind175357%_
                                                       _%slots-bind175381%_
                                                       _%specializer-impl175638%_)))
                                                (let ((__tmp178274
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L174092%_)))
                                                      (__tmp178273
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id175328%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp178274
                                                   '" => "
                                                   __tmp178273))
                                                (_%generate-specializer-def174024%_
                                                 _%L174092%_
                                                 _%specializer-id175328%_
                                                 _%specializer-impl175640%_))))
                                        _%hd175006175068%_
                                        _%hd175003175060%_
                                        _%hd175000175052%_)
                                       (_%g174982175012%_ _%g174983175015%_))))
                               (_%g174982175012%_ _%g174983175015%_))
                           (_%g174982175012%_ _%g174983175015%_))
                       (_%g174982175012%_ _%g174983175015%_))))
               (_%g174982175012%_ _%g174983175015%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g174982175012%_
                                                    _%g174983175015%_))))
                                           (_%g174982175012%_
                                            _%g174983175015%_))))
                                   (_%g174982175012%_ _%g174983175015%_))))
                           (_%g174982175012%_ _%g174983175015%_))))
                   (_%g174982175012%_ _%g174983175015%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g174982175012%_
                                                    _%g174983175015%_)))))
                                       (_%g174981175643%_ _%L174091%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _%L174091%_))
                                         (let* ((_%g175647175700%_
                                                 (lambda (_%g175648175697%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g175648175697%_))))
                                                (_%g175646176871%_
                                                 (lambda (_%g175648175703%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g175648175703%_))
                                                       (let ((_%e175654175705%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g175648175703%_))))
                 (let ((_%hd175655175708%_
                        (let ()
                          (declare (not safe))
                          (##car _%e175654175705%_)))
                       (_%tl175656175710%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e175654175705%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%hd175655175708%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%hd175655175708%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl175656175710%_))
                               (let ((_%e175657175713%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl175656175710%_))))
                                 (let ((_%hd175658175716%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e175657175713%_)))
                                       (_%tl175659175718%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e175657175713%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd175658175716%_))
                                       (let ((_%e175660175721%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd175658175716%_))))
                                         (let ((_%hd175661175724%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e175660175721%_)))
                                               (_%tl175662175726%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e175660175721%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd175661175724%_))
                                               (let ((_%e175663175729%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd175661175724%_))))
                                                 (let ((_%hd175664175732%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e175663175729%_)))
                                                       (_%tl175665175734%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e175663175729%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd175664175732%_))
                                                       (let ((_%e175666175737%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd175664175732%_))))
                 (let ((_%hd175667175740%_
                        (let ()
                          (declare (not safe))
                          (##car _%e175666175737%_)))
                       (_%tl175668175742%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e175666175737%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl175668175742%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl175665175734%_))
                           (let ((_%e175669175745%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl175665175734%_))))
                             (let ((_%hd175670175748%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e175669175745%_)))
                                   (_%tl175671175750%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e175669175745%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd175670175748%_))
                                   (let ((_%e175672175753%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd175670175748%_))))
                                     (let ((_%hd175673175756%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e175672175753%_)))
                                           (_%tl175674175758%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e175672175753%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd175673175756%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%hd175673175756%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl175674175758%_))
                                                   (let ((_%e175675175761%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl175674175758%_))))
                                                     (let ((_%hd175676175764%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e175675175761%_)))
                                                           (_%tl175677175766%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e175675175761%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd175676175764%_))
                                                           (let ((_%e175678175769%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%hd175676175764%_))))
                     (let ((_%hd175679175772%_
                            (let ()
                              (declare (not safe))
                              (##car _%e175678175769%_)))
                           (_%tl175680175774%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e175678175769%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd175679175772%_))
                           (let ((_%e175681175777%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd175679175772%_))))
                             (let ((_%hd175682175780%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e175681175777%_)))
                                   (_%tl175683175782%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e175681175777%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd175682175780%_))
                                   (let ((_%e175684175785%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd175682175780%_))))
                                     (let ((_%hd175685175788%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e175684175785%_)))
                                           (_%tl175686175790%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e175684175785%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl175686175790%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl175683175782%_))
                                               (let ((_%e175687175793%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl175683175782%_))))
                                                 (let ((_%hd175688175796%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e175687175793%_)))
                                                       (_%tl175689175798%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e175687175793%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl175689175798%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl175680175774%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl175677175766%_))
                       (let ((_%e175690175801%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl175677175766%_))))
                         (let ((_%hd175691175804%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e175690175801%_)))
                               (_%tl175692175806%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e175690175801%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl175692175806%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl175671175750%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl175662175726%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl175659175718%_))
                                           (let ((_%e175693175809%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl175659175718%_))))
                                             (let ((_%hd175694175812%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e175693175809%_)))
                                                   (_%tl175695175814%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e175693175809%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl175695175814%_))
                                                   ((lambda (_%L175817%_
                                                             _%L175818%_
                                                             _%L175819%_
                                                             _%L175820%_
                                                             _%L175821%_)
                                                      (let* ((_%g175861175923%_
                                                              (lambda (_%g175862175920%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g175862175920%_))))
                     (_%g175860176868%_
                      (lambda (_%g175862175926%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g175862175926%_))
                            (let ((_%e175868175928%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g175862175926%_))))
                              (let ((_%hd175869175931%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e175868175928%_)))
                                    (_%tl175870175933%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e175868175928%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd175869175931%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd175869175931%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl175870175933%_))
                                            (let ((_%e175871175936%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl175870175933%_))))
                                              (let ((_%hd175872175939%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e175871175936%_)))
                                                    (_%tl175873175941%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e175871175936%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl175873175941%_))
                                                    (let ((_%e175874175944%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl175873175941%_))))
                                                      (let ((_%hd175875175947%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e175874175944%_)))
                    (_%tl175876175949%_
                     (let () (declare (not safe)) (##cdr _%e175874175944%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd175875175947%_))
                    (let ((_%e175877175952%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd175875175947%_))))
                      (let ((_%hd175878175955%_
                             (let ()
                               (declare (not safe))
                               (##car _%e175877175952%_)))
                            (_%tl175879175957%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e175877175952%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd175878175955%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _%hd175878175955%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl175879175957%_))
                                    (let ((_%e175880175960%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl175879175957%_))))
                                      (let ((_%hd175881175963%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e175880175960%_)))
                                            (_%tl175882175965%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e175880175960%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd175881175963%_))
                                            (let ((_%e175883175968%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd175881175963%_))))
                                              (let ((_%hd175884175971%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e175883175968%_)))
                                                    (_%tl175885175973%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e175883175968%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd175884175971%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd175884175971%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl175885175973%_))
                                                            (let ((_%e175886175976%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl175885175973%_))))
                      (let ((_%hd175887175979%_
                             (let ()
                               (declare (not safe))
                               (##car _%e175886175976%_)))
                            (_%tl175888175981%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e175886175976%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl175888175981%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl175882175965%_))
                                (let ((_%e175889175984%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl175882175965%_))))
                                  (let ((_%hd175890175987%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e175889175984%_)))
                                        (_%tl175891175989%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e175889175984%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd175890175987%_))
                                        (let ((_%e175892175992%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd175890175987%_))))
                                          (let ((_%hd175893175995%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e175892175992%_)))
                                                (_%tl175894175997%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e175892175992%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd175893175995%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%hd175893175995%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl175894175997%_))
                                                        (let ((_%e175895176000%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl175894175997%_))))
                  (let ((_%hd175896176003%_
                         (let ()
                           (declare (not safe))
                           (##car _%e175895176000%_)))
                        (_%tl175897176005%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e175895176000%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl175897176005%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl175891175989%_))
                            (let ((_%e175898176008%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl175891175989%_))))
                              (let ((_%hd175899176011%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e175898176008%_)))
                                    (_%tl175900176013%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e175898176008%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd175899176011%_))
                                    (let ((_%e175901176016%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd175899176011%_))))
                                      (let ((_%hd175902176019%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e175901176016%_)))
                                            (_%tl175903176021%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e175901176016%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd175902176019%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd175902176019%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl175903176021%_))
                                                    (let ((_%e175904176024%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl175903176021%_))))
                                                      (let ((_%hd175905176027%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e175904176024%_)))
                    (_%tl175906176029%_
                     (let () (declare (not safe)) (##cdr _%e175904176024%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl175906176029%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl175900176013%_))
                        (if (let ((__tmp178275
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-length _%tl175900176013%_))))
                              (declare (not safe))
                              (##fx>= __tmp178275 '1))
                            (let ((_g178276_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl175900176013%_
                                      '1))))
                              (begin
                                (let ((_g178277_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g178276_)
                                             (##values-length _g178276_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g178277_ 2)))
                                      (error "Context expects 2 values"
                                             _g178277_)))
                                (let ((_%target175907176032%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g178276_ 0)))
                                      (_%tl175909176034%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g178276_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl175909176034%_))
                                      (let ((_%e175916176037%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl175909176034%_))))
                                        (let ((_%hd175917176040%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e175916176037%_)))
                                              (_%tl175918176042%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e175916176037%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl175918176042%_))
                                              (letrec ((_%loop175910176045%_
                                                        (lambda (_%hd175908176048%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%kw-ref175914176050%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd175908176048%_))
                      (let ((_%e175911176053%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd175908176048%_))))
                        (let ((_%lp-hd175912176056%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e175911176053%_)))
                              (_%lp-tl175913176058%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e175911176053%_))))
                          (_%loop175910176045%_
                           _%lp-tl175913176058%_
                           (cons _%lp-hd175912176056%_
                                 _%kw-ref175914176050%_))))
                      (let ((_%kw-ref175915176061%_
                             (reverse _%kw-ref175914176050%_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl175876175949%_))
                            ((lambda (_%L176064%_
                                      _%L176065%_
                                      _%L176066%_
                                      _%L176067%_
                                      _%L176068%_)
                               (let* ((_%kw-count176119%_
                                       (length (let ((__tmp178278
                                                      (lambda (_%g176111176114%_
                                                               _%g176112176116%_)
                                                        (cons _%g176111176114%_
                                                              _%g176112176116%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp178278
                                                  '()
                                                  _%L176065%_))))
                                      (_%self-index176121%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%kw-count176119%_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _%L175819%_))
                                     (let* ((_%g176125176139%_
                                             (lambda (_%g176126176136%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g176126176136%_))))
                                            (_%g176124176262%_
                                             (lambda (_%g176126176142%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g176126176142%_))
                                                   (let ((_%e176129176144%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g176126176142%_))))
                                                     (let ((_%hd176130176147%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e176129176144%_)))
                                                           (_%tl176131176149%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e176129176144%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl176131176149%_))
                                                           (let ((_%e176132176152%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl176131176149%_))))
                     (let ((_%hd176133176155%_
                            (let ()
                              (declare (not safe))
                              (##car _%e176132176152%_)))
                           (_%tl176134176157%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e176132176152%_))))
                       ((lambda (_%L176160%_ _%L176161%_)
                          (let* ((_%self176178%_
                                  (list-ref _%L176161%_ _%self-index176121%_))
                                 (_%receiver176183%_
                                  (let ((_%$e176180%_
                                         (gxc#apply-extract-receiver
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   '%#begin))
                                                _%L176160%_))))
                                    (if _%$e176180%_
                                        _%$e176180%_
                                        _%self176178%_))))
                            (for-each
                             (lambda (_%g176185176187%_)
                               (gxc#apply-collect-object-refs__%
                                '#f
                                _%receiver176183%_
                                _%method-calls174111%_
                                _%slot-refs174112%_
                                _%g176185176187%_))
                             _%L176160%_)
                            (if (_%no-specializer?174115%_)
                                _%stx174019%_
                                (let* ((_%specializer-id176196%_
                                        (let* ((_%id176190%_
                                                (let ((__tmp178279
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L174092%_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp178279
                                                   '"::specialize")))
                                               (_%specializer-id176193%_
                                                (let ((__tmp178280
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _%stx174019%_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _%id176190%_
                                                   __tmp178280))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _%specializer-id176193%_))
                                          _%specializer-id176193%_))
                                       (_%$klass176198%_
                                        (let ((__tmp178281
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__klass))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp178281)))
                                       (_%$method-table176200%_
                                        (let ((__tmp178282
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__method-table))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp178282)))
                                       (_%methods176202%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys
                                           _%method-calls174111%_)))
                                       (_%$methods176206%_
                                        (map (lambda (_%id176204%_)
                                               (let ((__tmp178283
                                                      (gensym _%id176204%_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp178283)))
                                             _%methods176202%_))
                                       (_%_176215%_
                                        (for-each
                                         (lambda (_%g176207176210%_
                                                  _%g176208176212%_)
                                           (let ()
                                             (declare (not safe))
                                             (__hash-put!
                                              _%method-calls174111%_
                                              _%g176207176210%_
                                              _%g176208176212%_)))
                                         _%methods176202%_
                                         _%$methods176206%_))
                                       (_%methods-bind176225%_
                                        (map (lambda (_%g176217176220%_
                                                      _%g176218176222%_)
                                               (_%generate-method-bind174021%_
                                                _%$klass176198%_
                                                _%$method-table176200%_
                                                _%g176217176220%_
                                                _%g176218176222%_))
                                             _%methods176202%_
                                             _%$methods176206%_))
                                       (_%slots176227%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys _%slot-refs174112%_)))
                                       (_%$slots176231%_
                                        (map (lambda (_%id176229%_)
                                               (let ((__tmp178284
                                                      (gensym _%id176229%_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp178284)))
                                             _%slots176227%_))
                                       (_%_176240%_
                                        (for-each
                                         (lambda (_%g176232176235%_
                                                  _%g176233176237%_)
                                           (let ()
                                             (declare (not safe))
                                             (__hash-put!
                                              _%slot-refs174112%_
                                              _%g176232176235%_
                                              _%g176233176237%_)))
                                         _%slots176227%_
                                         _%$slots176231%_))
                                       (_%slots-bind176249%_
                                        (map (lambda (_%g176241176244%_
                                                      _%g176242176246%_)
                                               (_%generate-slot-bind174022%_
                                                _%$klass176198%_
                                                _%g176241176244%_
                                                _%g176242176246%_))
                                             _%slots176227%_
                                             _%$slots176231%_))
                                       (_%specializer-impl176257%_
                                        (let* ((_%specializer-body176255%_
                                                (map (lambda (_%g176250176252%_)
                                                       (gxc#apply-subst-object-refs__%
                                                        '#f
                                                        _%receiver176183%_
                                                        _%$klass176198%_
                                                        _%method-calls174111%_
                                                        _%slot-refs174112%_
                                                        _%g176250176252%_))
                                                     _%L176160%_))
                                               (__tmp178285
                                                (cons '%#let-values
                                                      (cons (cons (cons (cons _%L175821%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (cons '%#let-values
                                            (cons (cons (cons (cons _%L175820%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (let ((__tmp178286
                                   (cons '%#lambda
                                         (cons _%L176161%_
                                               _%specializer-body176255%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-source __tmp178286 _%L175819%_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%L175818%_ '())))
                                      '()))
                          '())
                    (cons _%L175817%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp178285
                                           _%stx174019%_)))
                                       (_%specializer-impl176259%_
                                        (_%generate-specializer-impl174023%_
                                         _%$klass176198%_
                                         _%$method-table176200%_
                                         _%methods-bind176225%_
                                         _%slots-bind176249%_
                                         _%specializer-impl176257%_)))
                                  (let ((__tmp178288
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%L174092%_)))
                                        (__tmp178287
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e
                                            _%specializer-id176196%_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp178288
                                     '" => "
                                     __tmp178287))
                                  (_%generate-specializer-def174024%_
                                   _%L174092%_
                                   _%specializer-id176196%_
                                   _%specializer-impl176259%_)))))
                        _%tl176134176157%_
                        _%hd176133176155%_)))
                   (_%g176125176139%_ _%g176126176142%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g176125176139%_
                                                    _%g176126176142%_)))))
                                       (_%g176124176262%_ _%L175819%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _%L175819%_))
                                         (let* ((_%g176266176296%_
                                                 (lambda (_%g176267176293%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g176267176293%_))))
                                                (_%g176265176864%_
                                                 (lambda (_%g176267176299%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g176267176299%_))
                                                       (let ((_%e176271176301%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g176267176299%_))))
                 (let ((_%hd176272176304%_
                        (let ()
                          (declare (not safe))
                          (##car _%e176271176301%_)))
                       (_%tl176273176306%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e176271176301%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl176273176306%_))
                       (let ((_%e176274176309%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl176273176306%_))))
                         (let ((_%hd176275176312%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e176274176309%_)))
                               (_%tl176276176314%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e176274176309%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd176275176312%_))
                               (let ((_%e176277176317%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd176275176312%_))))
                                 (let ((_%hd176278176320%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e176277176317%_)))
                                       (_%tl176279176322%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e176277176317%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd176278176320%_))
                                       (let ((_%e176280176325%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd176278176320%_))))
                                         (let ((_%hd176281176328%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e176280176325%_)))
                                               (_%tl176282176330%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e176280176325%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd176281176328%_))
                                               (let ((_%e176283176333%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd176281176328%_))))
                                                 (let ((_%hd176284176336%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e176283176333%_)))
                                                       (_%tl176285176338%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e176283176333%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl176285176338%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl176282176330%_))
                                                           (let ((_%e176286176341%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl176282176330%_))))
                     (let ((_%hd176287176344%_
                            (let ()
                              (declare (not safe))
                              (##car _%e176286176341%_)))
                           (_%tl176288176346%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e176286176341%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl176288176346%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl176279176322%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl176276176314%_))
                                   (let ((_%e176289176349%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl176276176314%_))))
                                     (let ((_%hd176290176352%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e176289176349%_)))
                                           (_%tl176291176354%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e176289176349%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl176291176354%_))
                                           ((lambda (_%L176357%_
                                                     _%L176358%_
                                                     _%L176359%_)
                                              (let* ((_%g176383176397%_
                                                      (lambda (_%g176384176394%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g176384176394%_))))
                                                     (_%g176382176444%_
                                                      (lambda (_%g176384176400%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g176384176400%_))
                                                            (let ((_%e176387176402%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g176384176400%_))))
                      (let ((_%hd176388176405%_
                             (let ()
                               (declare (not safe))
                               (##car _%e176387176402%_)))
                            (_%tl176389176407%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e176387176402%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl176389176407%_))
                            (let ((_%e176390176410%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl176389176407%_))))
                              (let ((_%hd176391176413%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e176390176410%_)))
                                    (_%tl176392176415%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e176390176410%_))))
                                ((lambda (_%L176418%_ _%L176419%_)
                                   (let* ((_%self176432%_
                                           (list-ref
                                            _%L176419%_
                                            _%self-index176121%_))
                                          (_%receiver176437%_
                                           (let ((_%$e176434%_
                                                  (gxc#apply-extract-receiver
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '%#begin))
                                                         _%L176418%_))))
                                             (if _%$e176434%_
                                                 _%$e176434%_
                                                 _%self176432%_))))
                                     (for-each
                                      (lambda (_%g176439176441%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%receiver176437%_
                                         _%method-calls174111%_
                                         _%slot-refs174112%_
                                         _%g176439176441%_))
                                      _%L176418%_)))
                                 _%tl176392176415%_
                                 _%hd176391176413%_)))
                            (_%g176383176397%_ _%g176384176400%_))))
                    (_%g176383176397%_ _%g176384176400%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g176382176444%_
                                                 _%L176358%_))
                                              (let* ((_%g176447176466%_
                                                      (lambda (_%g176448176463%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g176448176463%_))))
                                                     (_%g176446176577%_
                                                      (lambda (_%g176448176469%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g176448176469%_))
                                                            (let ((_%e176450176471%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g176448176469%_))))
                      (let ((_%hd176451176474%_
                             (let ()
                               (declare (not safe))
                               (##car _%e176450176471%_)))
                            (_%tl176452176476%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e176450176471%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _%tl176452176476%_))
                            (let ((_g178289_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl176452176476%_
                                      '0))))
                              (begin
                                (let ((_g178290_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g178289_)
                                             (##values-length _g178289_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g178290_ 2)))
                                      (error "Context expects 2 values"
                                             _g178290_)))
                                (let ((_%target176453176479%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g178289_ 0)))
                                      (_%tl176455176481%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g178289_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl176455176481%_))
                                      (letrec ((_%loop176456176484%_
                                                (lambda (_%hd176454176487%_
                                                         _%clause176460176489%_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd176454176487%_))
                                                      (let ((_%e176457176492%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd176454176487%_))))
                (let ((_%lp-hd176458176495%_
                       (let () (declare (not safe)) (##car _%e176457176492%_)))
                      (_%lp-tl176459176497%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e176457176492%_))))
                  (_%loop176456176484%_
                   _%lp-tl176459176497%_
                   (cons _%lp-hd176458176495%_ _%clause176460176489%_))))
              (let ((_%clause176461176500%_ (reverse _%clause176460176489%_)))
                ((lambda (_%L176503%_)
                   (for-each
                    (lambda (_%clause176516%_)
                      (let* ((_%g176518176529%_
                              (lambda (_%g176519176526%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g176519176526%_))))
                             (_%g176517176567%_
                              (lambda (_%g176519176532%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g176519176532%_))
                                    (let ((_%e176522176534%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g176519176532%_))))
                                      (let ((_%hd176523176537%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e176522176534%_)))
                                            (_%tl176524176539%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e176522176534%_))))
                                        ((lambda (_%L176542%_ _%L176543%_)
                                           (let* ((_%self176555%_
                                                   (list-ref
                                                    _%L176543%_
                                                    _%self-index176121%_))
                                                  (_%receiver176560%_
                                                   (let ((_%$e176557%_
                                                          (gxc#apply-extract-receiver
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#begin))
                         _%L176542%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e176557%_
                                                         _%$e176557%_
                                                         _%self176555%_))))
                                             (for-each
                                              (lambda (_%g176562176564%_)
                                                (gxc#apply-collect-object-refs__%
                                                 '#f
                                                 _%receiver176560%_
                                                 _%method-calls174111%_
                                                 _%slot-refs174112%_
                                                 _%g176562176564%_))
                                              _%L176542%_)))
                                         _%tl176524176539%_
                                         _%hd176523176537%_)))
                                    (_%g176518176529%_ _%g176519176532%_)))))
                        (_%g176517176567%_ _%clause176516%_)))
                    (let ((__tmp178291
                           (lambda (_%g176569176572%_ _%g176570176574%_)
                             (cons _%g176569176572%_ _%g176570176574%_))))
                      (declare (not safe))
                      (__foldr1 __tmp178291 '() _%L176503%_))))
                 _%clause176461176500%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop176456176484%_
                                         _%target176453176479%_
                                         '()))
                                      (_%g176447176466%_ _%g176448176469%_)))))
                            (_%g176447176466%_ _%g176448176469%_))))
                    (_%g176447176466%_ _%g176448176469%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g176446176577%_
                                                 _%L176357%_))
                                              (if (_%no-specializer?174115%_)
                                                  _%stx174019%_
                                                  (let* ((_%specializer-id176586%_
                                                          (let* ((_%id176580%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp178292
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L174092%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp178292 '"::specialize")))
                         (_%specializer-id176583%_
                          (let ((__tmp178293
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx174019%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id176580%_
                             __tmp178293))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id176583%_))
                    _%specializer-id176583%_))
                 (_%$klass176588%_
                  (let ((__tmp178294
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp178294)))
                 (_%$method-table176590%_
                  (let ((__tmp178295
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp178295)))
                 (_%methods176592%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls174111%_)))
                 (_%$methods176596%_
                  (map (lambda (_%id176594%_)
                         (let ((__tmp178296 (gensym _%id176594%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp178296)))
                       _%methods176592%_))
                 (_%_176605%_
                  (for-each
                   (lambda (_%g176597176600%_ _%g176598176602%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%method-calls174111%_
                        _%g176597176600%_
                        _%g176598176602%_)))
                   _%methods176592%_
                   _%$methods176596%_))
                 (_%methods-bind176615%_
                  (map (lambda (_%g176607176610%_ _%g176608176612%_)
                         (_%generate-method-bind174021%_
                          _%$klass176588%_
                          _%$method-table176590%_
                          _%g176607176610%_
                          _%g176608176612%_))
                       _%methods176592%_
                       _%$methods176596%_))
                 (_%slots176617%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs174112%_)))
                 (_%$slots176621%_
                  (map (lambda (_%id176619%_)
                         (let ((__tmp178297 (gensym _%id176619%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp178297)))
                       _%slots176617%_))
                 (_%_176630%_
                  (for-each
                   (lambda (_%g176622176625%_ _%g176623176627%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%slot-refs174112%_
                        _%g176622176625%_
                        _%g176623176627%_)))
                   _%slots176617%_
                   _%$slots176621%_))
                 (_%slots-bind176639%_
                  (map (lambda (_%g176631176634%_ _%g176632176636%_)
                         (_%generate-slot-bind174022%_
                          _%$klass176588%_
                          _%g176631176634%_
                          _%g176632176636%_))
                       _%slots176617%_
                       _%$slots176621%_))
                 (_%specializer-lambda-expr176717%_
                  (let* ((_%g176641176655%_
                          (lambda (_%g176642176652%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g176642176652%_))))
                         (_%g176640176714%_
                          (lambda (_%g176642176658%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g176642176658%_))
                                (let ((_%e176645176660%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g176642176658%_))))
                                  (let ((_%hd176646176663%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e176645176660%_)))
                                        (_%tl176647176665%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e176645176660%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl176647176665%_))
                                        (let ((_%e176648176668%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl176647176665%_))))
                                          (let ((_%hd176649176671%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e176648176668%_)))
                                                (_%tl176650176673%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e176648176668%_))))
                                            ((lambda (_%L176676%_ _%L176677%_)
                                               (let* ((_%self176700%_
                                                       (list-ref
                                                        _%L176677%_
                                                        _%self-index176121%_))
                                                      (_%receiver176705%_
                                                       (let ((_%$e176702%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%L176676%_))))
                 (if _%$e176702%_ _%$e176702%_ _%self176700%_)))
              (_%body176711%_
               (map (lambda (_%g176706176708%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver176705%_
                       _%$klass176588%_
                       _%method-calls174111%_
                       _%slot-refs174112%_
                       _%g176706176708%_))
                    _%L176676%_))
              (__tmp178298 (cons '%#lambda (cons _%L176677%_ _%body176711%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp178298
                                                  _%L176358%_)))
                                             _%tl176650176673%_
                                             _%hd176649176671%_)))
                                        (_%g176641176655%_
                                         _%g176642176658%_))))
                                (_%g176641176655%_ _%g176642176658%_)))))
                    (_%g176640176714%_ _%L176358%_)))
                 (_%specializer-case-lambda-expr176857%_
                  (let* ((_%g176719176738%_
                          (lambda (_%g176720176735%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g176720176735%_))))
                         (_%g176718176854%_
                          (lambda (_%g176720176741%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g176720176741%_))
                                (let ((_%e176722176743%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g176720176741%_))))
                                  (let ((_%hd176723176746%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e176722176743%_)))
                                        (_%tl176724176748%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e176722176743%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl176724176748%_))
                                        (let ((_g178299_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl176724176748%_
                                                  '0))))
                                          (begin
                                            (let ((_g178300_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g178299_)
                                                         (##values-length
                                                          _g178299_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g178300_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g178300_)))
                                            (let ((_%target176725176751%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g178299_
                                                      0)))
                                                  (_%tl176727176753%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g178299_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl176727176753%_))
                                                  (letrec ((_%loop176728176756%_
                                                            (lambda (_%hd176726176759%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause176732176761%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd176726176759%_))
                          (let ((_%e176729176764%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd176726176759%_))))
                            (let ((_%lp-hd176730176767%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e176729176764%_)))
                                  (_%lp-tl176731176769%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e176729176764%_))))
                              (_%loop176728176756%_
                               _%lp-tl176731176769%_
                               (cons _%lp-hd176730176767%_
                                     _%clause176732176761%_))))
                          (let ((_%clause176733176772%_
                                 (reverse _%clause176732176761%_)))
                            ((lambda (_%L176775%_)
                               (let* ((_%clauses176852%_
                                       (map (lambda (_%clause176789%_)
                                              (let* ((_%g176791176802%_
                                                      (lambda (_%g176792176799%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g176792176799%_))))
                                                     (_%g176790176842%_
                                                      (lambda (_%g176792176805%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g176792176805%_))
                                                            (let ((_%e176795176807%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g176792176805%_))))
                      (let ((_%hd176796176810%_
                             (let ()
                               (declare (not safe))
                               (##car _%e176795176807%_)))
                            (_%tl176797176812%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e176795176807%_))))
                        ((lambda (_%L176815%_ _%L176816%_)
                           (let* ((_%self176828%_
                                   (list-ref _%L176816%_ _%self-index176121%_))
                                  (_%receiver176833%_
                                   (let ((_%$e176830%_
                                          (gxc#apply-extract-receiver
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '%#begin))
                                                 _%L176815%_))))
                                     (if _%$e176830%_
                                         _%$e176830%_
                                         _%self176828%_)))
                                  (_%body176839%_
                                   (map (lambda (_%g176834176836%_)
                                          (gxc#apply-subst-object-refs__%
                                           '#f
                                           _%receiver176833%_
                                           _%$klass176588%_
                                           _%method-calls174111%_
                                           _%slot-refs174112%_
                                           _%g176834176836%_))
                                        _%L176815%_)))
                             (cons _%L176816%_ _%body176839%_)))
                         _%tl176797176812%_
                         _%hd176796176810%_)))
                    (_%g176791176802%_ _%g176792176805%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g176790176842%_
                                                 _%clause176789%_)))
                                            (let ((__tmp178301
                                                   (lambda (_%g176844176847%_
                                                            _%g176845176849%_)
                                                     (cons _%g176844176847%_
                                                           _%g176845176849%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp178301
                                               '()
                                               _%L176775%_))))
                                      (__tmp178302
                                       (cons '%#case-lambda
                                             _%clauses176852%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp178302
                                  _%L176357%_)))
                             _%clause176733176772%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop176728176756%_
                                                     _%target176725176751%_
                                                     '()))
                                                  (_%g176719176738%_
                                                   _%g176720176741%_)))))
                                        (_%g176719176738%_
                                         _%g176720176741%_))))
                                (_%g176719176738%_ _%g176720176741%_)))))
                    (_%g176718176854%_ _%L176357%_)))
                 (_%specializer-impl176859%_
                  (let ((__tmp178303
                         (cons '%#let-values
                               (cons (cons (cons (cons _%L175821%_ '())
                                                 (cons (cons '%#let-values
                                                             (cons (cons (cons (cons _%L175820%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             '())
                                       (cons (let ((__tmp178304
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%L176359%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons _%specializer-lambda-expr176717%_
                                          '()))
                              '())
                        (cons _%specializer-case-lambda-expr176857%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp178304
                                                _%stx174019%_))
                                             '()))
                                 '())
                           (cons _%L175818%_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons _%L175817%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp178303 _%stx174019%_)))
                 (_%specializer-impl176861%_
                  (_%generate-specializer-impl174023%_
                   _%$klass176588%_
                   _%$method-table176590%_
                   _%methods-bind176615%_
                   _%slots-bind176639%_
                   _%specializer-impl176859%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp178306
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L174092%_)))
                                                          (__tmp178305
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id176586%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp178306
                                                       '" => "
                                                       __tmp178305))
                                                    (_%generate-specializer-def174024%_
                                                     _%L174092%_
                                                     _%specializer-id176586%_
                                                     _%specializer-impl176861%_))))
                                            _%hd176290176352%_
                                            _%hd176287176344%_
                                            _%hd176284176336%_)
                                           (_%g176266176296%_
                                            _%g176267176299%_))))
                                   (_%g176266176296%_ _%g176267176299%_))
                               (_%g176266176296%_ _%g176267176299%_))
                           (_%g176266176296%_ _%g176267176299%_))))
                   (_%g176266176296%_ _%g176267176299%_))
               (_%g176266176296%_ _%g176267176299%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g176266176296%_
                                                _%g176267176299%_))))
                                       (_%g176266176296%_ _%g176267176299%_))))
                               (_%g176266176296%_ _%g176267176299%_))))
                       (_%g176266176296%_ _%g176267176299%_))))
               (_%g176266176296%_ _%g176267176299%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g176265176864%_ _%L175819%_))
                                         _%stx174019%_))))
                             _%hd175917176040%_
                             _%kw-ref175915176061%_
                             _%hd175905176027%_
                             _%hd175896176003%_
                             _%hd175887175979%_)
                            (_%g175861175923%_ _%g175862175926%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop175910176045%_
                                                 _%target175907176032%_
                                                 '()))
                                              (_%g175861175923%_
                                               _%g175862175926%_))))
                                      (_%g175861175923%_ _%g175862175926%_)))))
                            (_%g175861175923%_ _%g175862175926%_))
                        (_%g175861175923%_ _%g175862175926%_))
                    (_%g175861175923%_ _%g175862175926%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g175861175923%_
                                                     _%g175862175926%_))
                                                (_%g175861175923%_
                                                 _%g175862175926%_))
                                            (_%g175861175923%_
                                             _%g175862175926%_))))
                                    (_%g175861175923%_ _%g175862175926%_))))
                            (_%g175861175923%_ _%g175862175926%_))
                        (_%g175861175923%_ _%g175862175926%_))))
                (_%g175861175923%_ _%g175862175926%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g175861175923%_
                                                     _%g175862175926%_))
                                                (_%g175861175923%_
                                                 _%g175862175926%_))))
                                        (_%g175861175923%_
                                         _%g175862175926%_))))
                                (_%g175861175923%_ _%g175862175926%_))
                            (_%g175861175923%_ _%g175862175926%_))))
                    (_%g175861175923%_ _%g175862175926%_))
                (_%g175861175923%_ _%g175862175926%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g175861175923%_
                                                     _%g175862175926%_))))
                                            (_%g175861175923%_
                                             _%g175862175926%_))))
                                    (_%g175861175923%_ _%g175862175926%_))
                                (_%g175861175923%_ _%g175862175926%_))
                            (_%g175861175923%_ _%g175862175926%_))))
                    (_%g175861175923%_ _%g175862175926%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g175861175923%_
                                                     _%g175862175926%_))))
                                            (_%g175861175923%_
                                             _%g175862175926%_))
                                        (_%g175861175923%_ _%g175862175926%_))
                                    (_%g175861175923%_ _%g175862175926%_))))
                            (_%g175861175923%_ _%g175862175926%_)))))
                (_%g175860176868%_ _%L175818%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd175694175812%_
                                                    _%hd175691175804%_
                                                    _%hd175688175796%_
                                                    _%hd175685175788%_
                                                    _%hd175667175740%_)
                                                   (_%g175647175700%_
                                                    _%g175648175703%_))))
                                           (_%g175647175700%_
                                            _%g175648175703%_))
                                       (_%g175647175700%_ _%g175648175703%_))
                                   (_%g175647175700%_ _%g175648175703%_))
                               (_%g175647175700%_ _%g175648175703%_))))
                       (_%g175647175700%_ _%g175648175703%_))
                   (_%g175647175700%_ _%g175648175703%_))
               (_%g175647175700%_ _%g175648175703%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g175647175700%_
                                                _%g175648175703%_))
                                           (_%g175647175700%_
                                            _%g175648175703%_))))
                                   (_%g175647175700%_ _%g175648175703%_))))
                           (_%g175647175700%_ _%g175648175703%_))))
                   (_%g175647175700%_ _%g175648175703%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g175647175700%_
                                                    _%g175648175703%_))
                                               (_%g175647175700%_
                                                _%g175648175703%_))
                                           (_%g175647175700%_
                                            _%g175648175703%_))))
                                   (_%g175647175700%_ _%g175648175703%_))))
                           (_%g175647175700%_ _%g175648175703%_))
                       (_%g175647175700%_ _%g175648175703%_))))
               (_%g175647175700%_ _%g175648175703%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g175647175700%_
                                                _%g175648175703%_))))
                                       (_%g175647175700%_ _%g175648175703%_))))
                               (_%g175647175700%_ _%g175648175703%_))
                           (_%g175647175700%_ _%g175648175703%_))
                       (_%g175647175700%_ _%g175648175703%_))))
               (_%g175647175700%_ _%g175648175703%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g175646176871%_ _%L174091%_))
                                         _%stx174019%_))))))))
                  (_%__kont177105177106%_ (lambda () _%stx174019%_)))
              (let ((_%__match177134177135%_
                     (lambda (_%e174031174059%_
                              _%hd174032174062%_
                              _%tl174033174064%_
                              _%e174034174067%_
                              _%hd174035174070%_
                              _%tl174036174072%_
                              _%e174037174075%_
                              _%hd174038174078%_
                              _%tl174039174080%_
                              _%e174040174083%_
                              _%hd174041174086%_
                              _%tl174042174088%_)
                       (let ((_%L174091%_ _%hd174041174086%_)
                             (_%L174092%_ _%hd174038174078%_))
                         (if (let ((__tmp178307
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L174092%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp178307))
                             (_%__kont177103177104%_ _%L174091%_ _%L174092%_)
                             (_%__kont177105177106%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx177101177102%_))
                    (let ((_%e174031174059%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx177101177102%_))))
                      (let ((_%tl174033174064%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e174031174059%_)))
                            (_%hd174032174062%_
                             (let ()
                               (declare (not safe))
                               (##car _%e174031174059%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl174033174064%_))
                            (let ((_%e174034174067%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl174033174064%_))))
                              (let ((_%tl174036174072%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e174034174067%_)))
                                    (_%hd174035174070%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e174034174067%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd174035174070%_))
                                    (let ((_%e174037174075%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd174035174070%_))))
                                      (let ((_%tl174039174080%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e174037174075%_)))
                                            (_%hd174038174078%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e174037174075%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl174039174080%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl174036174072%_))
                                                (let ((_%e174040174083%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl174036174072%_))))
                                                  (let ((_%tl174042174088%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e174040174083%_)))
                                                        (_%hd174041174086%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e174040174083%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl174042174088%_))
                                                        (_%__match177134177135%_
                                                         _%e174031174059%_
                                                         _%hd174032174062%_
                                                         _%tl174033174064%_
                                                         _%e174034174067%_
                                                         _%hd174035174070%_
                                                         _%tl174036174072%_
                                                         _%e174037174075%_
                                                         _%hd174038174078%_
                                                         _%tl174039174080%_
                                                         _%e174040174083%_
                                                         _%hd174041174086%_
                                                         _%tl174042174088%_)
                                                        (_%__kont177105177106%_))))
                                                (_%__kont177105177106%_))
                                            (_%__kont177105177106%_))))
                                    (_%__kont177105177106%_))))
                            (_%__kont177105177106%_))))
                    (_%__kont177105177106%_))))))))
    (define gxc#extract-receiver-begin-annotation%
      (lambda (_%self173871%_ _%stx173872%_)
        (let* ((_%__stx177137177138%_ _%stx173872%_)
               (_%g173875173908%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx177137177138%_)))))
          (let ((_%__kont177139177140%_ (lambda (_%L173998%_) _%L173998%_))
                (_%__kont177141177142%_
                 (lambda (_%L173937%_ _%L173938%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self173871%_ _%L173937%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx177137177138%_))
                (let ((_%e173878173958%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx177137177138%_))))
                  (let ((_%tl173880173963%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e173878173958%_)))
                        (_%hd173879173961%_
                         (let ()
                           (declare (not safe))
                           (##car _%e173878173958%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl173880173963%_))
                        (let ((_%e173881173966%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl173880173963%_))))
                          (let ((_%tl173883173971%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e173881173966%_)))
                                (_%hd173882173969%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e173881173966%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd173882173969%_))
                                (let ((_%e173884173974%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd173882173969%_))))
                                  (let ((_%tl173886173979%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e173884173974%_)))
                                        (_%hd173885173977%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e173884173974%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd173885173977%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@receiver
                                               _%hd173885173977%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl173886173979%_))
                                                (let ((_%e173887173982%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl173886173979%_))))
                                                  (let ((_%tl173889173987%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e173887173982%_)))
                                                        (_%hd173888173985%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e173887173982%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl173889173987%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl173883173971%_))
                                                            (let ((_%e173890173990%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl173883173971%_))))
                      (let ((_%tl173892173995%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e173890173990%_)))
                            (_%hd173891173993%_
                             (let ()
                               (declare (not safe))
                               (##car _%e173890173990%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl173892173995%_))
                            (_%__kont177139177140%_ _%hd173888173985%_)
                            (let ()
                              (declare (not safe))
                              (_%g173875173908%_)))))
                    (let () (declare (not safe)) (_%g173875173908%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl173883173971%_))
                    (let ((_%e173901173929%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl173883173971%_))))
                      (let ((_%tl173903173934%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e173901173929%_)))
                            (_%hd173902173932%_
                             (let ()
                               (declare (not safe))
                               (##car _%e173901173929%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl173903173934%_))
                            (_%__kont177141177142%_
                             _%hd173902173932%_
                             _%hd173882173969%_)
                            (let ()
                              (declare (not safe))
                              (_%g173875173908%_)))))
                    (let () (declare (not safe)) (_%g173875173908%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl173883173971%_))
                                                    (let ((_%e173901173929%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl173883173971%_))))
                                                      (let ((_%tl173903173934%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e173901173929%_)))
                    (_%hd173902173932%_
                     (let () (declare (not safe)) (##car _%e173901173929%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl173903173934%_))
                    (_%__kont177141177142%_
                     _%hd173902173932%_
                     _%hd173882173969%_)
                    (let () (declare (not safe)) (_%g173875173908%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g173875173908%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl173883173971%_))
                                                (let ((_%e173901173929%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl173883173971%_))))
                                                  (let ((_%tl173903173934%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e173901173929%_)))
                                                        (_%hd173902173932%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e173901173929%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl173903173934%_))
                                                        (_%__kont177141177142%_
                                                         _%hd173902173932%_
                                                         _%hd173882173969%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g173875173908%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g173875173908%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl173883173971%_))
                                            (let ((_%e173901173929%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl173883173971%_))))
                                              (let ((_%tl173903173934%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e173901173929%_)))
                                                    (_%hd173902173932%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e173901173929%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl173903173934%_))
                                                    (_%__kont177141177142%_
                                                     _%hd173902173932%_
                                                     _%hd173882173969%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g173875173908%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g173875173908%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl173883173971%_))
                                    (let ((_%e173901173929%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl173883173971%_))))
                                      (let ((_%tl173903173934%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e173901173929%_)))
                                            (_%hd173902173932%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e173901173929%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl173903173934%_))
                                            (_%__kont177141177142%_
                                             _%hd173902173932%_
                                             _%hd173882173969%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g173875173908%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g173875173908%_))))))
                        (let () (declare (not safe)) (_%g173875173908%_)))))
                (let () (declare (not safe)) (_%g173875173908%_)))))))
    (define gxc#extract-receiver-if%
      (lambda (_%self173787%_ _%stx173788%_)
        (let* ((_%g173790173811%_
                (lambda (_%g173791173808%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g173791173808%_))))
               (_%g173789173868%_
                (lambda (_%g173791173814%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g173791173814%_))
                      (let ((_%e173795173816%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g173791173814%_))))
                        (let ((_%hd173796173819%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e173795173816%_)))
                              (_%tl173797173821%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e173795173816%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl173797173821%_))
                              (let ((_%e173798173824%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl173797173821%_))))
                                (let ((_%hd173799173827%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e173798173824%_)))
                                      (_%tl173800173829%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e173798173824%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl173800173829%_))
                                      (let ((_%e173801173832%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl173800173829%_))))
                                        (let ((_%hd173802173835%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e173801173832%_)))
                                              (_%tl173803173837%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e173801173832%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl173803173837%_))
                                              (let ((_%e173804173840%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl173803173837%_))))
                                                (let ((_%hd173805173843%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e173804173840%_)))
                                                      (_%tl173806173845%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e173804173840%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl173806173845%_))
                                                      ((lambda (_%L173848%_
                                                                _%L173849%_
                                                                _%L173850%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self173787%_
                                                            _%L173849%_)))
                                                       _%hd173805173843%_
                                                       _%hd173802173835%_
                                                       _%hd173799173827%_)
                                                      (_%g173790173811%_
                                                       _%g173791173814%_))))
                                              (_%g173790173811%_
                                               _%g173791173814%_))))
                                      (_%g173790173811%_ _%g173791173814%_))))
                              (_%g173790173811%_ _%g173791173814%_))))
                      (_%g173790173811%_ _%g173791173814%_)))))
          (_%g173789173868%_ _%stx173788%_))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self172748%_ _%stx172749%_)
        (let* ((_%__stx177203177204%_ _%stx172749%_)
               (_%g172757172979%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx177203177204%_)))))
          (let ((_%__kont177205177206%_
                 (lambda (_%L173736%_ _%L173737%_ _%L173738%_ _%L173739%_)
                   (let ((__tmp178309
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self172748%_ 'methods)))
                         (__tmp178308
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L173737%_))))
                     (declare (not safe))
                     (hash-put! __tmp178309 __tmp178308 '#t))
                   (for-each
                    (lambda (_%g173772173774%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self172748%_ _%g173772173774%_)))
                    (let ((__tmp178310
                           (lambda (_%g173776173779%_ _%g173777173781%_)
                             (cons _%g173776173779%_ _%g173777173781%_))))
                      (declare (not safe))
                      (__foldr1 __tmp178310 '() _%L173736%_)))))
                (_%__kont177209177210%_
                 (lambda (_%L173571%_
                          _%L173572%_
                          _%L173573%_
                          _%L173574%_
                          _%L173575%_)
                   (let ((__tmp178312
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self172748%_ 'methods)))
                         (__tmp178311
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L173572%_))))
                     (declare (not safe))
                     (hash-put! __tmp178312 __tmp178311 '#t))
                   (for-each
                    (lambda (_%g173615173617%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self172748%_ _%g173615173617%_)))
                    (let ((__tmp178313
                           (lambda (_%g173619173622%_ _%g173620173624%_)
                             (cons _%g173619173622%_ _%g173620173624%_))))
                      (declare (not safe))
                      (__foldr1 __tmp178313 '() _%L173571%_)))))
                (_%__kont177213177214%_
                 (lambda (_%L173404%_ _%L173405%_ _%L173406%_)
                   (let ((__tmp178315
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self172748%_ 'slots)))
                         (__tmp178314
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L173404%_))))
                     (declare (not safe))
                     (hash-put! __tmp178315 __tmp178314 '#t))))
                (_%__kont177215177216%_
                 (lambda (_%L173281%_ _%L173282%_ _%L173283%_ _%L173284%_)
                   (let ((__tmp178317
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self172748%_ 'slots)))
                         (__tmp178316
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L173282%_))))
                     (declare (not safe))
                     (hash-put! __tmp178317 __tmp178316 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self172748%_ _%L173281%_))))
                (_%__kont177217177218%_
                 (lambda (_%L173155%_ _%L173156%_)
                   (let* ((_%accessor173178%_
                           (let ((__tmp178318
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L173156%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp178318)))
                          (_%klass173180%_
                           (let ((__tmp178319
                                  (##structure-ref
                                   _%accessor173178%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx172749%_
                              __tmp178319)))
                          (_%slot173182%_
                           (##structure-ref
                            _%accessor173178%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (if (##structure-ref
                              _%accessor173178%_
                              '4
                              gxc#!accessor::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass173180%_
                                    _%slot173182%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass173180%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp178321
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self172748%_ 'slots)))
                               (__tmp178320
                                (##structure-ref
                                 _%accessor173178%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp178321 __tmp178320 '#t))))))
                (_%__kont177219177220%_
                 (lambda (_%L173055%_ _%L173056%_ _%L173057%_)
                   (let* ((_%mutator173084%_
                           (let ((__tmp178322
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L173057%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp178322)))
                          (_%klass173086%_
                           (let ((__tmp178323
                                  (##structure-ref
                                   _%mutator173084%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx172749%_
                              __tmp178323)))
                          (_%slot173088%_
                           (##structure-ref
                            _%mutator173084%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (if (##structure-ref
                              _%mutator173084%_
                              '4
                              gxc#!mutator::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass173086%_
                                    _%slot173088%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass173086%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp178324
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self172748%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp178324 _%slot173088%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self172748%_ _%L173055%_)))))
                (_%__kont177221177222%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self172748%_ _%stx172749%_)))))
            (let* ((_%__match177702177703%_
                    (lambda (_%e172951172991%_
                             _%hd172952172994%_
                             _%tl172953172996%_
                             _%e172954172999%_
                             _%hd172955173002%_
                             _%tl172956173004%_
                             _%e172957173007%_
                             _%hd172958173010%_
                             _%tl172959173012%_
                             _%e172960173015%_
                             _%hd172961173018%_
                             _%tl172962173020%_
                             _%e172963173023%_
                             _%hd172964173026%_
                             _%tl172965173028%_
                             _%e172966173031%_
                             _%hd172967173034%_
                             _%tl172968173036%_
                             _%e172969173039%_
                             _%hd172970173042%_
                             _%tl172971173044%_
                             _%e172972173047%_
                             _%hd172973173050%_
                             _%tl172974173052%_)
                      (let ((_%L173055%_ _%hd172973173050%_)
                            (_%L173056%_ _%hd172970173042%_)
                            (_%L173057%_ _%hd172961173018%_))
                        (if (and (let ((__tmp178325
                                        (let ((__tmp178326
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L173057%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp178326))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp178325
                                    'gxc#!mutator::t))
                                 (let ((__tmp178327
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self172748%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L173056%_
                                    __tmp178327)))
                            (_%__kont177219177220%_
                             _%L173055%_
                             _%L173056%_
                             _%L173057%_)
                            (_%__kont177221177222%_)))))
                   (_%__match177700177701%_
                    (lambda (_%e172951172991%_
                             _%hd172952172994%_
                             _%tl172953172996%_
                             _%e172954172999%_
                             _%hd172955173002%_
                             _%tl172956173004%_
                             _%e172957173007%_
                             _%hd172958173010%_
                             _%tl172959173012%_
                             _%e172960173015%_
                             _%hd172961173018%_
                             _%tl172962173020%_
                             _%e172963173023%_
                             _%hd172964173026%_
                             _%tl172965173028%_
                             _%e172966173031%_
                             _%hd172967173034%_
                             _%tl172968173036%_
                             _%e172969173039%_
                             _%hd172970173042%_
                             _%tl172971173044%_
                             _%e172972173047%_
                             _%hd172973173050%_
                             _%tl172974173052%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl172974173052%_))
                          (_%__match177702177703%_
                           _%e172951172991%_
                           _%hd172952172994%_
                           _%tl172953172996%_
                           _%e172954172999%_
                           _%hd172955173002%_
                           _%tl172956173004%_
                           _%e172957173007%_
                           _%hd172958173010%_
                           _%tl172959173012%_
                           _%e172960173015%_
                           _%hd172961173018%_
                           _%tl172962173020%_
                           _%e172963173023%_
                           _%hd172964173026%_
                           _%tl172965173028%_
                           _%e172966173031%_
                           _%hd172967173034%_
                           _%tl172968173036%_
                           _%e172969173039%_
                           _%hd172970173042%_
                           _%tl172971173044%_
                           _%e172972173047%_
                           _%hd172973173050%_
                           _%tl172974173052%_)
                          (_%__kont177221177222%_))))
                   (_%__match177694177695%_
                    (lambda (_%e172951172991%_
                             _%hd172952172994%_
                             _%tl172953172996%_
                             _%e172954172999%_
                             _%hd172955173002%_
                             _%tl172956173004%_
                             _%e172957173007%_
                             _%hd172958173010%_
                             _%tl172959173012%_
                             _%e172960173015%_
                             _%hd172961173018%_
                             _%tl172962173020%_
                             _%e172963173023%_
                             _%hd172964173026%_
                             _%tl172965173028%_
                             _%e172966173031%_
                             _%hd172967173034%_
                             _%tl172968173036%_
                             _%e172969173039%_
                             _%hd172970173042%_
                             _%tl172971173044%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl172965173028%_))
                          (let ((_%e172972173047%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl172965173028%_))))
                            (let ((_%tl172974173052%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e172972173047%_)))
                                  (_%hd172973173050%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e172972173047%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl172974173052%_))
                                  (_%__match177702177703%_
                                   _%e172951172991%_
                                   _%hd172952172994%_
                                   _%tl172953172996%_
                                   _%e172954172999%_
                                   _%hd172955173002%_
                                   _%tl172956173004%_
                                   _%e172957173007%_
                                   _%hd172958173010%_
                                   _%tl172959173012%_
                                   _%e172960173015%_
                                   _%hd172961173018%_
                                   _%tl172962173020%_
                                   _%e172963173023%_
                                   _%hd172964173026%_
                                   _%tl172965173028%_
                                   _%e172966173031%_
                                   _%hd172967173034%_
                                   _%tl172968173036%_
                                   _%e172969173039%_
                                   _%hd172970173042%_
                                   _%tl172971173044%_
                                   _%e172972173047%_
                                   _%hd172973173050%_
                                   _%tl172974173052%_)
                                  (_%__kont177221177222%_))))
                          (_%__kont177221177222%_))))
                   (_%__match177640177641%_
                    (lambda (_%e172927173099%_
                             _%hd172928173102%_
                             _%tl172929173104%_
                             _%e172930173107%_
                             _%hd172931173110%_
                             _%tl172932173112%_
                             _%e172933173115%_
                             _%hd172934173118%_
                             _%tl172935173120%_
                             _%e172936173123%_
                             _%hd172937173126%_
                             _%tl172938173128%_
                             _%e172939173131%_
                             _%hd172940173134%_
                             _%tl172941173136%_
                             _%e172942173139%_
                             _%hd172943173142%_
                             _%tl172944173144%_
                             _%e172945173147%_
                             _%hd172946173150%_
                             _%tl172947173152%_)
                      (let ((_%L173155%_ _%hd172946173150%_)
                            (_%L173156%_ _%hd172937173126%_))
                        (if (and (let ((__tmp178328
                                        (let ((__tmp178329
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L173156%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp178329))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp178328
                                    'gxc#!accessor::t))
                                 (let ((__tmp178330
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self172748%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L173155%_
                                    __tmp178330)))
                            (_%__kont177217177218%_ _%L173155%_ _%L173156%_)
                            (_%__kont177221177222%_)))))
                   (_%__match177638177639%_
                    (lambda (_%e172927173099%_
                             _%hd172928173102%_
                             _%tl172929173104%_
                             _%e172930173107%_
                             _%hd172931173110%_
                             _%tl172932173112%_
                             _%e172933173115%_
                             _%hd172934173118%_
                             _%tl172935173120%_
                             _%e172936173123%_
                             _%hd172937173126%_
                             _%tl172938173128%_
                             _%e172939173131%_
                             _%hd172940173134%_
                             _%tl172941173136%_
                             _%e172942173139%_
                             _%hd172943173142%_
                             _%tl172944173144%_
                             _%e172945173147%_
                             _%hd172946173150%_
                             _%tl172947173152%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl172941173136%_))
                          (_%__match177640177641%_
                           _%e172927173099%_
                           _%hd172928173102%_
                           _%tl172929173104%_
                           _%e172930173107%_
                           _%hd172931173110%_
                           _%tl172932173112%_
                           _%e172933173115%_
                           _%hd172934173118%_
                           _%tl172935173120%_
                           _%e172936173123%_
                           _%hd172937173126%_
                           _%tl172938173128%_
                           _%e172939173131%_
                           _%hd172940173134%_
                           _%tl172941173136%_
                           _%e172942173139%_
                           _%hd172943173142%_
                           _%tl172944173144%_
                           _%e172945173147%_
                           _%hd172946173150%_
                           _%tl172947173152%_)
                          (_%__match177694177695%_
                           _%e172927173099%_
                           _%hd172928173102%_
                           _%tl172929173104%_
                           _%e172930173107%_
                           _%hd172931173110%_
                           _%tl172932173112%_
                           _%e172933173115%_
                           _%hd172934173118%_
                           _%tl172935173120%_
                           _%e172936173123%_
                           _%hd172937173126%_
                           _%tl172938173128%_
                           _%e172939173131%_
                           _%hd172940173134%_
                           _%tl172941173136%_
                           _%e172942173139%_
                           _%hd172943173142%_
                           _%tl172944173144%_
                           _%e172945173147%_
                           _%hd172946173150%_
                           _%tl172947173152%_))))
                   (_%__match177584177585%_
                    (lambda (_%e172892173193%_
                             _%hd172893173196%_
                             _%tl172894173198%_
                             _%e172895173201%_
                             _%hd172896173204%_
                             _%tl172897173206%_
                             _%e172898173209%_
                             _%hd172899173212%_
                             _%tl172900173214%_
                             _%e172901173217%_
                             _%hd172902173220%_
                             _%tl172903173222%_
                             _%e172904173225%_
                             _%hd172905173228%_
                             _%tl172906173230%_
                             _%e172907173233%_
                             _%hd172908173236%_
                             _%tl172909173238%_
                             _%e172910173241%_
                             _%hd172911173244%_
                             _%tl172912173246%_
                             _%e172913173249%_
                             _%hd172914173252%_
                             _%tl172915173254%_
                             _%e172916173257%_
                             _%hd172917173260%_
                             _%tl172918173262%_
                             _%e172919173265%_
                             _%hd172920173268%_
                             _%tl172921173270%_
                             _%e172922173273%_
                             _%hd172923173276%_
                             _%tl172924173278%_)
                      (let ((_%L173281%_ _%hd172923173276%_)
                            (_%L173282%_ _%hd172920173268%_)
                            (_%L173283%_ _%hd172911173244%_)
                            (_%L173284%_ _%hd172902173220%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L173284%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L173284%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp178331
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self172748%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L173283%_
                                    __tmp178331)))
                            (_%__kont177215177216%_
                             _%L173281%_
                             _%L173282%_
                             _%L173283%_
                             _%L173284%_)
                            (_%__kont177221177222%_)))))
                   (_%__match177576177577%_
                    (lambda (_%e172892173193%_
                             _%hd172893173196%_
                             _%tl172894173198%_
                             _%e172895173201%_
                             _%hd172896173204%_
                             _%tl172897173206%_
                             _%e172898173209%_
                             _%hd172899173212%_
                             _%tl172900173214%_
                             _%e172901173217%_
                             _%hd172902173220%_
                             _%tl172903173222%_
                             _%e172904173225%_
                             _%hd172905173228%_
                             _%tl172906173230%_
                             _%e172907173233%_
                             _%hd172908173236%_
                             _%tl172909173238%_
                             _%e172910173241%_
                             _%hd172911173244%_
                             _%tl172912173246%_
                             _%e172913173249%_
                             _%hd172914173252%_
                             _%tl172915173254%_
                             _%e172916173257%_
                             _%hd172917173260%_
                             _%tl172918173262%_
                             _%e172919173265%_
                             _%hd172920173268%_
                             _%tl172921173270%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl172915173254%_))
                          (let ((_%e172922173273%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl172915173254%_))))
                            (let ((_%tl172924173278%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e172922173273%_)))
                                  (_%hd172923173276%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e172922173273%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl172924173278%_))
                                  (_%__match177584177585%_
                                   _%e172892173193%_
                                   _%hd172893173196%_
                                   _%tl172894173198%_
                                   _%e172895173201%_
                                   _%hd172896173204%_
                                   _%tl172897173206%_
                                   _%e172898173209%_
                                   _%hd172899173212%_
                                   _%tl172900173214%_
                                   _%e172901173217%_
                                   _%hd172902173220%_
                                   _%tl172903173222%_
                                   _%e172904173225%_
                                   _%hd172905173228%_
                                   _%tl172906173230%_
                                   _%e172907173233%_
                                   _%hd172908173236%_
                                   _%tl172909173238%_
                                   _%e172910173241%_
                                   _%hd172911173244%_
                                   _%tl172912173246%_
                                   _%e172913173249%_
                                   _%hd172914173252%_
                                   _%tl172915173254%_
                                   _%e172916173257%_
                                   _%hd172917173260%_
                                   _%tl172918173262%_
                                   _%e172919173265%_
                                   _%hd172920173268%_
                                   _%tl172921173270%_
                                   _%e172922173273%_
                                   _%hd172923173276%_
                                   _%tl172924173278%_)
                                  (_%__kont177221177222%_))))
                          (_%__match177700177701%_
                           _%e172892173193%_
                           _%hd172893173196%_
                           _%tl172894173198%_
                           _%e172895173201%_
                           _%hd172896173204%_
                           _%tl172897173206%_
                           _%e172898173209%_
                           _%hd172899173212%_
                           _%tl172900173214%_
                           _%e172901173217%_
                           _%hd172902173220%_
                           _%tl172903173222%_
                           _%e172904173225%_
                           _%hd172905173228%_
                           _%tl172906173230%_
                           _%e172907173233%_
                           _%hd172908173236%_
                           _%tl172909173238%_
                           _%e172910173241%_
                           _%hd172911173244%_
                           _%tl172912173246%_
                           _%e172913173249%_
                           _%hd172914173252%_
                           _%tl172915173254%_))))
                   (_%__match177498177499%_
                    (lambda (_%e172858173324%_
                             _%hd172859173327%_
                             _%tl172860173329%_
                             _%e172861173332%_
                             _%hd172862173335%_
                             _%tl172863173337%_
                             _%e172864173340%_
                             _%hd172865173343%_
                             _%tl172866173345%_
                             _%e172867173348%_
                             _%hd172868173351%_
                             _%tl172869173353%_
                             _%e172870173356%_
                             _%hd172871173359%_
                             _%tl172872173361%_
                             _%e172873173364%_
                             _%hd172874173367%_
                             _%tl172875173369%_
                             _%e172876173372%_
                             _%hd172877173375%_
                             _%tl172878173377%_
                             _%e172879173380%_
                             _%hd172880173383%_
                             _%tl172881173385%_
                             _%e172882173388%_
                             _%hd172883173391%_
                             _%tl172884173393%_
                             _%e172885173396%_
                             _%hd172886173399%_
                             _%tl172887173401%_)
                      (let ((_%L173404%_ _%hd172886173399%_)
                            (_%L173405%_ _%hd172877173375%_)
                            (_%L173406%_ _%hd172868173351%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L173406%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L173406%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp178332
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self172748%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L173405%_
                                    __tmp178332)))
                            (_%__kont177213177214%_
                             _%L173404%_
                             _%L173405%_
                             _%L173406%_)
                            (_%__match177702177703%_
                             _%e172858173324%_
                             _%hd172859173327%_
                             _%tl172860173329%_
                             _%e172861173332%_
                             _%hd172862173335%_
                             _%tl172863173337%_
                             _%e172864173340%_
                             _%hd172865173343%_
                             _%tl172866173345%_
                             _%e172867173348%_
                             _%hd172868173351%_
                             _%tl172869173353%_
                             _%e172870173356%_
                             _%hd172871173359%_
                             _%tl172872173361%_
                             _%e172873173364%_
                             _%hd172874173367%_
                             _%tl172875173369%_
                             _%e172876173372%_
                             _%hd172877173375%_
                             _%tl172878173377%_
                             _%e172879173380%_
                             _%hd172880173383%_
                             _%tl172881173385%_)))))
                   (_%__match177496177497%_
                    (lambda (_%e172858173324%_
                             _%hd172859173327%_
                             _%tl172860173329%_
                             _%e172861173332%_
                             _%hd172862173335%_
                             _%tl172863173337%_
                             _%e172864173340%_
                             _%hd172865173343%_
                             _%tl172866173345%_
                             _%e172867173348%_
                             _%hd172868173351%_
                             _%tl172869173353%_
                             _%e172870173356%_
                             _%hd172871173359%_
                             _%tl172872173361%_
                             _%e172873173364%_
                             _%hd172874173367%_
                             _%tl172875173369%_
                             _%e172876173372%_
                             _%hd172877173375%_
                             _%tl172878173377%_
                             _%e172879173380%_
                             _%hd172880173383%_
                             _%tl172881173385%_
                             _%e172882173388%_
                             _%hd172883173391%_
                             _%tl172884173393%_
                             _%e172885173396%_
                             _%hd172886173399%_
                             _%tl172887173401%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl172881173385%_))
                          (_%__match177498177499%_
                           _%e172858173324%_
                           _%hd172859173327%_
                           _%tl172860173329%_
                           _%e172861173332%_
                           _%hd172862173335%_
                           _%tl172863173337%_
                           _%e172864173340%_
                           _%hd172865173343%_
                           _%tl172866173345%_
                           _%e172867173348%_
                           _%hd172868173351%_
                           _%tl172869173353%_
                           _%e172870173356%_
                           _%hd172871173359%_
                           _%tl172872173361%_
                           _%e172873173364%_
                           _%hd172874173367%_
                           _%tl172875173369%_
                           _%e172876173372%_
                           _%hd172877173375%_
                           _%tl172878173377%_
                           _%e172879173380%_
                           _%hd172880173383%_
                           _%tl172881173385%_
                           _%e172882173388%_
                           _%hd172883173391%_
                           _%tl172884173393%_
                           _%e172885173396%_
                           _%hd172886173399%_
                           _%tl172887173401%_)
                          (_%__match177576177577%_
                           _%e172858173324%_
                           _%hd172859173327%_
                           _%tl172860173329%_
                           _%e172861173332%_
                           _%hd172862173335%_
                           _%tl172863173337%_
                           _%e172864173340%_
                           _%hd172865173343%_
                           _%tl172866173345%_
                           _%e172867173348%_
                           _%hd172868173351%_
                           _%tl172869173353%_
                           _%e172870173356%_
                           _%hd172871173359%_
                           _%tl172872173361%_
                           _%e172873173364%_
                           _%hd172874173367%_
                           _%tl172875173369%_
                           _%e172876173372%_
                           _%hd172877173375%_
                           _%tl172878173377%_
                           _%e172879173380%_
                           _%hd172880173383%_
                           _%tl172881173385%_
                           _%e172882173388%_
                           _%hd172883173391%_
                           _%tl172884173393%_
                           _%e172885173396%_
                           _%hd172886173399%_
                           _%tl172887173401%_))))
                   (_%__match177486177487%_
                    (lambda (_%e172858173324%_
                             _%hd172859173327%_
                             _%tl172860173329%_
                             _%e172861173332%_
                             _%hd172862173335%_
                             _%tl172863173337%_
                             _%e172864173340%_
                             _%hd172865173343%_
                             _%tl172866173345%_
                             _%e172867173348%_
                             _%hd172868173351%_
                             _%tl172869173353%_
                             _%e172870173356%_
                             _%hd172871173359%_
                             _%tl172872173361%_
                             _%e172873173364%_
                             _%hd172874173367%_
                             _%tl172875173369%_
                             _%e172876173372%_
                             _%hd172877173375%_
                             _%tl172878173377%_
                             _%e172879173380%_
                             _%hd172880173383%_
                             _%tl172881173385%_
                             _%e172882173388%_
                             _%hd172883173391%_
                             _%tl172884173393%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd172883173391%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl172884173393%_))
                              (let ((_%e172885173396%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl172884173393%_))))
                                (let ((_%tl172887173401%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e172885173396%_)))
                                      (_%hd172886173399%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e172885173396%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl172887173401%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl172881173385%_))
                                          (_%__match177498177499%_
                                           _%e172858173324%_
                                           _%hd172859173327%_
                                           _%tl172860173329%_
                                           _%e172861173332%_
                                           _%hd172862173335%_
                                           _%tl172863173337%_
                                           _%e172864173340%_
                                           _%hd172865173343%_
                                           _%tl172866173345%_
                                           _%e172867173348%_
                                           _%hd172868173351%_
                                           _%tl172869173353%_
                                           _%e172870173356%_
                                           _%hd172871173359%_
                                           _%tl172872173361%_
                                           _%e172873173364%_
                                           _%hd172874173367%_
                                           _%tl172875173369%_
                                           _%e172876173372%_
                                           _%hd172877173375%_
                                           _%tl172878173377%_
                                           _%e172879173380%_
                                           _%hd172880173383%_
                                           _%tl172881173385%_
                                           _%e172882173388%_
                                           _%hd172883173391%_
                                           _%tl172884173393%_
                                           _%e172885173396%_
                                           _%hd172886173399%_
                                           _%tl172887173401%_)
                                          (_%__match177576177577%_
                                           _%e172858173324%_
                                           _%hd172859173327%_
                                           _%tl172860173329%_
                                           _%e172861173332%_
                                           _%hd172862173335%_
                                           _%tl172863173337%_
                                           _%e172864173340%_
                                           _%hd172865173343%_
                                           _%tl172866173345%_
                                           _%e172867173348%_
                                           _%hd172868173351%_
                                           _%tl172869173353%_
                                           _%e172870173356%_
                                           _%hd172871173359%_
                                           _%tl172872173361%_
                                           _%e172873173364%_
                                           _%hd172874173367%_
                                           _%tl172875173369%_
                                           _%e172876173372%_
                                           _%hd172877173375%_
                                           _%tl172878173377%_
                                           _%e172879173380%_
                                           _%hd172880173383%_
                                           _%tl172881173385%_
                                           _%e172882173388%_
                                           _%hd172883173391%_
                                           _%tl172884173393%_
                                           _%e172885173396%_
                                           _%hd172886173399%_
                                           _%tl172887173401%_))
                                      (_%__match177700177701%_
                                       _%e172858173324%_
                                       _%hd172859173327%_
                                       _%tl172860173329%_
                                       _%e172861173332%_
                                       _%hd172862173335%_
                                       _%tl172863173337%_
                                       _%e172864173340%_
                                       _%hd172865173343%_
                                       _%tl172866173345%_
                                       _%e172867173348%_
                                       _%hd172868173351%_
                                       _%tl172869173353%_
                                       _%e172870173356%_
                                       _%hd172871173359%_
                                       _%tl172872173361%_
                                       _%e172873173364%_
                                       _%hd172874173367%_
                                       _%tl172875173369%_
                                       _%e172876173372%_
                                       _%hd172877173375%_
                                       _%tl172878173377%_
                                       _%e172879173380%_
                                       _%hd172880173383%_
                                       _%tl172881173385%_))))
                              (_%__match177700177701%_
                               _%e172858173324%_
                               _%hd172859173327%_
                               _%tl172860173329%_
                               _%e172861173332%_
                               _%hd172862173335%_
                               _%tl172863173337%_
                               _%e172864173340%_
                               _%hd172865173343%_
                               _%tl172866173345%_
                               _%e172867173348%_
                               _%hd172868173351%_
                               _%tl172869173353%_
                               _%e172870173356%_
                               _%hd172871173359%_
                               _%tl172872173361%_
                               _%e172873173364%_
                               _%hd172874173367%_
                               _%tl172875173369%_
                               _%e172876173372%_
                               _%hd172877173375%_
                               _%tl172878173377%_
                               _%e172879173380%_
                               _%hd172880173383%_
                               _%tl172881173385%_))
                          (_%__match177700177701%_
                           _%e172858173324%_
                           _%hd172859173327%_
                           _%tl172860173329%_
                           _%e172861173332%_
                           _%hd172862173335%_
                           _%tl172863173337%_
                           _%e172864173340%_
                           _%hd172865173343%_
                           _%tl172866173345%_
                           _%e172867173348%_
                           _%hd172868173351%_
                           _%tl172869173353%_
                           _%e172870173356%_
                           _%hd172871173359%_
                           _%tl172872173361%_
                           _%e172873173364%_
                           _%hd172874173367%_
                           _%tl172875173369%_
                           _%e172876173372%_
                           _%hd172877173375%_
                           _%tl172878173377%_
                           _%e172879173380%_
                           _%hd172880173383%_
                           _%tl172881173385%_))))
                   (_%__match177418177419%_
                    (lambda (_%e172807173443%_
                             _%hd172808173446%_
                             _%tl172809173448%_
                             _%e172810173451%_
                             _%hd172811173454%_
                             _%tl172812173456%_
                             _%e172813173459%_
                             _%hd172814173462%_
                             _%tl172815173464%_
                             _%e172816173467%_
                             _%hd172817173470%_
                             _%tl172818173472%_
                             _%e172819173475%_
                             _%hd172820173478%_
                             _%tl172821173480%_
                             _%e172822173483%_
                             _%hd172823173486%_
                             _%tl172824173488%_
                             _%e172825173491%_
                             _%hd172826173494%_
                             _%tl172827173496%_
                             _%e172828173499%_
                             _%hd172829173502%_
                             _%tl172830173504%_
                             _%e172831173507%_
                             _%hd172832173510%_
                             _%tl172833173512%_
                             _%e172834173515%_
                             _%hd172835173518%_
                             _%tl172836173520%_
                             _%e172837173523%_
                             _%hd172838173526%_
                             _%tl172839173528%_
                             _%e172840173531%_
                             _%hd172841173534%_
                             _%tl172842173536%_
                             _%e172843173539%_
                             _%hd172844173542%_
                             _%tl172845173544%_
                             _%__splice177211177212%_
                             _%target172846173547%_
                             _%tl172848173549%_)
                      (letrec ((_%loop172849173552%_
                                (lambda (_%hd172847173555%_
                                         _%args172853173557%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd172847173555%_))
                                      (let ((_%e172850173560%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd172847173555%_))))
                                        (let ((_%lp-tl172852173565%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e172850173560%_)))
                                              (_%lp-hd172851173563%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e172850173560%_))))
                                          (_%loop172849173552%_
                                           _%lp-tl172852173565%_
                                           (cons _%lp-hd172851173563%_
                                                 _%args172853173557%_))))
                                      (let ((_%args172854173568%_
                                             (reverse _%args172853173557%_)))
                                        (let ((_%L173571%_
                                               _%args172854173568%_)
                                              (_%L173572%_ _%hd172844173542%_)
                                              (_%L173573%_ _%hd172835173518%_)
                                              (_%L173574%_ _%hd172826173494%_)
                                              (_%L173575%_ _%hd172817173470%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L173575%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L173574%_
                                                      'call-method))
                                                   (let ((__tmp178333
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self172748%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L173573%_
                                                      __tmp178333)))
                                              (_%__kont177209177210%_
                                               _%L173571%_
                                               _%L173572%_
                                               _%L173573%_
                                               _%L173574%_
                                               _%L173575%_)
                                              (_%__kont177221177222%_))))))))
                        (_%loop172849173552%_ _%target172846173547%_ '()))))
                   (_%__match177376177377%_
                    (lambda (_%e172807173443%_
                             _%hd172808173446%_
                             _%tl172809173448%_
                             _%e172810173451%_
                             _%hd172811173454%_
                             _%tl172812173456%_
                             _%e172813173459%_
                             _%hd172814173462%_
                             _%tl172815173464%_
                             _%e172816173467%_
                             _%hd172817173470%_
                             _%tl172818173472%_
                             _%e172819173475%_
                             _%hd172820173478%_
                             _%tl172821173480%_
                             _%e172822173483%_
                             _%hd172823173486%_
                             _%tl172824173488%_
                             _%e172825173491%_
                             _%hd172826173494%_
                             _%tl172827173496%_
                             _%e172828173499%_
                             _%hd172829173502%_
                             _%tl172830173504%_
                             _%e172831173507%_
                             _%hd172832173510%_
                             _%tl172833173512%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd172832173510%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl172833173512%_))
                              (let ((_%e172834173515%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl172833173512%_))))
                                (let ((_%tl172836173520%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e172834173515%_)))
                                      (_%hd172835173518%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e172834173515%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl172836173520%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl172830173504%_))
                                          (let ((_%e172837173523%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl172830173504%_))))
                                            (let ((_%tl172839173528%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e172837173523%_)))
                                                  (_%hd172838173526%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e172837173523%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd172838173526%_))
                                                  (let ((_%e172840173531%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd172838173526%_))))
                                                    (let ((_%tl172842173536%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e172840173531%_)))
                                                          (_%hd172841173534%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e172840173531%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd172841173534%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd172841173534%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl172842173536%_))
                          (let ((_%e172843173539%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl172842173536%_))))
                            (let ((_%tl172845173544%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e172843173539%_)))
                                  (_%hd172844173542%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e172843173539%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl172845173544%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl172839173528%_))
                                      (let ((_%__splice177211177212%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl172839173528%_
                                                '0))))
                                        (let ((_%tl172848173549%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice177211177212%_
                                                  '1)))
                                              (_%target172846173547%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice177211177212%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl172848173549%_))
                                              (_%__match177418177419%_
                                               _%e172807173443%_
                                               _%hd172808173446%_
                                               _%tl172809173448%_
                                               _%e172810173451%_
                                               _%hd172811173454%_
                                               _%tl172812173456%_
                                               _%e172813173459%_
                                               _%hd172814173462%_
                                               _%tl172815173464%_
                                               _%e172816173467%_
                                               _%hd172817173470%_
                                               _%tl172818173472%_
                                               _%e172819173475%_
                                               _%hd172820173478%_
                                               _%tl172821173480%_
                                               _%e172822173483%_
                                               _%hd172823173486%_
                                               _%tl172824173488%_
                                               _%e172825173491%_
                                               _%hd172826173494%_
                                               _%tl172827173496%_
                                               _%e172828173499%_
                                               _%hd172829173502%_
                                               _%tl172830173504%_
                                               _%e172831173507%_
                                               _%hd172832173510%_
                                               _%tl172833173512%_
                                               _%e172834173515%_
                                               _%hd172835173518%_
                                               _%tl172836173520%_
                                               _%e172837173523%_
                                               _%hd172838173526%_
                                               _%tl172839173528%_
                                               _%e172840173531%_
                                               _%hd172841173534%_
                                               _%tl172842173536%_
                                               _%e172843173539%_
                                               _%hd172844173542%_
                                               _%tl172845173544%_
                                               _%__splice177211177212%_
                                               _%target172846173547%_
                                               _%tl172848173549%_)
                                              (_%__kont177221177222%_))))
                                      (_%__kont177221177222%_))
                                  (_%__kont177221177222%_))))
                          (_%__kont177221177222%_))
                      (_%__kont177221177222%_))
                  (_%__kont177221177222%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont177221177222%_))))
                                          (_%__match177700177701%_
                                           _%e172807173443%_
                                           _%hd172808173446%_
                                           _%tl172809173448%_
                                           _%e172810173451%_
                                           _%hd172811173454%_
                                           _%tl172812173456%_
                                           _%e172813173459%_
                                           _%hd172814173462%_
                                           _%tl172815173464%_
                                           _%e172816173467%_
                                           _%hd172817173470%_
                                           _%tl172818173472%_
                                           _%e172819173475%_
                                           _%hd172820173478%_
                                           _%tl172821173480%_
                                           _%e172822173483%_
                                           _%hd172823173486%_
                                           _%tl172824173488%_
                                           _%e172825173491%_
                                           _%hd172826173494%_
                                           _%tl172827173496%_
                                           _%e172828173499%_
                                           _%hd172829173502%_
                                           _%tl172830173504%_))
                                      (_%__match177700177701%_
                                       _%e172807173443%_
                                       _%hd172808173446%_
                                       _%tl172809173448%_
                                       _%e172810173451%_
                                       _%hd172811173454%_
                                       _%tl172812173456%_
                                       _%e172813173459%_
                                       _%hd172814173462%_
                                       _%tl172815173464%_
                                       _%e172816173467%_
                                       _%hd172817173470%_
                                       _%tl172818173472%_
                                       _%e172819173475%_
                                       _%hd172820173478%_
                                       _%tl172821173480%_
                                       _%e172822173483%_
                                       _%hd172823173486%_
                                       _%tl172824173488%_
                                       _%e172825173491%_
                                       _%hd172826173494%_
                                       _%tl172827173496%_
                                       _%e172828173499%_
                                       _%hd172829173502%_
                                       _%tl172830173504%_))))
                              (_%__match177700177701%_
                               _%e172807173443%_
                               _%hd172808173446%_
                               _%tl172809173448%_
                               _%e172810173451%_
                               _%hd172811173454%_
                               _%tl172812173456%_
                               _%e172813173459%_
                               _%hd172814173462%_
                               _%tl172815173464%_
                               _%e172816173467%_
                               _%hd172817173470%_
                               _%tl172818173472%_
                               _%e172819173475%_
                               _%hd172820173478%_
                               _%tl172821173480%_
                               _%e172822173483%_
                               _%hd172823173486%_
                               _%tl172824173488%_
                               _%e172825173491%_
                               _%hd172826173494%_
                               _%tl172827173496%_
                               _%e172828173499%_
                               _%hd172829173502%_
                               _%tl172830173504%_))
                          (_%__match177486177487%_
                           _%e172807173443%_
                           _%hd172808173446%_
                           _%tl172809173448%_
                           _%e172810173451%_
                           _%hd172811173454%_
                           _%tl172812173456%_
                           _%e172813173459%_
                           _%hd172814173462%_
                           _%tl172815173464%_
                           _%e172816173467%_
                           _%hd172817173470%_
                           _%tl172818173472%_
                           _%e172819173475%_
                           _%hd172820173478%_
                           _%tl172821173480%_
                           _%e172822173483%_
                           _%hd172823173486%_
                           _%tl172824173488%_
                           _%e172825173491%_
                           _%hd172826173494%_
                           _%tl172827173496%_
                           _%e172828173499%_
                           _%hd172829173502%_
                           _%tl172830173504%_
                           _%e172831173507%_
                           _%hd172832173510%_
                           _%tl172833173512%_))))
                   (_%__match177308177309%_
                    (lambda (_%e172763173632%_
                             _%hd172764173635%_
                             _%tl172765173637%_
                             _%e172766173640%_
                             _%hd172767173643%_
                             _%tl172768173645%_
                             _%e172769173648%_
                             _%hd172770173651%_
                             _%tl172771173653%_
                             _%e172772173656%_
                             _%hd172773173659%_
                             _%tl172774173661%_
                             _%e172775173664%_
                             _%hd172776173667%_
                             _%tl172777173669%_
                             _%e172778173672%_
                             _%hd172779173675%_
                             _%tl172780173677%_
                             _%e172781173680%_
                             _%hd172782173683%_
                             _%tl172783173685%_
                             _%e172784173688%_
                             _%hd172785173691%_
                             _%tl172786173693%_
                             _%e172787173696%_
                             _%hd172788173699%_
                             _%tl172789173701%_
                             _%e172790173704%_
                             _%hd172791173707%_
                             _%tl172792173709%_
                             _%__splice177207177208%_
                             _%target172793173712%_
                             _%tl172795173714%_)
                      (letrec ((_%loop172796173717%_
                                (lambda (_%hd172794173720%_
                                         _%args172800173722%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd172794173720%_))
                                      (let ((_%e172797173725%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd172794173720%_))))
                                        (let ((_%lp-tl172799173730%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e172797173725%_)))
                                              (_%lp-hd172798173728%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e172797173725%_))))
                                          (_%loop172796173717%_
                                           _%lp-tl172799173730%_
                                           (cons _%lp-hd172798173728%_
                                                 _%args172800173722%_))))
                                      (let ((_%args172801173733%_
                                             (reverse _%args172800173722%_)))
                                        (let ((_%L173736%_
                                               _%args172801173733%_)
                                              (_%L173737%_ _%hd172791173707%_)
                                              (_%L173738%_ _%hd172782173683%_)
                                              (_%L173739%_ _%hd172773173659%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L173739%_
                                                      'call-method))
                                                   (let ((__tmp178334
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self172748%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L173738%_
                                                      __tmp178334)))
                                              (_%__kont177205177206%_
                                               _%L173736%_
                                               _%L173737%_
                                               _%L173738%_
                                               _%L173739%_)
                                              (_%__match177496177497%_
                                               _%e172763173632%_
                                               _%hd172764173635%_
                                               _%tl172765173637%_
                                               _%e172766173640%_
                                               _%hd172767173643%_
                                               _%tl172768173645%_
                                               _%e172769173648%_
                                               _%hd172770173651%_
                                               _%tl172771173653%_
                                               _%e172772173656%_
                                               _%hd172773173659%_
                                               _%tl172774173661%_
                                               _%e172775173664%_
                                               _%hd172776173667%_
                                               _%tl172777173669%_
                                               _%e172778173672%_
                                               _%hd172779173675%_
                                               _%tl172780173677%_
                                               _%e172781173680%_
                                               _%hd172782173683%_
                                               _%tl172783173685%_
                                               _%e172784173688%_
                                               _%hd172785173691%_
                                               _%tl172786173693%_
                                               _%e172787173696%_
                                               _%hd172788173699%_
                                               _%tl172789173701%_
                                               _%e172790173704%_
                                               _%hd172791173707%_
                                               _%tl172792173709%_))))))))
                        (_%loop172796173717%_ _%target172793173712%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx177203177204%_))
                  (let ((_%e172763173632%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx177203177204%_))))
                    (let ((_%tl172765173637%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e172763173632%_)))
                          (_%hd172764173635%_
                           (let ()
                             (declare (not safe))
                             (##car _%e172763173632%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl172765173637%_))
                          (let ((_%e172766173640%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl172765173637%_))))
                            (let ((_%tl172768173645%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e172766173640%_)))
                                  (_%hd172767173643%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e172766173640%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd172767173643%_))
                                  (let ((_%e172769173648%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd172767173643%_))))
                                    (let ((_%tl172771173653%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e172769173648%_)))
                                          (_%hd172770173651%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e172769173648%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd172770173651%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd172770173651%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl172771173653%_))
                                                  (let ((_%e172772173656%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl172771173653%_))))
                                                    (let ((_%tl172774173661%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e172772173656%_)))
                                                          (_%hd172773173659%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e172772173656%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl172774173661%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl172768173645%_))
                      (let ((_%e172775173664%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl172768173645%_))))
                        (let ((_%tl172777173669%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e172775173664%_)))
                              (_%hd172776173667%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e172775173664%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd172776173667%_))
                              (let ((_%e172778173672%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd172776173667%_))))
                                (let ((_%tl172780173677%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e172778173672%_)))
                                      (_%hd172779173675%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e172778173672%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd172779173675%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd172779173675%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl172780173677%_))
                                              (let ((_%e172781173680%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl172780173677%_))))
                                                (let ((_%tl172783173685%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e172781173680%_)))
                                                      (_%hd172782173683%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e172781173680%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl172783173685%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl172777173669%_))
                                                          (let ((_%e172784173688%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl172777173669%_))))
                    (let ((_%tl172786173693%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e172784173688%_)))
                          (_%hd172785173691%_
                           (let ()
                             (declare (not safe))
                             (##car _%e172784173688%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd172785173691%_))
                          (let ((_%e172787173696%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd172785173691%_))))
                            (let ((_%tl172789173701%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e172787173696%_)))
                                  (_%hd172788173699%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e172787173696%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd172788173699%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd172788173699%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl172789173701%_))
                                          (let ((_%e172790173704%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl172789173701%_))))
                                            (let ((_%tl172792173709%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e172790173704%_)))
                                                  (_%hd172791173707%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e172790173704%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl172792173709%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl172786173693%_))
                                                      (let ((_%__splice177207177208%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl172786173693%_ '0))))
                (let ((_%tl172795173714%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice177207177208%_ '1)))
                      (_%target172793173712%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice177207177208%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl172795173714%_))
                      (_%__match177308177309%_
                       _%e172763173632%_
                       _%hd172764173635%_
                       _%tl172765173637%_
                       _%e172766173640%_
                       _%hd172767173643%_
                       _%tl172768173645%_
                       _%e172769173648%_
                       _%hd172770173651%_
                       _%tl172771173653%_
                       _%e172772173656%_
                       _%hd172773173659%_
                       _%tl172774173661%_
                       _%e172775173664%_
                       _%hd172776173667%_
                       _%tl172777173669%_
                       _%e172778173672%_
                       _%hd172779173675%_
                       _%tl172780173677%_
                       _%e172781173680%_
                       _%hd172782173683%_
                       _%tl172783173685%_
                       _%e172784173688%_
                       _%hd172785173691%_
                       _%tl172786173693%_
                       _%e172787173696%_
                       _%hd172788173699%_
                       _%tl172789173701%_
                       _%e172790173704%_
                       _%hd172791173707%_
                       _%tl172792173709%_
                       _%__splice177207177208%_
                       _%target172793173712%_
                       _%tl172795173714%_)
                      (_%__match177496177497%_
                       _%e172763173632%_
                       _%hd172764173635%_
                       _%tl172765173637%_
                       _%e172766173640%_
                       _%hd172767173643%_
                       _%tl172768173645%_
                       _%e172769173648%_
                       _%hd172770173651%_
                       _%tl172771173653%_
                       _%e172772173656%_
                       _%hd172773173659%_
                       _%tl172774173661%_
                       _%e172775173664%_
                       _%hd172776173667%_
                       _%tl172777173669%_
                       _%e172778173672%_
                       _%hd172779173675%_
                       _%tl172780173677%_
                       _%e172781173680%_
                       _%hd172782173683%_
                       _%tl172783173685%_
                       _%e172784173688%_
                       _%hd172785173691%_
                       _%tl172786173693%_
                       _%e172787173696%_
                       _%hd172788173699%_
                       _%tl172789173701%_
                       _%e172790173704%_
                       _%hd172791173707%_
                       _%tl172792173709%_))))
              (_%__match177496177497%_
               _%e172763173632%_
               _%hd172764173635%_
               _%tl172765173637%_
               _%e172766173640%_
               _%hd172767173643%_
               _%tl172768173645%_
               _%e172769173648%_
               _%hd172770173651%_
               _%tl172771173653%_
               _%e172772173656%_
               _%hd172773173659%_
               _%tl172774173661%_
               _%e172775173664%_
               _%hd172776173667%_
               _%tl172777173669%_
               _%e172778173672%_
               _%hd172779173675%_
               _%tl172780173677%_
               _%e172781173680%_
               _%hd172782173683%_
               _%tl172783173685%_
               _%e172784173688%_
               _%hd172785173691%_
               _%tl172786173693%_
               _%e172787173696%_
               _%hd172788173699%_
               _%tl172789173701%_
               _%e172790173704%_
               _%hd172791173707%_
               _%tl172792173709%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match177700177701%_
                                                   _%e172763173632%_
                                                   _%hd172764173635%_
                                                   _%tl172765173637%_
                                                   _%e172766173640%_
                                                   _%hd172767173643%_
                                                   _%tl172768173645%_
                                                   _%e172769173648%_
                                                   _%hd172770173651%_
                                                   _%tl172771173653%_
                                                   _%e172772173656%_
                                                   _%hd172773173659%_
                                                   _%tl172774173661%_
                                                   _%e172775173664%_
                                                   _%hd172776173667%_
                                                   _%tl172777173669%_
                                                   _%e172778173672%_
                                                   _%hd172779173675%_
                                                   _%tl172780173677%_
                                                   _%e172781173680%_
                                                   _%hd172782173683%_
                                                   _%tl172783173685%_
                                                   _%e172784173688%_
                                                   _%hd172785173691%_
                                                   _%tl172786173693%_))))
                                          (_%__match177700177701%_
                                           _%e172763173632%_
                                           _%hd172764173635%_
                                           _%tl172765173637%_
                                           _%e172766173640%_
                                           _%hd172767173643%_
                                           _%tl172768173645%_
                                           _%e172769173648%_
                                           _%hd172770173651%_
                                           _%tl172771173653%_
                                           _%e172772173656%_
                                           _%hd172773173659%_
                                           _%tl172774173661%_
                                           _%e172775173664%_
                                           _%hd172776173667%_
                                           _%tl172777173669%_
                                           _%e172778173672%_
                                           _%hd172779173675%_
                                           _%tl172780173677%_
                                           _%e172781173680%_
                                           _%hd172782173683%_
                                           _%tl172783173685%_
                                           _%e172784173688%_
                                           _%hd172785173691%_
                                           _%tl172786173693%_))
                                      (_%__match177376177377%_
                                       _%e172763173632%_
                                       _%hd172764173635%_
                                       _%tl172765173637%_
                                       _%e172766173640%_
                                       _%hd172767173643%_
                                       _%tl172768173645%_
                                       _%e172769173648%_
                                       _%hd172770173651%_
                                       _%tl172771173653%_
                                       _%e172772173656%_
                                       _%hd172773173659%_
                                       _%tl172774173661%_
                                       _%e172775173664%_
                                       _%hd172776173667%_
                                       _%tl172777173669%_
                                       _%e172778173672%_
                                       _%hd172779173675%_
                                       _%tl172780173677%_
                                       _%e172781173680%_
                                       _%hd172782173683%_
                                       _%tl172783173685%_
                                       _%e172784173688%_
                                       _%hd172785173691%_
                                       _%tl172786173693%_
                                       _%e172787173696%_
                                       _%hd172788173699%_
                                       _%tl172789173701%_))
                                  (_%__match177700177701%_
                                   _%e172763173632%_
                                   _%hd172764173635%_
                                   _%tl172765173637%_
                                   _%e172766173640%_
                                   _%hd172767173643%_
                                   _%tl172768173645%_
                                   _%e172769173648%_
                                   _%hd172770173651%_
                                   _%tl172771173653%_
                                   _%e172772173656%_
                                   _%hd172773173659%_
                                   _%tl172774173661%_
                                   _%e172775173664%_
                                   _%hd172776173667%_
                                   _%tl172777173669%_
                                   _%e172778173672%_
                                   _%hd172779173675%_
                                   _%tl172780173677%_
                                   _%e172781173680%_
                                   _%hd172782173683%_
                                   _%tl172783173685%_
                                   _%e172784173688%_
                                   _%hd172785173691%_
                                   _%tl172786173693%_))))
                          (_%__match177700177701%_
                           _%e172763173632%_
                           _%hd172764173635%_
                           _%tl172765173637%_
                           _%e172766173640%_
                           _%hd172767173643%_
                           _%tl172768173645%_
                           _%e172769173648%_
                           _%hd172770173651%_
                           _%tl172771173653%_
                           _%e172772173656%_
                           _%hd172773173659%_
                           _%tl172774173661%_
                           _%e172775173664%_
                           _%hd172776173667%_
                           _%tl172777173669%_
                           _%e172778173672%_
                           _%hd172779173675%_
                           _%tl172780173677%_
                           _%e172781173680%_
                           _%hd172782173683%_
                           _%tl172783173685%_
                           _%e172784173688%_
                           _%hd172785173691%_
                           _%tl172786173693%_))))
                  (_%__match177638177639%_
                   _%e172763173632%_
                   _%hd172764173635%_
                   _%tl172765173637%_
                   _%e172766173640%_
                   _%hd172767173643%_
                   _%tl172768173645%_
                   _%e172769173648%_
                   _%hd172770173651%_
                   _%tl172771173653%_
                   _%e172772173656%_
                   _%hd172773173659%_
                   _%tl172774173661%_
                   _%e172775173664%_
                   _%hd172776173667%_
                   _%tl172777173669%_
                   _%e172778173672%_
                   _%hd172779173675%_
                   _%tl172780173677%_
                   _%e172781173680%_
                   _%hd172782173683%_
                   _%tl172783173685%_))
              (_%__kont177221177222%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont177221177222%_))
                                          (_%__kont177221177222%_))
                                      (_%__kont177221177222%_))))
                              (_%__kont177221177222%_))))
                      (_%__kont177221177222%_))
                  (_%__kont177221177222%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont177221177222%_))
                                              (_%__kont177221177222%_))
                                          (_%__kont177221177222%_))))
                                  (_%__kont177221177222%_))))
                          (_%__kont177221177222%_))))
                  (_%__kont177221177222%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self171687%_ _%stx171688%_)
        (letrec ((_%force-e171690%_
                  (lambda (_%target172746%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target172746%_ '()))
                                      '()))))))
          (let* ((_%__stx177705177706%_ _%stx171688%_)
                 (_%g171698171920%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx177705177706%_)))))
            (let ((_%__kont177707177708%_
                   (lambda (_%L172692%_ _%L172693%_ _%L172694%_ _%L172695%_)
                     (let ((_%$method172740%_
                            (let ((__tmp178336
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self171687%_ 'methods)))
                                  (__tmp178335
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L172693%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp178336 __tmp178335)))
                           (_%args172741%_
                            (map (lambda (_%g172728172730%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self171687%_
                                      _%g172728172730%_)))
                                 (let ((__tmp178337
                                        (lambda (_%g172732172735%_
                                                 _%g172733172737%_)
                                          (cons _%g172732172735%_
                                                _%g172733172737%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp178337 '() _%L172692%_)))))
                       (let ((__tmp178338
                              (cons '%#call
                                    (cons (_%force-e171690%_ _%$method172740%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self171687%_
                                                               'receiver))
                                                            '()))
                                                _%args172741%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp178338 _%stx171688%_)))))
                  (_%__kont177711177712%_
                   (lambda (_%L172524%_
                            _%L172525%_
                            _%L172526%_
                            _%L172527%_
                            _%L172528%_)
                     (let ((_%$method172580%_
                            (let ((__tmp178340
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self171687%_ 'methods)))
                                  (__tmp178339
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L172525%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp178340 __tmp178339)))
                           (_%args172581%_
                            (map (lambda (_%g172568172570%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self171687%_
                                      _%g172568172570%_)))
                                 (let ((__tmp178341
                                        (lambda (_%g172572172575%_
                                                 _%g172573172577%_)
                                          (cons _%g172572172575%_
                                                _%g172573172577%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp178341 '() _%L172524%_)))))
                       (let ((__tmp178342
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e171690%_
                                                 _%$method172580%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self171687%_ 'receiver))
                          '()))
              _%args172581%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp178342 _%stx171688%_)))))
                  (_%__kont177715177716%_
                   (lambda (_%L172355%_ _%L172356%_ _%L172357%_)
                     (let* ((_%$field172389%_
                             (let ((__tmp178344
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self171687%_ 'slots)))
                                   (__tmp178343
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%L172355%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp178344 __tmp178343)))
                            (__tmp178345
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self171687%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field172389%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self171687%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp178345 _%stx171688%_))))
                  (_%__kont177717177718%_
                   (lambda (_%L172229%_ _%L172230%_ _%L172231%_ _%L172232%_)
                     (let ((_%$field172267%_
                            (let ((__tmp178347
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self171687%_ 'slots)))
                                  (__tmp178346
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L172230%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp178347 __tmp178346)))
                           (_%expr172268%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1 _%self171687%_ _%L172229%_))))
                       (let ((__tmp178348
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self171687%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field172267%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self171687%_ 'receiver))
                          '()))
              (cons _%expr172268%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp178348 _%stx171688%_)))))
                  (_%__kont177719177720%_
                   (lambda (_%L172101%_ _%L172102%_)
                     (let* ((_%accessor172124%_
                             (let ((__tmp178349
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L172102%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp178349)))
                            (_%klass172126%_
                             (let ((__tmp178350
                                    (##structure-ref
                                     _%accessor172124%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx171688%_
                                __tmp178350)))
                            (_%slot172128%_
                             (##structure-ref
                              _%accessor172124%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (if (##structure-ref
                                _%accessor172124%_
                                '4
                                gxc#!accessor::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass172126%_
                                      _%slot172128%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass172126%_
                                      '8
                                      '#f
                                      '#f))))
                           _%stx171688%_
                           (let* ((_%$field172134%_
                                   (let ((__tmp178351
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self171687%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp178351 _%slot172128%_)))
                                  (__tmp178352
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self171687%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field172134%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self171687%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp178352
                              _%stx171688%_))))))
                  (_%__kont177721177722%_
                   (lambda (_%L171996%_ _%L171997%_ _%L171998%_)
                     (let* ((_%mutator172026%_
                             (let ((__tmp178353
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L171998%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp178353)))
                            (_%klass172028%_
                             (let ((__tmp178354
                                    (##structure-ref
                                     _%mutator172026%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx171688%_
                                __tmp178354)))
                            (_%slot172030%_
                             (##structure-ref
                              _%mutator172026%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr172032%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1 _%self171687%_ _%L171996%_))))
                       (if (if (##structure-ref
                                _%mutator172026%_
                                '4
                                gxc#!mutator::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass172028%_
                                      _%slot172030%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass172028%_
                                      '8
                                      '#f
                                      '#f))))
                           (let ((__tmp178355
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%L171998%_ '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L171997%_
                                                                '()))
                                                    (cons _%expr172032%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp178355 _%stx171688%_))
                           (let* ((_%$field172038%_
                                   (let ((__tmp178356
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self171687%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp178356 _%slot172030%_)))
                                  (__tmp178357
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self171687%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field172038%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self171687%_ 'receiver))
                               '()))
                   (cons _%expr172032%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp178357
                              _%stx171688%_))))))
                  (_%__kont177723177724%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self171687%_ _%stx171688%_)))))
              (let* ((_%__match178204178205%_
                      (lambda (_%e171892171932%_
                               _%hd171893171935%_
                               _%tl171894171937%_
                               _%e171895171940%_
                               _%hd171896171943%_
                               _%tl171897171945%_
                               _%e171898171948%_
                               _%hd171899171951%_
                               _%tl171900171953%_
                               _%e171901171956%_
                               _%hd171902171959%_
                               _%tl171903171961%_
                               _%e171904171964%_
                               _%hd171905171967%_
                               _%tl171906171969%_
                               _%e171907171972%_
                               _%hd171908171975%_
                               _%tl171909171977%_
                               _%e171910171980%_
                               _%hd171911171983%_
                               _%tl171912171985%_
                               _%e171913171988%_
                               _%hd171914171991%_
                               _%tl171915171993%_)
                        (let ((_%L171996%_ _%hd171914171991%_)
                              (_%L171997%_ _%hd171911171983%_)
                              (_%L171998%_ _%hd171902171959%_))
                          (if (and (let ((__tmp178358
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self171687%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L171997%_
                                      __tmp178358))
                                   (let ((__tmp178359
                                          (let ((__tmp178360
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L171998%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp178360))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp178359
                                      'gxc#!mutator::t)))
                              (_%__kont177721177722%_
                               _%L171996%_
                               _%L171997%_
                               _%L171998%_)
                              (_%__kont177723177724%_)))))
                     (_%__match178202178203%_
                      (lambda (_%e171892171932%_
                               _%hd171893171935%_
                               _%tl171894171937%_
                               _%e171895171940%_
                               _%hd171896171943%_
                               _%tl171897171945%_
                               _%e171898171948%_
                               _%hd171899171951%_
                               _%tl171900171953%_
                               _%e171901171956%_
                               _%hd171902171959%_
                               _%tl171903171961%_
                               _%e171904171964%_
                               _%hd171905171967%_
                               _%tl171906171969%_
                               _%e171907171972%_
                               _%hd171908171975%_
                               _%tl171909171977%_
                               _%e171910171980%_
                               _%hd171911171983%_
                               _%tl171912171985%_
                               _%e171913171988%_
                               _%hd171914171991%_
                               _%tl171915171993%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl171915171993%_))
                            (_%__match178204178205%_
                             _%e171892171932%_
                             _%hd171893171935%_
                             _%tl171894171937%_
                             _%e171895171940%_
                             _%hd171896171943%_
                             _%tl171897171945%_
                             _%e171898171948%_
                             _%hd171899171951%_
                             _%tl171900171953%_
                             _%e171901171956%_
                             _%hd171902171959%_
                             _%tl171903171961%_
                             _%e171904171964%_
                             _%hd171905171967%_
                             _%tl171906171969%_
                             _%e171907171972%_
                             _%hd171908171975%_
                             _%tl171909171977%_
                             _%e171910171980%_
                             _%hd171911171983%_
                             _%tl171912171985%_
                             _%e171913171988%_
                             _%hd171914171991%_
                             _%tl171915171993%_)
                            (_%__kont177723177724%_))))
                     (_%__match178196178197%_
                      (lambda (_%e171892171932%_
                               _%hd171893171935%_
                               _%tl171894171937%_
                               _%e171895171940%_
                               _%hd171896171943%_
                               _%tl171897171945%_
                               _%e171898171948%_
                               _%hd171899171951%_
                               _%tl171900171953%_
                               _%e171901171956%_
                               _%hd171902171959%_
                               _%tl171903171961%_
                               _%e171904171964%_
                               _%hd171905171967%_
                               _%tl171906171969%_
                               _%e171907171972%_
                               _%hd171908171975%_
                               _%tl171909171977%_
                               _%e171910171980%_
                               _%hd171911171983%_
                               _%tl171912171985%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl171906171969%_))
                            (let ((_%e171913171988%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl171906171969%_))))
                              (let ((_%tl171915171993%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e171913171988%_)))
                                    (_%hd171914171991%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e171913171988%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl171915171993%_))
                                    (_%__match178204178205%_
                                     _%e171892171932%_
                                     _%hd171893171935%_
                                     _%tl171894171937%_
                                     _%e171895171940%_
                                     _%hd171896171943%_
                                     _%tl171897171945%_
                                     _%e171898171948%_
                                     _%hd171899171951%_
                                     _%tl171900171953%_
                                     _%e171901171956%_
                                     _%hd171902171959%_
                                     _%tl171903171961%_
                                     _%e171904171964%_
                                     _%hd171905171967%_
                                     _%tl171906171969%_
                                     _%e171907171972%_
                                     _%hd171908171975%_
                                     _%tl171909171977%_
                                     _%e171910171980%_
                                     _%hd171911171983%_
                                     _%tl171912171985%_
                                     _%e171913171988%_
                                     _%hd171914171991%_
                                     _%tl171915171993%_)
                                    (_%__kont177723177724%_))))
                            (_%__kont177723177724%_))))
                     (_%__match178142178143%_
                      (lambda (_%e171868172045%_
                               _%hd171869172048%_
                               _%tl171870172050%_
                               _%e171871172053%_
                               _%hd171872172056%_
                               _%tl171873172058%_
                               _%e171874172061%_
                               _%hd171875172064%_
                               _%tl171876172066%_
                               _%e171877172069%_
                               _%hd171878172072%_
                               _%tl171879172074%_
                               _%e171880172077%_
                               _%hd171881172080%_
                               _%tl171882172082%_
                               _%e171883172085%_
                               _%hd171884172088%_
                               _%tl171885172090%_
                               _%e171886172093%_
                               _%hd171887172096%_
                               _%tl171888172098%_)
                        (let ((_%L172101%_ _%hd171887172096%_)
                              (_%L172102%_ _%hd171878172072%_))
                          (if (and (let ((__tmp178361
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self171687%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L172101%_
                                      __tmp178361))
                                   (let ((__tmp178362
                                          (let ((__tmp178363
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L172102%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp178363))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp178362
                                      'gxc#!accessor::t)))
                              (_%__kont177719177720%_ _%L172101%_ _%L172102%_)
                              (_%__kont177723177724%_)))))
                     (_%__match178140178141%_
                      (lambda (_%e171868172045%_
                               _%hd171869172048%_
                               _%tl171870172050%_
                               _%e171871172053%_
                               _%hd171872172056%_
                               _%tl171873172058%_
                               _%e171874172061%_
                               _%hd171875172064%_
                               _%tl171876172066%_
                               _%e171877172069%_
                               _%hd171878172072%_
                               _%tl171879172074%_
                               _%e171880172077%_
                               _%hd171881172080%_
                               _%tl171882172082%_
                               _%e171883172085%_
                               _%hd171884172088%_
                               _%tl171885172090%_
                               _%e171886172093%_
                               _%hd171887172096%_
                               _%tl171888172098%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl171882172082%_))
                            (_%__match178142178143%_
                             _%e171868172045%_
                             _%hd171869172048%_
                             _%tl171870172050%_
                             _%e171871172053%_
                             _%hd171872172056%_
                             _%tl171873172058%_
                             _%e171874172061%_
                             _%hd171875172064%_
                             _%tl171876172066%_
                             _%e171877172069%_
                             _%hd171878172072%_
                             _%tl171879172074%_
                             _%e171880172077%_
                             _%hd171881172080%_
                             _%tl171882172082%_
                             _%e171883172085%_
                             _%hd171884172088%_
                             _%tl171885172090%_
                             _%e171886172093%_
                             _%hd171887172096%_
                             _%tl171888172098%_)
                            (_%__match178196178197%_
                             _%e171868172045%_
                             _%hd171869172048%_
                             _%tl171870172050%_
                             _%e171871172053%_
                             _%hd171872172056%_
                             _%tl171873172058%_
                             _%e171874172061%_
                             _%hd171875172064%_
                             _%tl171876172066%_
                             _%e171877172069%_
                             _%hd171878172072%_
                             _%tl171879172074%_
                             _%e171880172077%_
                             _%hd171881172080%_
                             _%tl171882172082%_
                             _%e171883172085%_
                             _%hd171884172088%_
                             _%tl171885172090%_
                             _%e171886172093%_
                             _%hd171887172096%_
                             _%tl171888172098%_))))
                     (_%__match178086178087%_
                      (lambda (_%e171833172141%_
                               _%hd171834172144%_
                               _%tl171835172146%_
                               _%e171836172149%_
                               _%hd171837172152%_
                               _%tl171838172154%_
                               _%e171839172157%_
                               _%hd171840172160%_
                               _%tl171841172162%_
                               _%e171842172165%_
                               _%hd171843172168%_
                               _%tl171844172170%_
                               _%e171845172173%_
                               _%hd171846172176%_
                               _%tl171847172178%_
                               _%e171848172181%_
                               _%hd171849172184%_
                               _%tl171850172186%_
                               _%e171851172189%_
                               _%hd171852172192%_
                               _%tl171853172194%_
                               _%e171854172197%_
                               _%hd171855172200%_
                               _%tl171856172202%_
                               _%e171857172205%_
                               _%hd171858172208%_
                               _%tl171859172210%_
                               _%e171860172213%_
                               _%hd171861172216%_
                               _%tl171862172218%_
                               _%e171863172221%_
                               _%hd171864172224%_
                               _%tl171865172226%_)
                        (let ((_%L172229%_ _%hd171864172224%_)
                              (_%L172230%_ _%hd171861172216%_)
                              (_%L172231%_ _%hd171852172192%_)
                              (_%L172232%_ _%hd171843172168%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L172232%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L172232%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp178364
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self171687%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L172231%_
                                      __tmp178364)))
                              (_%__kont177717177718%_
                               _%L172229%_
                               _%L172230%_
                               _%L172231%_
                               _%L172232%_)
                              (_%__kont177723177724%_)))))
                     (_%__match178078178079%_
                      (lambda (_%e171833172141%_
                               _%hd171834172144%_
                               _%tl171835172146%_
                               _%e171836172149%_
                               _%hd171837172152%_
                               _%tl171838172154%_
                               _%e171839172157%_
                               _%hd171840172160%_
                               _%tl171841172162%_
                               _%e171842172165%_
                               _%hd171843172168%_
                               _%tl171844172170%_
                               _%e171845172173%_
                               _%hd171846172176%_
                               _%tl171847172178%_
                               _%e171848172181%_
                               _%hd171849172184%_
                               _%tl171850172186%_
                               _%e171851172189%_
                               _%hd171852172192%_
                               _%tl171853172194%_
                               _%e171854172197%_
                               _%hd171855172200%_
                               _%tl171856172202%_
                               _%e171857172205%_
                               _%hd171858172208%_
                               _%tl171859172210%_
                               _%e171860172213%_
                               _%hd171861172216%_
                               _%tl171862172218%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl171856172202%_))
                            (let ((_%e171863172221%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl171856172202%_))))
                              (let ((_%tl171865172226%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e171863172221%_)))
                                    (_%hd171864172224%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e171863172221%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl171865172226%_))
                                    (_%__match178086178087%_
                                     _%e171833172141%_
                                     _%hd171834172144%_
                                     _%tl171835172146%_
                                     _%e171836172149%_
                                     _%hd171837172152%_
                                     _%tl171838172154%_
                                     _%e171839172157%_
                                     _%hd171840172160%_
                                     _%tl171841172162%_
                                     _%e171842172165%_
                                     _%hd171843172168%_
                                     _%tl171844172170%_
                                     _%e171845172173%_
                                     _%hd171846172176%_
                                     _%tl171847172178%_
                                     _%e171848172181%_
                                     _%hd171849172184%_
                                     _%tl171850172186%_
                                     _%e171851172189%_
                                     _%hd171852172192%_
                                     _%tl171853172194%_
                                     _%e171854172197%_
                                     _%hd171855172200%_
                                     _%tl171856172202%_
                                     _%e171857172205%_
                                     _%hd171858172208%_
                                     _%tl171859172210%_
                                     _%e171860172213%_
                                     _%hd171861172216%_
                                     _%tl171862172218%_
                                     _%e171863172221%_
                                     _%hd171864172224%_
                                     _%tl171865172226%_)
                                    (_%__kont177723177724%_))))
                            (_%__match178202178203%_
                             _%e171833172141%_
                             _%hd171834172144%_
                             _%tl171835172146%_
                             _%e171836172149%_
                             _%hd171837172152%_
                             _%tl171838172154%_
                             _%e171839172157%_
                             _%hd171840172160%_
                             _%tl171841172162%_
                             _%e171842172165%_
                             _%hd171843172168%_
                             _%tl171844172170%_
                             _%e171845172173%_
                             _%hd171846172176%_
                             _%tl171847172178%_
                             _%e171848172181%_
                             _%hd171849172184%_
                             _%tl171850172186%_
                             _%e171851172189%_
                             _%hd171852172192%_
                             _%tl171853172194%_
                             _%e171854172197%_
                             _%hd171855172200%_
                             _%tl171856172202%_))))
                     (_%__match178000178001%_
                      (lambda (_%e171799172275%_
                               _%hd171800172278%_
                               _%tl171801172280%_
                               _%e171802172283%_
                               _%hd171803172286%_
                               _%tl171804172288%_
                               _%e171805172291%_
                               _%hd171806172294%_
                               _%tl171807172296%_
                               _%e171808172299%_
                               _%hd171809172302%_
                               _%tl171810172304%_
                               _%e171811172307%_
                               _%hd171812172310%_
                               _%tl171813172312%_
                               _%e171814172315%_
                               _%hd171815172318%_
                               _%tl171816172320%_
                               _%e171817172323%_
                               _%hd171818172326%_
                               _%tl171819172328%_
                               _%e171820172331%_
                               _%hd171821172334%_
                               _%tl171822172336%_
                               _%e171823172339%_
                               _%hd171824172342%_
                               _%tl171825172344%_
                               _%e171826172347%_
                               _%hd171827172350%_
                               _%tl171828172352%_)
                        (let ((_%L172355%_ _%hd171827172350%_)
                              (_%L172356%_ _%hd171818172326%_)
                              (_%L172357%_ _%hd171809172302%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L172357%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L172357%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp178365
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self171687%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L172356%_
                                      __tmp178365)))
                              (_%__kont177715177716%_
                               _%L172355%_
                               _%L172356%_
                               _%L172357%_)
                              (_%__match178204178205%_
                               _%e171799172275%_
                               _%hd171800172278%_
                               _%tl171801172280%_
                               _%e171802172283%_
                               _%hd171803172286%_
                               _%tl171804172288%_
                               _%e171805172291%_
                               _%hd171806172294%_
                               _%tl171807172296%_
                               _%e171808172299%_
                               _%hd171809172302%_
                               _%tl171810172304%_
                               _%e171811172307%_
                               _%hd171812172310%_
                               _%tl171813172312%_
                               _%e171814172315%_
                               _%hd171815172318%_
                               _%tl171816172320%_
                               _%e171817172323%_
                               _%hd171818172326%_
                               _%tl171819172328%_
                               _%e171820172331%_
                               _%hd171821172334%_
                               _%tl171822172336%_)))))
                     (_%__match177998177999%_
                      (lambda (_%e171799172275%_
                               _%hd171800172278%_
                               _%tl171801172280%_
                               _%e171802172283%_
                               _%hd171803172286%_
                               _%tl171804172288%_
                               _%e171805172291%_
                               _%hd171806172294%_
                               _%tl171807172296%_
                               _%e171808172299%_
                               _%hd171809172302%_
                               _%tl171810172304%_
                               _%e171811172307%_
                               _%hd171812172310%_
                               _%tl171813172312%_
                               _%e171814172315%_
                               _%hd171815172318%_
                               _%tl171816172320%_
                               _%e171817172323%_
                               _%hd171818172326%_
                               _%tl171819172328%_
                               _%e171820172331%_
                               _%hd171821172334%_
                               _%tl171822172336%_
                               _%e171823172339%_
                               _%hd171824172342%_
                               _%tl171825172344%_
                               _%e171826172347%_
                               _%hd171827172350%_
                               _%tl171828172352%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl171822172336%_))
                            (_%__match178000178001%_
                             _%e171799172275%_
                             _%hd171800172278%_
                             _%tl171801172280%_
                             _%e171802172283%_
                             _%hd171803172286%_
                             _%tl171804172288%_
                             _%e171805172291%_
                             _%hd171806172294%_
                             _%tl171807172296%_
                             _%e171808172299%_
                             _%hd171809172302%_
                             _%tl171810172304%_
                             _%e171811172307%_
                             _%hd171812172310%_
                             _%tl171813172312%_
                             _%e171814172315%_
                             _%hd171815172318%_
                             _%tl171816172320%_
                             _%e171817172323%_
                             _%hd171818172326%_
                             _%tl171819172328%_
                             _%e171820172331%_
                             _%hd171821172334%_
                             _%tl171822172336%_
                             _%e171823172339%_
                             _%hd171824172342%_
                             _%tl171825172344%_
                             _%e171826172347%_
                             _%hd171827172350%_
                             _%tl171828172352%_)
                            (_%__match178078178079%_
                             _%e171799172275%_
                             _%hd171800172278%_
                             _%tl171801172280%_
                             _%e171802172283%_
                             _%hd171803172286%_
                             _%tl171804172288%_
                             _%e171805172291%_
                             _%hd171806172294%_
                             _%tl171807172296%_
                             _%e171808172299%_
                             _%hd171809172302%_
                             _%tl171810172304%_
                             _%e171811172307%_
                             _%hd171812172310%_
                             _%tl171813172312%_
                             _%e171814172315%_
                             _%hd171815172318%_
                             _%tl171816172320%_
                             _%e171817172323%_
                             _%hd171818172326%_
                             _%tl171819172328%_
                             _%e171820172331%_
                             _%hd171821172334%_
                             _%tl171822172336%_
                             _%e171823172339%_
                             _%hd171824172342%_
                             _%tl171825172344%_
                             _%e171826172347%_
                             _%hd171827172350%_
                             _%tl171828172352%_))))
                     (_%__match177988177989%_
                      (lambda (_%e171799172275%_
                               _%hd171800172278%_
                               _%tl171801172280%_
                               _%e171802172283%_
                               _%hd171803172286%_
                               _%tl171804172288%_
                               _%e171805172291%_
                               _%hd171806172294%_
                               _%tl171807172296%_
                               _%e171808172299%_
                               _%hd171809172302%_
                               _%tl171810172304%_
                               _%e171811172307%_
                               _%hd171812172310%_
                               _%tl171813172312%_
                               _%e171814172315%_
                               _%hd171815172318%_
                               _%tl171816172320%_
                               _%e171817172323%_
                               _%hd171818172326%_
                               _%tl171819172328%_
                               _%e171820172331%_
                               _%hd171821172334%_
                               _%tl171822172336%_
                               _%e171823172339%_
                               _%hd171824172342%_
                               _%tl171825172344%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd171824172342%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl171825172344%_))
                                (let ((_%e171826172347%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl171825172344%_))))
                                  (let ((_%tl171828172352%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e171826172347%_)))
                                        (_%hd171827172350%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e171826172347%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl171828172352%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl171822172336%_))
                                            (_%__match178000178001%_
                                             _%e171799172275%_
                                             _%hd171800172278%_
                                             _%tl171801172280%_
                                             _%e171802172283%_
                                             _%hd171803172286%_
                                             _%tl171804172288%_
                                             _%e171805172291%_
                                             _%hd171806172294%_
                                             _%tl171807172296%_
                                             _%e171808172299%_
                                             _%hd171809172302%_
                                             _%tl171810172304%_
                                             _%e171811172307%_
                                             _%hd171812172310%_
                                             _%tl171813172312%_
                                             _%e171814172315%_
                                             _%hd171815172318%_
                                             _%tl171816172320%_
                                             _%e171817172323%_
                                             _%hd171818172326%_
                                             _%tl171819172328%_
                                             _%e171820172331%_
                                             _%hd171821172334%_
                                             _%tl171822172336%_
                                             _%e171823172339%_
                                             _%hd171824172342%_
                                             _%tl171825172344%_
                                             _%e171826172347%_
                                             _%hd171827172350%_
                                             _%tl171828172352%_)
                                            (_%__match178078178079%_
                                             _%e171799172275%_
                                             _%hd171800172278%_
                                             _%tl171801172280%_
                                             _%e171802172283%_
                                             _%hd171803172286%_
                                             _%tl171804172288%_
                                             _%e171805172291%_
                                             _%hd171806172294%_
                                             _%tl171807172296%_
                                             _%e171808172299%_
                                             _%hd171809172302%_
                                             _%tl171810172304%_
                                             _%e171811172307%_
                                             _%hd171812172310%_
                                             _%tl171813172312%_
                                             _%e171814172315%_
                                             _%hd171815172318%_
                                             _%tl171816172320%_
                                             _%e171817172323%_
                                             _%hd171818172326%_
                                             _%tl171819172328%_
                                             _%e171820172331%_
                                             _%hd171821172334%_
                                             _%tl171822172336%_
                                             _%e171823172339%_
                                             _%hd171824172342%_
                                             _%tl171825172344%_
                                             _%e171826172347%_
                                             _%hd171827172350%_
                                             _%tl171828172352%_))
                                        (_%__match178202178203%_
                                         _%e171799172275%_
                                         _%hd171800172278%_
                                         _%tl171801172280%_
                                         _%e171802172283%_
                                         _%hd171803172286%_
                                         _%tl171804172288%_
                                         _%e171805172291%_
                                         _%hd171806172294%_
                                         _%tl171807172296%_
                                         _%e171808172299%_
                                         _%hd171809172302%_
                                         _%tl171810172304%_
                                         _%e171811172307%_
                                         _%hd171812172310%_
                                         _%tl171813172312%_
                                         _%e171814172315%_
                                         _%hd171815172318%_
                                         _%tl171816172320%_
                                         _%e171817172323%_
                                         _%hd171818172326%_
                                         _%tl171819172328%_
                                         _%e171820172331%_
                                         _%hd171821172334%_
                                         _%tl171822172336%_))))
                                (_%__match178202178203%_
                                 _%e171799172275%_
                                 _%hd171800172278%_
                                 _%tl171801172280%_
                                 _%e171802172283%_
                                 _%hd171803172286%_
                                 _%tl171804172288%_
                                 _%e171805172291%_
                                 _%hd171806172294%_
                                 _%tl171807172296%_
                                 _%e171808172299%_
                                 _%hd171809172302%_
                                 _%tl171810172304%_
                                 _%e171811172307%_
                                 _%hd171812172310%_
                                 _%tl171813172312%_
                                 _%e171814172315%_
                                 _%hd171815172318%_
                                 _%tl171816172320%_
                                 _%e171817172323%_
                                 _%hd171818172326%_
                                 _%tl171819172328%_
                                 _%e171820172331%_
                                 _%hd171821172334%_
                                 _%tl171822172336%_))
                            (_%__match178202178203%_
                             _%e171799172275%_
                             _%hd171800172278%_
                             _%tl171801172280%_
                             _%e171802172283%_
                             _%hd171803172286%_
                             _%tl171804172288%_
                             _%e171805172291%_
                             _%hd171806172294%_
                             _%tl171807172296%_
                             _%e171808172299%_
                             _%hd171809172302%_
                             _%tl171810172304%_
                             _%e171811172307%_
                             _%hd171812172310%_
                             _%tl171813172312%_
                             _%e171814172315%_
                             _%hd171815172318%_
                             _%tl171816172320%_
                             _%e171817172323%_
                             _%hd171818172326%_
                             _%tl171819172328%_
                             _%e171820172331%_
                             _%hd171821172334%_
                             _%tl171822172336%_))))
                     (_%__match177920177921%_
                      (lambda (_%e171748172396%_
                               _%hd171749172399%_
                               _%tl171750172401%_
                               _%e171751172404%_
                               _%hd171752172407%_
                               _%tl171753172409%_
                               _%e171754172412%_
                               _%hd171755172415%_
                               _%tl171756172417%_
                               _%e171757172420%_
                               _%hd171758172423%_
                               _%tl171759172425%_
                               _%e171760172428%_
                               _%hd171761172431%_
                               _%tl171762172433%_
                               _%e171763172436%_
                               _%hd171764172439%_
                               _%tl171765172441%_
                               _%e171766172444%_
                               _%hd171767172447%_
                               _%tl171768172449%_
                               _%e171769172452%_
                               _%hd171770172455%_
                               _%tl171771172457%_
                               _%e171772172460%_
                               _%hd171773172463%_
                               _%tl171774172465%_
                               _%e171775172468%_
                               _%hd171776172471%_
                               _%tl171777172473%_
                               _%e171778172476%_
                               _%hd171779172479%_
                               _%tl171780172481%_
                               _%e171781172484%_
                               _%hd171782172487%_
                               _%tl171783172489%_
                               _%e171784172492%_
                               _%hd171785172495%_
                               _%tl171786172497%_
                               _%__splice177713177714%_
                               _%target171787172500%_
                               _%tl171789172502%_)
                        (letrec ((_%loop171790172505%_
                                  (lambda (_%hd171788172508%_
                                           _%args171794172510%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd171788172508%_))
                                        (let ((_%e171791172513%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd171788172508%_))))
                                          (let ((_%lp-tl171793172518%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e171791172513%_)))
                                                (_%lp-hd171792172516%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e171791172513%_))))
                                            (_%loop171790172505%_
                                             _%lp-tl171793172518%_
                                             (cons _%lp-hd171792172516%_
                                                   _%args171794172510%_))))
                                        (let ((_%args171795172521%_
                                               (reverse _%args171794172510%_)))
                                          (let ((_%L172524%_
                                                 _%args171795172521%_)
                                                (_%L172525%_
                                                 _%hd171785172495%_)
                                                (_%L172526%_
                                                 _%hd171776172471%_)
                                                (_%L172527%_
                                                 _%hd171767172447%_)
                                                (_%L172528%_
                                                 _%hd171758172423%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L172528%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L172527%_
                                                        'call-method))
                                                     (let ((__tmp178366
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self171687%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L172526%_
                                                        __tmp178366)))
                                                (_%__kont177711177712%_
                                                 _%L172524%_
                                                 _%L172525%_
                                                 _%L172526%_
                                                 _%L172527%_
                                                 _%L172528%_)
                                                (_%__kont177723177724%_))))))))
                          (_%loop171790172505%_ _%target171787172500%_ '()))))
                     (_%__match177878177879%_
                      (lambda (_%e171748172396%_
                               _%hd171749172399%_
                               _%tl171750172401%_
                               _%e171751172404%_
                               _%hd171752172407%_
                               _%tl171753172409%_
                               _%e171754172412%_
                               _%hd171755172415%_
                               _%tl171756172417%_
                               _%e171757172420%_
                               _%hd171758172423%_
                               _%tl171759172425%_
                               _%e171760172428%_
                               _%hd171761172431%_
                               _%tl171762172433%_
                               _%e171763172436%_
                               _%hd171764172439%_
                               _%tl171765172441%_
                               _%e171766172444%_
                               _%hd171767172447%_
                               _%tl171768172449%_
                               _%e171769172452%_
                               _%hd171770172455%_
                               _%tl171771172457%_
                               _%e171772172460%_
                               _%hd171773172463%_
                               _%tl171774172465%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd171773172463%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl171774172465%_))
                                (let ((_%e171775172468%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl171774172465%_))))
                                  (let ((_%tl171777172473%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e171775172468%_)))
                                        (_%hd171776172471%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e171775172468%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl171777172473%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl171771172457%_))
                                            (let ((_%e171778172476%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl171771172457%_))))
                                              (let ((_%tl171780172481%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e171778172476%_)))
                                                    (_%hd171779172479%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e171778172476%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd171779172479%_))
                                                    (let ((_%e171781172484%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd171779172479%_))))
                                                      (let ((_%tl171783172489%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e171781172484%_)))
                    (_%hd171782172487%_
                     (let () (declare (not safe)) (##car _%e171781172484%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd171782172487%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd171782172487%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl171783172489%_))
                            (let ((_%e171784172492%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl171783172489%_))))
                              (let ((_%tl171786172497%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e171784172492%_)))
                                    (_%hd171785172495%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e171784172492%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl171786172497%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl171780172481%_))
                                        (let ((_%__splice177713177714%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl171780172481%_
                                                  '0))))
                                          (let ((_%tl171789172502%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice177713177714%_
                                                    '1)))
                                                (_%target171787172500%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice177713177714%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl171789172502%_))
                                                (_%__match177920177921%_
                                                 _%e171748172396%_
                                                 _%hd171749172399%_
                                                 _%tl171750172401%_
                                                 _%e171751172404%_
                                                 _%hd171752172407%_
                                                 _%tl171753172409%_
                                                 _%e171754172412%_
                                                 _%hd171755172415%_
                                                 _%tl171756172417%_
                                                 _%e171757172420%_
                                                 _%hd171758172423%_
                                                 _%tl171759172425%_
                                                 _%e171760172428%_
                                                 _%hd171761172431%_
                                                 _%tl171762172433%_
                                                 _%e171763172436%_
                                                 _%hd171764172439%_
                                                 _%tl171765172441%_
                                                 _%e171766172444%_
                                                 _%hd171767172447%_
                                                 _%tl171768172449%_
                                                 _%e171769172452%_
                                                 _%hd171770172455%_
                                                 _%tl171771172457%_
                                                 _%e171772172460%_
                                                 _%hd171773172463%_
                                                 _%tl171774172465%_
                                                 _%e171775172468%_
                                                 _%hd171776172471%_
                                                 _%tl171777172473%_
                                                 _%e171778172476%_
                                                 _%hd171779172479%_
                                                 _%tl171780172481%_
                                                 _%e171781172484%_
                                                 _%hd171782172487%_
                                                 _%tl171783172489%_
                                                 _%e171784172492%_
                                                 _%hd171785172495%_
                                                 _%tl171786172497%_
                                                 _%__splice177713177714%_
                                                 _%target171787172500%_
                                                 _%tl171789172502%_)
                                                (_%__kont177723177724%_))))
                                        (_%__kont177723177724%_))
                                    (_%__kont177723177724%_))))
                            (_%__kont177723177724%_))
                        (_%__kont177723177724%_))
                    (_%__kont177723177724%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont177723177724%_))))
                                            (_%__match178202178203%_
                                             _%e171748172396%_
                                             _%hd171749172399%_
                                             _%tl171750172401%_
                                             _%e171751172404%_
                                             _%hd171752172407%_
                                             _%tl171753172409%_
                                             _%e171754172412%_
                                             _%hd171755172415%_
                                             _%tl171756172417%_
                                             _%e171757172420%_
                                             _%hd171758172423%_
                                             _%tl171759172425%_
                                             _%e171760172428%_
                                             _%hd171761172431%_
                                             _%tl171762172433%_
                                             _%e171763172436%_
                                             _%hd171764172439%_
                                             _%tl171765172441%_
                                             _%e171766172444%_
                                             _%hd171767172447%_
                                             _%tl171768172449%_
                                             _%e171769172452%_
                                             _%hd171770172455%_
                                             _%tl171771172457%_))
                                        (_%__match178202178203%_
                                         _%e171748172396%_
                                         _%hd171749172399%_
                                         _%tl171750172401%_
                                         _%e171751172404%_
                                         _%hd171752172407%_
                                         _%tl171753172409%_
                                         _%e171754172412%_
                                         _%hd171755172415%_
                                         _%tl171756172417%_
                                         _%e171757172420%_
                                         _%hd171758172423%_
                                         _%tl171759172425%_
                                         _%e171760172428%_
                                         _%hd171761172431%_
                                         _%tl171762172433%_
                                         _%e171763172436%_
                                         _%hd171764172439%_
                                         _%tl171765172441%_
                                         _%e171766172444%_
                                         _%hd171767172447%_
                                         _%tl171768172449%_
                                         _%e171769172452%_
                                         _%hd171770172455%_
                                         _%tl171771172457%_))))
                                (_%__match178202178203%_
                                 _%e171748172396%_
                                 _%hd171749172399%_
                                 _%tl171750172401%_
                                 _%e171751172404%_
                                 _%hd171752172407%_
                                 _%tl171753172409%_
                                 _%e171754172412%_
                                 _%hd171755172415%_
                                 _%tl171756172417%_
                                 _%e171757172420%_
                                 _%hd171758172423%_
                                 _%tl171759172425%_
                                 _%e171760172428%_
                                 _%hd171761172431%_
                                 _%tl171762172433%_
                                 _%e171763172436%_
                                 _%hd171764172439%_
                                 _%tl171765172441%_
                                 _%e171766172444%_
                                 _%hd171767172447%_
                                 _%tl171768172449%_
                                 _%e171769172452%_
                                 _%hd171770172455%_
                                 _%tl171771172457%_))
                            (_%__match177988177989%_
                             _%e171748172396%_
                             _%hd171749172399%_
                             _%tl171750172401%_
                             _%e171751172404%_
                             _%hd171752172407%_
                             _%tl171753172409%_
                             _%e171754172412%_
                             _%hd171755172415%_
                             _%tl171756172417%_
                             _%e171757172420%_
                             _%hd171758172423%_
                             _%tl171759172425%_
                             _%e171760172428%_
                             _%hd171761172431%_
                             _%tl171762172433%_
                             _%e171763172436%_
                             _%hd171764172439%_
                             _%tl171765172441%_
                             _%e171766172444%_
                             _%hd171767172447%_
                             _%tl171768172449%_
                             _%e171769172452%_
                             _%hd171770172455%_
                             _%tl171771172457%_
                             _%e171772172460%_
                             _%hd171773172463%_
                             _%tl171774172465%_))))
                     (_%__match177810177811%_
                      (lambda (_%e171704172588%_
                               _%hd171705172591%_
                               _%tl171706172593%_
                               _%e171707172596%_
                               _%hd171708172599%_
                               _%tl171709172601%_
                               _%e171710172604%_
                               _%hd171711172607%_
                               _%tl171712172609%_
                               _%e171713172612%_
                               _%hd171714172615%_
                               _%tl171715172617%_
                               _%e171716172620%_
                               _%hd171717172623%_
                               _%tl171718172625%_
                               _%e171719172628%_
                               _%hd171720172631%_
                               _%tl171721172633%_
                               _%e171722172636%_
                               _%hd171723172639%_
                               _%tl171724172641%_
                               _%e171725172644%_
                               _%hd171726172647%_
                               _%tl171727172649%_
                               _%e171728172652%_
                               _%hd171729172655%_
                               _%tl171730172657%_
                               _%e171731172660%_
                               _%hd171732172663%_
                               _%tl171733172665%_
                               _%__splice177709177710%_
                               _%target171734172668%_
                               _%tl171736172670%_)
                        (letrec ((_%loop171737172673%_
                                  (lambda (_%hd171735172676%_
                                           _%args171741172678%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd171735172676%_))
                                        (let ((_%e171738172681%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd171735172676%_))))
                                          (let ((_%lp-tl171740172686%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e171738172681%_)))
                                                (_%lp-hd171739172684%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e171738172681%_))))
                                            (_%loop171737172673%_
                                             _%lp-tl171740172686%_
                                             (cons _%lp-hd171739172684%_
                                                   _%args171741172678%_))))
                                        (let ((_%args171742172689%_
                                               (reverse _%args171741172678%_)))
                                          (let ((_%L172692%_
                                                 _%args171742172689%_)
                                                (_%L172693%_
                                                 _%hd171732172663%_)
                                                (_%L172694%_
                                                 _%hd171723172639%_)
                                                (_%L172695%_
                                                 _%hd171714172615%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L172695%_
                                                        'call-method))
                                                     (let ((__tmp178367
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self171687%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L172694%_
                                                        __tmp178367)))
                                                (_%__kont177707177708%_
                                                 _%L172692%_
                                                 _%L172693%_
                                                 _%L172694%_
                                                 _%L172695%_)
                                                (_%__match177998177999%_
                                                 _%e171704172588%_
                                                 _%hd171705172591%_
                                                 _%tl171706172593%_
                                                 _%e171707172596%_
                                                 _%hd171708172599%_
                                                 _%tl171709172601%_
                                                 _%e171710172604%_
                                                 _%hd171711172607%_
                                                 _%tl171712172609%_
                                                 _%e171713172612%_
                                                 _%hd171714172615%_
                                                 _%tl171715172617%_
                                                 _%e171716172620%_
                                                 _%hd171717172623%_
                                                 _%tl171718172625%_
                                                 _%e171719172628%_
                                                 _%hd171720172631%_
                                                 _%tl171721172633%_
                                                 _%e171722172636%_
                                                 _%hd171723172639%_
                                                 _%tl171724172641%_
                                                 _%e171725172644%_
                                                 _%hd171726172647%_
                                                 _%tl171727172649%_
                                                 _%e171728172652%_
                                                 _%hd171729172655%_
                                                 _%tl171730172657%_
                                                 _%e171731172660%_
                                                 _%hd171732172663%_
                                                 _%tl171733172665%_))))))))
                          (_%loop171737172673%_ _%target171734172668%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx177705177706%_))
                    (let ((_%e171704172588%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx177705177706%_))))
                      (let ((_%tl171706172593%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e171704172588%_)))
                            (_%hd171705172591%_
                             (let ()
                               (declare (not safe))
                               (##car _%e171704172588%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl171706172593%_))
                            (let ((_%e171707172596%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl171706172593%_))))
                              (let ((_%tl171709172601%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e171707172596%_)))
                                    (_%hd171708172599%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e171707172596%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd171708172599%_))
                                    (let ((_%e171710172604%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd171708172599%_))))
                                      (let ((_%tl171712172609%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e171710172604%_)))
                                            (_%hd171711172607%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e171710172604%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd171711172607%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd171711172607%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl171712172609%_))
                                                    (let ((_%e171713172612%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl171712172609%_))))
                                                      (let ((_%tl171715172617%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e171713172612%_)))
                    (_%hd171714172615%_
                     (let () (declare (not safe)) (##car _%e171713172612%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl171715172617%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl171709172601%_))
                        (let ((_%e171716172620%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl171709172601%_))))
                          (let ((_%tl171718172625%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e171716172620%_)))
                                (_%hd171717172623%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e171716172620%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd171717172623%_))
                                (let ((_%e171719172628%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd171717172623%_))))
                                  (let ((_%tl171721172633%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e171719172628%_)))
                                        (_%hd171720172631%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e171719172628%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd171720172631%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd171720172631%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl171721172633%_))
                                                (let ((_%e171722172636%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl171721172633%_))))
                                                  (let ((_%tl171724172641%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e171722172636%_)))
                                                        (_%hd171723172639%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e171722172636%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl171724172641%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl171718172625%_))
                                                            (let ((_%e171725172644%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl171718172625%_))))
                      (let ((_%tl171727172649%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e171725172644%_)))
                            (_%hd171726172647%_
                             (let ()
                               (declare (not safe))
                               (##car _%e171725172644%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd171726172647%_))
                            (let ((_%e171728172652%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd171726172647%_))))
                              (let ((_%tl171730172657%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e171728172652%_)))
                                    (_%hd171729172655%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e171728172652%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd171729172655%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd171729172655%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl171730172657%_))
                                            (let ((_%e171731172660%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl171730172657%_))))
                                              (let ((_%tl171733172665%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e171731172660%_)))
                                                    (_%hd171732172663%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e171731172660%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl171733172665%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl171727172649%_))
                                                        (let ((_%__splice177709177710%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _%tl171727172649%_ '0))))
                  (let ((_%tl171736172670%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice177709177710%_ '1)))
                        (_%target171734172668%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice177709177710%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl171736172670%_))
                        (_%__match177810177811%_
                         _%e171704172588%_
                         _%hd171705172591%_
                         _%tl171706172593%_
                         _%e171707172596%_
                         _%hd171708172599%_
                         _%tl171709172601%_
                         _%e171710172604%_
                         _%hd171711172607%_
                         _%tl171712172609%_
                         _%e171713172612%_
                         _%hd171714172615%_
                         _%tl171715172617%_
                         _%e171716172620%_
                         _%hd171717172623%_
                         _%tl171718172625%_
                         _%e171719172628%_
                         _%hd171720172631%_
                         _%tl171721172633%_
                         _%e171722172636%_
                         _%hd171723172639%_
                         _%tl171724172641%_
                         _%e171725172644%_
                         _%hd171726172647%_
                         _%tl171727172649%_
                         _%e171728172652%_
                         _%hd171729172655%_
                         _%tl171730172657%_
                         _%e171731172660%_
                         _%hd171732172663%_
                         _%tl171733172665%_
                         _%__splice177709177710%_
                         _%target171734172668%_
                         _%tl171736172670%_)
                        (_%__match177998177999%_
                         _%e171704172588%_
                         _%hd171705172591%_
                         _%tl171706172593%_
                         _%e171707172596%_
                         _%hd171708172599%_
                         _%tl171709172601%_
                         _%e171710172604%_
                         _%hd171711172607%_
                         _%tl171712172609%_
                         _%e171713172612%_
                         _%hd171714172615%_
                         _%tl171715172617%_
                         _%e171716172620%_
                         _%hd171717172623%_
                         _%tl171718172625%_
                         _%e171719172628%_
                         _%hd171720172631%_
                         _%tl171721172633%_
                         _%e171722172636%_
                         _%hd171723172639%_
                         _%tl171724172641%_
                         _%e171725172644%_
                         _%hd171726172647%_
                         _%tl171727172649%_
                         _%e171728172652%_
                         _%hd171729172655%_
                         _%tl171730172657%_
                         _%e171731172660%_
                         _%hd171732172663%_
                         _%tl171733172665%_))))
                (_%__match177998177999%_
                 _%e171704172588%_
                 _%hd171705172591%_
                 _%tl171706172593%_
                 _%e171707172596%_
                 _%hd171708172599%_
                 _%tl171709172601%_
                 _%e171710172604%_
                 _%hd171711172607%_
                 _%tl171712172609%_
                 _%e171713172612%_
                 _%hd171714172615%_
                 _%tl171715172617%_
                 _%e171716172620%_
                 _%hd171717172623%_
                 _%tl171718172625%_
                 _%e171719172628%_
                 _%hd171720172631%_
                 _%tl171721172633%_
                 _%e171722172636%_
                 _%hd171723172639%_
                 _%tl171724172641%_
                 _%e171725172644%_
                 _%hd171726172647%_
                 _%tl171727172649%_
                 _%e171728172652%_
                 _%hd171729172655%_
                 _%tl171730172657%_
                 _%e171731172660%_
                 _%hd171732172663%_
                 _%tl171733172665%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match178202178203%_
                                                     _%e171704172588%_
                                                     _%hd171705172591%_
                                                     _%tl171706172593%_
                                                     _%e171707172596%_
                                                     _%hd171708172599%_
                                                     _%tl171709172601%_
                                                     _%e171710172604%_
                                                     _%hd171711172607%_
                                                     _%tl171712172609%_
                                                     _%e171713172612%_
                                                     _%hd171714172615%_
                                                     _%tl171715172617%_
                                                     _%e171716172620%_
                                                     _%hd171717172623%_
                                                     _%tl171718172625%_
                                                     _%e171719172628%_
                                                     _%hd171720172631%_
                                                     _%tl171721172633%_
                                                     _%e171722172636%_
                                                     _%hd171723172639%_
                                                     _%tl171724172641%_
                                                     _%e171725172644%_
                                                     _%hd171726172647%_
                                                     _%tl171727172649%_))))
                                            (_%__match178202178203%_
                                             _%e171704172588%_
                                             _%hd171705172591%_
                                             _%tl171706172593%_
                                             _%e171707172596%_
                                             _%hd171708172599%_
                                             _%tl171709172601%_
                                             _%e171710172604%_
                                             _%hd171711172607%_
                                             _%tl171712172609%_
                                             _%e171713172612%_
                                             _%hd171714172615%_
                                             _%tl171715172617%_
                                             _%e171716172620%_
                                             _%hd171717172623%_
                                             _%tl171718172625%_
                                             _%e171719172628%_
                                             _%hd171720172631%_
                                             _%tl171721172633%_
                                             _%e171722172636%_
                                             _%hd171723172639%_
                                             _%tl171724172641%_
                                             _%e171725172644%_
                                             _%hd171726172647%_
                                             _%tl171727172649%_))
                                        (_%__match177878177879%_
                                         _%e171704172588%_
                                         _%hd171705172591%_
                                         _%tl171706172593%_
                                         _%e171707172596%_
                                         _%hd171708172599%_
                                         _%tl171709172601%_
                                         _%e171710172604%_
                                         _%hd171711172607%_
                                         _%tl171712172609%_
                                         _%e171713172612%_
                                         _%hd171714172615%_
                                         _%tl171715172617%_
                                         _%e171716172620%_
                                         _%hd171717172623%_
                                         _%tl171718172625%_
                                         _%e171719172628%_
                                         _%hd171720172631%_
                                         _%tl171721172633%_
                                         _%e171722172636%_
                                         _%hd171723172639%_
                                         _%tl171724172641%_
                                         _%e171725172644%_
                                         _%hd171726172647%_
                                         _%tl171727172649%_
                                         _%e171728172652%_
                                         _%hd171729172655%_
                                         _%tl171730172657%_))
                                    (_%__match178202178203%_
                                     _%e171704172588%_
                                     _%hd171705172591%_
                                     _%tl171706172593%_
                                     _%e171707172596%_
                                     _%hd171708172599%_
                                     _%tl171709172601%_
                                     _%e171710172604%_
                                     _%hd171711172607%_
                                     _%tl171712172609%_
                                     _%e171713172612%_
                                     _%hd171714172615%_
                                     _%tl171715172617%_
                                     _%e171716172620%_
                                     _%hd171717172623%_
                                     _%tl171718172625%_
                                     _%e171719172628%_
                                     _%hd171720172631%_
                                     _%tl171721172633%_
                                     _%e171722172636%_
                                     _%hd171723172639%_
                                     _%tl171724172641%_
                                     _%e171725172644%_
                                     _%hd171726172647%_
                                     _%tl171727172649%_))))
                            (_%__match178202178203%_
                             _%e171704172588%_
                             _%hd171705172591%_
                             _%tl171706172593%_
                             _%e171707172596%_
                             _%hd171708172599%_
                             _%tl171709172601%_
                             _%e171710172604%_
                             _%hd171711172607%_
                             _%tl171712172609%_
                             _%e171713172612%_
                             _%hd171714172615%_
                             _%tl171715172617%_
                             _%e171716172620%_
                             _%hd171717172623%_
                             _%tl171718172625%_
                             _%e171719172628%_
                             _%hd171720172631%_
                             _%tl171721172633%_
                             _%e171722172636%_
                             _%hd171723172639%_
                             _%tl171724172641%_
                             _%e171725172644%_
                             _%hd171726172647%_
                             _%tl171727172649%_))))
                    (_%__match178140178141%_
                     _%e171704172588%_
                     _%hd171705172591%_
                     _%tl171706172593%_
                     _%e171707172596%_
                     _%hd171708172599%_
                     _%tl171709172601%_
                     _%e171710172604%_
                     _%hd171711172607%_
                     _%tl171712172609%_
                     _%e171713172612%_
                     _%hd171714172615%_
                     _%tl171715172617%_
                     _%e171716172620%_
                     _%hd171717172623%_
                     _%tl171718172625%_
                     _%e171719172628%_
                     _%hd171720172631%_
                     _%tl171721172633%_
                     _%e171722172636%_
                     _%hd171723172639%_
                     _%tl171724172641%_))
                (_%__kont177723177724%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont177723177724%_))
                                            (_%__kont177723177724%_))
                                        (_%__kont177723177724%_))))
                                (_%__kont177723177724%_))))
                        (_%__kont177723177724%_))
                    (_%__kont177723177724%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont177723177724%_))
                                                (_%__kont177723177724%_))
                                            (_%__kont177723177724%_))))
                                    (_%__kont177723177724%_))))
                            (_%__kont177723177724%_))))
                    (_%__kont177723177724%_))))))))))
