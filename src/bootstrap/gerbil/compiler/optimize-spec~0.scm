(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1712093479)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp171143 (list gxc#::identity::t))
            (__tmp171142 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp171143
         '()
         __tmp171142
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args170008%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args170008%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp171144
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
        (__make-promise __tmp171144)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx170000%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self170003%_
                (let ((__obj171137
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj171137))
               (__tmp171145
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self170003%_ _%stx170000%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp171145
           gxc#current-compile-method
           _%self170003%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp171147 (list gxc#::void::t))
            (__tmp171146 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp171147
         '(receiver methods slots)
         __tmp171146
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args169997%_
        (apply make-instance gxc#::collect-object-refs::t _%$args169997%_)))
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
      (let ((__tmp171148
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
        (__make-promise __tmp171148)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%_169962%_
               _%receiver169957169964%_
               _%methods169958169966%_
               _%slots169959169968%_
               _%stx169970%_)
        (let* ((_%receiver169973%_
                (if (eq? _%receiver169957169964%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver169957169964%_))
               (_%methods169975%_
                (if (eq? _%methods169958169966%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods169958169966%_))
               (_%slots169977%_
                (if (eq? _%slots169959169968%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots169959169968%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self169979%_
                  (let ((__obj171139
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
                       __obj171139
                       _%receiver169973%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj171139
                       _%methods169975%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj171139
                       _%slots169977%_
                       '3
                       '#f
                       '#f))
                    __obj171139))
                 (__tmp171149
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self169979%_ _%stx169970%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp171149
             gxc#current-compile-method
             _%self169979%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords169986%_ . _%args169987%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords169986%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords169986%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords169986%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords169986%_
                  'slots:
                  absent-value))
               _%args169987%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args169960169993%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args169960169993%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp171151 (list gxc#::basic-xform-expression::t))
            (__tmp171150 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp171151
         '(receiver klass methods slots)
         __tmp171150
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args169953%_
        (apply make-instance gxc#::subst-object-refs::t _%$args169953%_)))
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
      (let ((__tmp171152
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
        (__make-promise __tmp171152)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%_169914%_
               _%receiver169908169916%_
               _%klass169909169918%_
               _%methods169910169920%_
               _%slots169911169922%_
               _%stx169924%_)
        (let* ((_%receiver169927%_
                (if (eq? _%receiver169908169916%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver169908169916%_))
               (_%klass169929%_
                (if (eq? _%klass169909169918%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass169909169918%_))
               (_%methods169931%_
                (if (eq? _%methods169910169920%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods169910169920%_))
               (_%slots169933%_
                (if (eq? _%slots169911169922%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots169911169922%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self169935%_
                  (let ((__obj171141
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
                       __obj171141
                       _%receiver169927%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj171141
                       _%klass169929%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj171141
                       _%methods169931%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj171141
                       _%slots169933%_
                       '4
                       '#f
                       '#f))
                    __obj171141))
                 (__tmp171153
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self169935%_ _%stx169924%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp171153
             gxc#current-compile-method
             _%self169935%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords169942%_ . _%args169943%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords169942%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords169942%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords169942%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords169942%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords169942%_
                  'slots:
                  absent-value))
               _%args169943%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args169912169949%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args169912169949%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self167089%_ _%stx167090%_)
        (letrec ((_%generate-method-bind167092%_
                  (lambda (_%$klass169900%_
                           _%$method-table169901%_
                           _%id169902%_
                           _%$id169903%_)
                    (let ((_%$tmp169905%_
                           (let ((__tmp171154
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp171154))))
                      (cons (cons _%$id169903%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp169905%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table169901%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id169902%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp169905%_ '()))
                    (cons (cons '%#ref (cons _%$tmp169905%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id169902%_
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
                 (_%generate-slot-bind167093%_
                  (lambda (_%$klass169894%_ _%id169895%_ _%$id169896%_)
                    (let ((_%$tmp169898%_
                           (let ((__tmp171155
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp171155))))
                      (cons (cons _%$id169896%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp169898%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass169894%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id169895%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp169898%_ '()))
                        (cons (cons '%#ref (cons _%$tmp169898%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id169895%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl167094%_
                  (lambda (_%$klass169888%_
                           _%$method-table169889%_
                           _%methods-bind169890%_
                           _%slots-bind169891%_
                           _%specializer-impl169892%_)
                    (let ((__tmp171156
                           (cons '%#lambda
                                 (cons (cons _%$klass169888%_
                                             (cons _%$method-table169889%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__foldr1
                                                            cons
                                                            _%slots-bind169891%_
                                                            _%methods-bind169890%_))
                                                         (cons _%specializer-impl169892%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp171156 _%stx167090%_))))
                 (_%generate-specializer-def167095%_
                  (lambda (_%id169884%_
                           _%specializer-id169885%_
                           _%specializer-impl169886%_)
                    (let ((__tmp171157
                           (cons '%#begin
                                 (cons _%stx167090%_
                                       (cons (let ((__tmp171158
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id169885%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl169886%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp171158
                                                _%stx167090%_))
                                             (cons (let ((__tmp171159
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id169884%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id169885%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp171159
                                                      _%stx167090%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp171157 _%stx167090%_)))))
          (let* ((_%__stx170097170098%_ _%stx167090%_)
                 (_%g167098167118%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx170097170098%_)))))
            (let ((_%__kont170099170100%_
                   (lambda (_%L167162%_ _%L167163%_)
                     (let ((_%method-calls167182%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs167183%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty167184%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?167186%_
                                 (lambda ()
                                   (if (fxzero? (let ()
                                                  (declare (not safe))
                                                  (hash-length
                                                   _%method-calls167182%_)))
                                       (fxzero? (let ()
                                                  (declare (not safe))
                                                  (hash-length
                                                   _%slot-refs167183%_)))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%L167162%_))
                             (let ()
                               (let* ((_%__stx170011170012%_ _%L167162%_)
                                      (_%g167574167592%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx170011170012%_)))))
                                 (let ((_%__kont170013170014%_
                                        (lambda (_%L167628%_
                                                 _%L167629%_
                                                 _%L167630%_)
                                          (for-each
                                           (lambda (_%g167646167648%_)
                                             (let ()
                                               (declare (not safe))
                                               (gxc#apply-collect-object-refs
                                                _%g167646167648%_
                                                'receiver:
                                                _%L167630%_
                                                'methods:
                                                _%method-calls167182%_
                                                'slots:
                                                _%slot-refs167183%_)))
                                           _%L167628%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (_%no-specializer?167186%_))
                                              _%stx167090%_
                                              (let* ((_%specializer-id167657%_
                                                      (let* ((_%id167651%_
                                                              (let ((__tmp171160
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L167163%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp171160 '"::specialize")))
                     (_%specializer-id167654%_
                      (let ((__tmp171161
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx167090%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id167651%_ __tmp171161))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id167654%_))
                _%specializer-id167654%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass167659%_
                                                      (let ((__tmp171162
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp171162)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table167661%_
                                                      (let ((__tmp171163
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp171163)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods167663%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _%method-calls167182%_)))
                                                     (_%$methods167667%_
                                                      (map (lambda (_%id167665%_)
                                                             (let ((__tmp171164
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id167665%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp171164)))
                   _%methods167663%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_167676%_
                                                      (for-each
                                                       (lambda (_%g167668167671%_
                                                                _%g167669167673%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _%method-calls167182%_
                                                            _%g167668167671%_
                                                            _%g167669167673%_)))
                                                       _%methods167663%_
                                                       _%$methods167667%_))
                                                     (_%methods-bind167686%_
                                                      (map (lambda (_%g167678167681%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g167679167683%_)
                     (let ()
                       (declare (not safe))
                       (_%generate-method-bind167092%_
                        _%$klass167659%_
                        _%$method-table167661%_
                        _%g167678167681%_
                        _%g167679167683%_)))
                   _%methods167663%_
                   _%$methods167667%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots167688%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _%slot-refs167183%_)))
                                                     (_%$slots167692%_
                                                      (map (lambda (_%id167690%_)
                                                             (let ((__tmp171165
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id167690%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp171165)))
                   _%slots167688%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_167701%_
                                                      (for-each
                                                       (lambda (_%g167693167696%_
                                                                _%g167694167698%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _%slot-refs167183%_
                                                            _%g167693167696%_
                                                            _%g167694167698%_)))
                                                       _%slots167688%_
                                                       _%$slots167692%_))
                                                     (_%slots-bind167710%_
                                                      (map (lambda (_%g167702167705%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g167703167707%_)
                     (let ()
                       (declare (not safe))
                       (_%generate-slot-bind167093%_
                        _%$klass167659%_
                        _%g167702167705%_
                        _%g167703167707%_)))
                   _%slots167688%_
                   _%$slots167692%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body167716%_
                                                      (map (lambda (_%g167711167713%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#apply-subst-object-refs
                        _%g167711167713%_
                        'receiver:
                        _%L167630%_
                        'klass:
                        _%$klass167659%_
                        'methods:
                        _%method-calls167182%_
                        'slots:
                        _%slot-refs167183%_)))
                   _%L167628%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl167718%_
                                                      (let ((__tmp171166
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%L167630%_ _%L167629%_)
                                 _%specializer-body167716%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp171166 _%stx167090%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl167720%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%generate-specializer-impl167094%_
                                                         _%$klass167659%_
                                                         _%$method-table167661%_
                                                         _%methods-bind167686%_
                                                         _%slots-bind167710%_
                                                         _%specializer-impl167718%_))))
                                                (let ((__tmp171168
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L167163%_)))
                                                      (__tmp171167
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id167657%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp171168
                                                   '" => "
                                                   __tmp171167))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%generate-specializer-def167095%_
                                                   _%L167163%_
                                                   _%specializer-id167657%_
                                                   _%specializer-impl167720%_))))))
                                       (_%__kont170015170016%_
                                        (lambda () _%stx167090%_)))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%__stx170011170012%_))
                                       (let ((_%e167581167604%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%__stx170011170012%_))))
                                         (let ((_%tl167579167609%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e167581167604%_)))
                                               (_%hd167580167607%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e167581167604%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl167579167609%_))
                                               (let ((_%e167584167612%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl167579167609%_))))
                                                 (let ((_%tl167582167617%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e167584167612%_)))
                                                       (_%hd167583167615%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e167584167612%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd167583167615%_))
                                                       (let ((_%e167587167620%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd167583167615%_))))
                 (let ((_%tl167585167625%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e167587167620%_)))
                       (_%hd167586167623%_
                        (let ()
                          (declare (not safe))
                          (##car _%e167587167620%_))))
                   (_%__kont170013170014%_
                    _%tl167582167617%_
                    _%tl167585167625%_
                    _%hd167586167623%_)))
               (_%__kont170015170016%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%__kont170015170016%_))))
                                       (_%__kont170015170016%_)))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%L167162%_))
                                 (let ()
                                   (let* ((_%g167727167746%_
                                           (lambda (_%g167728167743%_)
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%g167728167743%_))))
                                          (_%g167726168033%_
                                           (lambda (_%g167728167749%_)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%g167728167749%_))
                                                 (let ((_%e167732167751%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%g167728167749%_))))
                                                   (let ((_%hd167731167754%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e167732167751%_)))
                                                         (_%tl167730167756%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e167732167751%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl167730167756%_))
                                                         (let ((_g171169_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice _%tl167730167756%_ '0))))
                   (begin
                     (let ((_g171170_
                            (let ()
                              (declare (not safe))
                              (if (##values? _g171169_)
                                  (##vector-length _g171169_)
                                  1))))
                       (if (not (let ()
                                  (declare (not safe))
                                  (##fx= _g171170_ 2)))
                           (error "Context expects 2 values" _g171170_)))
                     (let ((_%target167733167759%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _g171169_ 0)))
                           (_%tl167735167761%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _g171169_ 1))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl167735167761%_))
                           (letrec ((_%loop167736167764%_
                                     (lambda (_%hd167734167767%_
                                              _%clause167740167769%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd167734167767%_))
                                           (let ((_%e167737167772%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd167734167767%_))))
                                             (let ((_%lp-hd167738167775%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e167737167772%_)))
                                                   (_%lp-tl167739167777%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e167737167772%_))))
                                               (let ((__tmp171171
                                                      (cons _%lp-hd167738167775%_
                                                            _%clause167740167769%_)))
                                                 (declare (not safe))
                                                 (_%loop167736167764%_
                                                  _%lp-tl167739167777%_
                                                  __tmp171171))))
                                           (let ((_%clause167741167780%_
                                                  (reverse _%clause167740167769%_)))
                                             ((lambda (_%L167783%_)
                                                (for-each
                                                 (lambda (_%clause167797%_)
                                                   (let* ((_%__stx170037170038%_
                                                           _%clause167797%_)
                                                          (_%g167800167815%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%__stx170037170038%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%__kont170039170040%_
                                                            (lambda (_%L167843%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%L167844%_
                             _%L167845%_)
                      (for-each
                       (lambda (_%g167860167862%_)
                         (let ()
                           (declare (not safe))
                           (gxc#apply-collect-object-refs
                            _%g167860167862%_
                            'receiver:
                            _%L167845%_
                            'methods:
                            _%method-calls167182%_
                            'slots:
                            _%slot-refs167183%_)))
                       _%L167843%_)))
                   (_%__kont170041170042%_ (lambda () '#!void)))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? _%__stx170037170038%_))
                   (let ((_%e167807167827%_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%__stx170037170038%_))))
                     (let ((_%tl167805167832%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e167807167827%_)))
                           (_%hd167806167830%_
                            (let ()
                              (declare (not safe))
                              (##car _%e167807167827%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd167806167830%_))
                           (let ((_%e167810167835%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd167806167830%_))))
                             (let ((_%tl167808167840%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e167810167835%_)))
                                   (_%hd167809167838%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e167810167835%_))))
                               (_%__kont170039170040%_
                                _%tl167805167832%_
                                _%tl167808167840%_
                                _%hd167809167838%_)))
                           (_%__kont170041170042%_))))
                   (_%__kont170041170042%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((__tmp171172
                                                        (lambda (_%g167867167870%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g167868167872%_)
                  (cons _%g167867167870%_ _%g167868167872%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp171172
                                                    '()
                                                    _%L167783%_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (_%no-specializer?167186%_))
                                                    _%stx167090%_
                                                    (let* ((_%specializer-id167881%_
                                                            (let* ((_%id167875%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp171173
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L167163%_))))
                              (declare (not safe))
                              (make-symbol__1 __tmp171173 '"::specialize")))
                           (_%specializer-id167878%_
                            (let ((__tmp171174
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-source _%stx167090%_))))
                              (declare (not safe))
                              (gx#core-quote-syntax__1
                               _%id167875%_
                               __tmp171174))))
                      (let ()
                        (declare (not safe))
                        (gx#core-bind-runtime!__0 _%specializer-id167878%_))
                      _%specializer-id167878%_))
                   (_%$klass167883%_
                    (let ((__tmp171175
                           (let () (declare (not safe)) (##gensym '__klass))))
                      (declare (not safe))
                      (make-symbol__0 __tmp171175)))
                   (_%$method-table167885%_
                    (let ((__tmp171176
                           (let ()
                             (declare (not safe))
                             (##gensym '__method-table))))
                      (declare (not safe))
                      (make-symbol__0 __tmp171176)))
                   (_%methods167887%_
                    (let ()
                      (declare (not safe))
                      (hash-keys _%method-calls167182%_)))
                   (_%$methods167891%_
                    (map (lambda (_%id167889%_)
                           (let ((__tmp171177 (gensym _%id167889%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp171177)))
                         _%methods167887%_))
                   (_%_167900%_
                    (for-each
                     (lambda (_%g167892167895%_ _%g167893167897%_)
                       (let ()
                         (declare (not safe))
                         (hash-put!
                          _%method-calls167182%_
                          _%g167892167895%_
                          _%g167893167897%_)))
                     _%methods167887%_
                     _%$methods167891%_))
                   (_%methods-bind167910%_
                    (map (lambda (_%g167902167905%_ _%g167903167907%_)
                           (let ()
                             (declare (not safe))
                             (_%generate-method-bind167092%_
                              _%$klass167883%_
                              _%$method-table167885%_
                              _%g167902167905%_
                              _%g167903167907%_)))
                         _%methods167887%_
                         _%$methods167891%_))
                   (_%slots167912%_
                    (let ()
                      (declare (not safe))
                      (hash-keys _%slot-refs167183%_)))
                   (_%$slots167916%_
                    (map (lambda (_%id167914%_)
                           (let ((__tmp171178 (gensym _%id167914%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp171178)))
                         _%slots167912%_))
                   (_%_167925%_
                    (for-each
                     (lambda (_%g167917167920%_ _%g167918167922%_)
                       (let ()
                         (declare (not safe))
                         (hash-put!
                          _%slot-refs167183%_
                          _%g167917167920%_
                          _%g167918167922%_)))
                     _%slots167912%_
                     _%$slots167916%_))
                   (_%slots-bind167934%_
                    (map (lambda (_%g167926167929%_ _%g167927167931%_)
                           (let ()
                             (declare (not safe))
                             (_%generate-slot-bind167093%_
                              _%$klass167883%_
                              _%g167926167929%_
                              _%g167927167931%_)))
                         _%slots167912%_
                         _%$slots167916%_))
                   (_%specializer-clauses168026%_
                    (map (lambda (_%clause167936%_)
                           (let* ((_%__stx170057170058%_ _%clause167936%_)
                                  (_%g167939167954%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%__stx170057170058%_)))))
                             (let ((_%__kont170059170060%_
                                    (lambda (_%L167982%_
                                             _%L167983%_
                                             _%L167984%_)
                                      (let ((_%body168014%_
                                             (map (lambda (_%g168009168011%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#apply-subst-object-refs
                                                       _%g168009168011%_
                                                       'receiver:
                                                       _%L167984%_
                                                       'klass:
                                                       _%$klass167883%_
                                                       'methods:
                                                       _%method-calls167182%_
                                                       'slots:
                                                       _%slot-refs167183%_)))
                                                  _%L167982%_)))
                                        (cons (cons _%L167984%_ _%L167983%_)
                                              _%body168014%_))))
                                   (_%__kont170061170062%_
                                    (lambda () _%clause167936%_)))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%__stx170057170058%_))
                                   (let ((_%e167946167966%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%__stx170057170058%_))))
                                     (let ((_%tl167944167971%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e167946167966%_)))
                                           (_%hd167945167969%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e167946167966%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd167945167969%_))
                                           (let ((_%e167949167974%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd167945167969%_))))
                                             (let ((_%tl167947167979%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e167949167974%_)))
                                                   (_%hd167948167977%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e167949167974%_))))
                                               (_%__kont170059170060%_
                                                _%tl167944167971%_
                                                _%tl167947167979%_
                                                _%hd167948167977%_)))
                                           (_%__kont170061170062%_))))
                                   (_%__kont170061170062%_)))))
                         (let ((__tmp171179
                                (lambda (_%g168018168021%_ _%g168019168023%_)
                                  (cons _%g168018168021%_ _%g168019168023%_))))
                           (declare (not safe))
                           (__foldr1 __tmp171179 '() _%L167783%_))))
                   (_%specializer-impl168028%_
                    (let ((__tmp171180
                           (cons '%#case-lambda
                                 _%specializer-clauses168026%_)))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp171180 _%stx167090%_)))
                   (_%specializer-impl168030%_
                    (let ()
                      (declare (not safe))
                      (_%generate-specializer-impl167094%_
                       _%$klass167883%_
                       _%$method-table167885%_
                       _%methods-bind167910%_
                       _%slots-bind167934%_
                       _%specializer-impl168028%_))))
              (let ((__tmp171182
                     (let () (declare (not safe)) (gx#stx-e _%L167163%_)))
                    (__tmp171181
                     (let ()
                       (declare (not safe))
                       (gx#stx-e _%specializer-id167881%_))))
                (declare (not safe))
                (gxc#verbose
                 '"generate method specializer "
                 __tmp171182
                 '" => "
                 __tmp171181))
              (let ()
                (declare (not safe))
                (_%generate-specializer-def167095%_
                 _%L167163%_
                 _%specializer-id167881%_
                 _%specializer-impl168030%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%clause167741167780%_))))))
                             (let ()
                               (declare (not safe))
                               (_%loop167736167764%_
                                _%target167733167759%_
                                '())))
                           (let ()
                             (declare (not safe))
                             (_%g167727167746%_ _%g167728167749%_))))))
                 (let ()
                   (declare (not safe))
                   (_%g167727167746%_ _%g167728167749%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g167727167746%_
                                                    _%g167728167749%_))))))
                                     (declare (not safe))
                                     (_%g167726168033%_ _%L167162%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _%L167162%_))
                                     (let ()
                                       (let* ((_%g168037168067%_
                                               (lambda (_%g168038168064%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g168038168064%_))))
                                              (_%g168036168676%_
                                               (lambda (_%g168038168070%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%g168038168070%_))
                                                     (let ((_%e168044168072%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%g168038168070%_))))
                                                       (let ((_%hd168043168075%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e168044168072%_)))
                     (_%tl168042168077%_
                      (let () (declare (not safe)) (##cdr _%e168044168072%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl168042168077%_))
                     (let ((_%e168047168080%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl168042168077%_))))
                       (let ((_%hd168046168083%_
                              (let ()
                                (declare (not safe))
                                (##car _%e168047168080%_)))
                             (_%tl168045168085%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e168047168080%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd168046168083%_))
                             (let ((_%e168050168088%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%hd168046168083%_))))
                               (let ((_%hd168049168091%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e168050168088%_)))
                                     (_%tl168048168093%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e168050168088%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd168049168091%_))
                                     (let ((_%e168053168096%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd168049168091%_))))
                                       (let ((_%hd168052168099%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e168053168096%_)))
                                             (_%tl168051168101%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e168053168096%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd168052168099%_))
                                             (let ((_%e168056168104%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%hd168052168099%_))))
                                               (let ((_%hd168055168107%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e168056168104%_)))
                                                     (_%tl168054168109%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e168056168104%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl168054168109%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl168051168101%_))
                                                         (let ((_%e168059168112%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl168051168101%_))))
                   (let ((_%hd168058168115%_
                          (let ()
                            (declare (not safe))
                            (##car _%e168059168112%_)))
                         (_%tl168057168117%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e168059168112%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl168057168117%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl168048168093%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl168045168085%_))
                                 (let ((_%e168062168120%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%tl168045168085%_))))
                                   (let ((_%hd168061168123%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e168062168120%_)))
                                         (_%tl168060168125%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e168062168120%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl168060168125%_))
                                         ((lambda (_%L168128%_
                                                   _%L168129%_
                                                   _%L168130%_)
                                            (let* ((_%g168154168172%_
                                                    (lambda (_%g168155168169%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g168155168169%_))))
                                                   (_%g168153168223%_
                                                    (lambda (_%g168155168175%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%g168155168175%_))
                                                          (let ((_%e168161168177%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%g168155168175%_))))
                    (let ((_%hd168160168180%_
                           (let ()
                             (declare (not safe))
                             (##car _%e168161168177%_)))
                          (_%tl168159168182%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e168161168177%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl168159168182%_))
                          (let ((_%e168164168185%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl168159168182%_))))
                            (let ((_%hd168163168188%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e168164168185%_)))
                                  (_%tl168162168190%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e168164168185%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd168163168188%_))
                                  (let ((_%e168167168193%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd168163168188%_))))
                                    (let ((_%hd168166168196%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e168167168193%_)))
                                          (_%tl168165168198%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e168167168193%_))))
                                      ((lambda (_%L168201%_
                                                _%L168202%_
                                                _%L168203%_)
                                         (for-each
                                          (lambda (_%g168218168220%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-collect-object-refs
                                               _%g168218168220%_
                                               'receiver:
                                               _%L168203%_
                                               'methods:
                                               _%method-calls167182%_
                                               'slots:
                                               _%slot-refs167183%_)))
                                          _%L168201%_))
                                       _%tl168162168190%_
                                       _%tl168165168198%_
                                       _%hd168166168196%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g168154168172%_ _%g168155168175%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g168154168172%_ _%g168155168175%_)))))
                  (let ()
                    (declare (not safe))
                    (_%g168154168172%_ _%g168155168175%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_%g168153168223%_ _%L168129%_))
                                            (let* ((_%g168226168245%_
                                                    (lambda (_%g168227168242%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g168227168242%_))))
                                                   (_%g168225168364%_
                                                    (lambda (_%g168227168248%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%g168227168248%_))
                                                          (let ((_%e168231168250%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%g168227168248%_))))
                    (let ((_%hd168230168253%_
                           (let ()
                             (declare (not safe))
                             (##car _%e168231168250%_)))
                          (_%tl168229168255%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e168231168250%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl168229168255%_))
                          (let ((_g171183_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _%tl168229168255%_
                                    '0))))
                            (begin
                              (let ((_g171184_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g171183_)
                                           (##vector-length _g171183_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g171184_ 2)))
                                    (error "Context expects 2 values"
                                           _g171184_)))
                              (let ((_%target168232168258%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g171183_ 0)))
                                    (_%tl168234168260%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g171183_ 1))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl168234168260%_))
                                    (letrec ((_%loop168235168263%_
                                              (lambda (_%hd168233168266%_
                                                       _%clause168239168268%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd168233168266%_))
                                                    (let ((_%e168236168271%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd168233168266%_))))
                                                      (let ((_%lp-hd168237168274%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e168236168271%_)))
                    (_%lp-tl168238168276%_
                     (let () (declare (not safe)) (##cdr _%e168236168271%_))))
                (let ((__tmp171185
                       (cons _%lp-hd168237168274%_ _%clause168239168268%_)))
                  (declare (not safe))
                  (_%loop168235168263%_ _%lp-tl168238168276%_ __tmp171185))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%clause168240168279%_
                                                           (reverse _%clause168239168268%_)))
                                                      ((lambda (_%L168282%_)
                                                         (for-each
                                                          (lambda (_%clause168295%_)
                                                            (let* ((_%g168297168312%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g168298168309%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g168298168309%_))))
                           (_%g168296168354%_
                            (lambda (_%g168298168315%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g168298168315%_))
                                  (let ((_%e168304168317%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g168298168315%_))))
                                    (let ((_%hd168303168320%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e168304168317%_)))
                                          (_%tl168302168322%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e168304168317%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd168303168320%_))
                                          (let ((_%e168307168325%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%hd168303168320%_))))
                                            (let ((_%hd168306168328%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e168307168325%_)))
                                                  (_%tl168305168330%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e168307168325%_))))
                                              ((lambda (_%L168333%_
                                                        _%L168334%_
                                                        _%L168335%_)
                                                 (for-each
                                                  (lambda (_%g168349168351%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#apply-collect-object-refs
                                                       _%g168349168351%_
                                                       'receiver:
                                                       _%L168335%_
                                                       'methods:
                                                       _%method-calls167182%_
                                                       'slots:
                                                       _%slot-refs167183%_)))
                                                  _%L168333%_))
                                               _%tl168302168322%_
                                               _%tl168305168330%_
                                               _%hd168306168328%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g168297168312%_
                                             _%g168298168315%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g168297168312%_ _%g168298168315%_))))))
                      (declare (not safe))
                      (_%g168296168354%_ _%clause168295%_)))
                  (let ((__tmp171186
                         (lambda (_%g168356168359%_ _%g168357168361%_)
                           (cons _%g168356168359%_ _%g168357168361%_))))
                    (declare (not safe))
                    (__foldr1 __tmp171186 '() _%L168282%_))))
               _%clause168240168279%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (let ()
                                        (declare (not safe))
                                        (_%loop168235168263%_
                                         _%target168232168258%_
                                         '())))
                                    (let ()
                                      (declare (not safe))
                                      (_%g168226168245%_
                                       _%g168227168248%_))))))
                          (let ()
                            (declare (not safe))
                            (_%g168226168245%_ _%g168227168248%_)))))
                  (let ()
                    (declare (not safe))
                    (_%g168226168245%_ _%g168227168248%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_%g168225168364%_ _%L168128%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (_%no-specializer?167186%_))
                                                _%stx167090%_
                                                (let* ((_%specializer-id168373%_
                                                        (let* ((_%id168367%_
                                                                (let ((__tmp171187
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%L167163%_))))
                          (declare (not safe))
                          (make-symbol__1 __tmp171187 '"::specialize")))
                       (_%specializer-id168370%_
                        (let ((__tmp171188
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-source _%stx167090%_))))
                          (declare (not safe))
                          (gx#core-quote-syntax__1 _%id168367%_ __tmp171188))))
                  (let ()
                    (declare (not safe))
                    (gx#core-bind-runtime!__0 _%specializer-id168370%_))
                  _%specializer-id168370%_))
               (_%$klass168375%_
                (let ((__tmp171189
                       (let () (declare (not safe)) (##gensym '__klass))))
                  (declare (not safe))
                  (make-symbol__0 __tmp171189)))
               (_%$method-table168377%_
                (let ((__tmp171190
                       (let ()
                         (declare (not safe))
                         (##gensym '__method-table))))
                  (declare (not safe))
                  (make-symbol__0 __tmp171190)))
               (_%methods168379%_
                (let ()
                  (declare (not safe))
                  (hash-keys _%method-calls167182%_)))
               (_%$methods168383%_
                (map (lambda (_%id168381%_)
                       (let ((__tmp171191 (gensym _%id168381%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp171191)))
                     _%methods168379%_))
               (_%_168392%_
                (for-each
                 (lambda (_%g168384168387%_ _%g168385168389%_)
                   (let ()
                     (declare (not safe))
                     (hash-put!
                      _%method-calls167182%_
                      _%g168384168387%_
                      _%g168385168389%_)))
                 _%methods168379%_
                 _%$methods168383%_))
               (_%methods-bind168402%_
                (map (lambda (_%g168394168397%_ _%g168395168399%_)
                       (let ()
                         (declare (not safe))
                         (_%generate-method-bind167092%_
                          _%$klass168375%_
                          _%$method-table168377%_
                          _%g168394168397%_
                          _%g168395168399%_)))
                     _%methods168379%_
                     _%$methods168383%_))
               (_%slots168404%_
                (let () (declare (not safe)) (hash-keys _%slot-refs167183%_)))
               (_%$slots168408%_
                (map (lambda (_%id168406%_)
                       (let ((__tmp171192 (gensym _%id168406%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp171192)))
                     _%slots168404%_))
               (_%_168417%_
                (for-each
                 (lambda (_%g168409168412%_ _%g168410168414%_)
                   (let ()
                     (declare (not safe))
                     (hash-put!
                      _%slot-refs167183%_
                      _%g168409168412%_
                      _%g168410168414%_)))
                 _%slots168404%_
                 _%$slots168408%_))
               (_%slots-bind168426%_
                (map (lambda (_%g168418168421%_ _%g168419168423%_)
                       (let ()
                         (declare (not safe))
                         (_%generate-slot-bind167093%_
                          _%$klass168375%_
                          _%g168418168421%_
                          _%g168419168423%_)))
                     _%slots168404%_
                     _%$slots168408%_))
               (_%specializer-lambda-expr168512%_
                (let* ((_%g168428168446%_
                        (lambda (_%g168429168443%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g168429168443%_))))
                       (_%g168427168509%_
                        (lambda (_%g168429168449%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%g168429168449%_))
                              (let ((_%e168435168451%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g168429168449%_))))
                                (let ((_%hd168434168454%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e168435168451%_)))
                                      (_%tl168433168456%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e168435168451%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl168433168456%_))
                                      (let ((_%e168438168459%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl168433168456%_))))
                                        (let ((_%hd168437168462%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e168438168459%_)))
                                              (_%tl168436168464%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e168438168459%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd168437168462%_))
                                              (let ((_%e168441168467%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd168437168462%_))))
                                                (let ((_%hd168440168470%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e168441168467%_)))
                                                      (_%tl168439168472%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e168441168467%_))))
                                                  ((lambda (_%L168475%_
                                                            _%L168476%_
                                                            _%L168477%_)
                                                     (let* ((_%body168507%_
                                                             (map (lambda (_%g168502168504%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs
                               _%g168502168504%_
                               'receiver:
                               _%L168477%_
                               'klass:
                               _%$klass168375%_
                               'methods:
                               _%method-calls167182%_
                               'slots:
                               _%slot-refs167183%_)))
                          _%L168475%_))
                    (__tmp171193
                     (cons '%#lambda
                           (cons (cons _%L168477%_ _%L168476%_)
                                 _%body168507%_))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp171193 _%L168129%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%tl168436168464%_
                                                   _%tl168439168472%_
                                                   _%hd168440168470%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g168428168446%_
                                                 _%g168429168449%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g168428168446%_
                                         _%g168429168449%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g168428168446%_ _%g168429168449%_))))))
                  (declare (not safe))
                  (_%g168427168509%_ _%L168129%_)))
               (_%specializer-case-lambda-expr168669%_
                (let* ((_%g168514168533%_
                        (lambda (_%g168515168530%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g168515168530%_))))
                       (_%g168513168666%_
                        (lambda (_%g168515168536%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%g168515168536%_))
                              (let ((_%e168519168538%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g168515168536%_))))
                                (let ((_%hd168518168541%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e168519168538%_)))
                                      (_%tl168517168543%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e168519168538%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl168517168543%_))
                                      (let ((_g171194_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl168517168543%_
                                                '0))))
                                        (begin
                                          (let ((_g171195_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g171194_)
                                                       (##vector-length
                                                        _g171194_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g171195_ 2)))
                                                (error "Context expects 2 values"
                                                       _g171195_)))
                                          (let ((_%target168520168546%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g171194_ 0)))
                                                (_%tl168522168548%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g171194_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl168522168548%_))
                                                (letrec ((_%loop168523168551%_
                                                          (lambda (_%hd168521168554%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause168527168556%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd168521168554%_))
                        (let ((_%e168524168559%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd168521168554%_))))
                          (let ((_%lp-hd168525168562%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e168524168559%_)))
                                (_%lp-tl168526168564%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e168524168559%_))))
                            (let ((__tmp171196
                                   (cons _%lp-hd168525168562%_
                                         _%clause168527168556%_)))
                              (declare (not safe))
                              (_%loop168523168551%_
                               _%lp-tl168526168564%_
                               __tmp171196))))
                        (let ((_%clause168528168567%_
                               (reverse _%clause168527168556%_)))
                          ((lambda (_%L168570%_)
                             (let* ((_%clauses168664%_
                                     (map (lambda (_%clause168584%_)
                                            (let* ((_%__stx170077170078%_
                                                    _%clause168584%_)
                                                   (_%g168587168602%_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%__stx170077170078%_)))))
                                              (let ((_%__kont170079170080%_
                                                     (lambda (_%L168630%_
                                                              _%L168631%_
                                                              _%L168632%_)
                                                       (let ((_%body168652%_
                                                              (map (lambda (_%g168647168649%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#apply-subst-object-refs
                                _%g168647168649%_
                                'receiver:
                                _%L168632%_
                                'klass:
                                _%$klass168375%_
                                'methods:
                                _%method-calls167182%_
                                'slots:
                                _%slot-refs167183%_)))
                           _%L168630%_)))
                 (cons (cons _%L168632%_ _%L168631%_) _%body168652%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont170081170082%_
                                                     (lambda ()
                                                       _%clause168584%_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%__stx170077170078%_))
                                                    (let ((_%e168594168614%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%__stx170077170078%_))))
                                                      (let ((_%tl168592168619%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e168594168614%_)))
                    (_%hd168593168617%_
                     (let () (declare (not safe)) (##car _%e168594168614%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd168593168617%_))
                    (let ((_%e168597168622%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd168593168617%_))))
                      (let ((_%tl168595168627%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e168597168622%_)))
                            (_%hd168596168625%_
                             (let ()
                               (declare (not safe))
                               (##car _%e168597168622%_))))
                        (_%__kont170079170080%_
                         _%tl168592168619%_
                         _%tl168595168627%_
                         _%hd168596168625%_)))
                    (_%__kont170081170082%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont170081170082%_)))))
                                          (let ((__tmp171197
                                                 (lambda (_%g168656168659%_
                                                          _%g168657168661%_)
                                                   (cons _%g168656168659%_
                                                         _%g168657168661%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp171197
                                             '()
                                             _%L168570%_))))
                                    (__tmp171198
                                     (cons '%#case-lambda _%clauses168664%_)))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp171198
                                _%L168128%_)))
                           _%clause168528168567%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%loop168523168551%_
                                                     _%target168520168546%_
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g168514168533%_
                                                   _%g168515168536%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g168514168533%_
                                         _%g168515168536%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g168514168533%_ _%g168515168536%_))))))
                  (declare (not safe))
                  (_%g168513168666%_ _%L168128%_)))
               (_%specializer-impl168671%_
                (let ((__tmp171199
                       (cons '%#let-values
                             (cons (cons (cons (cons _%L168130%_ '())
                                               (cons _%specializer-lambda-expr168512%_
                                                     '()))
                                         '())
                                   (cons _%specializer-case-lambda-expr168669%_
                                         '())))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp171199 _%stx167090%_)))
               (_%specializer-impl168673%_
                (let ()
                  (declare (not safe))
                  (_%generate-specializer-impl167094%_
                   _%$klass168375%_
                   _%$method-table168377%_
                   _%methods-bind168402%_
                   _%slots-bind168426%_
                   _%specializer-impl168671%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((__tmp171201
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%L167163%_)))
                                                        (__tmp171200
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%specializer-id168373%_))))
                                                    (declare (not safe))
                                                    (gxc#verbose
                                                     '"generate method specializer "
                                                     __tmp171201
                                                     '" => "
                                                     __tmp171200))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%generate-specializer-def167095%_
                                                     _%L167163%_
                                                     _%specializer-id168373%_
                                                     _%specializer-impl168673%_)))))
                                          _%hd168061168123%_
                                          _%hd168058168115%_
                                          _%hd168055168107%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g168037168067%_
                                            _%g168038168070%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g168037168067%_ _%g168038168070%_)))
                             (let ()
                               (declare (not safe))
                               (_%g168037168067%_ _%g168038168070%_)))
                         (let ()
                           (declare (not safe))
                           (_%g168037168067%_ _%g168038168070%_)))))
                 (let ()
                   (declare (not safe))
                   (_%g168037168067%_ _%g168038168070%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g168037168067%_
                                                        _%g168038168070%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g168037168067%_
                                                _%g168038168070%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g168037168067%_
                                        _%g168038168070%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g168037168067%_ _%g168038168070%_)))))
                     (let ()
                       (declare (not safe))
                       (_%g168037168067%_ _%g168038168070%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g168037168067%_
                                                        _%g168038168070%_))))))
                                         (declare (not safe))
                                         (_%g168036168676%_ _%L167162%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _%L167162%_))
                                         (let ()
                                           (let* ((_%g168680168733%_
                                                   (lambda (_%g168681168730%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g168681168730%_))))
                                                  (_%g168679169876%_
                                                   (lambda (_%g168681168736%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%g168681168736%_))
                                                         (let ((_%e168689168738%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%g168681168736%_))))
                   (let ((_%hd168688168741%_
                          (let ()
                            (declare (not safe))
                            (##car _%e168689168738%_)))
                         (_%tl168687168743%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e168689168738%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd168688168741%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-eq? '%#let-values _%hd168688168741%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl168687168743%_))
                                 (let ((_%e168692168746%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%tl168687168743%_))))
                                   (let ((_%hd168691168749%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e168692168746%_)))
                                         (_%tl168690168751%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e168692168746%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd168691168749%_))
                                         (let ((_%e168695168754%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd168691168749%_))))
                                           (let ((_%hd168694168757%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e168695168754%_)))
                                                 (_%tl168693168759%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e168695168754%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd168694168757%_))
                                                 (let ((_%e168698168762%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd168694168757%_))))
                                                   (let ((_%hd168697168765%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e168698168762%_)))
                                                         (_%tl168696168767%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e168698168762%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd168697168765%_))
                                                         (let ((_%e168701168770%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%hd168697168765%_))))
                   (let ((_%hd168700168773%_
                          (let ()
                            (declare (not safe))
                            (##car _%e168701168770%_)))
                         (_%tl168699168775%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e168701168770%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl168699168775%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl168696168767%_))
                             (let ((_%e168704168778%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl168696168767%_))))
                               (let ((_%hd168703168781%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e168704168778%_)))
                                     (_%tl168702168783%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e168704168778%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd168703168781%_))
                                     (let ((_%e168707168786%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd168703168781%_))))
                                       (let ((_%hd168706168789%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e168707168786%_)))
                                             (_%tl168705168791%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e168707168786%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%hd168706168789%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#let-values
                                                    _%hd168706168789%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl168705168791%_))
                                                     (let ((_%e168710168794%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl168705168791%_))))
                                                       (let ((_%hd168709168797%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e168710168794%_)))
                     (_%tl168708168799%_
                      (let () (declare (not safe)) (##cdr _%e168710168794%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%hd168709168797%_))
                     (let ((_%e168713168802%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%hd168709168797%_))))
                       (let ((_%hd168712168805%_
                              (let ()
                                (declare (not safe))
                                (##car _%e168713168802%_)))
                             (_%tl168711168807%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e168713168802%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd168712168805%_))
                             (let ((_%e168716168810%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%hd168712168805%_))))
                               (let ((_%hd168715168813%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e168716168810%_)))
                                     (_%tl168714168815%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e168716168810%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd168715168813%_))
                                     (let ((_%e168719168818%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd168715168813%_))))
                                       (let ((_%hd168718168821%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e168719168818%_)))
                                             (_%tl168717168823%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e168719168818%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null?
                                                _%tl168717168823%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl168714168815%_))
                                                 (let ((_%e168722168826%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl168714168815%_))))
                                                   (let ((_%hd168721168829%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e168722168826%_)))
                                                         (_%tl168720168831%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e168722168826%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl168720168831%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl168711168807%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl168708168799%_))
                         (let ((_%e168725168834%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl168708168799%_))))
                           (let ((_%hd168724168837%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e168725168834%_)))
                                 (_%tl168723168839%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e168725168834%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl168723168839%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl168702168783%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl168693168759%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl168690168751%_))
                                             (let ((_%e168728168842%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl168690168751%_))))
                                               (let ((_%hd168727168845%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e168728168842%_)))
                                                     (_%tl168726168847%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e168728168842%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl168726168847%_))
                                                     ((lambda (_%L168850%_
                                                               _%L168851%_
                                                               _%L168852%_
                                                               _%L168853%_
                                                               _%L168854%_)
                                                        (let* ((_%g168894168956%_
                                                                (lambda (_%g168895168953%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g168895168953%_))))
                       (_%g168893169873%_
                        (lambda (_%g168895168959%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%g168895168959%_))
                              (let ((_%e168903168961%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g168895168959%_))))
                                (let ((_%hd168902168964%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e168903168961%_)))
                                      (_%tl168901168966%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e168903168961%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd168902168964%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#lambda
                                             _%hd168902168964%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl168901168966%_))
                                              (let ((_%e168906168969%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl168901168966%_))))
                                                (let ((_%hd168905168972%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e168906168969%_)))
                                                      (_%tl168904168974%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e168906168969%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl168904168974%_))
                                                      (let ((_%e168909168977%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl168904168974%_))))
                (let ((_%hd168908168980%_
                       (let () (declare (not safe)) (##car _%e168909168977%_)))
                      (_%tl168907168982%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e168909168977%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd168908168980%_))
                      (let ((_%e168912168985%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd168908168980%_))))
                        (let ((_%hd168911168988%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e168912168985%_)))
                              (_%tl168910168990%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e168912168985%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd168911168988%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#call _%hd168911168988%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl168910168990%_))
                                      (let ((_%e168915168993%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl168910168990%_))))
                                        (let ((_%hd168914168996%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e168915168993%_)))
                                              (_%tl168913168998%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e168915168993%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd168914168996%_))
                                              (let ((_%e168918169001%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd168914168996%_))))
                                                (let ((_%hd168917169004%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e168918169001%_)))
                                                      (_%tl168916169006%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e168918169001%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd168917169004%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd168917169004%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl168916169006%_))
                      (let ((_%e168921169009%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl168916169006%_))))
                        (let ((_%hd168920169012%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e168921169009%_)))
                              (_%tl168919169014%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e168921169009%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl168919169014%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl168913168998%_))
                                  (let ((_%e168924169017%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl168913168998%_))))
                                    (let ((_%hd168923169020%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e168924169017%_)))
                                          (_%tl168922169022%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e168924169017%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd168923169020%_))
                                          (let ((_%e168927169025%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%hd168923169020%_))))
                                            (let ((_%hd168926169028%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e168927169025%_)))
                                                  (_%tl168925169030%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e168927169025%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd168926169028%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#ref
                                                         _%hd168926169028%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl168925169030%_))
                                                          (let ((_%e168930169033%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl168925169030%_))))
                    (let ((_%hd168929169036%_
                           (let ()
                             (declare (not safe))
                             (##car _%e168930169033%_)))
                          (_%tl168928169038%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e168930169033%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl168928169038%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl168922169022%_))
                              (let ((_%e168933169041%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl168922169022%_))))
                                (let ((_%hd168932169044%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e168933169041%_)))
                                      (_%tl168931169046%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e168933169041%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd168932169044%_))
                                      (let ((_%e168936169049%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd168932169044%_))))
                                        (let ((_%hd168935169052%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e168936169049%_)))
                                              (_%tl168934169054%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e168936169049%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _%hd168935169052%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#ref
                                                     _%hd168935169052%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl168934169054%_))
                                                      (let ((_%e168939169057%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl168934169054%_))))
                (let ((_%hd168938169060%_
                       (let () (declare (not safe)) (##car _%e168939169057%_)))
                      (_%tl168937169062%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e168939169057%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl168937169062%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl168931169046%_))
                          (if (let ((__tmp171202
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-length _%tl168931169046%_))))
                                (declare (not safe))
                                (##fx>= __tmp171202 '1))
                              (let ((_g171203_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl168931169046%_
                                        '1))))
                                (begin
                                  (let ((_g171204_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g171203_)
                                               (##vector-length _g171203_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g171204_ 2)))
                                        (error "Context expects 2 values"
                                               _g171204_)))
                                  (let ((_%target168940169065%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g171203_ 0)))
                                        (_%tl168942169067%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g171203_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl168942169067%_))
                                        (let ((_%e168951169070%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl168942169067%_))))
                                          (let ((_%hd168950169073%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e168951169070%_)))
                                                (_%tl168949169075%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e168951169070%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl168949169075%_))
                                                (letrec ((_%loop168943169078%_
                                                          (lambda (_%hd168941169081%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%kw-ref168947169083%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd168941169081%_))
                        (let ((_%e168944169086%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd168941169081%_))))
                          (let ((_%lp-hd168945169089%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e168944169086%_)))
                                (_%lp-tl168946169091%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e168944169086%_))))
                            (let ((__tmp171205
                                   (cons _%lp-hd168945169089%_
                                         _%kw-ref168947169083%_)))
                              (declare (not safe))
                              (_%loop168943169078%_
                               _%lp-tl168946169091%_
                               __tmp171205))))
                        (let ((_%kw-ref168948169094%_
                               (reverse _%kw-ref168947169083%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl168907168982%_))
                              ((lambda (_%L169097%_
                                        _%L169098%_
                                        _%L169099%_
                                        _%L169100%_
                                        _%L169101%_)
                                 (let* ((_%kw-count169152%_
                                         (length (let ((__tmp171206
                                                        (lambda (_%g169144169147%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g169145169149%_)
                  (cons _%g169144169147%_ _%g169145169149%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp171206
                                                    '()
                                                    _%L169098%_))))
                                        (_%self-index169154%_
                                         (let ()
                                           (declare (not safe))
                                           (##fx+ _%kw-count169152%_ '1))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gxc#lambda-expr? _%L168852%_))
                                       (let ()
                                         (let* ((_%g169158169172%_
                                                 (lambda (_%g169159169169%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g169159169169%_))))
                                                (_%g169157169289%_
                                                 (lambda (_%g169159169175%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g169159169175%_))
                                                       (let ((_%e169164169177%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g169159169175%_))))
                 (let ((_%hd169163169180%_
                        (let ()
                          (declare (not safe))
                          (##car _%e169164169177%_)))
                       (_%tl169162169182%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e169164169177%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl169162169182%_))
                       (let ((_%e169167169185%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl169162169182%_))))
                         (let ((_%hd169166169188%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e169167169185%_)))
                               (_%tl169165169190%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e169167169185%_))))
                           ((lambda (_%L169193%_ _%L169194%_)
                              (let ((_%self169211%_
                                     (list-ref
                                      _%L169194%_
                                      _%self-index169154%_)))
                                (for-each
                                 (lambda (_%g169212169214%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#apply-collect-object-refs
                                      _%g169212169214%_
                                      'receiver:
                                      _%self169211%_
                                      'methods:
                                      _%method-calls167182%_
                                      'slots:
                                      _%slot-refs167183%_)))
                                 _%L169193%_)
                                (if (let ()
                                      (declare (not safe))
                                      (_%no-specializer?167186%_))
                                    _%stx167090%_
                                    (let* ((_%specializer-id169223%_
                                            (let* ((_%id169217%_
                                                    (let ((__tmp171207
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L167163%_))))
                                                      (declare (not safe))
                                                      (make-symbol__1
                                                       __tmp171207
                                                       '"::specialize")))
                                                   (_%specializer-id169220%_
                                                    (let ((__tmp171208
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-source
                                                              _%stx167090%_))))
                                                      (declare (not safe))
                                                      (gx#core-quote-syntax__1
                                                       _%id169217%_
                                                       __tmp171208))))
                                              (let ()
                                                (declare (not safe))
                                                (gx#core-bind-runtime!__0
                                                 _%specializer-id169220%_))
                                              _%specializer-id169220%_))
                                           (_%$klass169225%_
                                            (let ((__tmp171209
                                                   (let ()
                                                     (declare (not safe))
                                                     (##gensym '__klass))))
                                              (declare (not safe))
                                              (make-symbol__0 __tmp171209)))
                                           (_%$method-table169227%_
                                            (let ((__tmp171210
                                                   (let ()
                                                     (declare (not safe))
                                                     (##gensym
                                                      '__method-table))))
                                              (declare (not safe))
                                              (make-symbol__0 __tmp171210)))
                                           (_%methods169229%_
                                            (let ()
                                              (declare (not safe))
                                              (hash-keys
                                               _%method-calls167182%_)))
                                           (_%$methods169233%_
                                            (map (lambda (_%id169231%_)
                                                   (let ((__tmp171211
                                                          (gensym _%id169231%_)))
                                                     (declare (not safe))
                                                     (make-symbol__1
                                                      '"__"
                                                      __tmp171211)))
                                                 _%methods169229%_))
                                           (_%_169242%_
                                            (for-each
                                             (lambda (_%g169234169237%_
                                                      _%g169235169239%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (hash-put!
                                                  _%method-calls167182%_
                                                  _%g169234169237%_
                                                  _%g169235169239%_)))
                                             _%methods169229%_
                                             _%$methods169233%_))
                                           (_%methods-bind169252%_
                                            (map (lambda (_%g169244169247%_
                                                          _%g169245169249%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%generate-method-bind167092%_
                                                      _%$klass169225%_
                                                      _%$method-table169227%_
                                                      _%g169244169247%_
                                                      _%g169245169249%_)))
                                                 _%methods169229%_
                                                 _%$methods169233%_))
                                           (_%slots169254%_
                                            (let ()
                                              (declare (not safe))
                                              (hash-keys _%slot-refs167183%_)))
                                           (_%$slots169258%_
                                            (map (lambda (_%id169256%_)
                                                   (let ((__tmp171212
                                                          (gensym _%id169256%_)))
                                                     (declare (not safe))
                                                     (make-symbol__1
                                                      '"__"
                                                      __tmp171212)))
                                                 _%slots169254%_))
                                           (_%_169267%_
                                            (for-each
                                             (lambda (_%g169259169262%_
                                                      _%g169260169264%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (hash-put!
                                                  _%slot-refs167183%_
                                                  _%g169259169262%_
                                                  _%g169260169264%_)))
                                             _%slots169254%_
                                             _%$slots169258%_))
                                           (_%slots-bind169276%_
                                            (map (lambda (_%g169268169271%_
                                                          _%g169269169273%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%generate-slot-bind167093%_
                                                      _%$klass169225%_
                                                      _%g169268169271%_
                                                      _%g169269169273%_)))
                                                 _%slots169254%_
                                                 _%$slots169258%_))
                                           (_%specializer-impl169284%_
                                            (let* ((_%specializer-body169282%_
                                                    (map (lambda (_%g169277169279%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#apply-subst-object-refs
                                                              _%g169277169279%_
                                                              'receiver:
                                                              _%self169211%_
                                                              'klass:
                                                              _%$klass169225%_
                                                              'methods:
                                                              _%method-calls167182%_
                                                              'slots:
                                                              _%slot-refs167183%_)))
                                                         _%L169193%_))
                                                   (__tmp171213
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%L168854%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons (cons '%#let-values
                                                (cons (cons (cons (cons _%L168853%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ((__tmp171214
                                       (cons '%#lambda
                                             (cons _%L169194%_
                                                   _%specializer-body169282%_))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp171214
                                   _%L168852%_))
                                '()))
                    '())
              (cons _%L168851%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))
                              '())
                        (cons _%L168850%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp171213
                                               _%stx167090%_)))
                                           (_%specializer-impl169286%_
                                            (let ()
                                              (declare (not safe))
                                              (_%generate-specializer-impl167094%_
                                               _%$klass169225%_
                                               _%$method-table169227%_
                                               _%methods-bind169252%_
                                               _%slots-bind169276%_
                                               _%specializer-impl169284%_))))
                                      (let ((__tmp171216
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%L167163%_)))
                                            (__tmp171215
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%specializer-id169223%_))))
                                        (declare (not safe))
                                        (gxc#verbose
                                         '"generate method specializer "
                                         __tmp171216
                                         '" => "
                                         __tmp171215))
                                      (let ()
                                        (declare (not safe))
                                        (_%generate-specializer-def167095%_
                                         _%L167163%_
                                         _%specializer-id169223%_
                                         _%specializer-impl169286%_))))))
                            _%tl169165169190%_
                            _%hd169166169188%_)))
                       (let ()
                         (declare (not safe))
                         (_%g169158169172%_ _%g169159169175%_)))))
               (let ()
                 (declare (not safe))
                 (_%g169158169172%_ _%g169159169175%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_%g169157169289%_ _%L168852%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gxc#opt-lambda-expr?
                                              _%L168852%_))
                                           (let ()
                                             (let* ((_%g169293169323%_
                                                     (lambda (_%g169294169320%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g169294169320%_))))
                                                    (_%g169292169869%_
                                                     (lambda (_%g169294169326%_)
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%g169294169326%_))
                                                           (let ((_%e169300169328%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g169294169326%_))))
                     (let ((_%hd169299169331%_
                            (let ()
                              (declare (not safe))
                              (##car _%e169300169328%_)))
                           (_%tl169298169333%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e169300169328%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl169298169333%_))
                           (let ((_%e169303169336%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl169298169333%_))))
                             (let ((_%hd169302169339%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e169303169336%_)))
                                   (_%tl169301169341%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e169303169336%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd169302169339%_))
                                   (let ((_%e169306169344%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd169302169339%_))))
                                     (let ((_%hd169305169347%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e169306169344%_)))
                                           (_%tl169304169349%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e169306169344%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd169305169347%_))
                                           (let ((_%e169309169352%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd169305169347%_))))
                                             (let ((_%hd169308169355%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e169309169352%_)))
                                                   (_%tl169307169357%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e169309169352%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd169308169355%_))
                                                   (let ((_%e169312169360%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd169308169355%_))))
                                                     (let ((_%hd169311169363%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e169312169360%_)))
                                                           (_%tl169310169365%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e169312169360%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl169310169365%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl169307169357%_))
                       (let ((_%e169315169368%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl169307169357%_))))
                         (let ((_%hd169314169371%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e169315169368%_)))
                               (_%tl169313169373%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e169315169368%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl169313169373%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl169304169349%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%tl169301169341%_))
                                       (let ((_%e169318169376%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%tl169301169341%_))))
                                         (let ((_%hd169317169379%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e169318169376%_)))
                                               (_%tl169316169381%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e169318169376%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl169316169381%_))
                                               ((lambda (_%L169384%_
                                                         _%L169385%_
                                                         _%L169386%_)
                                                  (let* ((_%g169410169424%_
                                                          (lambda (_%g169411169421%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g169411169421%_))))
                                                         (_%g169409169465%_
                                                          (lambda (_%g169411169427%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%g169411169427%_))
                        (let ((_%e169416169429%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g169411169427%_))))
                          (let ((_%hd169415169432%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e169416169429%_)))
                                (_%tl169414169434%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e169416169429%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl169414169434%_))
                                (let ((_%e169419169437%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl169414169434%_))))
                                  (let ((_%hd169418169440%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e169419169437%_)))
                                        (_%tl169417169442%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e169419169437%_))))
                                    ((lambda (_%L169445%_ _%L169446%_)
                                       (let ((_%self169459%_
                                              (list-ref
                                               _%L169446%_
                                               _%self-index169154%_)))
                                         (for-each
                                          (lambda (_%g169460169462%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-collect-object-refs
                                               _%g169460169462%_
                                               'receiver:
                                               _%self169459%_
                                               'methods:
                                               _%method-calls167182%_
                                               'slots:
                                               _%slot-refs167183%_)))
                                          _%L169445%_)))
                                     _%tl169417169442%_
                                     _%hd169418169440%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g169410169424%_ _%g169411169427%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g169410169424%_ _%g169411169427%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_%g169409169465%_
                                                     _%L169385%_))
                                                  (let* ((_%g169468169487%_
                                                          (lambda (_%g169469169484%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g169469169484%_))))
                                                         (_%g169467169592%_
                                                          (lambda (_%g169469169490%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%g169469169490%_))
                        (let ((_%e169473169492%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g169469169490%_))))
                          (let ((_%hd169472169495%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e169473169492%_)))
                                (_%tl169471169497%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e169473169492%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl169471169497%_))
                                (let ((_g171217_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl169471169497%_
                                          '0))))
                                  (begin
                                    (let ((_g171218_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g171217_)
                                                 (##vector-length _g171217_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g171218_ 2)))
                                          (error "Context expects 2 values"
                                                 _g171218_)))
                                    (let ((_%target169474169500%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g171217_ 0)))
                                          (_%tl169476169502%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g171217_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl169476169502%_))
                                          (letrec ((_%loop169477169505%_
                                                    (lambda (_%hd169475169508%_
                                                             _%clause169481169510%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd169475169508%_))
                                                          (let ((_%e169478169513%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd169475169508%_))))
                    (let ((_%lp-hd169479169516%_
                           (let ()
                             (declare (not safe))
                             (##car _%e169478169513%_)))
                          (_%lp-tl169480169518%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e169478169513%_))))
                      (let ((__tmp171219
                             (cons _%lp-hd169479169516%_
                                   _%clause169481169510%_)))
                        (declare (not safe))
                        (_%loop169477169505%_
                         _%lp-tl169480169518%_
                         __tmp171219))))
                  (let ((_%clause169482169521%_
                         (reverse _%clause169481169510%_)))
                    ((lambda (_%L169524%_)
                       (for-each
                        (lambda (_%clause169537%_)
                          (let* ((_%g169539169550%_
                                  (lambda (_%g169540169547%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g169540169547%_))))
                                 (_%g169538169582%_
                                  (lambda (_%g169540169553%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%g169540169553%_))
                                        (let ((_%e169545169555%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%g169540169553%_))))
                                          (let ((_%hd169544169558%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e169545169555%_)))
                                                (_%tl169543169560%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e169545169555%_))))
                                            ((lambda (_%L169563%_ _%L169564%_)
                                               (let ((_%self169576%_
                                                      (list-ref
                                                       _%L169564%_
                                                       _%self-index169154%_)))
                                                 (for-each
                                                  (lambda (_%g169577169579%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#apply-collect-object-refs
                                                       _%g169577169579%_
                                                       'receiver:
                                                       _%self169576%_
                                                       'methods:
                                                       _%method-calls167182%_
                                                       'slots:
                                                       _%slot-refs167183%_)))
                                                  _%L169563%_)))
                                             _%tl169543169560%_
                                             _%hd169544169558%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g169539169550%_
                                           _%g169540169553%_))))))
                            (declare (not safe))
                            (_%g169538169582%_ _%clause169537%_)))
                        (let ((__tmp171220
                               (lambda (_%g169584169587%_ _%g169585169589%_)
                                 (cons _%g169584169587%_ _%g169585169589%_))))
                          (declare (not safe))
                          (__foldr1 __tmp171220 '() _%L169524%_))))
                     _%clause169482169521%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%loop169477169505%_
                                               _%target169474169500%_
                                               '())))
                                          (let ()
                                            (declare (not safe))
                                            (_%g169468169487%_
                                             _%g169469169490%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g169468169487%_ _%g169469169490%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g169468169487%_ _%g169469169490%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_%g169467169592%_
                                                     _%L169384%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (_%no-specializer?167186%_))
                                                      _%stx167090%_
                                                      (let* ((_%specializer-id169601%_
                                                              (let* ((_%id169595%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp171221
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L167163%_))))
                                (declare (not safe))
                                (make-symbol__1 __tmp171221 '"::specialize")))
                             (_%specializer-id169598%_
                              (let ((__tmp171222
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _%stx167090%_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _%id169595%_
                                 __tmp171222))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0 _%specializer-id169598%_))
                        _%specializer-id169598%_))
                     (_%$klass169603%_
                      (let ((__tmp171223
                             (let ()
                               (declare (not safe))
                               (##gensym '__klass))))
                        (declare (not safe))
                        (make-symbol__0 __tmp171223)))
                     (_%$method-table169605%_
                      (let ((__tmp171224
                             (let ()
                               (declare (not safe))
                               (##gensym '__method-table))))
                        (declare (not safe))
                        (make-symbol__0 __tmp171224)))
                     (_%methods169607%_
                      (let ()
                        (declare (not safe))
                        (hash-keys _%method-calls167182%_)))
                     (_%$methods169611%_
                      (map (lambda (_%id169609%_)
                             (let ((__tmp171225 (gensym _%id169609%_)))
                               (declare (not safe))
                               (make-symbol__1 '"__" __tmp171225)))
                           _%methods169607%_))
                     (_%_169620%_
                      (for-each
                       (lambda (_%g169612169615%_ _%g169613169617%_)
                         (let ()
                           (declare (not safe))
                           (hash-put!
                            _%method-calls167182%_
                            _%g169612169615%_
                            _%g169613169617%_)))
                       _%methods169607%_
                       _%$methods169611%_))
                     (_%methods-bind169630%_
                      (map (lambda (_%g169622169625%_ _%g169623169627%_)
                             (let ()
                               (declare (not safe))
                               (_%generate-method-bind167092%_
                                _%$klass169603%_
                                _%$method-table169605%_
                                _%g169622169625%_
                                _%g169623169627%_)))
                           _%methods169607%_
                           _%$methods169611%_))
                     (_%slots169632%_
                      (let ()
                        (declare (not safe))
                        (hash-keys _%slot-refs167183%_)))
                     (_%$slots169636%_
                      (map (lambda (_%id169634%_)
                             (let ((__tmp171226 (gensym _%id169634%_)))
                               (declare (not safe))
                               (make-symbol__1 '"__" __tmp171226)))
                           _%slots169632%_))
                     (_%_169645%_
                      (for-each
                       (lambda (_%g169637169640%_ _%g169638169642%_)
                         (let ()
                           (declare (not safe))
                           (hash-put!
                            _%slot-refs167183%_
                            _%g169637169640%_
                            _%g169638169642%_)))
                       _%slots169632%_
                       _%$slots169636%_))
                     (_%slots-bind169654%_
                      (map (lambda (_%g169646169649%_ _%g169647169651%_)
                             (let ()
                               (declare (not safe))
                               (_%generate-slot-bind167093%_
                                _%$klass169603%_
                                _%g169646169649%_
                                _%g169647169651%_)))
                           _%slots169632%_
                           _%$slots169636%_))
                     (_%specializer-lambda-expr169727%_
                      (let* ((_%g169656169670%_
                              (lambda (_%g169657169667%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g169657169667%_))))
                             (_%g169655169724%_
                              (lambda (_%g169657169673%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g169657169673%_))
                                    (let ((_%e169662169675%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g169657169673%_))))
                                      (let ((_%hd169661169678%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e169662169675%_)))
                                            (_%tl169660169680%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e169662169675%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl169660169680%_))
                                            (let ((_%e169665169683%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl169660169680%_))))
                                              (let ((_%hd169664169686%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e169665169683%_)))
                                                    (_%tl169663169688%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e169665169683%_))))
                                                ((lambda (_%L169691%_
                                                          _%L169692%_)
                                                   (let* ((_%self169715%_
                                                           (list-ref
                                                            _%L169692%_
                                                            _%self-index169154%_))
                                                          (_%body169721%_
                                                           (map (lambda (_%g169716169718%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#apply-subst-object-refs
                             _%g169716169718%_
                             'receiver:
                             _%self169715%_
                             'klass:
                             _%$klass169603%_
                             'methods:
                             _%method-calls167182%_
                             'slots:
                             _%slot-refs167183%_)))
                        _%L169691%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp171227
                                                            (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%L169692%_ _%body169721%_))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp171227 _%L169385%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%tl169663169688%_
                                                 _%hd169664169686%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g169656169670%_
                                               _%g169657169673%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g169656169670%_
                                       _%g169657169673%_))))))
                        (declare (not safe))
                        (_%g169655169724%_ _%L169385%_)))
                     (_%specializer-case-lambda-expr169862%_
                      (let* ((_%g169729169748%_
                              (lambda (_%g169730169745%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g169730169745%_))))
                             (_%g169728169859%_
                              (lambda (_%g169730169751%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g169730169751%_))
                                    (let ((_%e169734169753%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g169730169751%_))))
                                      (let ((_%hd169733169756%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e169734169753%_)))
                                            (_%tl169732169758%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e169734169753%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _%tl169732169758%_))
                                            (let ((_g171228_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _%tl169732169758%_
                                                      '0))))
                                              (begin
                                                (let ((_g171229_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g171228_)
                                                             (##vector-length
                                                              _g171228_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g171229_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g171229_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target169735169761%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g171228_
                                                          0)))
                                                      (_%tl169737169763%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g171228_
                                                          1))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl169737169763%_))
                                                      (letrec ((_%loop169738169766%_
                                                                (lambda (_%hd169736169769%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%clause169742169771%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd169736169769%_))
                              (let ((_%e169739169774%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd169736169769%_))))
                                (let ((_%lp-hd169740169777%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e169739169774%_)))
                                      (_%lp-tl169741169779%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e169739169774%_))))
                                  (let ((__tmp171230
                                         (cons _%lp-hd169740169777%_
                                               _%clause169742169771%_)))
                                    (declare (not safe))
                                    (_%loop169738169766%_
                                     _%lp-tl169741169779%_
                                     __tmp171230))))
                              (let ((_%clause169743169782%_
                                     (reverse _%clause169742169771%_)))
                                ((lambda (_%L169785%_)
                                   (let* ((_%clauses169857%_
                                           (map (lambda (_%clause169799%_)
                                                  (let* ((_%g169801169812%_
                                                          (lambda (_%g169802169809%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g169802169809%_))))
                                                         (_%g169800169847%_
                                                          (lambda (_%g169802169815%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%g169802169815%_))
                        (let ((_%e169807169817%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g169802169815%_))))
                          (let ((_%hd169806169820%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e169807169817%_)))
                                (_%tl169805169822%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e169807169817%_))))
                            ((lambda (_%L169825%_ _%L169826%_)
                               (let* ((_%self169838%_
                                       (list-ref
                                        _%L169826%_
                                        _%self-index169154%_))
                                      (_%body169844%_
                                       (map (lambda (_%g169839169841%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#apply-subst-object-refs
                                                 _%g169839169841%_
                                                 'receiver:
                                                 _%self169838%_
                                                 'klass:
                                                 _%$klass169603%_
                                                 'methods:
                                                 _%method-calls167182%_
                                                 'slots:
                                                 _%slot-refs167183%_)))
                                            _%L169825%_)))
                                 (cons _%L169826%_ _%body169844%_)))
                             _%tl169805169822%_
                             _%hd169806169820%_)))
                        (let ()
                          (declare (not safe))
                          (_%g169801169812%_ _%g169802169815%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_%g169800169847%_
                                                     _%clause169799%_)))
                                                (let ((__tmp171231
                                                       (lambda (_%g169849169852%_
                                                                _%g169850169854%_)
                                                         (cons _%g169849169852%_
                                                               _%g169850169854%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp171231
                                                   '()
                                                   _%L169785%_))))
                                          (__tmp171232
                                           (cons '%#case-lambda
                                                 _%clauses169857%_)))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp171232
                                      _%L169384%_)))
                                 _%clause169743169782%_))))))
                (let ()
                  (declare (not safe))
                  (_%loop169738169766%_ _%target169735169761%_ '())))
              (let ()
                (declare (not safe))
                (_%g169729169748%_ _%g169730169751%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%g169729169748%_
                                               _%g169730169751%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g169729169748%_
                                       _%g169730169751%_))))))
                        (declare (not safe))
                        (_%g169728169859%_ _%L169384%_)))
                     (_%specializer-impl169864%_
                      (let ((__tmp171233
                             (cons '%#let-values
                                   (cons (cons (cons (cons _%L168854%_ '())
                                                     (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (cons (cons _%L168853%_ '())
                                           (cons (let ((__tmp171234
                                                        (cons '%#let-values
                                                              (cons (cons (cons (cons _%L169386%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                              '())
                                        (cons _%specializer-lambda-expr169727%_
                                              '()))
                                  '())
                            (cons _%specializer-case-lambda-expr169862%_
                                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp171234
                                                    _%stx167090%_))
                                                 '()))
                                     '())
                               (cons _%L168851%_ '())))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons _%L168850%_ '())))))
                        (declare (not safe))
                        (gxc#xform-wrap-source __tmp171233 _%stx167090%_)))
                     (_%specializer-impl169866%_
                      (let ()
                        (declare (not safe))
                        (_%generate-specializer-impl167094%_
                         _%$klass169603%_
                         _%$method-table169605%_
                         _%methods-bind169630%_
                         _%slots-bind169654%_
                         _%specializer-impl169864%_))))
                (let ((__tmp171236
                       (let () (declare (not safe)) (gx#stx-e _%L167163%_)))
                      (__tmp171235
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%specializer-id169601%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"generate method specializer "
                   __tmp171236
                   '" => "
                   __tmp171235))
                (let ()
                  (declare (not safe))
                  (_%generate-specializer-def167095%_
                   _%L167163%_
                   _%specializer-id169601%_
                   _%specializer-impl169866%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%hd169317169379%_
                                                _%hd169314169371%_
                                                _%hd169311169363%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g169293169323%_
                                                  _%g169294169326%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g169293169323%_
                                          _%g169294169326%_)))
                                   (let ()
                                     (declare (not safe))
                                     (_%g169293169323%_ _%g169294169326%_)))
                               (let ()
                                 (declare (not safe))
                                 (_%g169293169323%_ _%g169294169326%_)))))
                       (let ()
                         (declare (not safe))
                         (_%g169293169323%_ _%g169294169326%_)))
                   (let ()
                     (declare (not safe))
                     (_%g169293169323%_ _%g169294169326%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g169293169323%_
                                                      _%g169294169326%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g169293169323%_
                                              _%g169294169326%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g169293169323%_ _%g169294169326%_)))))
                           (let ()
                             (declare (not safe))
                             (_%g169293169323%_ _%g169294169326%_)))))
                   (let ()
                     (declare (not safe))
                     (_%g169293169323%_ _%g169294169326%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_%g169292169869%_
                                                _%L168852%_)))
                                           (let () _%stx167090%_)))))
                               _%hd168950169073%_
                               _%kw-ref168948169094%_
                               _%hd168938169060%_
                               _%hd168929169036%_
                               _%hd168920169012%_)
                              (let ()
                                (declare (not safe))
                                (_%g168894168956%_ _%g168895168959%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%loop168943169078%_
                                                     _%target168940169065%_
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g168894168956%_
                                                   _%g168895168959%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g168894168956%_
                                           _%g168895168959%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g168894168956%_ _%g168895168959%_)))
                          (let ()
                            (declare (not safe))
                            (_%g168894168956%_ _%g168895168959%_)))
                      (let ()
                        (declare (not safe))
                        (_%g168894168956%_ _%g168895168959%_)))))
              (let ()
                (declare (not safe))
                (_%g168894168956%_ _%g168895168959%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g168894168956%_
                                                     _%g168895168959%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g168894168956%_
                                                 _%g168895168959%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g168894168956%_
                                         _%g168895168959%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g168894168956%_ _%g168895168959%_)))
                          (let ()
                            (declare (not safe))
                            (_%g168894168956%_ _%g168895168959%_)))))
                  (let ()
                    (declare (not safe))
                    (_%g168894168956%_ _%g168895168959%_)))
              (let ()
                (declare (not safe))
                (_%g168894168956%_ _%g168895168959%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g168894168956%_
                                                     _%g168895168959%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g168894168956%_
                                             _%g168895168959%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g168894168956%_ _%g168895168959%_)))
                              (let ()
                                (declare (not safe))
                                (_%g168894168956%_ _%g168895168959%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g168894168956%_ _%g168895168959%_)))
                  (let ()
                    (declare (not safe))
                    (_%g168894168956%_ _%g168895168959%_)))
              (let ()
                (declare (not safe))
                (_%g168894168956%_ _%g168895168959%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g168894168956%_
                                                 _%g168895168959%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g168894168956%_ _%g168895168959%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g168894168956%_ _%g168895168959%_)))
                              (let ()
                                (declare (not safe))
                                (_%g168894168956%_ _%g168895168959%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g168894168956%_ _%g168895168959%_)))))
              (let ()
                (declare (not safe))
                (_%g168894168956%_ _%g168895168959%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g168894168956%_
                                                 _%g168895168959%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g168894168956%_
                                             _%g168895168959%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g168894168956%_
                                         _%g168895168959%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g168894168956%_ _%g168895168959%_))))))
                  (declare (not safe))
                  (_%g168893169873%_ _%L168851%_)))
              _%hd168727168845%_
              _%hd168724168837%_
              _%hd168721168829%_
              _%hd168718168821%_
              _%hd168700168773%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g168680168733%_
                                                        _%g168681168736%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g168680168733%_
                                                _%g168681168736%_)))
                                         (let ()
                                           (declare (not safe))
                                           (_%g168680168733%_
                                            _%g168681168736%_)))
                                     (let ()
                                       (declare (not safe))
                                       (_%g168680168733%_ _%g168681168736%_)))
                                 (let ()
                                   (declare (not safe))
                                   (_%g168680168733%_ _%g168681168736%_)))))
                         (let ()
                           (declare (not safe))
                           (_%g168680168733%_ _%g168681168736%_)))
                     (let ()
                       (declare (not safe))
                       (_%g168680168733%_ _%g168681168736%_)))
                 (let ()
                   (declare (not safe))
                   (_%g168680168733%_ _%g168681168736%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g168680168733%_
                                                    _%g168681168736%_)))
                                             (let ()
                                               (declare (not safe))
                                               (_%g168680168733%_
                                                _%g168681168736%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g168680168733%_
                                        _%g168681168736%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g168680168733%_ _%g168681168736%_)))))
                     (let ()
                       (declare (not safe))
                       (_%g168680168733%_ _%g168681168736%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g168680168733%_
                                                        _%g168681168736%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g168680168733%_
                                                    _%g168681168736%_)))
                                             (let ()
                                               (declare (not safe))
                                               (_%g168680168733%_
                                                _%g168681168736%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g168680168733%_
                                        _%g168681168736%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g168680168733%_ _%g168681168736%_)))
                         (let ()
                           (declare (not safe))
                           (_%g168680168733%_ _%g168681168736%_)))))
                 (let ()
                   (declare (not safe))
                   (_%g168680168733%_ _%g168681168736%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g168680168733%_
                                                    _%g168681168736%_)))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g168680168733%_
                                            _%g168681168736%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g168680168733%_ _%g168681168736%_)))
                             (let ()
                               (declare (not safe))
                               (_%g168680168733%_ _%g168681168736%_)))
                         (let ()
                           (declare (not safe))
                           (_%g168680168733%_ _%g168681168736%_)))))
                 (let ()
                   (declare (not safe))
                   (_%g168680168733%_ _%g168681168736%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (_%g168679169876%_ _%L167162%_)))
                                         (let () _%stx167090%_)))))))))
                  (_%__kont170101170102%_ (lambda () _%stx167090%_)))
              (let ((_%__match170130170131%_
                     (lambda (_%e167104167130%_
                              _%hd167103167133%_
                              _%tl167102167135%_
                              _%e167107167138%_
                              _%hd167106167141%_
                              _%tl167105167143%_
                              _%e167110167146%_
                              _%hd167109167149%_
                              _%tl167108167151%_
                              _%e167113167154%_
                              _%hd167112167157%_
                              _%tl167111167159%_)
                       (let ((_%L167162%_ _%hd167112167157%_)
                             (_%L167163%_ _%hd167109167149%_))
                         (if (let ((__tmp171237
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L167163%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp171237))
                             (_%__kont170099170100%_ _%L167162%_ _%L167163%_)
                             (_%__kont170101170102%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx170097170098%_))
                    (let ((_%e167104167130%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx170097170098%_))))
                      (let ((_%tl167102167135%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e167104167130%_)))
                            (_%hd167103167133%_
                             (let ()
                               (declare (not safe))
                               (##car _%e167104167130%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl167102167135%_))
                            (let ((_%e167107167138%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl167102167135%_))))
                              (let ((_%tl167105167143%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e167107167138%_)))
                                    (_%hd167106167141%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e167107167138%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd167106167141%_))
                                    (let ((_%e167110167146%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd167106167141%_))))
                                      (let ((_%tl167108167151%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e167110167146%_)))
                                            (_%hd167109167149%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e167110167146%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl167108167151%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl167105167143%_))
                                                (let ((_%e167113167154%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl167105167143%_))))
                                                  (let ((_%tl167111167159%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e167113167154%_)))
                                                        (_%hd167112167157%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e167113167154%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl167111167159%_))
                                                        (_%__match170130170131%_
                                                         _%e167104167130%_
                                                         _%hd167103167133%_
                                                         _%tl167102167135%_
                                                         _%e167107167138%_
                                                         _%hd167106167141%_
                                                         _%tl167105167143%_
                                                         _%e167110167146%_
                                                         _%hd167109167149%_
                                                         _%tl167108167151%_
                                                         _%e167113167154%_
                                                         _%hd167112167157%_
                                                         _%tl167111167159%_)
                                                        (_%__kont170101170102%_))))
                                                (_%__kont170101170102%_))
                                            (_%__kont170101170102%_))))
                                    (_%__kont170101170102%_))))
                            (_%__kont170101170102%_))))
                    (_%__kont170101170102%_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self166050%_ _%stx166051%_)
        (let* ((_%__stx170133170134%_ _%stx166051%_)
               (_%g166059166281%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx170133170134%_)))))
          (let ((_%__kont170135170136%_
                 (lambda (_%L167038%_ _%L167039%_ _%L167040%_ _%L167041%_)
                   (let ((__tmp171239
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self166050%_ 'methods)))
                         (__tmp171238
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L167039%_))))
                     (declare (not safe))
                     (hash-put! __tmp171239 __tmp171238 '#t))
                   (for-each
                    (lambda (_%g167074167076%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self166050%_ _%g167074167076%_)))
                    (let ((__tmp171240
                           (lambda (_%g167078167081%_ _%g167079167083%_)
                             (cons _%g167078167081%_ _%g167079167083%_))))
                      (declare (not safe))
                      (__foldr1 __tmp171240 '() _%L167038%_)))))
                (_%__kont170139170140%_
                 (lambda (_%L166873%_
                          _%L166874%_
                          _%L166875%_
                          _%L166876%_
                          _%L166877%_)
                   (let ((__tmp171242
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self166050%_ 'methods)))
                         (__tmp171241
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L166874%_))))
                     (declare (not safe))
                     (hash-put! __tmp171242 __tmp171241 '#t))
                   (for-each
                    (lambda (_%g166917166919%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self166050%_ _%g166917166919%_)))
                    (let ((__tmp171243
                           (lambda (_%g166921166924%_ _%g166922166926%_)
                             (cons _%g166921166924%_ _%g166922166926%_))))
                      (declare (not safe))
                      (__foldr1 __tmp171243 '() _%L166873%_)))))
                (_%__kont170143170144%_
                 (lambda (_%L166706%_ _%L166707%_ _%L166708%_)
                   (let ((__tmp171245
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self166050%_ 'slots)))
                         (__tmp171244
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L166706%_))))
                     (declare (not safe))
                     (hash-put! __tmp171245 __tmp171244 '#t))))
                (_%__kont170145170146%_
                 (lambda (_%L166583%_ _%L166584%_ _%L166585%_ _%L166586%_)
                   (let ((__tmp171247
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self166050%_ 'slots)))
                         (__tmp171246
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L166584%_))))
                     (declare (not safe))
                     (hash-put! __tmp171247 __tmp171246 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self166050%_ _%L166583%_))))
                (_%__kont170147170148%_
                 (lambda (_%L166457%_ _%L166458%_)
                   (let* ((_%accessor166480%_
                           (let ((__tmp171248
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L166458%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp171248)))
                          (_%klass166482%_
                           (let ((__tmp171249
                                  (##structure-ref
                                   _%accessor166480%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx166051%_
                              __tmp171249)))
                          (_%slot166484%_
                           (##structure-ref
                            _%accessor166480%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (and (let ((__tmp171250
                                     (##structure-ref
                                      _%accessor166480%_
                                      '4
                                      gxc#!accessor::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp171250))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _%klass166482%_
                                     _%slot166484%_))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass166482%_
                                     '8
                                     '#f
                                     '#f))))
                         '#!void
                         (let ((__tmp171252
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self166050%_ 'slots)))
                               (__tmp171251
                                (##structure-ref
                                 _%accessor166480%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp171252 __tmp171251 '#t))))))
                (_%__kont170149170150%_
                 (lambda (_%L166357%_ _%L166358%_ _%L166359%_)
                   (let* ((_%mutator166386%_
                           (let ((__tmp171253
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L166359%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp171253)))
                          (_%klass166388%_
                           (let ((__tmp171254
                                  (##structure-ref
                                   _%mutator166386%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx166051%_
                              __tmp171254)))
                          (_%slot166390%_
                           (##structure-ref
                            _%mutator166386%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (and (let ((__tmp171255
                                     (##structure-ref
                                      _%mutator166386%_
                                      '4
                                      gxc#!mutator::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp171255))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _%klass166388%_
                                     _%slot166390%_))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass166388%_
                                     '8
                                     '#f
                                     '#f))))
                         '#!void
                         (let ((__tmp171256
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self166050%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp171256 _%slot166390%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self166050%_ _%L166357%_)))))
                (_%__kont170151170152%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self166050%_ _%stx166051%_)))))
            (let* ((_%__match170632170633%_
                    (lambda (_%e166255166293%_
                             _%hd166254166296%_
                             _%tl166253166298%_
                             _%e166258166301%_
                             _%hd166257166304%_
                             _%tl166256166306%_
                             _%e166261166309%_
                             _%hd166260166312%_
                             _%tl166259166314%_
                             _%e166264166317%_
                             _%hd166263166320%_
                             _%tl166262166322%_
                             _%e166267166325%_
                             _%hd166266166328%_
                             _%tl166265166330%_
                             _%e166270166333%_
                             _%hd166269166336%_
                             _%tl166268166338%_
                             _%e166273166341%_
                             _%hd166272166344%_
                             _%tl166271166346%_
                             _%e166276166349%_
                             _%hd166275166352%_
                             _%tl166274166354%_)
                      (let ((_%L166357%_ _%hd166275166352%_)
                            (_%L166358%_ _%hd166272166344%_)
                            (_%L166359%_ _%hd166263166320%_))
                        (if (and (let ((__tmp171257
                                        (let ((__tmp171258
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L166359%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp171258))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp171257
                                    'gxc#!mutator::t))
                                 (let ((__tmp171259
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self166050%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L166358%_
                                    __tmp171259)))
                            (_%__kont170149170150%_
                             _%L166357%_
                             _%L166358%_
                             _%L166359%_)
                            (_%__kont170151170152%_)))))
                   (_%__match170630170631%_
                    (lambda (_%e166255166293%_
                             _%hd166254166296%_
                             _%tl166253166298%_
                             _%e166258166301%_
                             _%hd166257166304%_
                             _%tl166256166306%_
                             _%e166261166309%_
                             _%hd166260166312%_
                             _%tl166259166314%_
                             _%e166264166317%_
                             _%hd166263166320%_
                             _%tl166262166322%_
                             _%e166267166325%_
                             _%hd166266166328%_
                             _%tl166265166330%_
                             _%e166270166333%_
                             _%hd166269166336%_
                             _%tl166268166338%_
                             _%e166273166341%_
                             _%hd166272166344%_
                             _%tl166271166346%_
                             _%e166276166349%_
                             _%hd166275166352%_
                             _%tl166274166354%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl166274166354%_))
                          (_%__match170632170633%_
                           _%e166255166293%_
                           _%hd166254166296%_
                           _%tl166253166298%_
                           _%e166258166301%_
                           _%hd166257166304%_
                           _%tl166256166306%_
                           _%e166261166309%_
                           _%hd166260166312%_
                           _%tl166259166314%_
                           _%e166264166317%_
                           _%hd166263166320%_
                           _%tl166262166322%_
                           _%e166267166325%_
                           _%hd166266166328%_
                           _%tl166265166330%_
                           _%e166270166333%_
                           _%hd166269166336%_
                           _%tl166268166338%_
                           _%e166273166341%_
                           _%hd166272166344%_
                           _%tl166271166346%_
                           _%e166276166349%_
                           _%hd166275166352%_
                           _%tl166274166354%_)
                          (_%__kont170151170152%_))))
                   (_%__match170624170625%_
                    (lambda (_%e166255166293%_
                             _%hd166254166296%_
                             _%tl166253166298%_
                             _%e166258166301%_
                             _%hd166257166304%_
                             _%tl166256166306%_
                             _%e166261166309%_
                             _%hd166260166312%_
                             _%tl166259166314%_
                             _%e166264166317%_
                             _%hd166263166320%_
                             _%tl166262166322%_
                             _%e166267166325%_
                             _%hd166266166328%_
                             _%tl166265166330%_
                             _%e166270166333%_
                             _%hd166269166336%_
                             _%tl166268166338%_
                             _%e166273166341%_
                             _%hd166272166344%_
                             _%tl166271166346%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl166265166330%_))
                          (let ((_%e166276166349%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl166265166330%_))))
                            (let ((_%tl166274166354%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e166276166349%_)))
                                  (_%hd166275166352%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e166276166349%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl166274166354%_))
                                  (_%__match170632170633%_
                                   _%e166255166293%_
                                   _%hd166254166296%_
                                   _%tl166253166298%_
                                   _%e166258166301%_
                                   _%hd166257166304%_
                                   _%tl166256166306%_
                                   _%e166261166309%_
                                   _%hd166260166312%_
                                   _%tl166259166314%_
                                   _%e166264166317%_
                                   _%hd166263166320%_
                                   _%tl166262166322%_
                                   _%e166267166325%_
                                   _%hd166266166328%_
                                   _%tl166265166330%_
                                   _%e166270166333%_
                                   _%hd166269166336%_
                                   _%tl166268166338%_
                                   _%e166273166341%_
                                   _%hd166272166344%_
                                   _%tl166271166346%_
                                   _%e166276166349%_
                                   _%hd166275166352%_
                                   _%tl166274166354%_)
                                  (_%__kont170151170152%_))))
                          (_%__kont170151170152%_))))
                   (_%__match170570170571%_
                    (lambda (_%e166231166401%_
                             _%hd166230166404%_
                             _%tl166229166406%_
                             _%e166234166409%_
                             _%hd166233166412%_
                             _%tl166232166414%_
                             _%e166237166417%_
                             _%hd166236166420%_
                             _%tl166235166422%_
                             _%e166240166425%_
                             _%hd166239166428%_
                             _%tl166238166430%_
                             _%e166243166433%_
                             _%hd166242166436%_
                             _%tl166241166438%_
                             _%e166246166441%_
                             _%hd166245166444%_
                             _%tl166244166446%_
                             _%e166249166449%_
                             _%hd166248166452%_
                             _%tl166247166454%_)
                      (let ((_%L166457%_ _%hd166248166452%_)
                            (_%L166458%_ _%hd166239166428%_))
                        (if (and (let ((__tmp171260
                                        (let ((__tmp171261
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L166458%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp171261))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp171260
                                    'gxc#!accessor::t))
                                 (let ((__tmp171262
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self166050%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L166457%_
                                    __tmp171262)))
                            (_%__kont170147170148%_ _%L166457%_ _%L166458%_)
                            (_%__kont170151170152%_)))))
                   (_%__match170568170569%_
                    (lambda (_%e166231166401%_
                             _%hd166230166404%_
                             _%tl166229166406%_
                             _%e166234166409%_
                             _%hd166233166412%_
                             _%tl166232166414%_
                             _%e166237166417%_
                             _%hd166236166420%_
                             _%tl166235166422%_
                             _%e166240166425%_
                             _%hd166239166428%_
                             _%tl166238166430%_
                             _%e166243166433%_
                             _%hd166242166436%_
                             _%tl166241166438%_
                             _%e166246166441%_
                             _%hd166245166444%_
                             _%tl166244166446%_
                             _%e166249166449%_
                             _%hd166248166452%_
                             _%tl166247166454%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl166241166438%_))
                          (_%__match170570170571%_
                           _%e166231166401%_
                           _%hd166230166404%_
                           _%tl166229166406%_
                           _%e166234166409%_
                           _%hd166233166412%_
                           _%tl166232166414%_
                           _%e166237166417%_
                           _%hd166236166420%_
                           _%tl166235166422%_
                           _%e166240166425%_
                           _%hd166239166428%_
                           _%tl166238166430%_
                           _%e166243166433%_
                           _%hd166242166436%_
                           _%tl166241166438%_
                           _%e166246166441%_
                           _%hd166245166444%_
                           _%tl166244166446%_
                           _%e166249166449%_
                           _%hd166248166452%_
                           _%tl166247166454%_)
                          (_%__match170624170625%_
                           _%e166231166401%_
                           _%hd166230166404%_
                           _%tl166229166406%_
                           _%e166234166409%_
                           _%hd166233166412%_
                           _%tl166232166414%_
                           _%e166237166417%_
                           _%hd166236166420%_
                           _%tl166235166422%_
                           _%e166240166425%_
                           _%hd166239166428%_
                           _%tl166238166430%_
                           _%e166243166433%_
                           _%hd166242166436%_
                           _%tl166241166438%_
                           _%e166246166441%_
                           _%hd166245166444%_
                           _%tl166244166446%_
                           _%e166249166449%_
                           _%hd166248166452%_
                           _%tl166247166454%_))))
                   (_%__match170514170515%_
                    (lambda (_%e166196166495%_
                             _%hd166195166498%_
                             _%tl166194166500%_
                             _%e166199166503%_
                             _%hd166198166506%_
                             _%tl166197166508%_
                             _%e166202166511%_
                             _%hd166201166514%_
                             _%tl166200166516%_
                             _%e166205166519%_
                             _%hd166204166522%_
                             _%tl166203166524%_
                             _%e166208166527%_
                             _%hd166207166530%_
                             _%tl166206166532%_
                             _%e166211166535%_
                             _%hd166210166538%_
                             _%tl166209166540%_
                             _%e166214166543%_
                             _%hd166213166546%_
                             _%tl166212166548%_
                             _%e166217166551%_
                             _%hd166216166554%_
                             _%tl166215166556%_
                             _%e166220166559%_
                             _%hd166219166562%_
                             _%tl166218166564%_
                             _%e166223166567%_
                             _%hd166222166570%_
                             _%tl166221166572%_
                             _%e166226166575%_
                             _%hd166225166578%_
                             _%tl166224166580%_)
                      (let ((_%L166583%_ _%hd166225166578%_)
                            (_%L166584%_ _%hd166222166570%_)
                            (_%L166585%_ _%hd166213166546%_)
                            (_%L166586%_ _%hd166204166522%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L166586%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L166586%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp171263
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self166050%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L166585%_
                                    __tmp171263)))
                            (_%__kont170145170146%_
                             _%L166583%_
                             _%L166584%_
                             _%L166585%_
                             _%L166586%_)
                            (_%__kont170151170152%_)))))
                   (_%__match170506170507%_
                    (lambda (_%e166196166495%_
                             _%hd166195166498%_
                             _%tl166194166500%_
                             _%e166199166503%_
                             _%hd166198166506%_
                             _%tl166197166508%_
                             _%e166202166511%_
                             _%hd166201166514%_
                             _%tl166200166516%_
                             _%e166205166519%_
                             _%hd166204166522%_
                             _%tl166203166524%_
                             _%e166208166527%_
                             _%hd166207166530%_
                             _%tl166206166532%_
                             _%e166211166535%_
                             _%hd166210166538%_
                             _%tl166209166540%_
                             _%e166214166543%_
                             _%hd166213166546%_
                             _%tl166212166548%_
                             _%e166217166551%_
                             _%hd166216166554%_
                             _%tl166215166556%_
                             _%e166220166559%_
                             _%hd166219166562%_
                             _%tl166218166564%_
                             _%e166223166567%_
                             _%hd166222166570%_
                             _%tl166221166572%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl166215166556%_))
                          (let ((_%e166226166575%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl166215166556%_))))
                            (let ((_%tl166224166580%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e166226166575%_)))
                                  (_%hd166225166578%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e166226166575%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl166224166580%_))
                                  (_%__match170514170515%_
                                   _%e166196166495%_
                                   _%hd166195166498%_
                                   _%tl166194166500%_
                                   _%e166199166503%_
                                   _%hd166198166506%_
                                   _%tl166197166508%_
                                   _%e166202166511%_
                                   _%hd166201166514%_
                                   _%tl166200166516%_
                                   _%e166205166519%_
                                   _%hd166204166522%_
                                   _%tl166203166524%_
                                   _%e166208166527%_
                                   _%hd166207166530%_
                                   _%tl166206166532%_
                                   _%e166211166535%_
                                   _%hd166210166538%_
                                   _%tl166209166540%_
                                   _%e166214166543%_
                                   _%hd166213166546%_
                                   _%tl166212166548%_
                                   _%e166217166551%_
                                   _%hd166216166554%_
                                   _%tl166215166556%_
                                   _%e166220166559%_
                                   _%hd166219166562%_
                                   _%tl166218166564%_
                                   _%e166223166567%_
                                   _%hd166222166570%_
                                   _%tl166221166572%_
                                   _%e166226166575%_
                                   _%hd166225166578%_
                                   _%tl166224166580%_)
                                  (_%__kont170151170152%_))))
                          (_%__match170630170631%_
                           _%e166196166495%_
                           _%hd166195166498%_
                           _%tl166194166500%_
                           _%e166199166503%_
                           _%hd166198166506%_
                           _%tl166197166508%_
                           _%e166202166511%_
                           _%hd166201166514%_
                           _%tl166200166516%_
                           _%e166205166519%_
                           _%hd166204166522%_
                           _%tl166203166524%_
                           _%e166208166527%_
                           _%hd166207166530%_
                           _%tl166206166532%_
                           _%e166211166535%_
                           _%hd166210166538%_
                           _%tl166209166540%_
                           _%e166214166543%_
                           _%hd166213166546%_
                           _%tl166212166548%_
                           _%e166217166551%_
                           _%hd166216166554%_
                           _%tl166215166556%_))))
                   (_%__match170428170429%_
                    (lambda (_%e166162166626%_
                             _%hd166161166629%_
                             _%tl166160166631%_
                             _%e166165166634%_
                             _%hd166164166637%_
                             _%tl166163166639%_
                             _%e166168166642%_
                             _%hd166167166645%_
                             _%tl166166166647%_
                             _%e166171166650%_
                             _%hd166170166653%_
                             _%tl166169166655%_
                             _%e166174166658%_
                             _%hd166173166661%_
                             _%tl166172166663%_
                             _%e166177166666%_
                             _%hd166176166669%_
                             _%tl166175166671%_
                             _%e166180166674%_
                             _%hd166179166677%_
                             _%tl166178166679%_
                             _%e166183166682%_
                             _%hd166182166685%_
                             _%tl166181166687%_
                             _%e166186166690%_
                             _%hd166185166693%_
                             _%tl166184166695%_
                             _%e166189166698%_
                             _%hd166188166701%_
                             _%tl166187166703%_)
                      (let ((_%L166706%_ _%hd166188166701%_)
                            (_%L166707%_ _%hd166179166677%_)
                            (_%L166708%_ _%hd166170166653%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L166708%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L166708%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp171264
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self166050%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L166707%_
                                    __tmp171264)))
                            (_%__kont170143170144%_
                             _%L166706%_
                             _%L166707%_
                             _%L166708%_)
                            (_%__match170632170633%_
                             _%e166162166626%_
                             _%hd166161166629%_
                             _%tl166160166631%_
                             _%e166165166634%_
                             _%hd166164166637%_
                             _%tl166163166639%_
                             _%e166168166642%_
                             _%hd166167166645%_
                             _%tl166166166647%_
                             _%e166171166650%_
                             _%hd166170166653%_
                             _%tl166169166655%_
                             _%e166174166658%_
                             _%hd166173166661%_
                             _%tl166172166663%_
                             _%e166177166666%_
                             _%hd166176166669%_
                             _%tl166175166671%_
                             _%e166180166674%_
                             _%hd166179166677%_
                             _%tl166178166679%_
                             _%e166183166682%_
                             _%hd166182166685%_
                             _%tl166181166687%_)))))
                   (_%__match170426170427%_
                    (lambda (_%e166162166626%_
                             _%hd166161166629%_
                             _%tl166160166631%_
                             _%e166165166634%_
                             _%hd166164166637%_
                             _%tl166163166639%_
                             _%e166168166642%_
                             _%hd166167166645%_
                             _%tl166166166647%_
                             _%e166171166650%_
                             _%hd166170166653%_
                             _%tl166169166655%_
                             _%e166174166658%_
                             _%hd166173166661%_
                             _%tl166172166663%_
                             _%e166177166666%_
                             _%hd166176166669%_
                             _%tl166175166671%_
                             _%e166180166674%_
                             _%hd166179166677%_
                             _%tl166178166679%_
                             _%e166183166682%_
                             _%hd166182166685%_
                             _%tl166181166687%_
                             _%e166186166690%_
                             _%hd166185166693%_
                             _%tl166184166695%_
                             _%e166189166698%_
                             _%hd166188166701%_
                             _%tl166187166703%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl166181166687%_))
                          (_%__match170428170429%_
                           _%e166162166626%_
                           _%hd166161166629%_
                           _%tl166160166631%_
                           _%e166165166634%_
                           _%hd166164166637%_
                           _%tl166163166639%_
                           _%e166168166642%_
                           _%hd166167166645%_
                           _%tl166166166647%_
                           _%e166171166650%_
                           _%hd166170166653%_
                           _%tl166169166655%_
                           _%e166174166658%_
                           _%hd166173166661%_
                           _%tl166172166663%_
                           _%e166177166666%_
                           _%hd166176166669%_
                           _%tl166175166671%_
                           _%e166180166674%_
                           _%hd166179166677%_
                           _%tl166178166679%_
                           _%e166183166682%_
                           _%hd166182166685%_
                           _%tl166181166687%_
                           _%e166186166690%_
                           _%hd166185166693%_
                           _%tl166184166695%_
                           _%e166189166698%_
                           _%hd166188166701%_
                           _%tl166187166703%_)
                          (_%__match170506170507%_
                           _%e166162166626%_
                           _%hd166161166629%_
                           _%tl166160166631%_
                           _%e166165166634%_
                           _%hd166164166637%_
                           _%tl166163166639%_
                           _%e166168166642%_
                           _%hd166167166645%_
                           _%tl166166166647%_
                           _%e166171166650%_
                           _%hd166170166653%_
                           _%tl166169166655%_
                           _%e166174166658%_
                           _%hd166173166661%_
                           _%tl166172166663%_
                           _%e166177166666%_
                           _%hd166176166669%_
                           _%tl166175166671%_
                           _%e166180166674%_
                           _%hd166179166677%_
                           _%tl166178166679%_
                           _%e166183166682%_
                           _%hd166182166685%_
                           _%tl166181166687%_
                           _%e166186166690%_
                           _%hd166185166693%_
                           _%tl166184166695%_
                           _%e166189166698%_
                           _%hd166188166701%_
                           _%tl166187166703%_))))
                   (_%__match170416170417%_
                    (lambda (_%e166162166626%_
                             _%hd166161166629%_
                             _%tl166160166631%_
                             _%e166165166634%_
                             _%hd166164166637%_
                             _%tl166163166639%_
                             _%e166168166642%_
                             _%hd166167166645%_
                             _%tl166166166647%_
                             _%e166171166650%_
                             _%hd166170166653%_
                             _%tl166169166655%_
                             _%e166174166658%_
                             _%hd166173166661%_
                             _%tl166172166663%_
                             _%e166177166666%_
                             _%hd166176166669%_
                             _%tl166175166671%_
                             _%e166180166674%_
                             _%hd166179166677%_
                             _%tl166178166679%_
                             _%e166183166682%_
                             _%hd166182166685%_
                             _%tl166181166687%_
                             _%e166186166690%_
                             _%hd166185166693%_
                             _%tl166184166695%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd166185166693%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl166184166695%_))
                              (let ((_%e166189166698%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl166184166695%_))))
                                (let ((_%tl166187166703%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e166189166698%_)))
                                      (_%hd166188166701%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e166189166698%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl166187166703%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl166181166687%_))
                                          (_%__match170428170429%_
                                           _%e166162166626%_
                                           _%hd166161166629%_
                                           _%tl166160166631%_
                                           _%e166165166634%_
                                           _%hd166164166637%_
                                           _%tl166163166639%_
                                           _%e166168166642%_
                                           _%hd166167166645%_
                                           _%tl166166166647%_
                                           _%e166171166650%_
                                           _%hd166170166653%_
                                           _%tl166169166655%_
                                           _%e166174166658%_
                                           _%hd166173166661%_
                                           _%tl166172166663%_
                                           _%e166177166666%_
                                           _%hd166176166669%_
                                           _%tl166175166671%_
                                           _%e166180166674%_
                                           _%hd166179166677%_
                                           _%tl166178166679%_
                                           _%e166183166682%_
                                           _%hd166182166685%_
                                           _%tl166181166687%_
                                           _%e166186166690%_
                                           _%hd166185166693%_
                                           _%tl166184166695%_
                                           _%e166189166698%_
                                           _%hd166188166701%_
                                           _%tl166187166703%_)
                                          (_%__match170506170507%_
                                           _%e166162166626%_
                                           _%hd166161166629%_
                                           _%tl166160166631%_
                                           _%e166165166634%_
                                           _%hd166164166637%_
                                           _%tl166163166639%_
                                           _%e166168166642%_
                                           _%hd166167166645%_
                                           _%tl166166166647%_
                                           _%e166171166650%_
                                           _%hd166170166653%_
                                           _%tl166169166655%_
                                           _%e166174166658%_
                                           _%hd166173166661%_
                                           _%tl166172166663%_
                                           _%e166177166666%_
                                           _%hd166176166669%_
                                           _%tl166175166671%_
                                           _%e166180166674%_
                                           _%hd166179166677%_
                                           _%tl166178166679%_
                                           _%e166183166682%_
                                           _%hd166182166685%_
                                           _%tl166181166687%_
                                           _%e166186166690%_
                                           _%hd166185166693%_
                                           _%tl166184166695%_
                                           _%e166189166698%_
                                           _%hd166188166701%_
                                           _%tl166187166703%_))
                                      (_%__match170630170631%_
                                       _%e166162166626%_
                                       _%hd166161166629%_
                                       _%tl166160166631%_
                                       _%e166165166634%_
                                       _%hd166164166637%_
                                       _%tl166163166639%_
                                       _%e166168166642%_
                                       _%hd166167166645%_
                                       _%tl166166166647%_
                                       _%e166171166650%_
                                       _%hd166170166653%_
                                       _%tl166169166655%_
                                       _%e166174166658%_
                                       _%hd166173166661%_
                                       _%tl166172166663%_
                                       _%e166177166666%_
                                       _%hd166176166669%_
                                       _%tl166175166671%_
                                       _%e166180166674%_
                                       _%hd166179166677%_
                                       _%tl166178166679%_
                                       _%e166183166682%_
                                       _%hd166182166685%_
                                       _%tl166181166687%_))))
                              (_%__match170630170631%_
                               _%e166162166626%_
                               _%hd166161166629%_
                               _%tl166160166631%_
                               _%e166165166634%_
                               _%hd166164166637%_
                               _%tl166163166639%_
                               _%e166168166642%_
                               _%hd166167166645%_
                               _%tl166166166647%_
                               _%e166171166650%_
                               _%hd166170166653%_
                               _%tl166169166655%_
                               _%e166174166658%_
                               _%hd166173166661%_
                               _%tl166172166663%_
                               _%e166177166666%_
                               _%hd166176166669%_
                               _%tl166175166671%_
                               _%e166180166674%_
                               _%hd166179166677%_
                               _%tl166178166679%_
                               _%e166183166682%_
                               _%hd166182166685%_
                               _%tl166181166687%_))
                          (_%__match170630170631%_
                           _%e166162166626%_
                           _%hd166161166629%_
                           _%tl166160166631%_
                           _%e166165166634%_
                           _%hd166164166637%_
                           _%tl166163166639%_
                           _%e166168166642%_
                           _%hd166167166645%_
                           _%tl166166166647%_
                           _%e166171166650%_
                           _%hd166170166653%_
                           _%tl166169166655%_
                           _%e166174166658%_
                           _%hd166173166661%_
                           _%tl166172166663%_
                           _%e166177166666%_
                           _%hd166176166669%_
                           _%tl166175166671%_
                           _%e166180166674%_
                           _%hd166179166677%_
                           _%tl166178166679%_
                           _%e166183166682%_
                           _%hd166182166685%_
                           _%tl166181166687%_))))
                   (_%__match170348170349%_
                    (lambda (_%e166111166745%_
                             _%hd166110166748%_
                             _%tl166109166750%_
                             _%e166114166753%_
                             _%hd166113166756%_
                             _%tl166112166758%_
                             _%e166117166761%_
                             _%hd166116166764%_
                             _%tl166115166766%_
                             _%e166120166769%_
                             _%hd166119166772%_
                             _%tl166118166774%_
                             _%e166123166777%_
                             _%hd166122166780%_
                             _%tl166121166782%_
                             _%e166126166785%_
                             _%hd166125166788%_
                             _%tl166124166790%_
                             _%e166129166793%_
                             _%hd166128166796%_
                             _%tl166127166798%_
                             _%e166132166801%_
                             _%hd166131166804%_
                             _%tl166130166806%_
                             _%e166135166809%_
                             _%hd166134166812%_
                             _%tl166133166814%_
                             _%e166138166817%_
                             _%hd166137166820%_
                             _%tl166136166822%_
                             _%e166141166825%_
                             _%hd166140166828%_
                             _%tl166139166830%_
                             _%e166144166833%_
                             _%hd166143166836%_
                             _%tl166142166838%_
                             _%e166147166841%_
                             _%hd166146166844%_
                             _%tl166145166846%_
                             _%__splice170141170142%_
                             _%target166148166849%_
                             _%tl166150166851%_)
                      (letrec ((_%loop166151166854%_
                                (lambda (_%hd166149166857%_
                                         _%args166155166859%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd166149166857%_))
                                      (let ((_%e166152166862%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd166149166857%_))))
                                        (let ((_%lp-tl166154166867%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e166152166862%_)))
                                              (_%lp-hd166153166865%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e166152166862%_))))
                                          (let ((__tmp171265
                                                 (cons _%lp-hd166153166865%_
                                                       _%args166155166859%_)))
                                            (declare (not safe))
                                            (_%loop166151166854%_
                                             _%lp-tl166154166867%_
                                             __tmp171265))))
                                      (let ((_%args166156166870%_
                                             (reverse _%args166155166859%_)))
                                        (let ((_%L166873%_
                                               _%args166156166870%_)
                                              (_%L166874%_ _%hd166146166844%_)
                                              (_%L166875%_ _%hd166137166820%_)
                                              (_%L166876%_ _%hd166128166796%_)
                                              (_%L166877%_ _%hd166119166772%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L166877%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L166876%_
                                                      'call-method))
                                                   (let ((__tmp171266
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self166050%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L166875%_
                                                      __tmp171266)))
                                              (_%__kont170139170140%_
                                               _%L166873%_
                                               _%L166874%_
                                               _%L166875%_
                                               _%L166876%_
                                               _%L166877%_)
                                              (_%__kont170151170152%_))))))))
                        (let ()
                          (declare (not safe))
                          (_%loop166151166854%_ _%target166148166849%_ '())))))
                   (_%__match170306170307%_
                    (lambda (_%e166111166745%_
                             _%hd166110166748%_
                             _%tl166109166750%_
                             _%e166114166753%_
                             _%hd166113166756%_
                             _%tl166112166758%_
                             _%e166117166761%_
                             _%hd166116166764%_
                             _%tl166115166766%_
                             _%e166120166769%_
                             _%hd166119166772%_
                             _%tl166118166774%_
                             _%e166123166777%_
                             _%hd166122166780%_
                             _%tl166121166782%_
                             _%e166126166785%_
                             _%hd166125166788%_
                             _%tl166124166790%_
                             _%e166129166793%_
                             _%hd166128166796%_
                             _%tl166127166798%_
                             _%e166132166801%_
                             _%hd166131166804%_
                             _%tl166130166806%_
                             _%e166135166809%_
                             _%hd166134166812%_
                             _%tl166133166814%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd166134166812%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl166133166814%_))
                              (let ((_%e166138166817%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl166133166814%_))))
                                (let ((_%tl166136166822%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e166138166817%_)))
                                      (_%hd166137166820%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e166138166817%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl166136166822%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl166130166806%_))
                                          (let ((_%e166141166825%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl166130166806%_))))
                                            (let ((_%tl166139166830%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e166141166825%_)))
                                                  (_%hd166140166828%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e166141166825%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd166140166828%_))
                                                  (let ((_%e166144166833%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd166140166828%_))))
                                                    (let ((_%tl166142166838%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e166144166833%_)))
                                                          (_%hd166143166836%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e166144166833%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd166143166836%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd166143166836%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl166142166838%_))
                          (let ((_%e166147166841%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl166142166838%_))))
                            (let ((_%tl166145166846%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e166147166841%_)))
                                  (_%hd166146166844%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e166147166841%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl166145166846%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl166139166830%_))
                                      (let ((_%__splice170141170142%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl166139166830%_
                                                '0))))
                                        (let ((_%tl166150166851%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice170141170142%_
                                                  '1)))
                                              (_%target166148166849%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice170141170142%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl166150166851%_))
                                              (_%__match170348170349%_
                                               _%e166111166745%_
                                               _%hd166110166748%_
                                               _%tl166109166750%_
                                               _%e166114166753%_
                                               _%hd166113166756%_
                                               _%tl166112166758%_
                                               _%e166117166761%_
                                               _%hd166116166764%_
                                               _%tl166115166766%_
                                               _%e166120166769%_
                                               _%hd166119166772%_
                                               _%tl166118166774%_
                                               _%e166123166777%_
                                               _%hd166122166780%_
                                               _%tl166121166782%_
                                               _%e166126166785%_
                                               _%hd166125166788%_
                                               _%tl166124166790%_
                                               _%e166129166793%_
                                               _%hd166128166796%_
                                               _%tl166127166798%_
                                               _%e166132166801%_
                                               _%hd166131166804%_
                                               _%tl166130166806%_
                                               _%e166135166809%_
                                               _%hd166134166812%_
                                               _%tl166133166814%_
                                               _%e166138166817%_
                                               _%hd166137166820%_
                                               _%tl166136166822%_
                                               _%e166141166825%_
                                               _%hd166140166828%_
                                               _%tl166139166830%_
                                               _%e166144166833%_
                                               _%hd166143166836%_
                                               _%tl166142166838%_
                                               _%e166147166841%_
                                               _%hd166146166844%_
                                               _%tl166145166846%_
                                               _%__splice170141170142%_
                                               _%target166148166849%_
                                               _%tl166150166851%_)
                                              (_%__kont170151170152%_))))
                                      (_%__kont170151170152%_))
                                  (_%__kont170151170152%_))))
                          (_%__kont170151170152%_))
                      (_%__kont170151170152%_))
                  (_%__kont170151170152%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont170151170152%_))))
                                          (_%__match170630170631%_
                                           _%e166111166745%_
                                           _%hd166110166748%_
                                           _%tl166109166750%_
                                           _%e166114166753%_
                                           _%hd166113166756%_
                                           _%tl166112166758%_
                                           _%e166117166761%_
                                           _%hd166116166764%_
                                           _%tl166115166766%_
                                           _%e166120166769%_
                                           _%hd166119166772%_
                                           _%tl166118166774%_
                                           _%e166123166777%_
                                           _%hd166122166780%_
                                           _%tl166121166782%_
                                           _%e166126166785%_
                                           _%hd166125166788%_
                                           _%tl166124166790%_
                                           _%e166129166793%_
                                           _%hd166128166796%_
                                           _%tl166127166798%_
                                           _%e166132166801%_
                                           _%hd166131166804%_
                                           _%tl166130166806%_))
                                      (_%__match170630170631%_
                                       _%e166111166745%_
                                       _%hd166110166748%_
                                       _%tl166109166750%_
                                       _%e166114166753%_
                                       _%hd166113166756%_
                                       _%tl166112166758%_
                                       _%e166117166761%_
                                       _%hd166116166764%_
                                       _%tl166115166766%_
                                       _%e166120166769%_
                                       _%hd166119166772%_
                                       _%tl166118166774%_
                                       _%e166123166777%_
                                       _%hd166122166780%_
                                       _%tl166121166782%_
                                       _%e166126166785%_
                                       _%hd166125166788%_
                                       _%tl166124166790%_
                                       _%e166129166793%_
                                       _%hd166128166796%_
                                       _%tl166127166798%_
                                       _%e166132166801%_
                                       _%hd166131166804%_
                                       _%tl166130166806%_))))
                              (_%__match170630170631%_
                               _%e166111166745%_
                               _%hd166110166748%_
                               _%tl166109166750%_
                               _%e166114166753%_
                               _%hd166113166756%_
                               _%tl166112166758%_
                               _%e166117166761%_
                               _%hd166116166764%_
                               _%tl166115166766%_
                               _%e166120166769%_
                               _%hd166119166772%_
                               _%tl166118166774%_
                               _%e166123166777%_
                               _%hd166122166780%_
                               _%tl166121166782%_
                               _%e166126166785%_
                               _%hd166125166788%_
                               _%tl166124166790%_
                               _%e166129166793%_
                               _%hd166128166796%_
                               _%tl166127166798%_
                               _%e166132166801%_
                               _%hd166131166804%_
                               _%tl166130166806%_))
                          (_%__match170416170417%_
                           _%e166111166745%_
                           _%hd166110166748%_
                           _%tl166109166750%_
                           _%e166114166753%_
                           _%hd166113166756%_
                           _%tl166112166758%_
                           _%e166117166761%_
                           _%hd166116166764%_
                           _%tl166115166766%_
                           _%e166120166769%_
                           _%hd166119166772%_
                           _%tl166118166774%_
                           _%e166123166777%_
                           _%hd166122166780%_
                           _%tl166121166782%_
                           _%e166126166785%_
                           _%hd166125166788%_
                           _%tl166124166790%_
                           _%e166129166793%_
                           _%hd166128166796%_
                           _%tl166127166798%_
                           _%e166132166801%_
                           _%hd166131166804%_
                           _%tl166130166806%_
                           _%e166135166809%_
                           _%hd166134166812%_
                           _%tl166133166814%_))))
                   (_%__match170238170239%_
                    (lambda (_%e166067166934%_
                             _%hd166066166937%_
                             _%tl166065166939%_
                             _%e166070166942%_
                             _%hd166069166945%_
                             _%tl166068166947%_
                             _%e166073166950%_
                             _%hd166072166953%_
                             _%tl166071166955%_
                             _%e166076166958%_
                             _%hd166075166961%_
                             _%tl166074166963%_
                             _%e166079166966%_
                             _%hd166078166969%_
                             _%tl166077166971%_
                             _%e166082166974%_
                             _%hd166081166977%_
                             _%tl166080166979%_
                             _%e166085166982%_
                             _%hd166084166985%_
                             _%tl166083166987%_
                             _%e166088166990%_
                             _%hd166087166993%_
                             _%tl166086166995%_
                             _%e166091166998%_
                             _%hd166090167001%_
                             _%tl166089167003%_
                             _%e166094167006%_
                             _%hd166093167009%_
                             _%tl166092167011%_
                             _%__splice170137170138%_
                             _%target166095167014%_
                             _%tl166097167016%_)
                      (letrec ((_%loop166098167019%_
                                (lambda (_%hd166096167022%_
                                         _%args166102167024%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd166096167022%_))
                                      (let ((_%e166099167027%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd166096167022%_))))
                                        (let ((_%lp-tl166101167032%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e166099167027%_)))
                                              (_%lp-hd166100167030%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e166099167027%_))))
                                          (let ((__tmp171267
                                                 (cons _%lp-hd166100167030%_
                                                       _%args166102167024%_)))
                                            (declare (not safe))
                                            (_%loop166098167019%_
                                             _%lp-tl166101167032%_
                                             __tmp171267))))
                                      (let ((_%args166103167035%_
                                             (reverse _%args166102167024%_)))
                                        (let ((_%L167038%_
                                               _%args166103167035%_)
                                              (_%L167039%_ _%hd166093167009%_)
                                              (_%L167040%_ _%hd166084166985%_)
                                              (_%L167041%_ _%hd166075166961%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L167041%_
                                                      'call-method))
                                                   (let ((__tmp171268
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self166050%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L167040%_
                                                      __tmp171268)))
                                              (_%__kont170135170136%_
                                               _%L167038%_
                                               _%L167039%_
                                               _%L167040%_
                                               _%L167041%_)
                                              (_%__match170426170427%_
                                               _%e166067166934%_
                                               _%hd166066166937%_
                                               _%tl166065166939%_
                                               _%e166070166942%_
                                               _%hd166069166945%_
                                               _%tl166068166947%_
                                               _%e166073166950%_
                                               _%hd166072166953%_
                                               _%tl166071166955%_
                                               _%e166076166958%_
                                               _%hd166075166961%_
                                               _%tl166074166963%_
                                               _%e166079166966%_
                                               _%hd166078166969%_
                                               _%tl166077166971%_
                                               _%e166082166974%_
                                               _%hd166081166977%_
                                               _%tl166080166979%_
                                               _%e166085166982%_
                                               _%hd166084166985%_
                                               _%tl166083166987%_
                                               _%e166088166990%_
                                               _%hd166087166993%_
                                               _%tl166086166995%_
                                               _%e166091166998%_
                                               _%hd166090167001%_
                                               _%tl166089167003%_
                                               _%e166094167006%_
                                               _%hd166093167009%_
                                               _%tl166092167011%_))))))))
                        (let ()
                          (declare (not safe))
                          (_%loop166098167019%_
                           _%target166095167014%_
                           '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx170133170134%_))
                  (let ((_%e166067166934%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx170133170134%_))))
                    (let ((_%tl166065166939%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e166067166934%_)))
                          (_%hd166066166937%_
                           (let ()
                             (declare (not safe))
                             (##car _%e166067166934%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl166065166939%_))
                          (let ((_%e166070166942%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl166065166939%_))))
                            (let ((_%tl166068166947%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e166070166942%_)))
                                  (_%hd166069166945%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e166070166942%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd166069166945%_))
                                  (let ((_%e166073166950%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd166069166945%_))))
                                    (let ((_%tl166071166955%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e166073166950%_)))
                                          (_%hd166072166953%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e166073166950%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd166072166953%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd166072166953%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl166071166955%_))
                                                  (let ((_%e166076166958%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl166071166955%_))))
                                                    (let ((_%tl166074166963%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e166076166958%_)))
                                                          (_%hd166075166961%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e166076166958%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl166074166963%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl166068166947%_))
                      (let ((_%e166079166966%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl166068166947%_))))
                        (let ((_%tl166077166971%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e166079166966%_)))
                              (_%hd166078166969%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e166079166966%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd166078166969%_))
                              (let ((_%e166082166974%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd166078166969%_))))
                                (let ((_%tl166080166979%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e166082166974%_)))
                                      (_%hd166081166977%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e166082166974%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd166081166977%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd166081166977%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl166080166979%_))
                                              (let ((_%e166085166982%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl166080166979%_))))
                                                (let ((_%tl166083166987%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e166085166982%_)))
                                                      (_%hd166084166985%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e166085166982%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl166083166987%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl166077166971%_))
                                                          (let ((_%e166088166990%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl166077166971%_))))
                    (let ((_%tl166086166995%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e166088166990%_)))
                          (_%hd166087166993%_
                           (let ()
                             (declare (not safe))
                             (##car _%e166088166990%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd166087166993%_))
                          (let ((_%e166091166998%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd166087166993%_))))
                            (let ((_%tl166089167003%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e166091166998%_)))
                                  (_%hd166090167001%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e166091166998%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd166090167001%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd166090167001%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl166089167003%_))
                                          (let ((_%e166094167006%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl166089167003%_))))
                                            (let ((_%tl166092167011%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e166094167006%_)))
                                                  (_%hd166093167009%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e166094167006%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl166092167011%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl166086166995%_))
                                                      (let ((_%__splice170137170138%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl166086166995%_ '0))))
                (let ((_%tl166097167016%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice170137170138%_ '1)))
                      (_%target166095167014%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice170137170138%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl166097167016%_))
                      (_%__match170238170239%_
                       _%e166067166934%_
                       _%hd166066166937%_
                       _%tl166065166939%_
                       _%e166070166942%_
                       _%hd166069166945%_
                       _%tl166068166947%_
                       _%e166073166950%_
                       _%hd166072166953%_
                       _%tl166071166955%_
                       _%e166076166958%_
                       _%hd166075166961%_
                       _%tl166074166963%_
                       _%e166079166966%_
                       _%hd166078166969%_
                       _%tl166077166971%_
                       _%e166082166974%_
                       _%hd166081166977%_
                       _%tl166080166979%_
                       _%e166085166982%_
                       _%hd166084166985%_
                       _%tl166083166987%_
                       _%e166088166990%_
                       _%hd166087166993%_
                       _%tl166086166995%_
                       _%e166091166998%_
                       _%hd166090167001%_
                       _%tl166089167003%_
                       _%e166094167006%_
                       _%hd166093167009%_
                       _%tl166092167011%_
                       _%__splice170137170138%_
                       _%target166095167014%_
                       _%tl166097167016%_)
                      (_%__match170426170427%_
                       _%e166067166934%_
                       _%hd166066166937%_
                       _%tl166065166939%_
                       _%e166070166942%_
                       _%hd166069166945%_
                       _%tl166068166947%_
                       _%e166073166950%_
                       _%hd166072166953%_
                       _%tl166071166955%_
                       _%e166076166958%_
                       _%hd166075166961%_
                       _%tl166074166963%_
                       _%e166079166966%_
                       _%hd166078166969%_
                       _%tl166077166971%_
                       _%e166082166974%_
                       _%hd166081166977%_
                       _%tl166080166979%_
                       _%e166085166982%_
                       _%hd166084166985%_
                       _%tl166083166987%_
                       _%e166088166990%_
                       _%hd166087166993%_
                       _%tl166086166995%_
                       _%e166091166998%_
                       _%hd166090167001%_
                       _%tl166089167003%_
                       _%e166094167006%_
                       _%hd166093167009%_
                       _%tl166092167011%_))))
              (_%__match170426170427%_
               _%e166067166934%_
               _%hd166066166937%_
               _%tl166065166939%_
               _%e166070166942%_
               _%hd166069166945%_
               _%tl166068166947%_
               _%e166073166950%_
               _%hd166072166953%_
               _%tl166071166955%_
               _%e166076166958%_
               _%hd166075166961%_
               _%tl166074166963%_
               _%e166079166966%_
               _%hd166078166969%_
               _%tl166077166971%_
               _%e166082166974%_
               _%hd166081166977%_
               _%tl166080166979%_
               _%e166085166982%_
               _%hd166084166985%_
               _%tl166083166987%_
               _%e166088166990%_
               _%hd166087166993%_
               _%tl166086166995%_
               _%e166091166998%_
               _%hd166090167001%_
               _%tl166089167003%_
               _%e166094167006%_
               _%hd166093167009%_
               _%tl166092167011%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match170630170631%_
                                                   _%e166067166934%_
                                                   _%hd166066166937%_
                                                   _%tl166065166939%_
                                                   _%e166070166942%_
                                                   _%hd166069166945%_
                                                   _%tl166068166947%_
                                                   _%e166073166950%_
                                                   _%hd166072166953%_
                                                   _%tl166071166955%_
                                                   _%e166076166958%_
                                                   _%hd166075166961%_
                                                   _%tl166074166963%_
                                                   _%e166079166966%_
                                                   _%hd166078166969%_
                                                   _%tl166077166971%_
                                                   _%e166082166974%_
                                                   _%hd166081166977%_
                                                   _%tl166080166979%_
                                                   _%e166085166982%_
                                                   _%hd166084166985%_
                                                   _%tl166083166987%_
                                                   _%e166088166990%_
                                                   _%hd166087166993%_
                                                   _%tl166086166995%_))))
                                          (_%__match170630170631%_
                                           _%e166067166934%_
                                           _%hd166066166937%_
                                           _%tl166065166939%_
                                           _%e166070166942%_
                                           _%hd166069166945%_
                                           _%tl166068166947%_
                                           _%e166073166950%_
                                           _%hd166072166953%_
                                           _%tl166071166955%_
                                           _%e166076166958%_
                                           _%hd166075166961%_
                                           _%tl166074166963%_
                                           _%e166079166966%_
                                           _%hd166078166969%_
                                           _%tl166077166971%_
                                           _%e166082166974%_
                                           _%hd166081166977%_
                                           _%tl166080166979%_
                                           _%e166085166982%_
                                           _%hd166084166985%_
                                           _%tl166083166987%_
                                           _%e166088166990%_
                                           _%hd166087166993%_
                                           _%tl166086166995%_))
                                      (_%__match170306170307%_
                                       _%e166067166934%_
                                       _%hd166066166937%_
                                       _%tl166065166939%_
                                       _%e166070166942%_
                                       _%hd166069166945%_
                                       _%tl166068166947%_
                                       _%e166073166950%_
                                       _%hd166072166953%_
                                       _%tl166071166955%_
                                       _%e166076166958%_
                                       _%hd166075166961%_
                                       _%tl166074166963%_
                                       _%e166079166966%_
                                       _%hd166078166969%_
                                       _%tl166077166971%_
                                       _%e166082166974%_
                                       _%hd166081166977%_
                                       _%tl166080166979%_
                                       _%e166085166982%_
                                       _%hd166084166985%_
                                       _%tl166083166987%_
                                       _%e166088166990%_
                                       _%hd166087166993%_
                                       _%tl166086166995%_
                                       _%e166091166998%_
                                       _%hd166090167001%_
                                       _%tl166089167003%_))
                                  (_%__match170630170631%_
                                   _%e166067166934%_
                                   _%hd166066166937%_
                                   _%tl166065166939%_
                                   _%e166070166942%_
                                   _%hd166069166945%_
                                   _%tl166068166947%_
                                   _%e166073166950%_
                                   _%hd166072166953%_
                                   _%tl166071166955%_
                                   _%e166076166958%_
                                   _%hd166075166961%_
                                   _%tl166074166963%_
                                   _%e166079166966%_
                                   _%hd166078166969%_
                                   _%tl166077166971%_
                                   _%e166082166974%_
                                   _%hd166081166977%_
                                   _%tl166080166979%_
                                   _%e166085166982%_
                                   _%hd166084166985%_
                                   _%tl166083166987%_
                                   _%e166088166990%_
                                   _%hd166087166993%_
                                   _%tl166086166995%_))))
                          (_%__match170630170631%_
                           _%e166067166934%_
                           _%hd166066166937%_
                           _%tl166065166939%_
                           _%e166070166942%_
                           _%hd166069166945%_
                           _%tl166068166947%_
                           _%e166073166950%_
                           _%hd166072166953%_
                           _%tl166071166955%_
                           _%e166076166958%_
                           _%hd166075166961%_
                           _%tl166074166963%_
                           _%e166079166966%_
                           _%hd166078166969%_
                           _%tl166077166971%_
                           _%e166082166974%_
                           _%hd166081166977%_
                           _%tl166080166979%_
                           _%e166085166982%_
                           _%hd166084166985%_
                           _%tl166083166987%_
                           _%e166088166990%_
                           _%hd166087166993%_
                           _%tl166086166995%_))))
                  (_%__match170568170569%_
                   _%e166067166934%_
                   _%hd166066166937%_
                   _%tl166065166939%_
                   _%e166070166942%_
                   _%hd166069166945%_
                   _%tl166068166947%_
                   _%e166073166950%_
                   _%hd166072166953%_
                   _%tl166071166955%_
                   _%e166076166958%_
                   _%hd166075166961%_
                   _%tl166074166963%_
                   _%e166079166966%_
                   _%hd166078166969%_
                   _%tl166077166971%_
                   _%e166082166974%_
                   _%hd166081166977%_
                   _%tl166080166979%_
                   _%e166085166982%_
                   _%hd166084166985%_
                   _%tl166083166987%_))
              (_%__kont170151170152%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont170151170152%_))
                                          (_%__kont170151170152%_))
                                      (_%__kont170151170152%_))))
                              (_%__kont170151170152%_))))
                      (_%__kont170151170152%_))
                  (_%__kont170151170152%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont170151170152%_))
                                              (_%__kont170151170152%_))
                                          (_%__kont170151170152%_))))
                                  (_%__kont170151170152%_))))
                          (_%__kont170151170152%_))))
                  (_%__kont170151170152%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self164989%_ _%stx164990%_)
        (letrec ((_%force-e164992%_
                  (lambda (_%target166048%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target166048%_ '()))
                                      '()))))))
          (let* ((_%__stx170635170636%_ _%stx164990%_)
                 (_%g165000165222%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx170635170636%_)))))
            (let ((_%__kont170637170638%_
                   (lambda (_%L165994%_ _%L165995%_ _%L165996%_ _%L165997%_)
                     (let ((_%$method166042%_
                            (let ((__tmp171270
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self164989%_ 'methods)))
                                  (__tmp171269
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L165995%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp171270 __tmp171269)))
                           (_%args166043%_
                            (map (lambda (_%g166030166032%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self164989%_
                                      _%g166030166032%_)))
                                 (let ((__tmp171271
                                        (lambda (_%g166034166037%_
                                                 _%g166035166039%_)
                                          (cons _%g166034166037%_
                                                _%g166035166039%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp171271 '() _%L165994%_)))))
                       (let ((__tmp171272
                              (cons '%#call
                                    (cons (let ()
                                            (declare (not safe))
                                            (_%force-e164992%_
                                             _%$method166042%_))
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self164989%_
                                                               'receiver))
                                                            '()))
                                                _%args166043%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp171272 _%stx164990%_)))))
                  (_%__kont170641170642%_
                   (lambda (_%L165826%_
                            _%L165827%_
                            _%L165828%_
                            _%L165829%_
                            _%L165830%_)
                     (let ((_%$method165882%_
                            (let ((__tmp171274
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self164989%_ 'methods)))
                                  (__tmp171273
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L165827%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp171274 __tmp171273)))
                           (_%args165883%_
                            (map (lambda (_%g165870165872%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self164989%_
                                      _%g165870165872%_)))
                                 (let ((__tmp171275
                                        (lambda (_%g165874165877%_
                                                 _%g165875165879%_)
                                          (cons _%g165874165877%_
                                                _%g165875165879%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp171275 '() _%L165826%_)))))
                       (let ((__tmp171276
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (_%force-e164992%_
                                                   _%$method165882%_))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self164989%_ 'receiver))
                          '()))
              _%args165883%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp171276 _%stx164990%_)))))
                  (_%__kont170645170646%_
                   (lambda (_%L165657%_ _%L165658%_ _%L165659%_)
                     (let* ((_%$field165691%_
                             (let ((__tmp171278
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self164989%_ 'slots)))
                                   (__tmp171277
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%L165657%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp171278 __tmp171277)))
                            (__tmp171279
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self164989%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field165691%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self164989%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp171279 _%stx164990%_))))
                  (_%__kont170647170648%_
                   (lambda (_%L165531%_ _%L165532%_ _%L165533%_ _%L165534%_)
                     (let ((_%$field165569%_
                            (let ((__tmp171281
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self164989%_ 'slots)))
                                  (__tmp171280
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L165532%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp171281 __tmp171280)))
                           (_%expr165570%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1 _%self164989%_ _%L165531%_))))
                       (let ((__tmp171282
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self164989%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field165569%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self164989%_ 'receiver))
                          '()))
              (cons _%expr165570%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp171282 _%stx164990%_)))))
                  (_%__kont170649170650%_
                   (lambda (_%L165403%_ _%L165404%_)
                     (let* ((_%accessor165426%_
                             (let ((__tmp171283
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L165404%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp171283)))
                            (_%klass165428%_
                             (let ((__tmp171284
                                    (##structure-ref
                                     _%accessor165426%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx164990%_
                                __tmp171284)))
                            (_%slot165430%_
                             (##structure-ref
                              _%accessor165426%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (and (let ((__tmp171285
                                       (##structure-ref
                                        _%accessor165426%_
                                        '4
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp171285))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _%klass165428%_
                                       _%slot165430%_))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass165428%_
                                       '8
                                       '#f
                                       '#f))))
                           _%stx164990%_
                           (let* ((_%$field165436%_
                                   (let ((__tmp171286
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self164989%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp171286 _%slot165430%_)))
                                  (__tmp171287
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self164989%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field165436%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self164989%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp171287
                              _%stx164990%_))))))
                  (_%__kont170651170652%_
                   (lambda (_%L165298%_ _%L165299%_ _%L165300%_)
                     (let* ((_%mutator165328%_
                             (let ((__tmp171288
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L165300%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp171288)))
                            (_%klass165330%_
                             (let ((__tmp171289
                                    (##structure-ref
                                     _%mutator165328%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx164990%_
                                __tmp171289)))
                            (_%slot165332%_
                             (##structure-ref
                              _%mutator165328%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr165334%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1 _%self164989%_ _%L165298%_))))
                       (if (and (let ((__tmp171290
                                       (##structure-ref
                                        _%mutator165328%_
                                        '4
                                        gxc#!mutator::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp171290))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _%klass165330%_
                                       _%slot165332%_))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass165330%_
                                       '8
                                       '#f
                                       '#f))))
                           (let ((__tmp171291
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%L165300%_ '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L165299%_
                                                                '()))
                                                    (cons _%expr165334%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp171291 _%stx164990%_))
                           (let* ((_%$field165340%_
                                   (let ((__tmp171292
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self164989%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp171292 _%slot165332%_)))
                                  (__tmp171293
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self164989%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field165340%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self164989%_ 'receiver))
                               '()))
                   (cons _%expr165334%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp171293
                              _%stx164990%_))))))
                  (_%__kont170653170654%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self164989%_ _%stx164990%_)))))
              (let* ((_%__match171134171135%_
                      (lambda (_%e165196165234%_
                               _%hd165195165237%_
                               _%tl165194165239%_
                               _%e165199165242%_
                               _%hd165198165245%_
                               _%tl165197165247%_
                               _%e165202165250%_
                               _%hd165201165253%_
                               _%tl165200165255%_
                               _%e165205165258%_
                               _%hd165204165261%_
                               _%tl165203165263%_
                               _%e165208165266%_
                               _%hd165207165269%_
                               _%tl165206165271%_
                               _%e165211165274%_
                               _%hd165210165277%_
                               _%tl165209165279%_
                               _%e165214165282%_
                               _%hd165213165285%_
                               _%tl165212165287%_
                               _%e165217165290%_
                               _%hd165216165293%_
                               _%tl165215165295%_)
                        (let ((_%L165298%_ _%hd165216165293%_)
                              (_%L165299%_ _%hd165213165285%_)
                              (_%L165300%_ _%hd165204165261%_))
                          (if (and (let ((__tmp171294
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self164989%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L165299%_
                                      __tmp171294))
                                   (let ((__tmp171295
                                          (let ((__tmp171296
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L165300%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp171296))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp171295
                                      'gxc#!mutator::t)))
                              (_%__kont170651170652%_
                               _%L165298%_
                               _%L165299%_
                               _%L165300%_)
                              (_%__kont170653170654%_)))))
                     (_%__match171132171133%_
                      (lambda (_%e165196165234%_
                               _%hd165195165237%_
                               _%tl165194165239%_
                               _%e165199165242%_
                               _%hd165198165245%_
                               _%tl165197165247%_
                               _%e165202165250%_
                               _%hd165201165253%_
                               _%tl165200165255%_
                               _%e165205165258%_
                               _%hd165204165261%_
                               _%tl165203165263%_
                               _%e165208165266%_
                               _%hd165207165269%_
                               _%tl165206165271%_
                               _%e165211165274%_
                               _%hd165210165277%_
                               _%tl165209165279%_
                               _%e165214165282%_
                               _%hd165213165285%_
                               _%tl165212165287%_
                               _%e165217165290%_
                               _%hd165216165293%_
                               _%tl165215165295%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl165215165295%_))
                            (_%__match171134171135%_
                             _%e165196165234%_
                             _%hd165195165237%_
                             _%tl165194165239%_
                             _%e165199165242%_
                             _%hd165198165245%_
                             _%tl165197165247%_
                             _%e165202165250%_
                             _%hd165201165253%_
                             _%tl165200165255%_
                             _%e165205165258%_
                             _%hd165204165261%_
                             _%tl165203165263%_
                             _%e165208165266%_
                             _%hd165207165269%_
                             _%tl165206165271%_
                             _%e165211165274%_
                             _%hd165210165277%_
                             _%tl165209165279%_
                             _%e165214165282%_
                             _%hd165213165285%_
                             _%tl165212165287%_
                             _%e165217165290%_
                             _%hd165216165293%_
                             _%tl165215165295%_)
                            (_%__kont170653170654%_))))
                     (_%__match171126171127%_
                      (lambda (_%e165196165234%_
                               _%hd165195165237%_
                               _%tl165194165239%_
                               _%e165199165242%_
                               _%hd165198165245%_
                               _%tl165197165247%_
                               _%e165202165250%_
                               _%hd165201165253%_
                               _%tl165200165255%_
                               _%e165205165258%_
                               _%hd165204165261%_
                               _%tl165203165263%_
                               _%e165208165266%_
                               _%hd165207165269%_
                               _%tl165206165271%_
                               _%e165211165274%_
                               _%hd165210165277%_
                               _%tl165209165279%_
                               _%e165214165282%_
                               _%hd165213165285%_
                               _%tl165212165287%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl165206165271%_))
                            (let ((_%e165217165290%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl165206165271%_))))
                              (let ((_%tl165215165295%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e165217165290%_)))
                                    (_%hd165216165293%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e165217165290%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl165215165295%_))
                                    (_%__match171134171135%_
                                     _%e165196165234%_
                                     _%hd165195165237%_
                                     _%tl165194165239%_
                                     _%e165199165242%_
                                     _%hd165198165245%_
                                     _%tl165197165247%_
                                     _%e165202165250%_
                                     _%hd165201165253%_
                                     _%tl165200165255%_
                                     _%e165205165258%_
                                     _%hd165204165261%_
                                     _%tl165203165263%_
                                     _%e165208165266%_
                                     _%hd165207165269%_
                                     _%tl165206165271%_
                                     _%e165211165274%_
                                     _%hd165210165277%_
                                     _%tl165209165279%_
                                     _%e165214165282%_
                                     _%hd165213165285%_
                                     _%tl165212165287%_
                                     _%e165217165290%_
                                     _%hd165216165293%_
                                     _%tl165215165295%_)
                                    (_%__kont170653170654%_))))
                            (_%__kont170653170654%_))))
                     (_%__match171072171073%_
                      (lambda (_%e165172165347%_
                               _%hd165171165350%_
                               _%tl165170165352%_
                               _%e165175165355%_
                               _%hd165174165358%_
                               _%tl165173165360%_
                               _%e165178165363%_
                               _%hd165177165366%_
                               _%tl165176165368%_
                               _%e165181165371%_
                               _%hd165180165374%_
                               _%tl165179165376%_
                               _%e165184165379%_
                               _%hd165183165382%_
                               _%tl165182165384%_
                               _%e165187165387%_
                               _%hd165186165390%_
                               _%tl165185165392%_
                               _%e165190165395%_
                               _%hd165189165398%_
                               _%tl165188165400%_)
                        (let ((_%L165403%_ _%hd165189165398%_)
                              (_%L165404%_ _%hd165180165374%_))
                          (if (and (let ((__tmp171297
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self164989%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L165403%_
                                      __tmp171297))
                                   (let ((__tmp171298
                                          (let ((__tmp171299
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L165404%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp171299))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp171298
                                      'gxc#!accessor::t)))
                              (_%__kont170649170650%_ _%L165403%_ _%L165404%_)
                              (_%__kont170653170654%_)))))
                     (_%__match171070171071%_
                      (lambda (_%e165172165347%_
                               _%hd165171165350%_
                               _%tl165170165352%_
                               _%e165175165355%_
                               _%hd165174165358%_
                               _%tl165173165360%_
                               _%e165178165363%_
                               _%hd165177165366%_
                               _%tl165176165368%_
                               _%e165181165371%_
                               _%hd165180165374%_
                               _%tl165179165376%_
                               _%e165184165379%_
                               _%hd165183165382%_
                               _%tl165182165384%_
                               _%e165187165387%_
                               _%hd165186165390%_
                               _%tl165185165392%_
                               _%e165190165395%_
                               _%hd165189165398%_
                               _%tl165188165400%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl165182165384%_))
                            (_%__match171072171073%_
                             _%e165172165347%_
                             _%hd165171165350%_
                             _%tl165170165352%_
                             _%e165175165355%_
                             _%hd165174165358%_
                             _%tl165173165360%_
                             _%e165178165363%_
                             _%hd165177165366%_
                             _%tl165176165368%_
                             _%e165181165371%_
                             _%hd165180165374%_
                             _%tl165179165376%_
                             _%e165184165379%_
                             _%hd165183165382%_
                             _%tl165182165384%_
                             _%e165187165387%_
                             _%hd165186165390%_
                             _%tl165185165392%_
                             _%e165190165395%_
                             _%hd165189165398%_
                             _%tl165188165400%_)
                            (_%__match171126171127%_
                             _%e165172165347%_
                             _%hd165171165350%_
                             _%tl165170165352%_
                             _%e165175165355%_
                             _%hd165174165358%_
                             _%tl165173165360%_
                             _%e165178165363%_
                             _%hd165177165366%_
                             _%tl165176165368%_
                             _%e165181165371%_
                             _%hd165180165374%_
                             _%tl165179165376%_
                             _%e165184165379%_
                             _%hd165183165382%_
                             _%tl165182165384%_
                             _%e165187165387%_
                             _%hd165186165390%_
                             _%tl165185165392%_
                             _%e165190165395%_
                             _%hd165189165398%_
                             _%tl165188165400%_))))
                     (_%__match171016171017%_
                      (lambda (_%e165137165443%_
                               _%hd165136165446%_
                               _%tl165135165448%_
                               _%e165140165451%_
                               _%hd165139165454%_
                               _%tl165138165456%_
                               _%e165143165459%_
                               _%hd165142165462%_
                               _%tl165141165464%_
                               _%e165146165467%_
                               _%hd165145165470%_
                               _%tl165144165472%_
                               _%e165149165475%_
                               _%hd165148165478%_
                               _%tl165147165480%_
                               _%e165152165483%_
                               _%hd165151165486%_
                               _%tl165150165488%_
                               _%e165155165491%_
                               _%hd165154165494%_
                               _%tl165153165496%_
                               _%e165158165499%_
                               _%hd165157165502%_
                               _%tl165156165504%_
                               _%e165161165507%_
                               _%hd165160165510%_
                               _%tl165159165512%_
                               _%e165164165515%_
                               _%hd165163165518%_
                               _%tl165162165520%_
                               _%e165167165523%_
                               _%hd165166165526%_
                               _%tl165165165528%_)
                        (let ((_%L165531%_ _%hd165166165526%_)
                              (_%L165532%_ _%hd165163165518%_)
                              (_%L165533%_ _%hd165154165494%_)
                              (_%L165534%_ _%hd165145165470%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L165534%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L165534%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp171300
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self164989%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L165533%_
                                      __tmp171300)))
                              (_%__kont170647170648%_
                               _%L165531%_
                               _%L165532%_
                               _%L165533%_
                               _%L165534%_)
                              (_%__kont170653170654%_)))))
                     (_%__match171008171009%_
                      (lambda (_%e165137165443%_
                               _%hd165136165446%_
                               _%tl165135165448%_
                               _%e165140165451%_
                               _%hd165139165454%_
                               _%tl165138165456%_
                               _%e165143165459%_
                               _%hd165142165462%_
                               _%tl165141165464%_
                               _%e165146165467%_
                               _%hd165145165470%_
                               _%tl165144165472%_
                               _%e165149165475%_
                               _%hd165148165478%_
                               _%tl165147165480%_
                               _%e165152165483%_
                               _%hd165151165486%_
                               _%tl165150165488%_
                               _%e165155165491%_
                               _%hd165154165494%_
                               _%tl165153165496%_
                               _%e165158165499%_
                               _%hd165157165502%_
                               _%tl165156165504%_
                               _%e165161165507%_
                               _%hd165160165510%_
                               _%tl165159165512%_
                               _%e165164165515%_
                               _%hd165163165518%_
                               _%tl165162165520%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl165156165504%_))
                            (let ((_%e165167165523%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl165156165504%_))))
                              (let ((_%tl165165165528%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e165167165523%_)))
                                    (_%hd165166165526%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e165167165523%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl165165165528%_))
                                    (_%__match171016171017%_
                                     _%e165137165443%_
                                     _%hd165136165446%_
                                     _%tl165135165448%_
                                     _%e165140165451%_
                                     _%hd165139165454%_
                                     _%tl165138165456%_
                                     _%e165143165459%_
                                     _%hd165142165462%_
                                     _%tl165141165464%_
                                     _%e165146165467%_
                                     _%hd165145165470%_
                                     _%tl165144165472%_
                                     _%e165149165475%_
                                     _%hd165148165478%_
                                     _%tl165147165480%_
                                     _%e165152165483%_
                                     _%hd165151165486%_
                                     _%tl165150165488%_
                                     _%e165155165491%_
                                     _%hd165154165494%_
                                     _%tl165153165496%_
                                     _%e165158165499%_
                                     _%hd165157165502%_
                                     _%tl165156165504%_
                                     _%e165161165507%_
                                     _%hd165160165510%_
                                     _%tl165159165512%_
                                     _%e165164165515%_
                                     _%hd165163165518%_
                                     _%tl165162165520%_
                                     _%e165167165523%_
                                     _%hd165166165526%_
                                     _%tl165165165528%_)
                                    (_%__kont170653170654%_))))
                            (_%__match171132171133%_
                             _%e165137165443%_
                             _%hd165136165446%_
                             _%tl165135165448%_
                             _%e165140165451%_
                             _%hd165139165454%_
                             _%tl165138165456%_
                             _%e165143165459%_
                             _%hd165142165462%_
                             _%tl165141165464%_
                             _%e165146165467%_
                             _%hd165145165470%_
                             _%tl165144165472%_
                             _%e165149165475%_
                             _%hd165148165478%_
                             _%tl165147165480%_
                             _%e165152165483%_
                             _%hd165151165486%_
                             _%tl165150165488%_
                             _%e165155165491%_
                             _%hd165154165494%_
                             _%tl165153165496%_
                             _%e165158165499%_
                             _%hd165157165502%_
                             _%tl165156165504%_))))
                     (_%__match170930170931%_
                      (lambda (_%e165103165577%_
                               _%hd165102165580%_
                               _%tl165101165582%_
                               _%e165106165585%_
                               _%hd165105165588%_
                               _%tl165104165590%_
                               _%e165109165593%_
                               _%hd165108165596%_
                               _%tl165107165598%_
                               _%e165112165601%_
                               _%hd165111165604%_
                               _%tl165110165606%_
                               _%e165115165609%_
                               _%hd165114165612%_
                               _%tl165113165614%_
                               _%e165118165617%_
                               _%hd165117165620%_
                               _%tl165116165622%_
                               _%e165121165625%_
                               _%hd165120165628%_
                               _%tl165119165630%_
                               _%e165124165633%_
                               _%hd165123165636%_
                               _%tl165122165638%_
                               _%e165127165641%_
                               _%hd165126165644%_
                               _%tl165125165646%_
                               _%e165130165649%_
                               _%hd165129165652%_
                               _%tl165128165654%_)
                        (let ((_%L165657%_ _%hd165129165652%_)
                              (_%L165658%_ _%hd165120165628%_)
                              (_%L165659%_ _%hd165111165604%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L165659%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L165659%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp171301
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self164989%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L165658%_
                                      __tmp171301)))
                              (_%__kont170645170646%_
                               _%L165657%_
                               _%L165658%_
                               _%L165659%_)
                              (_%__match171134171135%_
                               _%e165103165577%_
                               _%hd165102165580%_
                               _%tl165101165582%_
                               _%e165106165585%_
                               _%hd165105165588%_
                               _%tl165104165590%_
                               _%e165109165593%_
                               _%hd165108165596%_
                               _%tl165107165598%_
                               _%e165112165601%_
                               _%hd165111165604%_
                               _%tl165110165606%_
                               _%e165115165609%_
                               _%hd165114165612%_
                               _%tl165113165614%_
                               _%e165118165617%_
                               _%hd165117165620%_
                               _%tl165116165622%_
                               _%e165121165625%_
                               _%hd165120165628%_
                               _%tl165119165630%_
                               _%e165124165633%_
                               _%hd165123165636%_
                               _%tl165122165638%_)))))
                     (_%__match170928170929%_
                      (lambda (_%e165103165577%_
                               _%hd165102165580%_
                               _%tl165101165582%_
                               _%e165106165585%_
                               _%hd165105165588%_
                               _%tl165104165590%_
                               _%e165109165593%_
                               _%hd165108165596%_
                               _%tl165107165598%_
                               _%e165112165601%_
                               _%hd165111165604%_
                               _%tl165110165606%_
                               _%e165115165609%_
                               _%hd165114165612%_
                               _%tl165113165614%_
                               _%e165118165617%_
                               _%hd165117165620%_
                               _%tl165116165622%_
                               _%e165121165625%_
                               _%hd165120165628%_
                               _%tl165119165630%_
                               _%e165124165633%_
                               _%hd165123165636%_
                               _%tl165122165638%_
                               _%e165127165641%_
                               _%hd165126165644%_
                               _%tl165125165646%_
                               _%e165130165649%_
                               _%hd165129165652%_
                               _%tl165128165654%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl165122165638%_))
                            (_%__match170930170931%_
                             _%e165103165577%_
                             _%hd165102165580%_
                             _%tl165101165582%_
                             _%e165106165585%_
                             _%hd165105165588%_
                             _%tl165104165590%_
                             _%e165109165593%_
                             _%hd165108165596%_
                             _%tl165107165598%_
                             _%e165112165601%_
                             _%hd165111165604%_
                             _%tl165110165606%_
                             _%e165115165609%_
                             _%hd165114165612%_
                             _%tl165113165614%_
                             _%e165118165617%_
                             _%hd165117165620%_
                             _%tl165116165622%_
                             _%e165121165625%_
                             _%hd165120165628%_
                             _%tl165119165630%_
                             _%e165124165633%_
                             _%hd165123165636%_
                             _%tl165122165638%_
                             _%e165127165641%_
                             _%hd165126165644%_
                             _%tl165125165646%_
                             _%e165130165649%_
                             _%hd165129165652%_
                             _%tl165128165654%_)
                            (_%__match171008171009%_
                             _%e165103165577%_
                             _%hd165102165580%_
                             _%tl165101165582%_
                             _%e165106165585%_
                             _%hd165105165588%_
                             _%tl165104165590%_
                             _%e165109165593%_
                             _%hd165108165596%_
                             _%tl165107165598%_
                             _%e165112165601%_
                             _%hd165111165604%_
                             _%tl165110165606%_
                             _%e165115165609%_
                             _%hd165114165612%_
                             _%tl165113165614%_
                             _%e165118165617%_
                             _%hd165117165620%_
                             _%tl165116165622%_
                             _%e165121165625%_
                             _%hd165120165628%_
                             _%tl165119165630%_
                             _%e165124165633%_
                             _%hd165123165636%_
                             _%tl165122165638%_
                             _%e165127165641%_
                             _%hd165126165644%_
                             _%tl165125165646%_
                             _%e165130165649%_
                             _%hd165129165652%_
                             _%tl165128165654%_))))
                     (_%__match170918170919%_
                      (lambda (_%e165103165577%_
                               _%hd165102165580%_
                               _%tl165101165582%_
                               _%e165106165585%_
                               _%hd165105165588%_
                               _%tl165104165590%_
                               _%e165109165593%_
                               _%hd165108165596%_
                               _%tl165107165598%_
                               _%e165112165601%_
                               _%hd165111165604%_
                               _%tl165110165606%_
                               _%e165115165609%_
                               _%hd165114165612%_
                               _%tl165113165614%_
                               _%e165118165617%_
                               _%hd165117165620%_
                               _%tl165116165622%_
                               _%e165121165625%_
                               _%hd165120165628%_
                               _%tl165119165630%_
                               _%e165124165633%_
                               _%hd165123165636%_
                               _%tl165122165638%_
                               _%e165127165641%_
                               _%hd165126165644%_
                               _%tl165125165646%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd165126165644%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl165125165646%_))
                                (let ((_%e165130165649%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl165125165646%_))))
                                  (let ((_%tl165128165654%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e165130165649%_)))
                                        (_%hd165129165652%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e165130165649%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl165128165654%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl165122165638%_))
                                            (_%__match170930170931%_
                                             _%e165103165577%_
                                             _%hd165102165580%_
                                             _%tl165101165582%_
                                             _%e165106165585%_
                                             _%hd165105165588%_
                                             _%tl165104165590%_
                                             _%e165109165593%_
                                             _%hd165108165596%_
                                             _%tl165107165598%_
                                             _%e165112165601%_
                                             _%hd165111165604%_
                                             _%tl165110165606%_
                                             _%e165115165609%_
                                             _%hd165114165612%_
                                             _%tl165113165614%_
                                             _%e165118165617%_
                                             _%hd165117165620%_
                                             _%tl165116165622%_
                                             _%e165121165625%_
                                             _%hd165120165628%_
                                             _%tl165119165630%_
                                             _%e165124165633%_
                                             _%hd165123165636%_
                                             _%tl165122165638%_
                                             _%e165127165641%_
                                             _%hd165126165644%_
                                             _%tl165125165646%_
                                             _%e165130165649%_
                                             _%hd165129165652%_
                                             _%tl165128165654%_)
                                            (_%__match171008171009%_
                                             _%e165103165577%_
                                             _%hd165102165580%_
                                             _%tl165101165582%_
                                             _%e165106165585%_
                                             _%hd165105165588%_
                                             _%tl165104165590%_
                                             _%e165109165593%_
                                             _%hd165108165596%_
                                             _%tl165107165598%_
                                             _%e165112165601%_
                                             _%hd165111165604%_
                                             _%tl165110165606%_
                                             _%e165115165609%_
                                             _%hd165114165612%_
                                             _%tl165113165614%_
                                             _%e165118165617%_
                                             _%hd165117165620%_
                                             _%tl165116165622%_
                                             _%e165121165625%_
                                             _%hd165120165628%_
                                             _%tl165119165630%_
                                             _%e165124165633%_
                                             _%hd165123165636%_
                                             _%tl165122165638%_
                                             _%e165127165641%_
                                             _%hd165126165644%_
                                             _%tl165125165646%_
                                             _%e165130165649%_
                                             _%hd165129165652%_
                                             _%tl165128165654%_))
                                        (_%__match171132171133%_
                                         _%e165103165577%_
                                         _%hd165102165580%_
                                         _%tl165101165582%_
                                         _%e165106165585%_
                                         _%hd165105165588%_
                                         _%tl165104165590%_
                                         _%e165109165593%_
                                         _%hd165108165596%_
                                         _%tl165107165598%_
                                         _%e165112165601%_
                                         _%hd165111165604%_
                                         _%tl165110165606%_
                                         _%e165115165609%_
                                         _%hd165114165612%_
                                         _%tl165113165614%_
                                         _%e165118165617%_
                                         _%hd165117165620%_
                                         _%tl165116165622%_
                                         _%e165121165625%_
                                         _%hd165120165628%_
                                         _%tl165119165630%_
                                         _%e165124165633%_
                                         _%hd165123165636%_
                                         _%tl165122165638%_))))
                                (_%__match171132171133%_
                                 _%e165103165577%_
                                 _%hd165102165580%_
                                 _%tl165101165582%_
                                 _%e165106165585%_
                                 _%hd165105165588%_
                                 _%tl165104165590%_
                                 _%e165109165593%_
                                 _%hd165108165596%_
                                 _%tl165107165598%_
                                 _%e165112165601%_
                                 _%hd165111165604%_
                                 _%tl165110165606%_
                                 _%e165115165609%_
                                 _%hd165114165612%_
                                 _%tl165113165614%_
                                 _%e165118165617%_
                                 _%hd165117165620%_
                                 _%tl165116165622%_
                                 _%e165121165625%_
                                 _%hd165120165628%_
                                 _%tl165119165630%_
                                 _%e165124165633%_
                                 _%hd165123165636%_
                                 _%tl165122165638%_))
                            (_%__match171132171133%_
                             _%e165103165577%_
                             _%hd165102165580%_
                             _%tl165101165582%_
                             _%e165106165585%_
                             _%hd165105165588%_
                             _%tl165104165590%_
                             _%e165109165593%_
                             _%hd165108165596%_
                             _%tl165107165598%_
                             _%e165112165601%_
                             _%hd165111165604%_
                             _%tl165110165606%_
                             _%e165115165609%_
                             _%hd165114165612%_
                             _%tl165113165614%_
                             _%e165118165617%_
                             _%hd165117165620%_
                             _%tl165116165622%_
                             _%e165121165625%_
                             _%hd165120165628%_
                             _%tl165119165630%_
                             _%e165124165633%_
                             _%hd165123165636%_
                             _%tl165122165638%_))))
                     (_%__match170850170851%_
                      (lambda (_%e165052165698%_
                               _%hd165051165701%_
                               _%tl165050165703%_
                               _%e165055165706%_
                               _%hd165054165709%_
                               _%tl165053165711%_
                               _%e165058165714%_
                               _%hd165057165717%_
                               _%tl165056165719%_
                               _%e165061165722%_
                               _%hd165060165725%_
                               _%tl165059165727%_
                               _%e165064165730%_
                               _%hd165063165733%_
                               _%tl165062165735%_
                               _%e165067165738%_
                               _%hd165066165741%_
                               _%tl165065165743%_
                               _%e165070165746%_
                               _%hd165069165749%_
                               _%tl165068165751%_
                               _%e165073165754%_
                               _%hd165072165757%_
                               _%tl165071165759%_
                               _%e165076165762%_
                               _%hd165075165765%_
                               _%tl165074165767%_
                               _%e165079165770%_
                               _%hd165078165773%_
                               _%tl165077165775%_
                               _%e165082165778%_
                               _%hd165081165781%_
                               _%tl165080165783%_
                               _%e165085165786%_
                               _%hd165084165789%_
                               _%tl165083165791%_
                               _%e165088165794%_
                               _%hd165087165797%_
                               _%tl165086165799%_
                               _%__splice170643170644%_
                               _%target165089165802%_
                               _%tl165091165804%_)
                        (letrec ((_%loop165092165807%_
                                  (lambda (_%hd165090165810%_
                                           _%args165096165812%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd165090165810%_))
                                        (let ((_%e165093165815%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd165090165810%_))))
                                          (let ((_%lp-tl165095165820%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e165093165815%_)))
                                                (_%lp-hd165094165818%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e165093165815%_))))
                                            (let ((__tmp171302
                                                   (cons _%lp-hd165094165818%_
                                                         _%args165096165812%_)))
                                              (declare (not safe))
                                              (_%loop165092165807%_
                                               _%lp-tl165095165820%_
                                               __tmp171302))))
                                        (let ((_%args165097165823%_
                                               (reverse _%args165096165812%_)))
                                          (let ((_%L165826%_
                                                 _%args165097165823%_)
                                                (_%L165827%_
                                                 _%hd165087165797%_)
                                                (_%L165828%_
                                                 _%hd165078165773%_)
                                                (_%L165829%_
                                                 _%hd165069165749%_)
                                                (_%L165830%_
                                                 _%hd165060165725%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L165830%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L165829%_
                                                        'call-method))
                                                     (let ((__tmp171303
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self164989%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L165828%_
                                                        __tmp171303)))
                                                (_%__kont170641170642%_
                                                 _%L165826%_
                                                 _%L165827%_
                                                 _%L165828%_
                                                 _%L165829%_
                                                 _%L165830%_)
                                                (_%__kont170653170654%_))))))))
                          (let ()
                            (declare (not safe))
                            (_%loop165092165807%_
                             _%target165089165802%_
                             '())))))
                     (_%__match170808170809%_
                      (lambda (_%e165052165698%_
                               _%hd165051165701%_
                               _%tl165050165703%_
                               _%e165055165706%_
                               _%hd165054165709%_
                               _%tl165053165711%_
                               _%e165058165714%_
                               _%hd165057165717%_
                               _%tl165056165719%_
                               _%e165061165722%_
                               _%hd165060165725%_
                               _%tl165059165727%_
                               _%e165064165730%_
                               _%hd165063165733%_
                               _%tl165062165735%_
                               _%e165067165738%_
                               _%hd165066165741%_
                               _%tl165065165743%_
                               _%e165070165746%_
                               _%hd165069165749%_
                               _%tl165068165751%_
                               _%e165073165754%_
                               _%hd165072165757%_
                               _%tl165071165759%_
                               _%e165076165762%_
                               _%hd165075165765%_
                               _%tl165074165767%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd165075165765%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl165074165767%_))
                                (let ((_%e165079165770%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl165074165767%_))))
                                  (let ((_%tl165077165775%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e165079165770%_)))
                                        (_%hd165078165773%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e165079165770%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl165077165775%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl165071165759%_))
                                            (let ((_%e165082165778%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl165071165759%_))))
                                              (let ((_%tl165080165783%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e165082165778%_)))
                                                    (_%hd165081165781%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e165082165778%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd165081165781%_))
                                                    (let ((_%e165085165786%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd165081165781%_))))
                                                      (let ((_%tl165083165791%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e165085165786%_)))
                    (_%hd165084165789%_
                     (let () (declare (not safe)) (##car _%e165085165786%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd165084165789%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd165084165789%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl165083165791%_))
                            (let ((_%e165088165794%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl165083165791%_))))
                              (let ((_%tl165086165799%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e165088165794%_)))
                                    (_%hd165087165797%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e165088165794%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl165086165799%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl165080165783%_))
                                        (let ((_%__splice170643170644%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl165080165783%_
                                                  '0))))
                                          (let ((_%tl165091165804%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice170643170644%_
                                                    '1)))
                                                (_%target165089165802%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice170643170644%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl165091165804%_))
                                                (_%__match170850170851%_
                                                 _%e165052165698%_
                                                 _%hd165051165701%_
                                                 _%tl165050165703%_
                                                 _%e165055165706%_
                                                 _%hd165054165709%_
                                                 _%tl165053165711%_
                                                 _%e165058165714%_
                                                 _%hd165057165717%_
                                                 _%tl165056165719%_
                                                 _%e165061165722%_
                                                 _%hd165060165725%_
                                                 _%tl165059165727%_
                                                 _%e165064165730%_
                                                 _%hd165063165733%_
                                                 _%tl165062165735%_
                                                 _%e165067165738%_
                                                 _%hd165066165741%_
                                                 _%tl165065165743%_
                                                 _%e165070165746%_
                                                 _%hd165069165749%_
                                                 _%tl165068165751%_
                                                 _%e165073165754%_
                                                 _%hd165072165757%_
                                                 _%tl165071165759%_
                                                 _%e165076165762%_
                                                 _%hd165075165765%_
                                                 _%tl165074165767%_
                                                 _%e165079165770%_
                                                 _%hd165078165773%_
                                                 _%tl165077165775%_
                                                 _%e165082165778%_
                                                 _%hd165081165781%_
                                                 _%tl165080165783%_
                                                 _%e165085165786%_
                                                 _%hd165084165789%_
                                                 _%tl165083165791%_
                                                 _%e165088165794%_
                                                 _%hd165087165797%_
                                                 _%tl165086165799%_
                                                 _%__splice170643170644%_
                                                 _%target165089165802%_
                                                 _%tl165091165804%_)
                                                (_%__kont170653170654%_))))
                                        (_%__kont170653170654%_))
                                    (_%__kont170653170654%_))))
                            (_%__kont170653170654%_))
                        (_%__kont170653170654%_))
                    (_%__kont170653170654%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont170653170654%_))))
                                            (_%__match171132171133%_
                                             _%e165052165698%_
                                             _%hd165051165701%_
                                             _%tl165050165703%_
                                             _%e165055165706%_
                                             _%hd165054165709%_
                                             _%tl165053165711%_
                                             _%e165058165714%_
                                             _%hd165057165717%_
                                             _%tl165056165719%_
                                             _%e165061165722%_
                                             _%hd165060165725%_
                                             _%tl165059165727%_
                                             _%e165064165730%_
                                             _%hd165063165733%_
                                             _%tl165062165735%_
                                             _%e165067165738%_
                                             _%hd165066165741%_
                                             _%tl165065165743%_
                                             _%e165070165746%_
                                             _%hd165069165749%_
                                             _%tl165068165751%_
                                             _%e165073165754%_
                                             _%hd165072165757%_
                                             _%tl165071165759%_))
                                        (_%__match171132171133%_
                                         _%e165052165698%_
                                         _%hd165051165701%_
                                         _%tl165050165703%_
                                         _%e165055165706%_
                                         _%hd165054165709%_
                                         _%tl165053165711%_
                                         _%e165058165714%_
                                         _%hd165057165717%_
                                         _%tl165056165719%_
                                         _%e165061165722%_
                                         _%hd165060165725%_
                                         _%tl165059165727%_
                                         _%e165064165730%_
                                         _%hd165063165733%_
                                         _%tl165062165735%_
                                         _%e165067165738%_
                                         _%hd165066165741%_
                                         _%tl165065165743%_
                                         _%e165070165746%_
                                         _%hd165069165749%_
                                         _%tl165068165751%_
                                         _%e165073165754%_
                                         _%hd165072165757%_
                                         _%tl165071165759%_))))
                                (_%__match171132171133%_
                                 _%e165052165698%_
                                 _%hd165051165701%_
                                 _%tl165050165703%_
                                 _%e165055165706%_
                                 _%hd165054165709%_
                                 _%tl165053165711%_
                                 _%e165058165714%_
                                 _%hd165057165717%_
                                 _%tl165056165719%_
                                 _%e165061165722%_
                                 _%hd165060165725%_
                                 _%tl165059165727%_
                                 _%e165064165730%_
                                 _%hd165063165733%_
                                 _%tl165062165735%_
                                 _%e165067165738%_
                                 _%hd165066165741%_
                                 _%tl165065165743%_
                                 _%e165070165746%_
                                 _%hd165069165749%_
                                 _%tl165068165751%_
                                 _%e165073165754%_
                                 _%hd165072165757%_
                                 _%tl165071165759%_))
                            (_%__match170918170919%_
                             _%e165052165698%_
                             _%hd165051165701%_
                             _%tl165050165703%_
                             _%e165055165706%_
                             _%hd165054165709%_
                             _%tl165053165711%_
                             _%e165058165714%_
                             _%hd165057165717%_
                             _%tl165056165719%_
                             _%e165061165722%_
                             _%hd165060165725%_
                             _%tl165059165727%_
                             _%e165064165730%_
                             _%hd165063165733%_
                             _%tl165062165735%_
                             _%e165067165738%_
                             _%hd165066165741%_
                             _%tl165065165743%_
                             _%e165070165746%_
                             _%hd165069165749%_
                             _%tl165068165751%_
                             _%e165073165754%_
                             _%hd165072165757%_
                             _%tl165071165759%_
                             _%e165076165762%_
                             _%hd165075165765%_
                             _%tl165074165767%_))))
                     (_%__match170740170741%_
                      (lambda (_%e165008165890%_
                               _%hd165007165893%_
                               _%tl165006165895%_
                               _%e165011165898%_
                               _%hd165010165901%_
                               _%tl165009165903%_
                               _%e165014165906%_
                               _%hd165013165909%_
                               _%tl165012165911%_
                               _%e165017165914%_
                               _%hd165016165917%_
                               _%tl165015165919%_
                               _%e165020165922%_
                               _%hd165019165925%_
                               _%tl165018165927%_
                               _%e165023165930%_
                               _%hd165022165933%_
                               _%tl165021165935%_
                               _%e165026165938%_
                               _%hd165025165941%_
                               _%tl165024165943%_
                               _%e165029165946%_
                               _%hd165028165949%_
                               _%tl165027165951%_
                               _%e165032165954%_
                               _%hd165031165957%_
                               _%tl165030165959%_
                               _%e165035165962%_
                               _%hd165034165965%_
                               _%tl165033165967%_
                               _%__splice170639170640%_
                               _%target165036165970%_
                               _%tl165038165972%_)
                        (letrec ((_%loop165039165975%_
                                  (lambda (_%hd165037165978%_
                                           _%args165043165980%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd165037165978%_))
                                        (let ((_%e165040165983%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd165037165978%_))))
                                          (let ((_%lp-tl165042165988%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e165040165983%_)))
                                                (_%lp-hd165041165986%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e165040165983%_))))
                                            (let ((__tmp171304
                                                   (cons _%lp-hd165041165986%_
                                                         _%args165043165980%_)))
                                              (declare (not safe))
                                              (_%loop165039165975%_
                                               _%lp-tl165042165988%_
                                               __tmp171304))))
                                        (let ((_%args165044165991%_
                                               (reverse _%args165043165980%_)))
                                          (let ((_%L165994%_
                                                 _%args165044165991%_)
                                                (_%L165995%_
                                                 _%hd165034165965%_)
                                                (_%L165996%_
                                                 _%hd165025165941%_)
                                                (_%L165997%_
                                                 _%hd165016165917%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L165997%_
                                                        'call-method))
                                                     (let ((__tmp171305
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self164989%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L165996%_
                                                        __tmp171305)))
                                                (_%__kont170637170638%_
                                                 _%L165994%_
                                                 _%L165995%_
                                                 _%L165996%_
                                                 _%L165997%_)
                                                (_%__match170928170929%_
                                                 _%e165008165890%_
                                                 _%hd165007165893%_
                                                 _%tl165006165895%_
                                                 _%e165011165898%_
                                                 _%hd165010165901%_
                                                 _%tl165009165903%_
                                                 _%e165014165906%_
                                                 _%hd165013165909%_
                                                 _%tl165012165911%_
                                                 _%e165017165914%_
                                                 _%hd165016165917%_
                                                 _%tl165015165919%_
                                                 _%e165020165922%_
                                                 _%hd165019165925%_
                                                 _%tl165018165927%_
                                                 _%e165023165930%_
                                                 _%hd165022165933%_
                                                 _%tl165021165935%_
                                                 _%e165026165938%_
                                                 _%hd165025165941%_
                                                 _%tl165024165943%_
                                                 _%e165029165946%_
                                                 _%hd165028165949%_
                                                 _%tl165027165951%_
                                                 _%e165032165954%_
                                                 _%hd165031165957%_
                                                 _%tl165030165959%_
                                                 _%e165035165962%_
                                                 _%hd165034165965%_
                                                 _%tl165033165967%_))))))))
                          (let ()
                            (declare (not safe))
                            (_%loop165039165975%_
                             _%target165036165970%_
                             '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx170635170636%_))
                    (let ((_%e165008165890%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx170635170636%_))))
                      (let ((_%tl165006165895%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e165008165890%_)))
                            (_%hd165007165893%_
                             (let ()
                               (declare (not safe))
                               (##car _%e165008165890%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl165006165895%_))
                            (let ((_%e165011165898%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl165006165895%_))))
                              (let ((_%tl165009165903%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e165011165898%_)))
                                    (_%hd165010165901%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e165011165898%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd165010165901%_))
                                    (let ((_%e165014165906%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd165010165901%_))))
                                      (let ((_%tl165012165911%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e165014165906%_)))
                                            (_%hd165013165909%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e165014165906%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd165013165909%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd165013165909%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl165012165911%_))
                                                    (let ((_%e165017165914%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl165012165911%_))))
                                                      (let ((_%tl165015165919%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e165017165914%_)))
                    (_%hd165016165917%_
                     (let () (declare (not safe)) (##car _%e165017165914%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl165015165919%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl165009165903%_))
                        (let ((_%e165020165922%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl165009165903%_))))
                          (let ((_%tl165018165927%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e165020165922%_)))
                                (_%hd165019165925%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e165020165922%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd165019165925%_))
                                (let ((_%e165023165930%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd165019165925%_))))
                                  (let ((_%tl165021165935%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e165023165930%_)))
                                        (_%hd165022165933%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e165023165930%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd165022165933%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd165022165933%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl165021165935%_))
                                                (let ((_%e165026165938%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl165021165935%_))))
                                                  (let ((_%tl165024165943%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e165026165938%_)))
                                                        (_%hd165025165941%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e165026165938%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl165024165943%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl165018165927%_))
                                                            (let ((_%e165029165946%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl165018165927%_))))
                      (let ((_%tl165027165951%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e165029165946%_)))
                            (_%hd165028165949%_
                             (let ()
                               (declare (not safe))
                               (##car _%e165029165946%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd165028165949%_))
                            (let ((_%e165032165954%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd165028165949%_))))
                              (let ((_%tl165030165959%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e165032165954%_)))
                                    (_%hd165031165957%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e165032165954%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd165031165957%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd165031165957%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl165030165959%_))
                                            (let ((_%e165035165962%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl165030165959%_))))
                                              (let ((_%tl165033165967%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e165035165962%_)))
                                                    (_%hd165034165965%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e165035165962%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl165033165967%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl165027165951%_))
                                                        (let ((_%__splice170639170640%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _%tl165027165951%_ '0))))
                  (let ((_%tl165038165972%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice170639170640%_ '1)))
                        (_%target165036165970%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice170639170640%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl165038165972%_))
                        (_%__match170740170741%_
                         _%e165008165890%_
                         _%hd165007165893%_
                         _%tl165006165895%_
                         _%e165011165898%_
                         _%hd165010165901%_
                         _%tl165009165903%_
                         _%e165014165906%_
                         _%hd165013165909%_
                         _%tl165012165911%_
                         _%e165017165914%_
                         _%hd165016165917%_
                         _%tl165015165919%_
                         _%e165020165922%_
                         _%hd165019165925%_
                         _%tl165018165927%_
                         _%e165023165930%_
                         _%hd165022165933%_
                         _%tl165021165935%_
                         _%e165026165938%_
                         _%hd165025165941%_
                         _%tl165024165943%_
                         _%e165029165946%_
                         _%hd165028165949%_
                         _%tl165027165951%_
                         _%e165032165954%_
                         _%hd165031165957%_
                         _%tl165030165959%_
                         _%e165035165962%_
                         _%hd165034165965%_
                         _%tl165033165967%_
                         _%__splice170639170640%_
                         _%target165036165970%_
                         _%tl165038165972%_)
                        (_%__match170928170929%_
                         _%e165008165890%_
                         _%hd165007165893%_
                         _%tl165006165895%_
                         _%e165011165898%_
                         _%hd165010165901%_
                         _%tl165009165903%_
                         _%e165014165906%_
                         _%hd165013165909%_
                         _%tl165012165911%_
                         _%e165017165914%_
                         _%hd165016165917%_
                         _%tl165015165919%_
                         _%e165020165922%_
                         _%hd165019165925%_
                         _%tl165018165927%_
                         _%e165023165930%_
                         _%hd165022165933%_
                         _%tl165021165935%_
                         _%e165026165938%_
                         _%hd165025165941%_
                         _%tl165024165943%_
                         _%e165029165946%_
                         _%hd165028165949%_
                         _%tl165027165951%_
                         _%e165032165954%_
                         _%hd165031165957%_
                         _%tl165030165959%_
                         _%e165035165962%_
                         _%hd165034165965%_
                         _%tl165033165967%_))))
                (_%__match170928170929%_
                 _%e165008165890%_
                 _%hd165007165893%_
                 _%tl165006165895%_
                 _%e165011165898%_
                 _%hd165010165901%_
                 _%tl165009165903%_
                 _%e165014165906%_
                 _%hd165013165909%_
                 _%tl165012165911%_
                 _%e165017165914%_
                 _%hd165016165917%_
                 _%tl165015165919%_
                 _%e165020165922%_
                 _%hd165019165925%_
                 _%tl165018165927%_
                 _%e165023165930%_
                 _%hd165022165933%_
                 _%tl165021165935%_
                 _%e165026165938%_
                 _%hd165025165941%_
                 _%tl165024165943%_
                 _%e165029165946%_
                 _%hd165028165949%_
                 _%tl165027165951%_
                 _%e165032165954%_
                 _%hd165031165957%_
                 _%tl165030165959%_
                 _%e165035165962%_
                 _%hd165034165965%_
                 _%tl165033165967%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match171132171133%_
                                                     _%e165008165890%_
                                                     _%hd165007165893%_
                                                     _%tl165006165895%_
                                                     _%e165011165898%_
                                                     _%hd165010165901%_
                                                     _%tl165009165903%_
                                                     _%e165014165906%_
                                                     _%hd165013165909%_
                                                     _%tl165012165911%_
                                                     _%e165017165914%_
                                                     _%hd165016165917%_
                                                     _%tl165015165919%_
                                                     _%e165020165922%_
                                                     _%hd165019165925%_
                                                     _%tl165018165927%_
                                                     _%e165023165930%_
                                                     _%hd165022165933%_
                                                     _%tl165021165935%_
                                                     _%e165026165938%_
                                                     _%hd165025165941%_
                                                     _%tl165024165943%_
                                                     _%e165029165946%_
                                                     _%hd165028165949%_
                                                     _%tl165027165951%_))))
                                            (_%__match171132171133%_
                                             _%e165008165890%_
                                             _%hd165007165893%_
                                             _%tl165006165895%_
                                             _%e165011165898%_
                                             _%hd165010165901%_
                                             _%tl165009165903%_
                                             _%e165014165906%_
                                             _%hd165013165909%_
                                             _%tl165012165911%_
                                             _%e165017165914%_
                                             _%hd165016165917%_
                                             _%tl165015165919%_
                                             _%e165020165922%_
                                             _%hd165019165925%_
                                             _%tl165018165927%_
                                             _%e165023165930%_
                                             _%hd165022165933%_
                                             _%tl165021165935%_
                                             _%e165026165938%_
                                             _%hd165025165941%_
                                             _%tl165024165943%_
                                             _%e165029165946%_
                                             _%hd165028165949%_
                                             _%tl165027165951%_))
                                        (_%__match170808170809%_
                                         _%e165008165890%_
                                         _%hd165007165893%_
                                         _%tl165006165895%_
                                         _%e165011165898%_
                                         _%hd165010165901%_
                                         _%tl165009165903%_
                                         _%e165014165906%_
                                         _%hd165013165909%_
                                         _%tl165012165911%_
                                         _%e165017165914%_
                                         _%hd165016165917%_
                                         _%tl165015165919%_
                                         _%e165020165922%_
                                         _%hd165019165925%_
                                         _%tl165018165927%_
                                         _%e165023165930%_
                                         _%hd165022165933%_
                                         _%tl165021165935%_
                                         _%e165026165938%_
                                         _%hd165025165941%_
                                         _%tl165024165943%_
                                         _%e165029165946%_
                                         _%hd165028165949%_
                                         _%tl165027165951%_
                                         _%e165032165954%_
                                         _%hd165031165957%_
                                         _%tl165030165959%_))
                                    (_%__match171132171133%_
                                     _%e165008165890%_
                                     _%hd165007165893%_
                                     _%tl165006165895%_
                                     _%e165011165898%_
                                     _%hd165010165901%_
                                     _%tl165009165903%_
                                     _%e165014165906%_
                                     _%hd165013165909%_
                                     _%tl165012165911%_
                                     _%e165017165914%_
                                     _%hd165016165917%_
                                     _%tl165015165919%_
                                     _%e165020165922%_
                                     _%hd165019165925%_
                                     _%tl165018165927%_
                                     _%e165023165930%_
                                     _%hd165022165933%_
                                     _%tl165021165935%_
                                     _%e165026165938%_
                                     _%hd165025165941%_
                                     _%tl165024165943%_
                                     _%e165029165946%_
                                     _%hd165028165949%_
                                     _%tl165027165951%_))))
                            (_%__match171132171133%_
                             _%e165008165890%_
                             _%hd165007165893%_
                             _%tl165006165895%_
                             _%e165011165898%_
                             _%hd165010165901%_
                             _%tl165009165903%_
                             _%e165014165906%_
                             _%hd165013165909%_
                             _%tl165012165911%_
                             _%e165017165914%_
                             _%hd165016165917%_
                             _%tl165015165919%_
                             _%e165020165922%_
                             _%hd165019165925%_
                             _%tl165018165927%_
                             _%e165023165930%_
                             _%hd165022165933%_
                             _%tl165021165935%_
                             _%e165026165938%_
                             _%hd165025165941%_
                             _%tl165024165943%_
                             _%e165029165946%_
                             _%hd165028165949%_
                             _%tl165027165951%_))))
                    (_%__match171070171071%_
                     _%e165008165890%_
                     _%hd165007165893%_
                     _%tl165006165895%_
                     _%e165011165898%_
                     _%hd165010165901%_
                     _%tl165009165903%_
                     _%e165014165906%_
                     _%hd165013165909%_
                     _%tl165012165911%_
                     _%e165017165914%_
                     _%hd165016165917%_
                     _%tl165015165919%_
                     _%e165020165922%_
                     _%hd165019165925%_
                     _%tl165018165927%_
                     _%e165023165930%_
                     _%hd165022165933%_
                     _%tl165021165935%_
                     _%e165026165938%_
                     _%hd165025165941%_
                     _%tl165024165943%_))
                (_%__kont170653170654%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont170653170654%_))
                                            (_%__kont170653170654%_))
                                        (_%__kont170653170654%_))))
                                (_%__kont170653170654%_))))
                        (_%__kont170653170654%_))
                    (_%__kont170653170654%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont170653170654%_))
                                                (_%__kont170653170654%_))
                                            (_%__kont170653170654%_))))
                                    (_%__kont170653170654%_))))
                            (_%__kont170653170654%_))))
                    (_%__kont170653170654%_))))))))))
