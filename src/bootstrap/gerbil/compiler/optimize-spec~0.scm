(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1712147681)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp171147 (list gxc#::identity::t))
            (__tmp171146 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp171147
         '()
         __tmp171146
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args170012%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args170012%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp171148
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
        (__make-promise __tmp171148)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx170004%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self170007%_
                (let ((__obj171141
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj171141))
               (__tmp171149
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self170007%_ _%stx170004%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp171149
           gxc#current-compile-method
           _%self170007%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp171151 (list gxc#::void::t))
            (__tmp171150 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp171151
         '(receiver methods slots)
         __tmp171150
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args170001%_
        (apply make-instance gxc#::collect-object-refs::t _%$args170001%_)))
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
      (let ((__tmp171152
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
        (__make-promise __tmp171152)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%_169966%_
               _%receiver169961169968%_
               _%methods169962169970%_
               _%slots169963169972%_
               _%stx169974%_)
        (let* ((_%receiver169977%_
                (if (eq? _%receiver169961169968%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver169961169968%_))
               (_%methods169979%_
                (if (eq? _%methods169962169970%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods169962169970%_))
               (_%slots169981%_
                (if (eq? _%slots169963169972%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots169963169972%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self169983%_
                  (let ((__obj171143
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
                       __obj171143
                       _%receiver169977%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj171143
                       _%methods169979%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj171143
                       _%slots169981%_
                       '3
                       '#f
                       '#f))
                    __obj171143))
                 (__tmp171153
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self169983%_ _%stx169974%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp171153
             gxc#current-compile-method
             _%self169983%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords169990%_ . _%args169991%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords169990%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords169990%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords169990%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords169990%_
                  'slots:
                  absent-value))
               _%args169991%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args169964169997%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args169964169997%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp171155 (list gxc#::basic-xform-expression::t))
            (__tmp171154 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp171155
         '(receiver klass methods slots)
         __tmp171154
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args169957%_
        (apply make-instance gxc#::subst-object-refs::t _%$args169957%_)))
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
      (let ((__tmp171156
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
        (__make-promise __tmp171156)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%_169918%_
               _%receiver169912169920%_
               _%klass169913169922%_
               _%methods169914169924%_
               _%slots169915169926%_
               _%stx169928%_)
        (let* ((_%receiver169931%_
                (if (eq? _%receiver169912169920%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver169912169920%_))
               (_%klass169933%_
                (if (eq? _%klass169913169922%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass169913169922%_))
               (_%methods169935%_
                (if (eq? _%methods169914169924%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods169914169924%_))
               (_%slots169937%_
                (if (eq? _%slots169915169926%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots169915169926%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self169939%_
                  (let ((__obj171145
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
                       __obj171145
                       _%receiver169931%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj171145
                       _%klass169933%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj171145
                       _%methods169935%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj171145
                       _%slots169937%_
                       '4
                       '#f
                       '#f))
                    __obj171145))
                 (__tmp171157
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self169939%_ _%stx169928%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp171157
             gxc#current-compile-method
             _%self169939%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords169946%_ . _%args169947%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords169946%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords169946%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords169946%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords169946%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords169946%_
                  'slots:
                  absent-value))
               _%args169947%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args169916169953%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args169916169953%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self167093%_ _%stx167094%_)
        (letrec ((_%generate-method-bind167096%_
                  (lambda (_%$klass169904%_
                           _%$method-table169905%_
                           _%id169906%_
                           _%$id169907%_)
                    (let ((_%$tmp169909%_
                           (let ((__tmp171158
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp171158))))
                      (cons (cons _%$id169907%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp169909%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table169905%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id169906%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp169909%_ '()))
                    (cons (cons '%#ref (cons _%$tmp169909%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id169906%_
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
                 (_%generate-slot-bind167097%_
                  (lambda (_%$klass169898%_ _%id169899%_ _%$id169900%_)
                    (let ((_%$tmp169902%_
                           (let ((__tmp171159
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp171159))))
                      (cons (cons _%$id169900%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp169902%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass169898%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id169899%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp169902%_ '()))
                        (cons (cons '%#ref (cons _%$tmp169902%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id169899%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl167098%_
                  (lambda (_%$klass169892%_
                           _%$method-table169893%_
                           _%methods-bind169894%_
                           _%slots-bind169895%_
                           _%specializer-impl169896%_)
                    (let ((__tmp171160
                           (cons '%#lambda
                                 (cons (cons _%$klass169892%_
                                             (cons _%$method-table169893%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__foldr1
                                                            cons
                                                            _%slots-bind169895%_
                                                            _%methods-bind169894%_))
                                                         (cons _%specializer-impl169896%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp171160 _%stx167094%_))))
                 (_%generate-specializer-def167099%_
                  (lambda (_%id169888%_
                           _%specializer-id169889%_
                           _%specializer-impl169890%_)
                    (let ((__tmp171161
                           (cons '%#begin
                                 (cons _%stx167094%_
                                       (cons (let ((__tmp171162
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id169889%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl169890%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp171162
                                                _%stx167094%_))
                                             (cons (let ((__tmp171163
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id169888%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id169889%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp171163
                                                      _%stx167094%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp171161 _%stx167094%_)))))
          (let* ((_%__stx170101170102%_ _%stx167094%_)
                 (_%g167102167122%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx170101170102%_)))))
            (let ((_%__kont170103170104%_
                   (lambda (_%L167166%_ _%L167167%_)
                     (let ((_%method-calls167186%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs167187%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty167188%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?167190%_
                                 (lambda ()
                                   (if (fxzero? (let ()
                                                  (declare (not safe))
                                                  (hash-length
                                                   _%method-calls167186%_)))
                                       (fxzero? (let ()
                                                  (declare (not safe))
                                                  (hash-length
                                                   _%slot-refs167187%_)))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%L167166%_))
                             (let ()
                               (let* ((_%__stx170015170016%_ _%L167166%_)
                                      (_%g167578167596%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx170015170016%_)))))
                                 (let ((_%__kont170017170018%_
                                        (lambda (_%L167632%_
                                                 _%L167633%_
                                                 _%L167634%_)
                                          (for-each
                                           (lambda (_%g167650167652%_)
                                             (let ()
                                               (declare (not safe))
                                               (gxc#apply-collect-object-refs
                                                _%g167650167652%_
                                                'receiver:
                                                _%L167634%_
                                                'methods:
                                                _%method-calls167186%_
                                                'slots:
                                                _%slot-refs167187%_)))
                                           _%L167632%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (_%no-specializer?167190%_))
                                              _%stx167094%_
                                              (let* ((_%specializer-id167661%_
                                                      (let* ((_%id167655%_
                                                              (let ((__tmp171164
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L167167%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp171164 '"::specialize")))
                     (_%specializer-id167658%_
                      (let ((__tmp171165
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx167094%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id167655%_ __tmp171165))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id167658%_))
                _%specializer-id167658%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass167663%_
                                                      (let ((__tmp171166
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp171166)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table167665%_
                                                      (let ((__tmp171167
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp171167)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods167667%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _%method-calls167186%_)))
                                                     (_%$methods167671%_
                                                      (map (lambda (_%id167669%_)
                                                             (let ((__tmp171168
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id167669%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp171168)))
                   _%methods167667%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_167680%_
                                                      (for-each
                                                       (lambda (_%g167672167675%_
                                                                _%g167673167677%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _%method-calls167186%_
                                                            _%g167672167675%_
                                                            _%g167673167677%_)))
                                                       _%methods167667%_
                                                       _%$methods167671%_))
                                                     (_%methods-bind167690%_
                                                      (map (lambda (_%g167682167685%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g167683167687%_)
                     (let ()
                       (declare (not safe))
                       (_%generate-method-bind167096%_
                        _%$klass167663%_
                        _%$method-table167665%_
                        _%g167682167685%_
                        _%g167683167687%_)))
                   _%methods167667%_
                   _%$methods167671%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots167692%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _%slot-refs167187%_)))
                                                     (_%$slots167696%_
                                                      (map (lambda (_%id167694%_)
                                                             (let ((__tmp171169
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id167694%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp171169)))
                   _%slots167692%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_167705%_
                                                      (for-each
                                                       (lambda (_%g167697167700%_
                                                                _%g167698167702%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _%slot-refs167187%_
                                                            _%g167697167700%_
                                                            _%g167698167702%_)))
                                                       _%slots167692%_
                                                       _%$slots167696%_))
                                                     (_%slots-bind167714%_
                                                      (map (lambda (_%g167706167709%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g167707167711%_)
                     (let ()
                       (declare (not safe))
                       (_%generate-slot-bind167097%_
                        _%$klass167663%_
                        _%g167706167709%_
                        _%g167707167711%_)))
                   _%slots167692%_
                   _%$slots167696%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body167720%_
                                                      (map (lambda (_%g167715167717%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#apply-subst-object-refs
                        _%g167715167717%_
                        'receiver:
                        _%L167634%_
                        'klass:
                        _%$klass167663%_
                        'methods:
                        _%method-calls167186%_
                        'slots:
                        _%slot-refs167187%_)))
                   _%L167632%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl167722%_
                                                      (let ((__tmp171170
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%L167634%_ _%L167633%_)
                                 _%specializer-body167720%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp171170 _%stx167094%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl167724%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%generate-specializer-impl167098%_
                                                         _%$klass167663%_
                                                         _%$method-table167665%_
                                                         _%methods-bind167690%_
                                                         _%slots-bind167714%_
                                                         _%specializer-impl167722%_))))
                                                (let ((__tmp171172
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L167167%_)))
                                                      (__tmp171171
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id167661%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp171172
                                                   '" => "
                                                   __tmp171171))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%generate-specializer-def167099%_
                                                   _%L167167%_
                                                   _%specializer-id167661%_
                                                   _%specializer-impl167724%_))))))
                                       (_%__kont170019170020%_
                                        (lambda () _%stx167094%_)))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%__stx170015170016%_))
                                       (let ((_%e167585167608%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%__stx170015170016%_))))
                                         (let ((_%tl167583167613%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e167585167608%_)))
                                               (_%hd167584167611%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e167585167608%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl167583167613%_))
                                               (let ((_%e167588167616%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl167583167613%_))))
                                                 (let ((_%tl167586167621%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e167588167616%_)))
                                                       (_%hd167587167619%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e167588167616%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd167587167619%_))
                                                       (let ((_%e167591167624%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd167587167619%_))))
                 (let ((_%tl167589167629%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e167591167624%_)))
                       (_%hd167590167627%_
                        (let ()
                          (declare (not safe))
                          (##car _%e167591167624%_))))
                   (_%__kont170017170018%_
                    _%tl167586167621%_
                    _%tl167589167629%_
                    _%hd167590167627%_)))
               (_%__kont170019170020%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%__kont170019170020%_))))
                                       (_%__kont170019170020%_)))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%L167166%_))
                                 (let ()
                                   (let* ((_%g167731167750%_
                                           (lambda (_%g167732167747%_)
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%g167732167747%_))))
                                          (_%g167730168037%_
                                           (lambda (_%g167732167753%_)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%g167732167753%_))
                                                 (let ((_%e167736167755%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%g167732167753%_))))
                                                   (let ((_%hd167735167758%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e167736167755%_)))
                                                         (_%tl167734167760%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e167736167755%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl167734167760%_))
                                                         (let ((_g171173_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice _%tl167734167760%_ '0))))
                   (begin
                     (let ((_g171174_
                            (let ()
                              (declare (not safe))
                              (if (##values? _g171173_)
                                  (##vector-length _g171173_)
                                  1))))
                       (if (not (let ()
                                  (declare (not safe))
                                  (##fx= _g171174_ 2)))
                           (error "Context expects 2 values" _g171174_)))
                     (let ((_%target167737167763%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _g171173_ 0)))
                           (_%tl167739167765%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _g171173_ 1))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl167739167765%_))
                           (letrec ((_%loop167740167768%_
                                     (lambda (_%hd167738167771%_
                                              _%clause167744167773%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd167738167771%_))
                                           (let ((_%e167741167776%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd167738167771%_))))
                                             (let ((_%lp-hd167742167779%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e167741167776%_)))
                                                   (_%lp-tl167743167781%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e167741167776%_))))
                                               (let ((__tmp171175
                                                      (cons _%lp-hd167742167779%_
                                                            _%clause167744167773%_)))
                                                 (declare (not safe))
                                                 (_%loop167740167768%_
                                                  _%lp-tl167743167781%_
                                                  __tmp171175))))
                                           (let ((_%clause167745167784%_
                                                  (reverse _%clause167744167773%_)))
                                             ((lambda (_%L167787%_)
                                                (for-each
                                                 (lambda (_%clause167801%_)
                                                   (let* ((_%__stx170041170042%_
                                                           _%clause167801%_)
                                                          (_%g167804167819%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%__stx170041170042%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%__kont170043170044%_
                                                            (lambda (_%L167847%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%L167848%_
                             _%L167849%_)
                      (for-each
                       (lambda (_%g167864167866%_)
                         (let ()
                           (declare (not safe))
                           (gxc#apply-collect-object-refs
                            _%g167864167866%_
                            'receiver:
                            _%L167849%_
                            'methods:
                            _%method-calls167186%_
                            'slots:
                            _%slot-refs167187%_)))
                       _%L167847%_)))
                   (_%__kont170045170046%_ (lambda () '#!void)))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? _%__stx170041170042%_))
                   (let ((_%e167811167831%_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%__stx170041170042%_))))
                     (let ((_%tl167809167836%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e167811167831%_)))
                           (_%hd167810167834%_
                            (let ()
                              (declare (not safe))
                              (##car _%e167811167831%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd167810167834%_))
                           (let ((_%e167814167839%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd167810167834%_))))
                             (let ((_%tl167812167844%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e167814167839%_)))
                                   (_%hd167813167842%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e167814167839%_))))
                               (_%__kont170043170044%_
                                _%tl167809167836%_
                                _%tl167812167844%_
                                _%hd167813167842%_)))
                           (_%__kont170045170046%_))))
                   (_%__kont170045170046%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((__tmp171176
                                                        (lambda (_%g167871167874%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g167872167876%_)
                  (cons _%g167871167874%_ _%g167872167876%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp171176
                                                    '()
                                                    _%L167787%_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (_%no-specializer?167190%_))
                                                    _%stx167094%_
                                                    (let* ((_%specializer-id167885%_
                                                            (let* ((_%id167879%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp171177
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L167167%_))))
                              (declare (not safe))
                              (make-symbol__1 __tmp171177 '"::specialize")))
                           (_%specializer-id167882%_
                            (let ((__tmp171178
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-source _%stx167094%_))))
                              (declare (not safe))
                              (gx#core-quote-syntax__1
                               _%id167879%_
                               __tmp171178))))
                      (let ()
                        (declare (not safe))
                        (gx#core-bind-runtime!__0 _%specializer-id167882%_))
                      _%specializer-id167882%_))
                   (_%$klass167887%_
                    (let ((__tmp171179
                           (let () (declare (not safe)) (##gensym '__klass))))
                      (declare (not safe))
                      (make-symbol__0 __tmp171179)))
                   (_%$method-table167889%_
                    (let ((__tmp171180
                           (let ()
                             (declare (not safe))
                             (##gensym '__method-table))))
                      (declare (not safe))
                      (make-symbol__0 __tmp171180)))
                   (_%methods167891%_
                    (let ()
                      (declare (not safe))
                      (hash-keys _%method-calls167186%_)))
                   (_%$methods167895%_
                    (map (lambda (_%id167893%_)
                           (let ((__tmp171181 (gensym _%id167893%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp171181)))
                         _%methods167891%_))
                   (_%_167904%_
                    (for-each
                     (lambda (_%g167896167899%_ _%g167897167901%_)
                       (let ()
                         (declare (not safe))
                         (hash-put!
                          _%method-calls167186%_
                          _%g167896167899%_
                          _%g167897167901%_)))
                     _%methods167891%_
                     _%$methods167895%_))
                   (_%methods-bind167914%_
                    (map (lambda (_%g167906167909%_ _%g167907167911%_)
                           (let ()
                             (declare (not safe))
                             (_%generate-method-bind167096%_
                              _%$klass167887%_
                              _%$method-table167889%_
                              _%g167906167909%_
                              _%g167907167911%_)))
                         _%methods167891%_
                         _%$methods167895%_))
                   (_%slots167916%_
                    (let ()
                      (declare (not safe))
                      (hash-keys _%slot-refs167187%_)))
                   (_%$slots167920%_
                    (map (lambda (_%id167918%_)
                           (let ((__tmp171182 (gensym _%id167918%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp171182)))
                         _%slots167916%_))
                   (_%_167929%_
                    (for-each
                     (lambda (_%g167921167924%_ _%g167922167926%_)
                       (let ()
                         (declare (not safe))
                         (hash-put!
                          _%slot-refs167187%_
                          _%g167921167924%_
                          _%g167922167926%_)))
                     _%slots167916%_
                     _%$slots167920%_))
                   (_%slots-bind167938%_
                    (map (lambda (_%g167930167933%_ _%g167931167935%_)
                           (let ()
                             (declare (not safe))
                             (_%generate-slot-bind167097%_
                              _%$klass167887%_
                              _%g167930167933%_
                              _%g167931167935%_)))
                         _%slots167916%_
                         _%$slots167920%_))
                   (_%specializer-clauses168030%_
                    (map (lambda (_%clause167940%_)
                           (let* ((_%__stx170061170062%_ _%clause167940%_)
                                  (_%g167943167958%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%__stx170061170062%_)))))
                             (let ((_%__kont170063170064%_
                                    (lambda (_%L167986%_
                                             _%L167987%_
                                             _%L167988%_)
                                      (let ((_%body168018%_
                                             (map (lambda (_%g168013168015%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#apply-subst-object-refs
                                                       _%g168013168015%_
                                                       'receiver:
                                                       _%L167988%_
                                                       'klass:
                                                       _%$klass167887%_
                                                       'methods:
                                                       _%method-calls167186%_
                                                       'slots:
                                                       _%slot-refs167187%_)))
                                                  _%L167986%_)))
                                        (cons (cons _%L167988%_ _%L167987%_)
                                              _%body168018%_))))
                                   (_%__kont170065170066%_
                                    (lambda () _%clause167940%_)))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%__stx170061170062%_))
                                   (let ((_%e167950167970%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%__stx170061170062%_))))
                                     (let ((_%tl167948167975%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e167950167970%_)))
                                           (_%hd167949167973%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e167950167970%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd167949167973%_))
                                           (let ((_%e167953167978%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd167949167973%_))))
                                             (let ((_%tl167951167983%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e167953167978%_)))
                                                   (_%hd167952167981%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e167953167978%_))))
                                               (_%__kont170063170064%_
                                                _%tl167948167975%_
                                                _%tl167951167983%_
                                                _%hd167952167981%_)))
                                           (_%__kont170065170066%_))))
                                   (_%__kont170065170066%_)))))
                         (let ((__tmp171183
                                (lambda (_%g168022168025%_ _%g168023168027%_)
                                  (cons _%g168022168025%_ _%g168023168027%_))))
                           (declare (not safe))
                           (__foldr1 __tmp171183 '() _%L167787%_))))
                   (_%specializer-impl168032%_
                    (let ((__tmp171184
                           (cons '%#case-lambda
                                 _%specializer-clauses168030%_)))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp171184 _%stx167094%_)))
                   (_%specializer-impl168034%_
                    (let ()
                      (declare (not safe))
                      (_%generate-specializer-impl167098%_
                       _%$klass167887%_
                       _%$method-table167889%_
                       _%methods-bind167914%_
                       _%slots-bind167938%_
                       _%specializer-impl168032%_))))
              (let ((__tmp171186
                     (let () (declare (not safe)) (gx#stx-e _%L167167%_)))
                    (__tmp171185
                     (let ()
                       (declare (not safe))
                       (gx#stx-e _%specializer-id167885%_))))
                (declare (not safe))
                (gxc#verbose
                 '"generate method specializer "
                 __tmp171186
                 '" => "
                 __tmp171185))
              (let ()
                (declare (not safe))
                (_%generate-specializer-def167099%_
                 _%L167167%_
                 _%specializer-id167885%_
                 _%specializer-impl168034%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%clause167745167784%_))))))
                             (let ()
                               (declare (not safe))
                               (_%loop167740167768%_
                                _%target167737167763%_
                                '())))
                           (let ()
                             (declare (not safe))
                             (_%g167731167750%_ _%g167732167753%_))))))
                 (let ()
                   (declare (not safe))
                   (_%g167731167750%_ _%g167732167753%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g167731167750%_
                                                    _%g167732167753%_))))))
                                     (declare (not safe))
                                     (_%g167730168037%_ _%L167166%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _%L167166%_))
                                     (let ()
                                       (let* ((_%g168041168071%_
                                               (lambda (_%g168042168068%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g168042168068%_))))
                                              (_%g168040168680%_
                                               (lambda (_%g168042168074%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%g168042168074%_))
                                                     (let ((_%e168048168076%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%g168042168074%_))))
                                                       (let ((_%hd168047168079%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e168048168076%_)))
                     (_%tl168046168081%_
                      (let () (declare (not safe)) (##cdr _%e168048168076%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl168046168081%_))
                     (let ((_%e168051168084%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl168046168081%_))))
                       (let ((_%hd168050168087%_
                              (let ()
                                (declare (not safe))
                                (##car _%e168051168084%_)))
                             (_%tl168049168089%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e168051168084%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd168050168087%_))
                             (let ((_%e168054168092%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%hd168050168087%_))))
                               (let ((_%hd168053168095%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e168054168092%_)))
                                     (_%tl168052168097%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e168054168092%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd168053168095%_))
                                     (let ((_%e168057168100%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd168053168095%_))))
                                       (let ((_%hd168056168103%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e168057168100%_)))
                                             (_%tl168055168105%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e168057168100%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd168056168103%_))
                                             (let ((_%e168060168108%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%hd168056168103%_))))
                                               (let ((_%hd168059168111%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e168060168108%_)))
                                                     (_%tl168058168113%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e168060168108%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl168058168113%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl168055168105%_))
                                                         (let ((_%e168063168116%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl168055168105%_))))
                   (let ((_%hd168062168119%_
                          (let ()
                            (declare (not safe))
                            (##car _%e168063168116%_)))
                         (_%tl168061168121%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e168063168116%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl168061168121%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl168052168097%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl168049168089%_))
                                 (let ((_%e168066168124%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%tl168049168089%_))))
                                   (let ((_%hd168065168127%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e168066168124%_)))
                                         (_%tl168064168129%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e168066168124%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl168064168129%_))
                                         ((lambda (_%L168132%_
                                                   _%L168133%_
                                                   _%L168134%_)
                                            (let* ((_%g168158168176%_
                                                    (lambda (_%g168159168173%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g168159168173%_))))
                                                   (_%g168157168227%_
                                                    (lambda (_%g168159168179%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%g168159168179%_))
                                                          (let ((_%e168165168181%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%g168159168179%_))))
                    (let ((_%hd168164168184%_
                           (let ()
                             (declare (not safe))
                             (##car _%e168165168181%_)))
                          (_%tl168163168186%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e168165168181%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl168163168186%_))
                          (let ((_%e168168168189%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl168163168186%_))))
                            (let ((_%hd168167168192%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e168168168189%_)))
                                  (_%tl168166168194%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e168168168189%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd168167168192%_))
                                  (let ((_%e168171168197%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd168167168192%_))))
                                    (let ((_%hd168170168200%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e168171168197%_)))
                                          (_%tl168169168202%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e168171168197%_))))
                                      ((lambda (_%L168205%_
                                                _%L168206%_
                                                _%L168207%_)
                                         (for-each
                                          (lambda (_%g168222168224%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-collect-object-refs
                                               _%g168222168224%_
                                               'receiver:
                                               _%L168207%_
                                               'methods:
                                               _%method-calls167186%_
                                               'slots:
                                               _%slot-refs167187%_)))
                                          _%L168205%_))
                                       _%tl168166168194%_
                                       _%tl168169168202%_
                                       _%hd168170168200%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g168158168176%_ _%g168159168179%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g168158168176%_ _%g168159168179%_)))))
                  (let ()
                    (declare (not safe))
                    (_%g168158168176%_ _%g168159168179%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_%g168157168227%_ _%L168133%_))
                                            (let* ((_%g168230168249%_
                                                    (lambda (_%g168231168246%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g168231168246%_))))
                                                   (_%g168229168368%_
                                                    (lambda (_%g168231168252%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%g168231168252%_))
                                                          (let ((_%e168235168254%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%g168231168252%_))))
                    (let ((_%hd168234168257%_
                           (let ()
                             (declare (not safe))
                             (##car _%e168235168254%_)))
                          (_%tl168233168259%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e168235168254%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl168233168259%_))
                          (let ((_g171187_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _%tl168233168259%_
                                    '0))))
                            (begin
                              (let ((_g171188_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g171187_)
                                           (##vector-length _g171187_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g171188_ 2)))
                                    (error "Context expects 2 values"
                                           _g171188_)))
                              (let ((_%target168236168262%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g171187_ 0)))
                                    (_%tl168238168264%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g171187_ 1))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl168238168264%_))
                                    (letrec ((_%loop168239168267%_
                                              (lambda (_%hd168237168270%_
                                                       _%clause168243168272%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd168237168270%_))
                                                    (let ((_%e168240168275%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd168237168270%_))))
                                                      (let ((_%lp-hd168241168278%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e168240168275%_)))
                    (_%lp-tl168242168280%_
                     (let () (declare (not safe)) (##cdr _%e168240168275%_))))
                (let ((__tmp171189
                       (cons _%lp-hd168241168278%_ _%clause168243168272%_)))
                  (declare (not safe))
                  (_%loop168239168267%_ _%lp-tl168242168280%_ __tmp171189))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%clause168244168283%_
                                                           (reverse _%clause168243168272%_)))
                                                      ((lambda (_%L168286%_)
                                                         (for-each
                                                          (lambda (_%clause168299%_)
                                                            (let* ((_%g168301168316%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g168302168313%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g168302168313%_))))
                           (_%g168300168358%_
                            (lambda (_%g168302168319%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g168302168319%_))
                                  (let ((_%e168308168321%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g168302168319%_))))
                                    (let ((_%hd168307168324%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e168308168321%_)))
                                          (_%tl168306168326%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e168308168321%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd168307168324%_))
                                          (let ((_%e168311168329%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%hd168307168324%_))))
                                            (let ((_%hd168310168332%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e168311168329%_)))
                                                  (_%tl168309168334%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e168311168329%_))))
                                              ((lambda (_%L168337%_
                                                        _%L168338%_
                                                        _%L168339%_)
                                                 (for-each
                                                  (lambda (_%g168353168355%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#apply-collect-object-refs
                                                       _%g168353168355%_
                                                       'receiver:
                                                       _%L168339%_
                                                       'methods:
                                                       _%method-calls167186%_
                                                       'slots:
                                                       _%slot-refs167187%_)))
                                                  _%L168337%_))
                                               _%tl168306168326%_
                                               _%tl168309168334%_
                                               _%hd168310168332%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g168301168316%_
                                             _%g168302168319%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g168301168316%_ _%g168302168319%_))))))
                      (declare (not safe))
                      (_%g168300168358%_ _%clause168299%_)))
                  (let ((__tmp171190
                         (lambda (_%g168360168363%_ _%g168361168365%_)
                           (cons _%g168360168363%_ _%g168361168365%_))))
                    (declare (not safe))
                    (__foldr1 __tmp171190 '() _%L168286%_))))
               _%clause168244168283%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (let ()
                                        (declare (not safe))
                                        (_%loop168239168267%_
                                         _%target168236168262%_
                                         '())))
                                    (let ()
                                      (declare (not safe))
                                      (_%g168230168249%_
                                       _%g168231168252%_))))))
                          (let ()
                            (declare (not safe))
                            (_%g168230168249%_ _%g168231168252%_)))))
                  (let ()
                    (declare (not safe))
                    (_%g168230168249%_ _%g168231168252%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_%g168229168368%_ _%L168132%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (_%no-specializer?167190%_))
                                                _%stx167094%_
                                                (let* ((_%specializer-id168377%_
                                                        (let* ((_%id168371%_
                                                                (let ((__tmp171191
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%L167167%_))))
                          (declare (not safe))
                          (make-symbol__1 __tmp171191 '"::specialize")))
                       (_%specializer-id168374%_
                        (let ((__tmp171192
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-source _%stx167094%_))))
                          (declare (not safe))
                          (gx#core-quote-syntax__1 _%id168371%_ __tmp171192))))
                  (let ()
                    (declare (not safe))
                    (gx#core-bind-runtime!__0 _%specializer-id168374%_))
                  _%specializer-id168374%_))
               (_%$klass168379%_
                (let ((__tmp171193
                       (let () (declare (not safe)) (##gensym '__klass))))
                  (declare (not safe))
                  (make-symbol__0 __tmp171193)))
               (_%$method-table168381%_
                (let ((__tmp171194
                       (let ()
                         (declare (not safe))
                         (##gensym '__method-table))))
                  (declare (not safe))
                  (make-symbol__0 __tmp171194)))
               (_%methods168383%_
                (let ()
                  (declare (not safe))
                  (hash-keys _%method-calls167186%_)))
               (_%$methods168387%_
                (map (lambda (_%id168385%_)
                       (let ((__tmp171195 (gensym _%id168385%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp171195)))
                     _%methods168383%_))
               (_%_168396%_
                (for-each
                 (lambda (_%g168388168391%_ _%g168389168393%_)
                   (let ()
                     (declare (not safe))
                     (hash-put!
                      _%method-calls167186%_
                      _%g168388168391%_
                      _%g168389168393%_)))
                 _%methods168383%_
                 _%$methods168387%_))
               (_%methods-bind168406%_
                (map (lambda (_%g168398168401%_ _%g168399168403%_)
                       (let ()
                         (declare (not safe))
                         (_%generate-method-bind167096%_
                          _%$klass168379%_
                          _%$method-table168381%_
                          _%g168398168401%_
                          _%g168399168403%_)))
                     _%methods168383%_
                     _%$methods168387%_))
               (_%slots168408%_
                (let () (declare (not safe)) (hash-keys _%slot-refs167187%_)))
               (_%$slots168412%_
                (map (lambda (_%id168410%_)
                       (let ((__tmp171196 (gensym _%id168410%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp171196)))
                     _%slots168408%_))
               (_%_168421%_
                (for-each
                 (lambda (_%g168413168416%_ _%g168414168418%_)
                   (let ()
                     (declare (not safe))
                     (hash-put!
                      _%slot-refs167187%_
                      _%g168413168416%_
                      _%g168414168418%_)))
                 _%slots168408%_
                 _%$slots168412%_))
               (_%slots-bind168430%_
                (map (lambda (_%g168422168425%_ _%g168423168427%_)
                       (let ()
                         (declare (not safe))
                         (_%generate-slot-bind167097%_
                          _%$klass168379%_
                          _%g168422168425%_
                          _%g168423168427%_)))
                     _%slots168408%_
                     _%$slots168412%_))
               (_%specializer-lambda-expr168516%_
                (let* ((_%g168432168450%_
                        (lambda (_%g168433168447%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g168433168447%_))))
                       (_%g168431168513%_
                        (lambda (_%g168433168453%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%g168433168453%_))
                              (let ((_%e168439168455%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g168433168453%_))))
                                (let ((_%hd168438168458%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e168439168455%_)))
                                      (_%tl168437168460%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e168439168455%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl168437168460%_))
                                      (let ((_%e168442168463%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl168437168460%_))))
                                        (let ((_%hd168441168466%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e168442168463%_)))
                                              (_%tl168440168468%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e168442168463%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd168441168466%_))
                                              (let ((_%e168445168471%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd168441168466%_))))
                                                (let ((_%hd168444168474%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e168445168471%_)))
                                                      (_%tl168443168476%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e168445168471%_))))
                                                  ((lambda (_%L168479%_
                                                            _%L168480%_
                                                            _%L168481%_)
                                                     (let* ((_%body168511%_
                                                             (map (lambda (_%g168506168508%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs
                               _%g168506168508%_
                               'receiver:
                               _%L168481%_
                               'klass:
                               _%$klass168379%_
                               'methods:
                               _%method-calls167186%_
                               'slots:
                               _%slot-refs167187%_)))
                          _%L168479%_))
                    (__tmp171197
                     (cons '%#lambda
                           (cons (cons _%L168481%_ _%L168480%_)
                                 _%body168511%_))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp171197 _%L168133%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%tl168440168468%_
                                                   _%tl168443168476%_
                                                   _%hd168444168474%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g168432168450%_
                                                 _%g168433168453%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g168432168450%_
                                         _%g168433168453%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g168432168450%_ _%g168433168453%_))))))
                  (declare (not safe))
                  (_%g168431168513%_ _%L168133%_)))
               (_%specializer-case-lambda-expr168673%_
                (let* ((_%g168518168537%_
                        (lambda (_%g168519168534%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g168519168534%_))))
                       (_%g168517168670%_
                        (lambda (_%g168519168540%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%g168519168540%_))
                              (let ((_%e168523168542%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g168519168540%_))))
                                (let ((_%hd168522168545%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e168523168542%_)))
                                      (_%tl168521168547%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e168523168542%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl168521168547%_))
                                      (let ((_g171198_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl168521168547%_
                                                '0))))
                                        (begin
                                          (let ((_g171199_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g171198_)
                                                       (##vector-length
                                                        _g171198_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g171199_ 2)))
                                                (error "Context expects 2 values"
                                                       _g171199_)))
                                          (let ((_%target168524168550%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g171198_ 0)))
                                                (_%tl168526168552%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g171198_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl168526168552%_))
                                                (letrec ((_%loop168527168555%_
                                                          (lambda (_%hd168525168558%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause168531168560%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd168525168558%_))
                        (let ((_%e168528168563%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd168525168558%_))))
                          (let ((_%lp-hd168529168566%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e168528168563%_)))
                                (_%lp-tl168530168568%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e168528168563%_))))
                            (let ((__tmp171200
                                   (cons _%lp-hd168529168566%_
                                         _%clause168531168560%_)))
                              (declare (not safe))
                              (_%loop168527168555%_
                               _%lp-tl168530168568%_
                               __tmp171200))))
                        (let ((_%clause168532168571%_
                               (reverse _%clause168531168560%_)))
                          ((lambda (_%L168574%_)
                             (let* ((_%clauses168668%_
                                     (map (lambda (_%clause168588%_)
                                            (let* ((_%__stx170081170082%_
                                                    _%clause168588%_)
                                                   (_%g168591168606%_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%__stx170081170082%_)))))
                                              (let ((_%__kont170083170084%_
                                                     (lambda (_%L168634%_
                                                              _%L168635%_
                                                              _%L168636%_)
                                                       (let ((_%body168656%_
                                                              (map (lambda (_%g168651168653%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#apply-subst-object-refs
                                _%g168651168653%_
                                'receiver:
                                _%L168636%_
                                'klass:
                                _%$klass168379%_
                                'methods:
                                _%method-calls167186%_
                                'slots:
                                _%slot-refs167187%_)))
                           _%L168634%_)))
                 (cons (cons _%L168636%_ _%L168635%_) _%body168656%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont170085170086%_
                                                     (lambda ()
                                                       _%clause168588%_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%__stx170081170082%_))
                                                    (let ((_%e168598168618%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%__stx170081170082%_))))
                                                      (let ((_%tl168596168623%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e168598168618%_)))
                    (_%hd168597168621%_
                     (let () (declare (not safe)) (##car _%e168598168618%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd168597168621%_))
                    (let ((_%e168601168626%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd168597168621%_))))
                      (let ((_%tl168599168631%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e168601168626%_)))
                            (_%hd168600168629%_
                             (let ()
                               (declare (not safe))
                               (##car _%e168601168626%_))))
                        (_%__kont170083170084%_
                         _%tl168596168623%_
                         _%tl168599168631%_
                         _%hd168600168629%_)))
                    (_%__kont170085170086%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont170085170086%_)))))
                                          (let ((__tmp171201
                                                 (lambda (_%g168660168663%_
                                                          _%g168661168665%_)
                                                   (cons _%g168660168663%_
                                                         _%g168661168665%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp171201
                                             '()
                                             _%L168574%_))))
                                    (__tmp171202
                                     (cons '%#case-lambda _%clauses168668%_)))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp171202
                                _%L168132%_)))
                           _%clause168532168571%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%loop168527168555%_
                                                     _%target168524168550%_
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g168518168537%_
                                                   _%g168519168540%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g168518168537%_
                                         _%g168519168540%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g168518168537%_ _%g168519168540%_))))))
                  (declare (not safe))
                  (_%g168517168670%_ _%L168132%_)))
               (_%specializer-impl168675%_
                (let ((__tmp171203
                       (cons '%#let-values
                             (cons (cons (cons (cons _%L168134%_ '())
                                               (cons _%specializer-lambda-expr168516%_
                                                     '()))
                                         '())
                                   (cons _%specializer-case-lambda-expr168673%_
                                         '())))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp171203 _%stx167094%_)))
               (_%specializer-impl168677%_
                (let ()
                  (declare (not safe))
                  (_%generate-specializer-impl167098%_
                   _%$klass168379%_
                   _%$method-table168381%_
                   _%methods-bind168406%_
                   _%slots-bind168430%_
                   _%specializer-impl168675%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((__tmp171205
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%L167167%_)))
                                                        (__tmp171204
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%specializer-id168377%_))))
                                                    (declare (not safe))
                                                    (gxc#verbose
                                                     '"generate method specializer "
                                                     __tmp171205
                                                     '" => "
                                                     __tmp171204))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%generate-specializer-def167099%_
                                                     _%L167167%_
                                                     _%specializer-id168377%_
                                                     _%specializer-impl168677%_)))))
                                          _%hd168065168127%_
                                          _%hd168062168119%_
                                          _%hd168059168111%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g168041168071%_
                                            _%g168042168074%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g168041168071%_ _%g168042168074%_)))
                             (let ()
                               (declare (not safe))
                               (_%g168041168071%_ _%g168042168074%_)))
                         (let ()
                           (declare (not safe))
                           (_%g168041168071%_ _%g168042168074%_)))))
                 (let ()
                   (declare (not safe))
                   (_%g168041168071%_ _%g168042168074%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g168041168071%_
                                                        _%g168042168074%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g168041168071%_
                                                _%g168042168074%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g168041168071%_
                                        _%g168042168074%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g168041168071%_ _%g168042168074%_)))))
                     (let ()
                       (declare (not safe))
                       (_%g168041168071%_ _%g168042168074%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g168041168071%_
                                                        _%g168042168074%_))))))
                                         (declare (not safe))
                                         (_%g168040168680%_ _%L167166%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _%L167166%_))
                                         (let ()
                                           (let* ((_%g168684168737%_
                                                   (lambda (_%g168685168734%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g168685168734%_))))
                                                  (_%g168683169880%_
                                                   (lambda (_%g168685168740%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%g168685168740%_))
                                                         (let ((_%e168693168742%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%g168685168740%_))))
                   (let ((_%hd168692168745%_
                          (let ()
                            (declare (not safe))
                            (##car _%e168693168742%_)))
                         (_%tl168691168747%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e168693168742%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd168692168745%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-eq? '%#let-values _%hd168692168745%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl168691168747%_))
                                 (let ((_%e168696168750%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%tl168691168747%_))))
                                   (let ((_%hd168695168753%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e168696168750%_)))
                                         (_%tl168694168755%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e168696168750%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd168695168753%_))
                                         (let ((_%e168699168758%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd168695168753%_))))
                                           (let ((_%hd168698168761%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e168699168758%_)))
                                                 (_%tl168697168763%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e168699168758%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd168698168761%_))
                                                 (let ((_%e168702168766%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd168698168761%_))))
                                                   (let ((_%hd168701168769%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e168702168766%_)))
                                                         (_%tl168700168771%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e168702168766%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd168701168769%_))
                                                         (let ((_%e168705168774%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%hd168701168769%_))))
                   (let ((_%hd168704168777%_
                          (let ()
                            (declare (not safe))
                            (##car _%e168705168774%_)))
                         (_%tl168703168779%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e168705168774%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl168703168779%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl168700168771%_))
                             (let ((_%e168708168782%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl168700168771%_))))
                               (let ((_%hd168707168785%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e168708168782%_)))
                                     (_%tl168706168787%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e168708168782%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd168707168785%_))
                                     (let ((_%e168711168790%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd168707168785%_))))
                                       (let ((_%hd168710168793%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e168711168790%_)))
                                             (_%tl168709168795%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e168711168790%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%hd168710168793%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#let-values
                                                    _%hd168710168793%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl168709168795%_))
                                                     (let ((_%e168714168798%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl168709168795%_))))
                                                       (let ((_%hd168713168801%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e168714168798%_)))
                     (_%tl168712168803%_
                      (let () (declare (not safe)) (##cdr _%e168714168798%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%hd168713168801%_))
                     (let ((_%e168717168806%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%hd168713168801%_))))
                       (let ((_%hd168716168809%_
                              (let ()
                                (declare (not safe))
                                (##car _%e168717168806%_)))
                             (_%tl168715168811%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e168717168806%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd168716168809%_))
                             (let ((_%e168720168814%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%hd168716168809%_))))
                               (let ((_%hd168719168817%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e168720168814%_)))
                                     (_%tl168718168819%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e168720168814%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd168719168817%_))
                                     (let ((_%e168723168822%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd168719168817%_))))
                                       (let ((_%hd168722168825%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e168723168822%_)))
                                             (_%tl168721168827%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e168723168822%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null?
                                                _%tl168721168827%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl168718168819%_))
                                                 (let ((_%e168726168830%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl168718168819%_))))
                                                   (let ((_%hd168725168833%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e168726168830%_)))
                                                         (_%tl168724168835%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e168726168830%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl168724168835%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl168715168811%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl168712168803%_))
                         (let ((_%e168729168838%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl168712168803%_))))
                           (let ((_%hd168728168841%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e168729168838%_)))
                                 (_%tl168727168843%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e168729168838%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl168727168843%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl168706168787%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl168697168763%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl168694168755%_))
                                             (let ((_%e168732168846%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl168694168755%_))))
                                               (let ((_%hd168731168849%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e168732168846%_)))
                                                     (_%tl168730168851%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e168732168846%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl168730168851%_))
                                                     ((lambda (_%L168854%_
                                                               _%L168855%_
                                                               _%L168856%_
                                                               _%L168857%_
                                                               _%L168858%_)
                                                        (let* ((_%g168898168960%_
                                                                (lambda (_%g168899168957%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g168899168957%_))))
                       (_%g168897169877%_
                        (lambda (_%g168899168963%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%g168899168963%_))
                              (let ((_%e168907168965%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g168899168963%_))))
                                (let ((_%hd168906168968%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e168907168965%_)))
                                      (_%tl168905168970%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e168907168965%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd168906168968%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#lambda
                                             _%hd168906168968%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl168905168970%_))
                                              (let ((_%e168910168973%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl168905168970%_))))
                                                (let ((_%hd168909168976%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e168910168973%_)))
                                                      (_%tl168908168978%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e168910168973%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl168908168978%_))
                                                      (let ((_%e168913168981%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl168908168978%_))))
                (let ((_%hd168912168984%_
                       (let () (declare (not safe)) (##car _%e168913168981%_)))
                      (_%tl168911168986%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e168913168981%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd168912168984%_))
                      (let ((_%e168916168989%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd168912168984%_))))
                        (let ((_%hd168915168992%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e168916168989%_)))
                              (_%tl168914168994%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e168916168989%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd168915168992%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#call _%hd168915168992%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl168914168994%_))
                                      (let ((_%e168919168997%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl168914168994%_))))
                                        (let ((_%hd168918169000%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e168919168997%_)))
                                              (_%tl168917169002%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e168919168997%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd168918169000%_))
                                              (let ((_%e168922169005%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd168918169000%_))))
                                                (let ((_%hd168921169008%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e168922169005%_)))
                                                      (_%tl168920169010%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e168922169005%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd168921169008%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd168921169008%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl168920169010%_))
                      (let ((_%e168925169013%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl168920169010%_))))
                        (let ((_%hd168924169016%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e168925169013%_)))
                              (_%tl168923169018%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e168925169013%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl168923169018%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl168917169002%_))
                                  (let ((_%e168928169021%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl168917169002%_))))
                                    (let ((_%hd168927169024%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e168928169021%_)))
                                          (_%tl168926169026%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e168928169021%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd168927169024%_))
                                          (let ((_%e168931169029%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%hd168927169024%_))))
                                            (let ((_%hd168930169032%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e168931169029%_)))
                                                  (_%tl168929169034%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e168931169029%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd168930169032%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#ref
                                                         _%hd168930169032%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl168929169034%_))
                                                          (let ((_%e168934169037%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl168929169034%_))))
                    (let ((_%hd168933169040%_
                           (let ()
                             (declare (not safe))
                             (##car _%e168934169037%_)))
                          (_%tl168932169042%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e168934169037%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl168932169042%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl168926169026%_))
                              (let ((_%e168937169045%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl168926169026%_))))
                                (let ((_%hd168936169048%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e168937169045%_)))
                                      (_%tl168935169050%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e168937169045%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd168936169048%_))
                                      (let ((_%e168940169053%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd168936169048%_))))
                                        (let ((_%hd168939169056%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e168940169053%_)))
                                              (_%tl168938169058%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e168940169053%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _%hd168939169056%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#ref
                                                     _%hd168939169056%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl168938169058%_))
                                                      (let ((_%e168943169061%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl168938169058%_))))
                (let ((_%hd168942169064%_
                       (let () (declare (not safe)) (##car _%e168943169061%_)))
                      (_%tl168941169066%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e168943169061%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl168941169066%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl168935169050%_))
                          (if (let ((__tmp171206
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-length _%tl168935169050%_))))
                                (declare (not safe))
                                (##fx>= __tmp171206 '1))
                              (let ((_g171207_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl168935169050%_
                                        '1))))
                                (begin
                                  (let ((_g171208_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g171207_)
                                               (##vector-length _g171207_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g171208_ 2)))
                                        (error "Context expects 2 values"
                                               _g171208_)))
                                  (let ((_%target168944169069%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g171207_ 0)))
                                        (_%tl168946169071%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g171207_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl168946169071%_))
                                        (let ((_%e168955169074%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl168946169071%_))))
                                          (let ((_%hd168954169077%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e168955169074%_)))
                                                (_%tl168953169079%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e168955169074%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl168953169079%_))
                                                (letrec ((_%loop168947169082%_
                                                          (lambda (_%hd168945169085%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%kw-ref168951169087%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd168945169085%_))
                        (let ((_%e168948169090%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd168945169085%_))))
                          (let ((_%lp-hd168949169093%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e168948169090%_)))
                                (_%lp-tl168950169095%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e168948169090%_))))
                            (let ((__tmp171209
                                   (cons _%lp-hd168949169093%_
                                         _%kw-ref168951169087%_)))
                              (declare (not safe))
                              (_%loop168947169082%_
                               _%lp-tl168950169095%_
                               __tmp171209))))
                        (let ((_%kw-ref168952169098%_
                               (reverse _%kw-ref168951169087%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl168911168986%_))
                              ((lambda (_%L169101%_
                                        _%L169102%_
                                        _%L169103%_
                                        _%L169104%_
                                        _%L169105%_)
                                 (let* ((_%kw-count169156%_
                                         (length (let ((__tmp171210
                                                        (lambda (_%g169148169151%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g169149169153%_)
                  (cons _%g169148169151%_ _%g169149169153%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp171210
                                                    '()
                                                    _%L169102%_))))
                                        (_%self-index169158%_
                                         (let ()
                                           (declare (not safe))
                                           (##fx+ _%kw-count169156%_ '1))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gxc#lambda-expr? _%L168856%_))
                                       (let ()
                                         (let* ((_%g169162169176%_
                                                 (lambda (_%g169163169173%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g169163169173%_))))
                                                (_%g169161169293%_
                                                 (lambda (_%g169163169179%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g169163169179%_))
                                                       (let ((_%e169168169181%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g169163169179%_))))
                 (let ((_%hd169167169184%_
                        (let ()
                          (declare (not safe))
                          (##car _%e169168169181%_)))
                       (_%tl169166169186%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e169168169181%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl169166169186%_))
                       (let ((_%e169171169189%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl169166169186%_))))
                         (let ((_%hd169170169192%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e169171169189%_)))
                               (_%tl169169169194%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e169171169189%_))))
                           ((lambda (_%L169197%_ _%L169198%_)
                              (let ((_%self169215%_
                                     (list-ref
                                      _%L169198%_
                                      _%self-index169158%_)))
                                (for-each
                                 (lambda (_%g169216169218%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#apply-collect-object-refs
                                      _%g169216169218%_
                                      'receiver:
                                      _%self169215%_
                                      'methods:
                                      _%method-calls167186%_
                                      'slots:
                                      _%slot-refs167187%_)))
                                 _%L169197%_)
                                (if (let ()
                                      (declare (not safe))
                                      (_%no-specializer?167190%_))
                                    _%stx167094%_
                                    (let* ((_%specializer-id169227%_
                                            (let* ((_%id169221%_
                                                    (let ((__tmp171211
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L167167%_))))
                                                      (declare (not safe))
                                                      (make-symbol__1
                                                       __tmp171211
                                                       '"::specialize")))
                                                   (_%specializer-id169224%_
                                                    (let ((__tmp171212
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-source
                                                              _%stx167094%_))))
                                                      (declare (not safe))
                                                      (gx#core-quote-syntax__1
                                                       _%id169221%_
                                                       __tmp171212))))
                                              (let ()
                                                (declare (not safe))
                                                (gx#core-bind-runtime!__0
                                                 _%specializer-id169224%_))
                                              _%specializer-id169224%_))
                                           (_%$klass169229%_
                                            (let ((__tmp171213
                                                   (let ()
                                                     (declare (not safe))
                                                     (##gensym '__klass))))
                                              (declare (not safe))
                                              (make-symbol__0 __tmp171213)))
                                           (_%$method-table169231%_
                                            (let ((__tmp171214
                                                   (let ()
                                                     (declare (not safe))
                                                     (##gensym
                                                      '__method-table))))
                                              (declare (not safe))
                                              (make-symbol__0 __tmp171214)))
                                           (_%methods169233%_
                                            (let ()
                                              (declare (not safe))
                                              (hash-keys
                                               _%method-calls167186%_)))
                                           (_%$methods169237%_
                                            (map (lambda (_%id169235%_)
                                                   (let ((__tmp171215
                                                          (gensym _%id169235%_)))
                                                     (declare (not safe))
                                                     (make-symbol__1
                                                      '"__"
                                                      __tmp171215)))
                                                 _%methods169233%_))
                                           (_%_169246%_
                                            (for-each
                                             (lambda (_%g169238169241%_
                                                      _%g169239169243%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (hash-put!
                                                  _%method-calls167186%_
                                                  _%g169238169241%_
                                                  _%g169239169243%_)))
                                             _%methods169233%_
                                             _%$methods169237%_))
                                           (_%methods-bind169256%_
                                            (map (lambda (_%g169248169251%_
                                                          _%g169249169253%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%generate-method-bind167096%_
                                                      _%$klass169229%_
                                                      _%$method-table169231%_
                                                      _%g169248169251%_
                                                      _%g169249169253%_)))
                                                 _%methods169233%_
                                                 _%$methods169237%_))
                                           (_%slots169258%_
                                            (let ()
                                              (declare (not safe))
                                              (hash-keys _%slot-refs167187%_)))
                                           (_%$slots169262%_
                                            (map (lambda (_%id169260%_)
                                                   (let ((__tmp171216
                                                          (gensym _%id169260%_)))
                                                     (declare (not safe))
                                                     (make-symbol__1
                                                      '"__"
                                                      __tmp171216)))
                                                 _%slots169258%_))
                                           (_%_169271%_
                                            (for-each
                                             (lambda (_%g169263169266%_
                                                      _%g169264169268%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (hash-put!
                                                  _%slot-refs167187%_
                                                  _%g169263169266%_
                                                  _%g169264169268%_)))
                                             _%slots169258%_
                                             _%$slots169262%_))
                                           (_%slots-bind169280%_
                                            (map (lambda (_%g169272169275%_
                                                          _%g169273169277%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%generate-slot-bind167097%_
                                                      _%$klass169229%_
                                                      _%g169272169275%_
                                                      _%g169273169277%_)))
                                                 _%slots169258%_
                                                 _%$slots169262%_))
                                           (_%specializer-impl169288%_
                                            (let* ((_%specializer-body169286%_
                                                    (map (lambda (_%g169281169283%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#apply-subst-object-refs
                                                              _%g169281169283%_
                                                              'receiver:
                                                              _%self169215%_
                                                              'klass:
                                                              _%$klass169229%_
                                                              'methods:
                                                              _%method-calls167186%_
                                                              'slots:
                                                              _%slot-refs167187%_)))
                                                         _%L169197%_))
                                                   (__tmp171217
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%L168858%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons (cons '%#let-values
                                                (cons (cons (cons (cons _%L168857%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ((__tmp171218
                                       (cons '%#lambda
                                             (cons _%L169198%_
                                                   _%specializer-body169286%_))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp171218
                                   _%L168856%_))
                                '()))
                    '())
              (cons _%L168855%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))
                              '())
                        (cons _%L168854%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp171217
                                               _%stx167094%_)))
                                           (_%specializer-impl169290%_
                                            (let ()
                                              (declare (not safe))
                                              (_%generate-specializer-impl167098%_
                                               _%$klass169229%_
                                               _%$method-table169231%_
                                               _%methods-bind169256%_
                                               _%slots-bind169280%_
                                               _%specializer-impl169288%_))))
                                      (let ((__tmp171220
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%L167167%_)))
                                            (__tmp171219
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%specializer-id169227%_))))
                                        (declare (not safe))
                                        (gxc#verbose
                                         '"generate method specializer "
                                         __tmp171220
                                         '" => "
                                         __tmp171219))
                                      (let ()
                                        (declare (not safe))
                                        (_%generate-specializer-def167099%_
                                         _%L167167%_
                                         _%specializer-id169227%_
                                         _%specializer-impl169290%_))))))
                            _%tl169169169194%_
                            _%hd169170169192%_)))
                       (let ()
                         (declare (not safe))
                         (_%g169162169176%_ _%g169163169179%_)))))
               (let ()
                 (declare (not safe))
                 (_%g169162169176%_ _%g169163169179%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_%g169161169293%_ _%L168856%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gxc#opt-lambda-expr?
                                              _%L168856%_))
                                           (let ()
                                             (let* ((_%g169297169327%_
                                                     (lambda (_%g169298169324%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g169298169324%_))))
                                                    (_%g169296169873%_
                                                     (lambda (_%g169298169330%_)
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%g169298169330%_))
                                                           (let ((_%e169304169332%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g169298169330%_))))
                     (let ((_%hd169303169335%_
                            (let ()
                              (declare (not safe))
                              (##car _%e169304169332%_)))
                           (_%tl169302169337%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e169304169332%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl169302169337%_))
                           (let ((_%e169307169340%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl169302169337%_))))
                             (let ((_%hd169306169343%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e169307169340%_)))
                                   (_%tl169305169345%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e169307169340%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd169306169343%_))
                                   (let ((_%e169310169348%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd169306169343%_))))
                                     (let ((_%hd169309169351%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e169310169348%_)))
                                           (_%tl169308169353%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e169310169348%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd169309169351%_))
                                           (let ((_%e169313169356%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd169309169351%_))))
                                             (let ((_%hd169312169359%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e169313169356%_)))
                                                   (_%tl169311169361%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e169313169356%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd169312169359%_))
                                                   (let ((_%e169316169364%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd169312169359%_))))
                                                     (let ((_%hd169315169367%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e169316169364%_)))
                                                           (_%tl169314169369%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e169316169364%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl169314169369%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl169311169361%_))
                       (let ((_%e169319169372%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl169311169361%_))))
                         (let ((_%hd169318169375%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e169319169372%_)))
                               (_%tl169317169377%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e169319169372%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl169317169377%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl169308169353%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%tl169305169345%_))
                                       (let ((_%e169322169380%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%tl169305169345%_))))
                                         (let ((_%hd169321169383%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e169322169380%_)))
                                               (_%tl169320169385%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e169322169380%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl169320169385%_))
                                               ((lambda (_%L169388%_
                                                         _%L169389%_
                                                         _%L169390%_)
                                                  (let* ((_%g169414169428%_
                                                          (lambda (_%g169415169425%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g169415169425%_))))
                                                         (_%g169413169469%_
                                                          (lambda (_%g169415169431%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%g169415169431%_))
                        (let ((_%e169420169433%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g169415169431%_))))
                          (let ((_%hd169419169436%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e169420169433%_)))
                                (_%tl169418169438%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e169420169433%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl169418169438%_))
                                (let ((_%e169423169441%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl169418169438%_))))
                                  (let ((_%hd169422169444%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e169423169441%_)))
                                        (_%tl169421169446%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e169423169441%_))))
                                    ((lambda (_%L169449%_ _%L169450%_)
                                       (let ((_%self169463%_
                                              (list-ref
                                               _%L169450%_
                                               _%self-index169158%_)))
                                         (for-each
                                          (lambda (_%g169464169466%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-collect-object-refs
                                               _%g169464169466%_
                                               'receiver:
                                               _%self169463%_
                                               'methods:
                                               _%method-calls167186%_
                                               'slots:
                                               _%slot-refs167187%_)))
                                          _%L169449%_)))
                                     _%tl169421169446%_
                                     _%hd169422169444%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g169414169428%_ _%g169415169431%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g169414169428%_ _%g169415169431%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_%g169413169469%_
                                                     _%L169389%_))
                                                  (let* ((_%g169472169491%_
                                                          (lambda (_%g169473169488%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g169473169488%_))))
                                                         (_%g169471169596%_
                                                          (lambda (_%g169473169494%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%g169473169494%_))
                        (let ((_%e169477169496%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g169473169494%_))))
                          (let ((_%hd169476169499%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e169477169496%_)))
                                (_%tl169475169501%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e169477169496%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl169475169501%_))
                                (let ((_g171221_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl169475169501%_
                                          '0))))
                                  (begin
                                    (let ((_g171222_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g171221_)
                                                 (##vector-length _g171221_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g171222_ 2)))
                                          (error "Context expects 2 values"
                                                 _g171222_)))
                                    (let ((_%target169478169504%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g171221_ 0)))
                                          (_%tl169480169506%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g171221_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl169480169506%_))
                                          (letrec ((_%loop169481169509%_
                                                    (lambda (_%hd169479169512%_
                                                             _%clause169485169514%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd169479169512%_))
                                                          (let ((_%e169482169517%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd169479169512%_))))
                    (let ((_%lp-hd169483169520%_
                           (let ()
                             (declare (not safe))
                             (##car _%e169482169517%_)))
                          (_%lp-tl169484169522%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e169482169517%_))))
                      (let ((__tmp171223
                             (cons _%lp-hd169483169520%_
                                   _%clause169485169514%_)))
                        (declare (not safe))
                        (_%loop169481169509%_
                         _%lp-tl169484169522%_
                         __tmp171223))))
                  (let ((_%clause169486169525%_
                         (reverse _%clause169485169514%_)))
                    ((lambda (_%L169528%_)
                       (for-each
                        (lambda (_%clause169541%_)
                          (let* ((_%g169543169554%_
                                  (lambda (_%g169544169551%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g169544169551%_))))
                                 (_%g169542169586%_
                                  (lambda (_%g169544169557%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%g169544169557%_))
                                        (let ((_%e169549169559%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%g169544169557%_))))
                                          (let ((_%hd169548169562%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e169549169559%_)))
                                                (_%tl169547169564%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e169549169559%_))))
                                            ((lambda (_%L169567%_ _%L169568%_)
                                               (let ((_%self169580%_
                                                      (list-ref
                                                       _%L169568%_
                                                       _%self-index169158%_)))
                                                 (for-each
                                                  (lambda (_%g169581169583%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#apply-collect-object-refs
                                                       _%g169581169583%_
                                                       'receiver:
                                                       _%self169580%_
                                                       'methods:
                                                       _%method-calls167186%_
                                                       'slots:
                                                       _%slot-refs167187%_)))
                                                  _%L169567%_)))
                                             _%tl169547169564%_
                                             _%hd169548169562%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g169543169554%_
                                           _%g169544169557%_))))))
                            (declare (not safe))
                            (_%g169542169586%_ _%clause169541%_)))
                        (let ((__tmp171224
                               (lambda (_%g169588169591%_ _%g169589169593%_)
                                 (cons _%g169588169591%_ _%g169589169593%_))))
                          (declare (not safe))
                          (__foldr1 __tmp171224 '() _%L169528%_))))
                     _%clause169486169525%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%loop169481169509%_
                                               _%target169478169504%_
                                               '())))
                                          (let ()
                                            (declare (not safe))
                                            (_%g169472169491%_
                                             _%g169473169494%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g169472169491%_ _%g169473169494%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g169472169491%_ _%g169473169494%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_%g169471169596%_
                                                     _%L169388%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (_%no-specializer?167190%_))
                                                      _%stx167094%_
                                                      (let* ((_%specializer-id169605%_
                                                              (let* ((_%id169599%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp171225
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L167167%_))))
                                (declare (not safe))
                                (make-symbol__1 __tmp171225 '"::specialize")))
                             (_%specializer-id169602%_
                              (let ((__tmp171226
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _%stx167094%_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _%id169599%_
                                 __tmp171226))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0 _%specializer-id169602%_))
                        _%specializer-id169602%_))
                     (_%$klass169607%_
                      (let ((__tmp171227
                             (let ()
                               (declare (not safe))
                               (##gensym '__klass))))
                        (declare (not safe))
                        (make-symbol__0 __tmp171227)))
                     (_%$method-table169609%_
                      (let ((__tmp171228
                             (let ()
                               (declare (not safe))
                               (##gensym '__method-table))))
                        (declare (not safe))
                        (make-symbol__0 __tmp171228)))
                     (_%methods169611%_
                      (let ()
                        (declare (not safe))
                        (hash-keys _%method-calls167186%_)))
                     (_%$methods169615%_
                      (map (lambda (_%id169613%_)
                             (let ((__tmp171229 (gensym _%id169613%_)))
                               (declare (not safe))
                               (make-symbol__1 '"__" __tmp171229)))
                           _%methods169611%_))
                     (_%_169624%_
                      (for-each
                       (lambda (_%g169616169619%_ _%g169617169621%_)
                         (let ()
                           (declare (not safe))
                           (hash-put!
                            _%method-calls167186%_
                            _%g169616169619%_
                            _%g169617169621%_)))
                       _%methods169611%_
                       _%$methods169615%_))
                     (_%methods-bind169634%_
                      (map (lambda (_%g169626169629%_ _%g169627169631%_)
                             (let ()
                               (declare (not safe))
                               (_%generate-method-bind167096%_
                                _%$klass169607%_
                                _%$method-table169609%_
                                _%g169626169629%_
                                _%g169627169631%_)))
                           _%methods169611%_
                           _%$methods169615%_))
                     (_%slots169636%_
                      (let ()
                        (declare (not safe))
                        (hash-keys _%slot-refs167187%_)))
                     (_%$slots169640%_
                      (map (lambda (_%id169638%_)
                             (let ((__tmp171230 (gensym _%id169638%_)))
                               (declare (not safe))
                               (make-symbol__1 '"__" __tmp171230)))
                           _%slots169636%_))
                     (_%_169649%_
                      (for-each
                       (lambda (_%g169641169644%_ _%g169642169646%_)
                         (let ()
                           (declare (not safe))
                           (hash-put!
                            _%slot-refs167187%_
                            _%g169641169644%_
                            _%g169642169646%_)))
                       _%slots169636%_
                       _%$slots169640%_))
                     (_%slots-bind169658%_
                      (map (lambda (_%g169650169653%_ _%g169651169655%_)
                             (let ()
                               (declare (not safe))
                               (_%generate-slot-bind167097%_
                                _%$klass169607%_
                                _%g169650169653%_
                                _%g169651169655%_)))
                           _%slots169636%_
                           _%$slots169640%_))
                     (_%specializer-lambda-expr169731%_
                      (let* ((_%g169660169674%_
                              (lambda (_%g169661169671%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g169661169671%_))))
                             (_%g169659169728%_
                              (lambda (_%g169661169677%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g169661169677%_))
                                    (let ((_%e169666169679%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g169661169677%_))))
                                      (let ((_%hd169665169682%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e169666169679%_)))
                                            (_%tl169664169684%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e169666169679%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl169664169684%_))
                                            (let ((_%e169669169687%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl169664169684%_))))
                                              (let ((_%hd169668169690%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e169669169687%_)))
                                                    (_%tl169667169692%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e169669169687%_))))
                                                ((lambda (_%L169695%_
                                                          _%L169696%_)
                                                   (let* ((_%self169719%_
                                                           (list-ref
                                                            _%L169696%_
                                                            _%self-index169158%_))
                                                          (_%body169725%_
                                                           (map (lambda (_%g169720169722%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#apply-subst-object-refs
                             _%g169720169722%_
                             'receiver:
                             _%self169719%_
                             'klass:
                             _%$klass169607%_
                             'methods:
                             _%method-calls167186%_
                             'slots:
                             _%slot-refs167187%_)))
                        _%L169695%_))
                  (__tmp171231
                   (cons '%#lambda (cons _%L169696%_ _%body169725%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp171231
                                                      _%L169389%_)))
                                                 _%tl169667169692%_
                                                 _%hd169668169690%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g169660169674%_
                                               _%g169661169677%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g169660169674%_
                                       _%g169661169677%_))))))
                        (declare (not safe))
                        (_%g169659169728%_ _%L169389%_)))
                     (_%specializer-case-lambda-expr169866%_
                      (let* ((_%g169733169752%_
                              (lambda (_%g169734169749%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g169734169749%_))))
                             (_%g169732169863%_
                              (lambda (_%g169734169755%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g169734169755%_))
                                    (let ((_%e169738169757%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g169734169755%_))))
                                      (let ((_%hd169737169760%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e169738169757%_)))
                                            (_%tl169736169762%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e169738169757%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _%tl169736169762%_))
                                            (let ((_g171232_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _%tl169736169762%_
                                                      '0))))
                                              (begin
                                                (let ((_g171233_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g171232_)
                                                             (##vector-length
                                                              _g171232_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g171233_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g171233_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target169739169765%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g171232_
                                                          0)))
                                                      (_%tl169741169767%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g171232_
                                                          1))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl169741169767%_))
                                                      (letrec ((_%loop169742169770%_
                                                                (lambda (_%hd169740169773%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%clause169746169775%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd169740169773%_))
                              (let ((_%e169743169778%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd169740169773%_))))
                                (let ((_%lp-hd169744169781%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e169743169778%_)))
                                      (_%lp-tl169745169783%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e169743169778%_))))
                                  (let ((__tmp171234
                                         (cons _%lp-hd169744169781%_
                                               _%clause169746169775%_)))
                                    (declare (not safe))
                                    (_%loop169742169770%_
                                     _%lp-tl169745169783%_
                                     __tmp171234))))
                              (let ((_%clause169747169786%_
                                     (reverse _%clause169746169775%_)))
                                ((lambda (_%L169789%_)
                                   (let* ((_%clauses169861%_
                                           (map (lambda (_%clause169803%_)
                                                  (let* ((_%g169805169816%_
                                                          (lambda (_%g169806169813%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g169806169813%_))))
                                                         (_%g169804169851%_
                                                          (lambda (_%g169806169819%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%g169806169819%_))
                        (let ((_%e169811169821%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g169806169819%_))))
                          (let ((_%hd169810169824%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e169811169821%_)))
                                (_%tl169809169826%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e169811169821%_))))
                            ((lambda (_%L169829%_ _%L169830%_)
                               (let* ((_%self169842%_
                                       (list-ref
                                        _%L169830%_
                                        _%self-index169158%_))
                                      (_%body169848%_
                                       (map (lambda (_%g169843169845%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#apply-subst-object-refs
                                                 _%g169843169845%_
                                                 'receiver:
                                                 _%self169842%_
                                                 'klass:
                                                 _%$klass169607%_
                                                 'methods:
                                                 _%method-calls167186%_
                                                 'slots:
                                                 _%slot-refs167187%_)))
                                            _%L169829%_)))
                                 (cons _%L169830%_ _%body169848%_)))
                             _%tl169809169826%_
                             _%hd169810169824%_)))
                        (let ()
                          (declare (not safe))
                          (_%g169805169816%_ _%g169806169819%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_%g169804169851%_
                                                     _%clause169803%_)))
                                                (let ((__tmp171235
                                                       (lambda (_%g169853169856%_
                                                                _%g169854169858%_)
                                                         (cons _%g169853169856%_
                                                               _%g169854169858%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp171235
                                                   '()
                                                   _%L169789%_))))
                                          (__tmp171236
                                           (cons '%#case-lambda
                                                 _%clauses169861%_)))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp171236
                                      _%L169388%_)))
                                 _%clause169747169786%_))))))
                (let ()
                  (declare (not safe))
                  (_%loop169742169770%_ _%target169739169765%_ '())))
              (let ()
                (declare (not safe))
                (_%g169733169752%_ _%g169734169755%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%g169733169752%_
                                               _%g169734169755%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g169733169752%_
                                       _%g169734169755%_))))))
                        (declare (not safe))
                        (_%g169732169863%_ _%L169388%_)))
                     (_%specializer-impl169868%_
                      (let ((__tmp171237
                             (cons '%#let-values
                                   (cons (cons (cons (cons _%L168858%_ '())
                                                     (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (cons (cons _%L168857%_ '())
                                           (cons (let ((__tmp171238
                                                        (cons '%#let-values
                                                              (cons (cons (cons (cons _%L169390%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                              '())
                                        (cons _%specializer-lambda-expr169731%_
                                              '()))
                                  '())
                            (cons _%specializer-case-lambda-expr169866%_
                                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp171238
                                                    _%stx167094%_))
                                                 '()))
                                     '())
                               (cons _%L168855%_ '())))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons _%L168854%_ '())))))
                        (declare (not safe))
                        (gxc#xform-wrap-source __tmp171237 _%stx167094%_)))
                     (_%specializer-impl169870%_
                      (let ()
                        (declare (not safe))
                        (_%generate-specializer-impl167098%_
                         _%$klass169607%_
                         _%$method-table169609%_
                         _%methods-bind169634%_
                         _%slots-bind169658%_
                         _%specializer-impl169868%_))))
                (let ((__tmp171240
                       (let () (declare (not safe)) (gx#stx-e _%L167167%_)))
                      (__tmp171239
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%specializer-id169605%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"generate method specializer "
                   __tmp171240
                   '" => "
                   __tmp171239))
                (let ()
                  (declare (not safe))
                  (_%generate-specializer-def167099%_
                   _%L167167%_
                   _%specializer-id169605%_
                   _%specializer-impl169870%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%hd169321169383%_
                                                _%hd169318169375%_
                                                _%hd169315169367%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g169297169327%_
                                                  _%g169298169330%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g169297169327%_
                                          _%g169298169330%_)))
                                   (let ()
                                     (declare (not safe))
                                     (_%g169297169327%_ _%g169298169330%_)))
                               (let ()
                                 (declare (not safe))
                                 (_%g169297169327%_ _%g169298169330%_)))))
                       (let ()
                         (declare (not safe))
                         (_%g169297169327%_ _%g169298169330%_)))
                   (let ()
                     (declare (not safe))
                     (_%g169297169327%_ _%g169298169330%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g169297169327%_
                                                      _%g169298169330%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g169297169327%_
                                              _%g169298169330%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g169297169327%_ _%g169298169330%_)))))
                           (let ()
                             (declare (not safe))
                             (_%g169297169327%_ _%g169298169330%_)))))
                   (let ()
                     (declare (not safe))
                     (_%g169297169327%_ _%g169298169330%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_%g169296169873%_
                                                _%L168856%_)))
                                           (let () _%stx167094%_)))))
                               _%hd168954169077%_
                               _%kw-ref168952169098%_
                               _%hd168942169064%_
                               _%hd168933169040%_
                               _%hd168924169016%_)
                              (let ()
                                (declare (not safe))
                                (_%g168898168960%_ _%g168899168963%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%loop168947169082%_
                                                     _%target168944169069%_
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g168898168960%_
                                                   _%g168899168963%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g168898168960%_
                                           _%g168899168963%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g168898168960%_ _%g168899168963%_)))
                          (let ()
                            (declare (not safe))
                            (_%g168898168960%_ _%g168899168963%_)))
                      (let ()
                        (declare (not safe))
                        (_%g168898168960%_ _%g168899168963%_)))))
              (let ()
                (declare (not safe))
                (_%g168898168960%_ _%g168899168963%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g168898168960%_
                                                     _%g168899168963%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g168898168960%_
                                                 _%g168899168963%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g168898168960%_
                                         _%g168899168963%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g168898168960%_ _%g168899168963%_)))
                          (let ()
                            (declare (not safe))
                            (_%g168898168960%_ _%g168899168963%_)))))
                  (let ()
                    (declare (not safe))
                    (_%g168898168960%_ _%g168899168963%_)))
              (let ()
                (declare (not safe))
                (_%g168898168960%_ _%g168899168963%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g168898168960%_
                                                     _%g168899168963%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g168898168960%_
                                             _%g168899168963%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g168898168960%_ _%g168899168963%_)))
                              (let ()
                                (declare (not safe))
                                (_%g168898168960%_ _%g168899168963%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g168898168960%_ _%g168899168963%_)))
                  (let ()
                    (declare (not safe))
                    (_%g168898168960%_ _%g168899168963%_)))
              (let ()
                (declare (not safe))
                (_%g168898168960%_ _%g168899168963%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g168898168960%_
                                                 _%g168899168963%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g168898168960%_ _%g168899168963%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g168898168960%_ _%g168899168963%_)))
                              (let ()
                                (declare (not safe))
                                (_%g168898168960%_ _%g168899168963%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g168898168960%_ _%g168899168963%_)))))
              (let ()
                (declare (not safe))
                (_%g168898168960%_ _%g168899168963%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g168898168960%_
                                                 _%g168899168963%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g168898168960%_
                                             _%g168899168963%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g168898168960%_
                                         _%g168899168963%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g168898168960%_ _%g168899168963%_))))))
                  (declare (not safe))
                  (_%g168897169877%_ _%L168855%_)))
              _%hd168731168849%_
              _%hd168728168841%_
              _%hd168725168833%_
              _%hd168722168825%_
              _%hd168704168777%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g168684168737%_
                                                        _%g168685168740%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g168684168737%_
                                                _%g168685168740%_)))
                                         (let ()
                                           (declare (not safe))
                                           (_%g168684168737%_
                                            _%g168685168740%_)))
                                     (let ()
                                       (declare (not safe))
                                       (_%g168684168737%_ _%g168685168740%_)))
                                 (let ()
                                   (declare (not safe))
                                   (_%g168684168737%_ _%g168685168740%_)))))
                         (let ()
                           (declare (not safe))
                           (_%g168684168737%_ _%g168685168740%_)))
                     (let ()
                       (declare (not safe))
                       (_%g168684168737%_ _%g168685168740%_)))
                 (let ()
                   (declare (not safe))
                   (_%g168684168737%_ _%g168685168740%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g168684168737%_
                                                    _%g168685168740%_)))
                                             (let ()
                                               (declare (not safe))
                                               (_%g168684168737%_
                                                _%g168685168740%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g168684168737%_
                                        _%g168685168740%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g168684168737%_ _%g168685168740%_)))))
                     (let ()
                       (declare (not safe))
                       (_%g168684168737%_ _%g168685168740%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g168684168737%_
                                                        _%g168685168740%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g168684168737%_
                                                    _%g168685168740%_)))
                                             (let ()
                                               (declare (not safe))
                                               (_%g168684168737%_
                                                _%g168685168740%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g168684168737%_
                                        _%g168685168740%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g168684168737%_ _%g168685168740%_)))
                         (let ()
                           (declare (not safe))
                           (_%g168684168737%_ _%g168685168740%_)))))
                 (let ()
                   (declare (not safe))
                   (_%g168684168737%_ _%g168685168740%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g168684168737%_
                                                    _%g168685168740%_)))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g168684168737%_
                                            _%g168685168740%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g168684168737%_ _%g168685168740%_)))
                             (let ()
                               (declare (not safe))
                               (_%g168684168737%_ _%g168685168740%_)))
                         (let ()
                           (declare (not safe))
                           (_%g168684168737%_ _%g168685168740%_)))))
                 (let ()
                   (declare (not safe))
                   (_%g168684168737%_ _%g168685168740%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (_%g168683169880%_ _%L167166%_)))
                                         (let () _%stx167094%_)))))))))
                  (_%__kont170105170106%_ (lambda () _%stx167094%_)))
              (let ((_%__match170134170135%_
                     (lambda (_%e167108167134%_
                              _%hd167107167137%_
                              _%tl167106167139%_
                              _%e167111167142%_
                              _%hd167110167145%_
                              _%tl167109167147%_
                              _%e167114167150%_
                              _%hd167113167153%_
                              _%tl167112167155%_
                              _%e167117167158%_
                              _%hd167116167161%_
                              _%tl167115167163%_)
                       (let ((_%L167166%_ _%hd167116167161%_)
                             (_%L167167%_ _%hd167113167153%_))
                         (if (let ((__tmp171241
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L167167%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp171241))
                             (_%__kont170103170104%_ _%L167166%_ _%L167167%_)
                             (_%__kont170105170106%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx170101170102%_))
                    (let ((_%e167108167134%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx170101170102%_))))
                      (let ((_%tl167106167139%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e167108167134%_)))
                            (_%hd167107167137%_
                             (let ()
                               (declare (not safe))
                               (##car _%e167108167134%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl167106167139%_))
                            (let ((_%e167111167142%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl167106167139%_))))
                              (let ((_%tl167109167147%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e167111167142%_)))
                                    (_%hd167110167145%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e167111167142%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd167110167145%_))
                                    (let ((_%e167114167150%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd167110167145%_))))
                                      (let ((_%tl167112167155%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e167114167150%_)))
                                            (_%hd167113167153%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e167114167150%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl167112167155%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl167109167147%_))
                                                (let ((_%e167117167158%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl167109167147%_))))
                                                  (let ((_%tl167115167163%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e167117167158%_)))
                                                        (_%hd167116167161%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e167117167158%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl167115167163%_))
                                                        (_%__match170134170135%_
                                                         _%e167108167134%_
                                                         _%hd167107167137%_
                                                         _%tl167106167139%_
                                                         _%e167111167142%_
                                                         _%hd167110167145%_
                                                         _%tl167109167147%_
                                                         _%e167114167150%_
                                                         _%hd167113167153%_
                                                         _%tl167112167155%_
                                                         _%e167117167158%_
                                                         _%hd167116167161%_
                                                         _%tl167115167163%_)
                                                        (_%__kont170105170106%_))))
                                                (_%__kont170105170106%_))
                                            (_%__kont170105170106%_))))
                                    (_%__kont170105170106%_))))
                            (_%__kont170105170106%_))))
                    (_%__kont170105170106%_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self166054%_ _%stx166055%_)
        (let* ((_%__stx170137170138%_ _%stx166055%_)
               (_%g166063166285%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx170137170138%_)))))
          (let ((_%__kont170139170140%_
                 (lambda (_%L167042%_ _%L167043%_ _%L167044%_ _%L167045%_)
                   (let ((__tmp171243
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self166054%_ 'methods)))
                         (__tmp171242
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L167043%_))))
                     (declare (not safe))
                     (hash-put! __tmp171243 __tmp171242 '#t))
                   (for-each
                    (lambda (_%g167078167080%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self166054%_ _%g167078167080%_)))
                    (let ((__tmp171244
                           (lambda (_%g167082167085%_ _%g167083167087%_)
                             (cons _%g167082167085%_ _%g167083167087%_))))
                      (declare (not safe))
                      (__foldr1 __tmp171244 '() _%L167042%_)))))
                (_%__kont170143170144%_
                 (lambda (_%L166877%_
                          _%L166878%_
                          _%L166879%_
                          _%L166880%_
                          _%L166881%_)
                   (let ((__tmp171246
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self166054%_ 'methods)))
                         (__tmp171245
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L166878%_))))
                     (declare (not safe))
                     (hash-put! __tmp171246 __tmp171245 '#t))
                   (for-each
                    (lambda (_%g166921166923%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self166054%_ _%g166921166923%_)))
                    (let ((__tmp171247
                           (lambda (_%g166925166928%_ _%g166926166930%_)
                             (cons _%g166925166928%_ _%g166926166930%_))))
                      (declare (not safe))
                      (__foldr1 __tmp171247 '() _%L166877%_)))))
                (_%__kont170147170148%_
                 (lambda (_%L166710%_ _%L166711%_ _%L166712%_)
                   (let ((__tmp171249
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self166054%_ 'slots)))
                         (__tmp171248
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L166710%_))))
                     (declare (not safe))
                     (hash-put! __tmp171249 __tmp171248 '#t))))
                (_%__kont170149170150%_
                 (lambda (_%L166587%_ _%L166588%_ _%L166589%_ _%L166590%_)
                   (let ((__tmp171251
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self166054%_ 'slots)))
                         (__tmp171250
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L166588%_))))
                     (declare (not safe))
                     (hash-put! __tmp171251 __tmp171250 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self166054%_ _%L166587%_))))
                (_%__kont170151170152%_
                 (lambda (_%L166461%_ _%L166462%_)
                   (let* ((_%accessor166484%_
                           (let ((__tmp171252
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L166462%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp171252)))
                          (_%klass166486%_
                           (let ((__tmp171253
                                  (##structure-ref
                                   _%accessor166484%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx166055%_
                              __tmp171253)))
                          (_%slot166488%_
                           (##structure-ref
                            _%accessor166484%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (and (let ((__tmp171254
                                     (##structure-ref
                                      _%accessor166484%_
                                      '4
                                      gxc#!accessor::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp171254))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _%klass166486%_
                                     _%slot166488%_))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass166486%_
                                     '8
                                     '#f
                                     '#f))))
                         '#!void
                         (let ((__tmp171256
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self166054%_ 'slots)))
                               (__tmp171255
                                (##structure-ref
                                 _%accessor166484%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp171256 __tmp171255 '#t))))))
                (_%__kont170153170154%_
                 (lambda (_%L166361%_ _%L166362%_ _%L166363%_)
                   (let* ((_%mutator166390%_
                           (let ((__tmp171257
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L166363%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp171257)))
                          (_%klass166392%_
                           (let ((__tmp171258
                                  (##structure-ref
                                   _%mutator166390%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx166055%_
                              __tmp171258)))
                          (_%slot166394%_
                           (##structure-ref
                            _%mutator166390%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (and (let ((__tmp171259
                                     (##structure-ref
                                      _%mutator166390%_
                                      '4
                                      gxc#!mutator::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp171259))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _%klass166392%_
                                     _%slot166394%_))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass166392%_
                                     '8
                                     '#f
                                     '#f))))
                         '#!void
                         (let ((__tmp171260
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self166054%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp171260 _%slot166394%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self166054%_ _%L166361%_)))))
                (_%__kont170155170156%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self166054%_ _%stx166055%_)))))
            (let* ((_%__match170636170637%_
                    (lambda (_%e166259166297%_
                             _%hd166258166300%_
                             _%tl166257166302%_
                             _%e166262166305%_
                             _%hd166261166308%_
                             _%tl166260166310%_
                             _%e166265166313%_
                             _%hd166264166316%_
                             _%tl166263166318%_
                             _%e166268166321%_
                             _%hd166267166324%_
                             _%tl166266166326%_
                             _%e166271166329%_
                             _%hd166270166332%_
                             _%tl166269166334%_
                             _%e166274166337%_
                             _%hd166273166340%_
                             _%tl166272166342%_
                             _%e166277166345%_
                             _%hd166276166348%_
                             _%tl166275166350%_
                             _%e166280166353%_
                             _%hd166279166356%_
                             _%tl166278166358%_)
                      (let ((_%L166361%_ _%hd166279166356%_)
                            (_%L166362%_ _%hd166276166348%_)
                            (_%L166363%_ _%hd166267166324%_))
                        (if (and (let ((__tmp171261
                                        (let ((__tmp171262
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L166363%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp171262))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp171261
                                    'gxc#!mutator::t))
                                 (let ((__tmp171263
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self166054%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L166362%_
                                    __tmp171263)))
                            (_%__kont170153170154%_
                             _%L166361%_
                             _%L166362%_
                             _%L166363%_)
                            (_%__kont170155170156%_)))))
                   (_%__match170634170635%_
                    (lambda (_%e166259166297%_
                             _%hd166258166300%_
                             _%tl166257166302%_
                             _%e166262166305%_
                             _%hd166261166308%_
                             _%tl166260166310%_
                             _%e166265166313%_
                             _%hd166264166316%_
                             _%tl166263166318%_
                             _%e166268166321%_
                             _%hd166267166324%_
                             _%tl166266166326%_
                             _%e166271166329%_
                             _%hd166270166332%_
                             _%tl166269166334%_
                             _%e166274166337%_
                             _%hd166273166340%_
                             _%tl166272166342%_
                             _%e166277166345%_
                             _%hd166276166348%_
                             _%tl166275166350%_
                             _%e166280166353%_
                             _%hd166279166356%_
                             _%tl166278166358%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl166278166358%_))
                          (_%__match170636170637%_
                           _%e166259166297%_
                           _%hd166258166300%_
                           _%tl166257166302%_
                           _%e166262166305%_
                           _%hd166261166308%_
                           _%tl166260166310%_
                           _%e166265166313%_
                           _%hd166264166316%_
                           _%tl166263166318%_
                           _%e166268166321%_
                           _%hd166267166324%_
                           _%tl166266166326%_
                           _%e166271166329%_
                           _%hd166270166332%_
                           _%tl166269166334%_
                           _%e166274166337%_
                           _%hd166273166340%_
                           _%tl166272166342%_
                           _%e166277166345%_
                           _%hd166276166348%_
                           _%tl166275166350%_
                           _%e166280166353%_
                           _%hd166279166356%_
                           _%tl166278166358%_)
                          (_%__kont170155170156%_))))
                   (_%__match170628170629%_
                    (lambda (_%e166259166297%_
                             _%hd166258166300%_
                             _%tl166257166302%_
                             _%e166262166305%_
                             _%hd166261166308%_
                             _%tl166260166310%_
                             _%e166265166313%_
                             _%hd166264166316%_
                             _%tl166263166318%_
                             _%e166268166321%_
                             _%hd166267166324%_
                             _%tl166266166326%_
                             _%e166271166329%_
                             _%hd166270166332%_
                             _%tl166269166334%_
                             _%e166274166337%_
                             _%hd166273166340%_
                             _%tl166272166342%_
                             _%e166277166345%_
                             _%hd166276166348%_
                             _%tl166275166350%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl166269166334%_))
                          (let ((_%e166280166353%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl166269166334%_))))
                            (let ((_%tl166278166358%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e166280166353%_)))
                                  (_%hd166279166356%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e166280166353%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl166278166358%_))
                                  (_%__match170636170637%_
                                   _%e166259166297%_
                                   _%hd166258166300%_
                                   _%tl166257166302%_
                                   _%e166262166305%_
                                   _%hd166261166308%_
                                   _%tl166260166310%_
                                   _%e166265166313%_
                                   _%hd166264166316%_
                                   _%tl166263166318%_
                                   _%e166268166321%_
                                   _%hd166267166324%_
                                   _%tl166266166326%_
                                   _%e166271166329%_
                                   _%hd166270166332%_
                                   _%tl166269166334%_
                                   _%e166274166337%_
                                   _%hd166273166340%_
                                   _%tl166272166342%_
                                   _%e166277166345%_
                                   _%hd166276166348%_
                                   _%tl166275166350%_
                                   _%e166280166353%_
                                   _%hd166279166356%_
                                   _%tl166278166358%_)
                                  (_%__kont170155170156%_))))
                          (_%__kont170155170156%_))))
                   (_%__match170574170575%_
                    (lambda (_%e166235166405%_
                             _%hd166234166408%_
                             _%tl166233166410%_
                             _%e166238166413%_
                             _%hd166237166416%_
                             _%tl166236166418%_
                             _%e166241166421%_
                             _%hd166240166424%_
                             _%tl166239166426%_
                             _%e166244166429%_
                             _%hd166243166432%_
                             _%tl166242166434%_
                             _%e166247166437%_
                             _%hd166246166440%_
                             _%tl166245166442%_
                             _%e166250166445%_
                             _%hd166249166448%_
                             _%tl166248166450%_
                             _%e166253166453%_
                             _%hd166252166456%_
                             _%tl166251166458%_)
                      (let ((_%L166461%_ _%hd166252166456%_)
                            (_%L166462%_ _%hd166243166432%_))
                        (if (and (let ((__tmp171264
                                        (let ((__tmp171265
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L166462%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp171265))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp171264
                                    'gxc#!accessor::t))
                                 (let ((__tmp171266
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self166054%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L166461%_
                                    __tmp171266)))
                            (_%__kont170151170152%_ _%L166461%_ _%L166462%_)
                            (_%__kont170155170156%_)))))
                   (_%__match170572170573%_
                    (lambda (_%e166235166405%_
                             _%hd166234166408%_
                             _%tl166233166410%_
                             _%e166238166413%_
                             _%hd166237166416%_
                             _%tl166236166418%_
                             _%e166241166421%_
                             _%hd166240166424%_
                             _%tl166239166426%_
                             _%e166244166429%_
                             _%hd166243166432%_
                             _%tl166242166434%_
                             _%e166247166437%_
                             _%hd166246166440%_
                             _%tl166245166442%_
                             _%e166250166445%_
                             _%hd166249166448%_
                             _%tl166248166450%_
                             _%e166253166453%_
                             _%hd166252166456%_
                             _%tl166251166458%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl166245166442%_))
                          (_%__match170574170575%_
                           _%e166235166405%_
                           _%hd166234166408%_
                           _%tl166233166410%_
                           _%e166238166413%_
                           _%hd166237166416%_
                           _%tl166236166418%_
                           _%e166241166421%_
                           _%hd166240166424%_
                           _%tl166239166426%_
                           _%e166244166429%_
                           _%hd166243166432%_
                           _%tl166242166434%_
                           _%e166247166437%_
                           _%hd166246166440%_
                           _%tl166245166442%_
                           _%e166250166445%_
                           _%hd166249166448%_
                           _%tl166248166450%_
                           _%e166253166453%_
                           _%hd166252166456%_
                           _%tl166251166458%_)
                          (_%__match170628170629%_
                           _%e166235166405%_
                           _%hd166234166408%_
                           _%tl166233166410%_
                           _%e166238166413%_
                           _%hd166237166416%_
                           _%tl166236166418%_
                           _%e166241166421%_
                           _%hd166240166424%_
                           _%tl166239166426%_
                           _%e166244166429%_
                           _%hd166243166432%_
                           _%tl166242166434%_
                           _%e166247166437%_
                           _%hd166246166440%_
                           _%tl166245166442%_
                           _%e166250166445%_
                           _%hd166249166448%_
                           _%tl166248166450%_
                           _%e166253166453%_
                           _%hd166252166456%_
                           _%tl166251166458%_))))
                   (_%__match170518170519%_
                    (lambda (_%e166200166499%_
                             _%hd166199166502%_
                             _%tl166198166504%_
                             _%e166203166507%_
                             _%hd166202166510%_
                             _%tl166201166512%_
                             _%e166206166515%_
                             _%hd166205166518%_
                             _%tl166204166520%_
                             _%e166209166523%_
                             _%hd166208166526%_
                             _%tl166207166528%_
                             _%e166212166531%_
                             _%hd166211166534%_
                             _%tl166210166536%_
                             _%e166215166539%_
                             _%hd166214166542%_
                             _%tl166213166544%_
                             _%e166218166547%_
                             _%hd166217166550%_
                             _%tl166216166552%_
                             _%e166221166555%_
                             _%hd166220166558%_
                             _%tl166219166560%_
                             _%e166224166563%_
                             _%hd166223166566%_
                             _%tl166222166568%_
                             _%e166227166571%_
                             _%hd166226166574%_
                             _%tl166225166576%_
                             _%e166230166579%_
                             _%hd166229166582%_
                             _%tl166228166584%_)
                      (let ((_%L166587%_ _%hd166229166582%_)
                            (_%L166588%_ _%hd166226166574%_)
                            (_%L166589%_ _%hd166217166550%_)
                            (_%L166590%_ _%hd166208166526%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L166590%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L166590%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp171267
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self166054%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L166589%_
                                    __tmp171267)))
                            (_%__kont170149170150%_
                             _%L166587%_
                             _%L166588%_
                             _%L166589%_
                             _%L166590%_)
                            (_%__kont170155170156%_)))))
                   (_%__match170510170511%_
                    (lambda (_%e166200166499%_
                             _%hd166199166502%_
                             _%tl166198166504%_
                             _%e166203166507%_
                             _%hd166202166510%_
                             _%tl166201166512%_
                             _%e166206166515%_
                             _%hd166205166518%_
                             _%tl166204166520%_
                             _%e166209166523%_
                             _%hd166208166526%_
                             _%tl166207166528%_
                             _%e166212166531%_
                             _%hd166211166534%_
                             _%tl166210166536%_
                             _%e166215166539%_
                             _%hd166214166542%_
                             _%tl166213166544%_
                             _%e166218166547%_
                             _%hd166217166550%_
                             _%tl166216166552%_
                             _%e166221166555%_
                             _%hd166220166558%_
                             _%tl166219166560%_
                             _%e166224166563%_
                             _%hd166223166566%_
                             _%tl166222166568%_
                             _%e166227166571%_
                             _%hd166226166574%_
                             _%tl166225166576%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl166219166560%_))
                          (let ((_%e166230166579%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl166219166560%_))))
                            (let ((_%tl166228166584%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e166230166579%_)))
                                  (_%hd166229166582%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e166230166579%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl166228166584%_))
                                  (_%__match170518170519%_
                                   _%e166200166499%_
                                   _%hd166199166502%_
                                   _%tl166198166504%_
                                   _%e166203166507%_
                                   _%hd166202166510%_
                                   _%tl166201166512%_
                                   _%e166206166515%_
                                   _%hd166205166518%_
                                   _%tl166204166520%_
                                   _%e166209166523%_
                                   _%hd166208166526%_
                                   _%tl166207166528%_
                                   _%e166212166531%_
                                   _%hd166211166534%_
                                   _%tl166210166536%_
                                   _%e166215166539%_
                                   _%hd166214166542%_
                                   _%tl166213166544%_
                                   _%e166218166547%_
                                   _%hd166217166550%_
                                   _%tl166216166552%_
                                   _%e166221166555%_
                                   _%hd166220166558%_
                                   _%tl166219166560%_
                                   _%e166224166563%_
                                   _%hd166223166566%_
                                   _%tl166222166568%_
                                   _%e166227166571%_
                                   _%hd166226166574%_
                                   _%tl166225166576%_
                                   _%e166230166579%_
                                   _%hd166229166582%_
                                   _%tl166228166584%_)
                                  (_%__kont170155170156%_))))
                          (_%__match170634170635%_
                           _%e166200166499%_
                           _%hd166199166502%_
                           _%tl166198166504%_
                           _%e166203166507%_
                           _%hd166202166510%_
                           _%tl166201166512%_
                           _%e166206166515%_
                           _%hd166205166518%_
                           _%tl166204166520%_
                           _%e166209166523%_
                           _%hd166208166526%_
                           _%tl166207166528%_
                           _%e166212166531%_
                           _%hd166211166534%_
                           _%tl166210166536%_
                           _%e166215166539%_
                           _%hd166214166542%_
                           _%tl166213166544%_
                           _%e166218166547%_
                           _%hd166217166550%_
                           _%tl166216166552%_
                           _%e166221166555%_
                           _%hd166220166558%_
                           _%tl166219166560%_))))
                   (_%__match170432170433%_
                    (lambda (_%e166166166630%_
                             _%hd166165166633%_
                             _%tl166164166635%_
                             _%e166169166638%_
                             _%hd166168166641%_
                             _%tl166167166643%_
                             _%e166172166646%_
                             _%hd166171166649%_
                             _%tl166170166651%_
                             _%e166175166654%_
                             _%hd166174166657%_
                             _%tl166173166659%_
                             _%e166178166662%_
                             _%hd166177166665%_
                             _%tl166176166667%_
                             _%e166181166670%_
                             _%hd166180166673%_
                             _%tl166179166675%_
                             _%e166184166678%_
                             _%hd166183166681%_
                             _%tl166182166683%_
                             _%e166187166686%_
                             _%hd166186166689%_
                             _%tl166185166691%_
                             _%e166190166694%_
                             _%hd166189166697%_
                             _%tl166188166699%_
                             _%e166193166702%_
                             _%hd166192166705%_
                             _%tl166191166707%_)
                      (let ((_%L166710%_ _%hd166192166705%_)
                            (_%L166711%_ _%hd166183166681%_)
                            (_%L166712%_ _%hd166174166657%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L166712%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L166712%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp171268
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self166054%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L166711%_
                                    __tmp171268)))
                            (_%__kont170147170148%_
                             _%L166710%_
                             _%L166711%_
                             _%L166712%_)
                            (_%__match170636170637%_
                             _%e166166166630%_
                             _%hd166165166633%_
                             _%tl166164166635%_
                             _%e166169166638%_
                             _%hd166168166641%_
                             _%tl166167166643%_
                             _%e166172166646%_
                             _%hd166171166649%_
                             _%tl166170166651%_
                             _%e166175166654%_
                             _%hd166174166657%_
                             _%tl166173166659%_
                             _%e166178166662%_
                             _%hd166177166665%_
                             _%tl166176166667%_
                             _%e166181166670%_
                             _%hd166180166673%_
                             _%tl166179166675%_
                             _%e166184166678%_
                             _%hd166183166681%_
                             _%tl166182166683%_
                             _%e166187166686%_
                             _%hd166186166689%_
                             _%tl166185166691%_)))))
                   (_%__match170430170431%_
                    (lambda (_%e166166166630%_
                             _%hd166165166633%_
                             _%tl166164166635%_
                             _%e166169166638%_
                             _%hd166168166641%_
                             _%tl166167166643%_
                             _%e166172166646%_
                             _%hd166171166649%_
                             _%tl166170166651%_
                             _%e166175166654%_
                             _%hd166174166657%_
                             _%tl166173166659%_
                             _%e166178166662%_
                             _%hd166177166665%_
                             _%tl166176166667%_
                             _%e166181166670%_
                             _%hd166180166673%_
                             _%tl166179166675%_
                             _%e166184166678%_
                             _%hd166183166681%_
                             _%tl166182166683%_
                             _%e166187166686%_
                             _%hd166186166689%_
                             _%tl166185166691%_
                             _%e166190166694%_
                             _%hd166189166697%_
                             _%tl166188166699%_
                             _%e166193166702%_
                             _%hd166192166705%_
                             _%tl166191166707%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl166185166691%_))
                          (_%__match170432170433%_
                           _%e166166166630%_
                           _%hd166165166633%_
                           _%tl166164166635%_
                           _%e166169166638%_
                           _%hd166168166641%_
                           _%tl166167166643%_
                           _%e166172166646%_
                           _%hd166171166649%_
                           _%tl166170166651%_
                           _%e166175166654%_
                           _%hd166174166657%_
                           _%tl166173166659%_
                           _%e166178166662%_
                           _%hd166177166665%_
                           _%tl166176166667%_
                           _%e166181166670%_
                           _%hd166180166673%_
                           _%tl166179166675%_
                           _%e166184166678%_
                           _%hd166183166681%_
                           _%tl166182166683%_
                           _%e166187166686%_
                           _%hd166186166689%_
                           _%tl166185166691%_
                           _%e166190166694%_
                           _%hd166189166697%_
                           _%tl166188166699%_
                           _%e166193166702%_
                           _%hd166192166705%_
                           _%tl166191166707%_)
                          (_%__match170510170511%_
                           _%e166166166630%_
                           _%hd166165166633%_
                           _%tl166164166635%_
                           _%e166169166638%_
                           _%hd166168166641%_
                           _%tl166167166643%_
                           _%e166172166646%_
                           _%hd166171166649%_
                           _%tl166170166651%_
                           _%e166175166654%_
                           _%hd166174166657%_
                           _%tl166173166659%_
                           _%e166178166662%_
                           _%hd166177166665%_
                           _%tl166176166667%_
                           _%e166181166670%_
                           _%hd166180166673%_
                           _%tl166179166675%_
                           _%e166184166678%_
                           _%hd166183166681%_
                           _%tl166182166683%_
                           _%e166187166686%_
                           _%hd166186166689%_
                           _%tl166185166691%_
                           _%e166190166694%_
                           _%hd166189166697%_
                           _%tl166188166699%_
                           _%e166193166702%_
                           _%hd166192166705%_
                           _%tl166191166707%_))))
                   (_%__match170420170421%_
                    (lambda (_%e166166166630%_
                             _%hd166165166633%_
                             _%tl166164166635%_
                             _%e166169166638%_
                             _%hd166168166641%_
                             _%tl166167166643%_
                             _%e166172166646%_
                             _%hd166171166649%_
                             _%tl166170166651%_
                             _%e166175166654%_
                             _%hd166174166657%_
                             _%tl166173166659%_
                             _%e166178166662%_
                             _%hd166177166665%_
                             _%tl166176166667%_
                             _%e166181166670%_
                             _%hd166180166673%_
                             _%tl166179166675%_
                             _%e166184166678%_
                             _%hd166183166681%_
                             _%tl166182166683%_
                             _%e166187166686%_
                             _%hd166186166689%_
                             _%tl166185166691%_
                             _%e166190166694%_
                             _%hd166189166697%_
                             _%tl166188166699%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd166189166697%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl166188166699%_))
                              (let ((_%e166193166702%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl166188166699%_))))
                                (let ((_%tl166191166707%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e166193166702%_)))
                                      (_%hd166192166705%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e166193166702%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl166191166707%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl166185166691%_))
                                          (_%__match170432170433%_
                                           _%e166166166630%_
                                           _%hd166165166633%_
                                           _%tl166164166635%_
                                           _%e166169166638%_
                                           _%hd166168166641%_
                                           _%tl166167166643%_
                                           _%e166172166646%_
                                           _%hd166171166649%_
                                           _%tl166170166651%_
                                           _%e166175166654%_
                                           _%hd166174166657%_
                                           _%tl166173166659%_
                                           _%e166178166662%_
                                           _%hd166177166665%_
                                           _%tl166176166667%_
                                           _%e166181166670%_
                                           _%hd166180166673%_
                                           _%tl166179166675%_
                                           _%e166184166678%_
                                           _%hd166183166681%_
                                           _%tl166182166683%_
                                           _%e166187166686%_
                                           _%hd166186166689%_
                                           _%tl166185166691%_
                                           _%e166190166694%_
                                           _%hd166189166697%_
                                           _%tl166188166699%_
                                           _%e166193166702%_
                                           _%hd166192166705%_
                                           _%tl166191166707%_)
                                          (_%__match170510170511%_
                                           _%e166166166630%_
                                           _%hd166165166633%_
                                           _%tl166164166635%_
                                           _%e166169166638%_
                                           _%hd166168166641%_
                                           _%tl166167166643%_
                                           _%e166172166646%_
                                           _%hd166171166649%_
                                           _%tl166170166651%_
                                           _%e166175166654%_
                                           _%hd166174166657%_
                                           _%tl166173166659%_
                                           _%e166178166662%_
                                           _%hd166177166665%_
                                           _%tl166176166667%_
                                           _%e166181166670%_
                                           _%hd166180166673%_
                                           _%tl166179166675%_
                                           _%e166184166678%_
                                           _%hd166183166681%_
                                           _%tl166182166683%_
                                           _%e166187166686%_
                                           _%hd166186166689%_
                                           _%tl166185166691%_
                                           _%e166190166694%_
                                           _%hd166189166697%_
                                           _%tl166188166699%_
                                           _%e166193166702%_
                                           _%hd166192166705%_
                                           _%tl166191166707%_))
                                      (_%__match170634170635%_
                                       _%e166166166630%_
                                       _%hd166165166633%_
                                       _%tl166164166635%_
                                       _%e166169166638%_
                                       _%hd166168166641%_
                                       _%tl166167166643%_
                                       _%e166172166646%_
                                       _%hd166171166649%_
                                       _%tl166170166651%_
                                       _%e166175166654%_
                                       _%hd166174166657%_
                                       _%tl166173166659%_
                                       _%e166178166662%_
                                       _%hd166177166665%_
                                       _%tl166176166667%_
                                       _%e166181166670%_
                                       _%hd166180166673%_
                                       _%tl166179166675%_
                                       _%e166184166678%_
                                       _%hd166183166681%_
                                       _%tl166182166683%_
                                       _%e166187166686%_
                                       _%hd166186166689%_
                                       _%tl166185166691%_))))
                              (_%__match170634170635%_
                               _%e166166166630%_
                               _%hd166165166633%_
                               _%tl166164166635%_
                               _%e166169166638%_
                               _%hd166168166641%_
                               _%tl166167166643%_
                               _%e166172166646%_
                               _%hd166171166649%_
                               _%tl166170166651%_
                               _%e166175166654%_
                               _%hd166174166657%_
                               _%tl166173166659%_
                               _%e166178166662%_
                               _%hd166177166665%_
                               _%tl166176166667%_
                               _%e166181166670%_
                               _%hd166180166673%_
                               _%tl166179166675%_
                               _%e166184166678%_
                               _%hd166183166681%_
                               _%tl166182166683%_
                               _%e166187166686%_
                               _%hd166186166689%_
                               _%tl166185166691%_))
                          (_%__match170634170635%_
                           _%e166166166630%_
                           _%hd166165166633%_
                           _%tl166164166635%_
                           _%e166169166638%_
                           _%hd166168166641%_
                           _%tl166167166643%_
                           _%e166172166646%_
                           _%hd166171166649%_
                           _%tl166170166651%_
                           _%e166175166654%_
                           _%hd166174166657%_
                           _%tl166173166659%_
                           _%e166178166662%_
                           _%hd166177166665%_
                           _%tl166176166667%_
                           _%e166181166670%_
                           _%hd166180166673%_
                           _%tl166179166675%_
                           _%e166184166678%_
                           _%hd166183166681%_
                           _%tl166182166683%_
                           _%e166187166686%_
                           _%hd166186166689%_
                           _%tl166185166691%_))))
                   (_%__match170352170353%_
                    (lambda (_%e166115166749%_
                             _%hd166114166752%_
                             _%tl166113166754%_
                             _%e166118166757%_
                             _%hd166117166760%_
                             _%tl166116166762%_
                             _%e166121166765%_
                             _%hd166120166768%_
                             _%tl166119166770%_
                             _%e166124166773%_
                             _%hd166123166776%_
                             _%tl166122166778%_
                             _%e166127166781%_
                             _%hd166126166784%_
                             _%tl166125166786%_
                             _%e166130166789%_
                             _%hd166129166792%_
                             _%tl166128166794%_
                             _%e166133166797%_
                             _%hd166132166800%_
                             _%tl166131166802%_
                             _%e166136166805%_
                             _%hd166135166808%_
                             _%tl166134166810%_
                             _%e166139166813%_
                             _%hd166138166816%_
                             _%tl166137166818%_
                             _%e166142166821%_
                             _%hd166141166824%_
                             _%tl166140166826%_
                             _%e166145166829%_
                             _%hd166144166832%_
                             _%tl166143166834%_
                             _%e166148166837%_
                             _%hd166147166840%_
                             _%tl166146166842%_
                             _%e166151166845%_
                             _%hd166150166848%_
                             _%tl166149166850%_
                             _%__splice170145170146%_
                             _%target166152166853%_
                             _%tl166154166855%_)
                      (letrec ((_%loop166155166858%_
                                (lambda (_%hd166153166861%_
                                         _%args166159166863%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd166153166861%_))
                                      (let ((_%e166156166866%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd166153166861%_))))
                                        (let ((_%lp-tl166158166871%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e166156166866%_)))
                                              (_%lp-hd166157166869%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e166156166866%_))))
                                          (let ((__tmp171269
                                                 (cons _%lp-hd166157166869%_
                                                       _%args166159166863%_)))
                                            (declare (not safe))
                                            (_%loop166155166858%_
                                             _%lp-tl166158166871%_
                                             __tmp171269))))
                                      (let ((_%args166160166874%_
                                             (reverse _%args166159166863%_)))
                                        (let ((_%L166877%_
                                               _%args166160166874%_)
                                              (_%L166878%_ _%hd166150166848%_)
                                              (_%L166879%_ _%hd166141166824%_)
                                              (_%L166880%_ _%hd166132166800%_)
                                              (_%L166881%_ _%hd166123166776%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L166881%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L166880%_
                                                      'call-method))
                                                   (let ((__tmp171270
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self166054%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L166879%_
                                                      __tmp171270)))
                                              (_%__kont170143170144%_
                                               _%L166877%_
                                               _%L166878%_
                                               _%L166879%_
                                               _%L166880%_
                                               _%L166881%_)
                                              (_%__kont170155170156%_))))))))
                        (let ()
                          (declare (not safe))
                          (_%loop166155166858%_ _%target166152166853%_ '())))))
                   (_%__match170310170311%_
                    (lambda (_%e166115166749%_
                             _%hd166114166752%_
                             _%tl166113166754%_
                             _%e166118166757%_
                             _%hd166117166760%_
                             _%tl166116166762%_
                             _%e166121166765%_
                             _%hd166120166768%_
                             _%tl166119166770%_
                             _%e166124166773%_
                             _%hd166123166776%_
                             _%tl166122166778%_
                             _%e166127166781%_
                             _%hd166126166784%_
                             _%tl166125166786%_
                             _%e166130166789%_
                             _%hd166129166792%_
                             _%tl166128166794%_
                             _%e166133166797%_
                             _%hd166132166800%_
                             _%tl166131166802%_
                             _%e166136166805%_
                             _%hd166135166808%_
                             _%tl166134166810%_
                             _%e166139166813%_
                             _%hd166138166816%_
                             _%tl166137166818%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd166138166816%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl166137166818%_))
                              (let ((_%e166142166821%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl166137166818%_))))
                                (let ((_%tl166140166826%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e166142166821%_)))
                                      (_%hd166141166824%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e166142166821%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl166140166826%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl166134166810%_))
                                          (let ((_%e166145166829%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl166134166810%_))))
                                            (let ((_%tl166143166834%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e166145166829%_)))
                                                  (_%hd166144166832%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e166145166829%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd166144166832%_))
                                                  (let ((_%e166148166837%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd166144166832%_))))
                                                    (let ((_%tl166146166842%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e166148166837%_)))
                                                          (_%hd166147166840%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e166148166837%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd166147166840%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd166147166840%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl166146166842%_))
                          (let ((_%e166151166845%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl166146166842%_))))
                            (let ((_%tl166149166850%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e166151166845%_)))
                                  (_%hd166150166848%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e166151166845%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl166149166850%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl166143166834%_))
                                      (let ((_%__splice170145170146%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl166143166834%_
                                                '0))))
                                        (let ((_%tl166154166855%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice170145170146%_
                                                  '1)))
                                              (_%target166152166853%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice170145170146%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl166154166855%_))
                                              (_%__match170352170353%_
                                               _%e166115166749%_
                                               _%hd166114166752%_
                                               _%tl166113166754%_
                                               _%e166118166757%_
                                               _%hd166117166760%_
                                               _%tl166116166762%_
                                               _%e166121166765%_
                                               _%hd166120166768%_
                                               _%tl166119166770%_
                                               _%e166124166773%_
                                               _%hd166123166776%_
                                               _%tl166122166778%_
                                               _%e166127166781%_
                                               _%hd166126166784%_
                                               _%tl166125166786%_
                                               _%e166130166789%_
                                               _%hd166129166792%_
                                               _%tl166128166794%_
                                               _%e166133166797%_
                                               _%hd166132166800%_
                                               _%tl166131166802%_
                                               _%e166136166805%_
                                               _%hd166135166808%_
                                               _%tl166134166810%_
                                               _%e166139166813%_
                                               _%hd166138166816%_
                                               _%tl166137166818%_
                                               _%e166142166821%_
                                               _%hd166141166824%_
                                               _%tl166140166826%_
                                               _%e166145166829%_
                                               _%hd166144166832%_
                                               _%tl166143166834%_
                                               _%e166148166837%_
                                               _%hd166147166840%_
                                               _%tl166146166842%_
                                               _%e166151166845%_
                                               _%hd166150166848%_
                                               _%tl166149166850%_
                                               _%__splice170145170146%_
                                               _%target166152166853%_
                                               _%tl166154166855%_)
                                              (_%__kont170155170156%_))))
                                      (_%__kont170155170156%_))
                                  (_%__kont170155170156%_))))
                          (_%__kont170155170156%_))
                      (_%__kont170155170156%_))
                  (_%__kont170155170156%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont170155170156%_))))
                                          (_%__match170634170635%_
                                           _%e166115166749%_
                                           _%hd166114166752%_
                                           _%tl166113166754%_
                                           _%e166118166757%_
                                           _%hd166117166760%_
                                           _%tl166116166762%_
                                           _%e166121166765%_
                                           _%hd166120166768%_
                                           _%tl166119166770%_
                                           _%e166124166773%_
                                           _%hd166123166776%_
                                           _%tl166122166778%_
                                           _%e166127166781%_
                                           _%hd166126166784%_
                                           _%tl166125166786%_
                                           _%e166130166789%_
                                           _%hd166129166792%_
                                           _%tl166128166794%_
                                           _%e166133166797%_
                                           _%hd166132166800%_
                                           _%tl166131166802%_
                                           _%e166136166805%_
                                           _%hd166135166808%_
                                           _%tl166134166810%_))
                                      (_%__match170634170635%_
                                       _%e166115166749%_
                                       _%hd166114166752%_
                                       _%tl166113166754%_
                                       _%e166118166757%_
                                       _%hd166117166760%_
                                       _%tl166116166762%_
                                       _%e166121166765%_
                                       _%hd166120166768%_
                                       _%tl166119166770%_
                                       _%e166124166773%_
                                       _%hd166123166776%_
                                       _%tl166122166778%_
                                       _%e166127166781%_
                                       _%hd166126166784%_
                                       _%tl166125166786%_
                                       _%e166130166789%_
                                       _%hd166129166792%_
                                       _%tl166128166794%_
                                       _%e166133166797%_
                                       _%hd166132166800%_
                                       _%tl166131166802%_
                                       _%e166136166805%_
                                       _%hd166135166808%_
                                       _%tl166134166810%_))))
                              (_%__match170634170635%_
                               _%e166115166749%_
                               _%hd166114166752%_
                               _%tl166113166754%_
                               _%e166118166757%_
                               _%hd166117166760%_
                               _%tl166116166762%_
                               _%e166121166765%_
                               _%hd166120166768%_
                               _%tl166119166770%_
                               _%e166124166773%_
                               _%hd166123166776%_
                               _%tl166122166778%_
                               _%e166127166781%_
                               _%hd166126166784%_
                               _%tl166125166786%_
                               _%e166130166789%_
                               _%hd166129166792%_
                               _%tl166128166794%_
                               _%e166133166797%_
                               _%hd166132166800%_
                               _%tl166131166802%_
                               _%e166136166805%_
                               _%hd166135166808%_
                               _%tl166134166810%_))
                          (_%__match170420170421%_
                           _%e166115166749%_
                           _%hd166114166752%_
                           _%tl166113166754%_
                           _%e166118166757%_
                           _%hd166117166760%_
                           _%tl166116166762%_
                           _%e166121166765%_
                           _%hd166120166768%_
                           _%tl166119166770%_
                           _%e166124166773%_
                           _%hd166123166776%_
                           _%tl166122166778%_
                           _%e166127166781%_
                           _%hd166126166784%_
                           _%tl166125166786%_
                           _%e166130166789%_
                           _%hd166129166792%_
                           _%tl166128166794%_
                           _%e166133166797%_
                           _%hd166132166800%_
                           _%tl166131166802%_
                           _%e166136166805%_
                           _%hd166135166808%_
                           _%tl166134166810%_
                           _%e166139166813%_
                           _%hd166138166816%_
                           _%tl166137166818%_))))
                   (_%__match170242170243%_
                    (lambda (_%e166071166938%_
                             _%hd166070166941%_
                             _%tl166069166943%_
                             _%e166074166946%_
                             _%hd166073166949%_
                             _%tl166072166951%_
                             _%e166077166954%_
                             _%hd166076166957%_
                             _%tl166075166959%_
                             _%e166080166962%_
                             _%hd166079166965%_
                             _%tl166078166967%_
                             _%e166083166970%_
                             _%hd166082166973%_
                             _%tl166081166975%_
                             _%e166086166978%_
                             _%hd166085166981%_
                             _%tl166084166983%_
                             _%e166089166986%_
                             _%hd166088166989%_
                             _%tl166087166991%_
                             _%e166092166994%_
                             _%hd166091166997%_
                             _%tl166090166999%_
                             _%e166095167002%_
                             _%hd166094167005%_
                             _%tl166093167007%_
                             _%e166098167010%_
                             _%hd166097167013%_
                             _%tl166096167015%_
                             _%__splice170141170142%_
                             _%target166099167018%_
                             _%tl166101167020%_)
                      (letrec ((_%loop166102167023%_
                                (lambda (_%hd166100167026%_
                                         _%args166106167028%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd166100167026%_))
                                      (let ((_%e166103167031%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd166100167026%_))))
                                        (let ((_%lp-tl166105167036%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e166103167031%_)))
                                              (_%lp-hd166104167034%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e166103167031%_))))
                                          (let ((__tmp171271
                                                 (cons _%lp-hd166104167034%_
                                                       _%args166106167028%_)))
                                            (declare (not safe))
                                            (_%loop166102167023%_
                                             _%lp-tl166105167036%_
                                             __tmp171271))))
                                      (let ((_%args166107167039%_
                                             (reverse _%args166106167028%_)))
                                        (let ((_%L167042%_
                                               _%args166107167039%_)
                                              (_%L167043%_ _%hd166097167013%_)
                                              (_%L167044%_ _%hd166088166989%_)
                                              (_%L167045%_ _%hd166079166965%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L167045%_
                                                      'call-method))
                                                   (let ((__tmp171272
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self166054%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L167044%_
                                                      __tmp171272)))
                                              (_%__kont170139170140%_
                                               _%L167042%_
                                               _%L167043%_
                                               _%L167044%_
                                               _%L167045%_)
                                              (_%__match170430170431%_
                                               _%e166071166938%_
                                               _%hd166070166941%_
                                               _%tl166069166943%_
                                               _%e166074166946%_
                                               _%hd166073166949%_
                                               _%tl166072166951%_
                                               _%e166077166954%_
                                               _%hd166076166957%_
                                               _%tl166075166959%_
                                               _%e166080166962%_
                                               _%hd166079166965%_
                                               _%tl166078166967%_
                                               _%e166083166970%_
                                               _%hd166082166973%_
                                               _%tl166081166975%_
                                               _%e166086166978%_
                                               _%hd166085166981%_
                                               _%tl166084166983%_
                                               _%e166089166986%_
                                               _%hd166088166989%_
                                               _%tl166087166991%_
                                               _%e166092166994%_
                                               _%hd166091166997%_
                                               _%tl166090166999%_
                                               _%e166095167002%_
                                               _%hd166094167005%_
                                               _%tl166093167007%_
                                               _%e166098167010%_
                                               _%hd166097167013%_
                                               _%tl166096167015%_))))))))
                        (let ()
                          (declare (not safe))
                          (_%loop166102167023%_
                           _%target166099167018%_
                           '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx170137170138%_))
                  (let ((_%e166071166938%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx170137170138%_))))
                    (let ((_%tl166069166943%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e166071166938%_)))
                          (_%hd166070166941%_
                           (let ()
                             (declare (not safe))
                             (##car _%e166071166938%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl166069166943%_))
                          (let ((_%e166074166946%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl166069166943%_))))
                            (let ((_%tl166072166951%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e166074166946%_)))
                                  (_%hd166073166949%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e166074166946%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd166073166949%_))
                                  (let ((_%e166077166954%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd166073166949%_))))
                                    (let ((_%tl166075166959%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e166077166954%_)))
                                          (_%hd166076166957%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e166077166954%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd166076166957%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd166076166957%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl166075166959%_))
                                                  (let ((_%e166080166962%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl166075166959%_))))
                                                    (let ((_%tl166078166967%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e166080166962%_)))
                                                          (_%hd166079166965%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e166080166962%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl166078166967%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl166072166951%_))
                      (let ((_%e166083166970%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl166072166951%_))))
                        (let ((_%tl166081166975%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e166083166970%_)))
                              (_%hd166082166973%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e166083166970%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd166082166973%_))
                              (let ((_%e166086166978%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd166082166973%_))))
                                (let ((_%tl166084166983%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e166086166978%_)))
                                      (_%hd166085166981%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e166086166978%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd166085166981%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd166085166981%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl166084166983%_))
                                              (let ((_%e166089166986%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl166084166983%_))))
                                                (let ((_%tl166087166991%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e166089166986%_)))
                                                      (_%hd166088166989%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e166089166986%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl166087166991%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl166081166975%_))
                                                          (let ((_%e166092166994%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl166081166975%_))))
                    (let ((_%tl166090166999%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e166092166994%_)))
                          (_%hd166091166997%_
                           (let ()
                             (declare (not safe))
                             (##car _%e166092166994%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd166091166997%_))
                          (let ((_%e166095167002%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd166091166997%_))))
                            (let ((_%tl166093167007%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e166095167002%_)))
                                  (_%hd166094167005%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e166095167002%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd166094167005%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd166094167005%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl166093167007%_))
                                          (let ((_%e166098167010%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl166093167007%_))))
                                            (let ((_%tl166096167015%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e166098167010%_)))
                                                  (_%hd166097167013%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e166098167010%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl166096167015%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl166090166999%_))
                                                      (let ((_%__splice170141170142%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl166090166999%_ '0))))
                (let ((_%tl166101167020%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice170141170142%_ '1)))
                      (_%target166099167018%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice170141170142%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl166101167020%_))
                      (_%__match170242170243%_
                       _%e166071166938%_
                       _%hd166070166941%_
                       _%tl166069166943%_
                       _%e166074166946%_
                       _%hd166073166949%_
                       _%tl166072166951%_
                       _%e166077166954%_
                       _%hd166076166957%_
                       _%tl166075166959%_
                       _%e166080166962%_
                       _%hd166079166965%_
                       _%tl166078166967%_
                       _%e166083166970%_
                       _%hd166082166973%_
                       _%tl166081166975%_
                       _%e166086166978%_
                       _%hd166085166981%_
                       _%tl166084166983%_
                       _%e166089166986%_
                       _%hd166088166989%_
                       _%tl166087166991%_
                       _%e166092166994%_
                       _%hd166091166997%_
                       _%tl166090166999%_
                       _%e166095167002%_
                       _%hd166094167005%_
                       _%tl166093167007%_
                       _%e166098167010%_
                       _%hd166097167013%_
                       _%tl166096167015%_
                       _%__splice170141170142%_
                       _%target166099167018%_
                       _%tl166101167020%_)
                      (_%__match170430170431%_
                       _%e166071166938%_
                       _%hd166070166941%_
                       _%tl166069166943%_
                       _%e166074166946%_
                       _%hd166073166949%_
                       _%tl166072166951%_
                       _%e166077166954%_
                       _%hd166076166957%_
                       _%tl166075166959%_
                       _%e166080166962%_
                       _%hd166079166965%_
                       _%tl166078166967%_
                       _%e166083166970%_
                       _%hd166082166973%_
                       _%tl166081166975%_
                       _%e166086166978%_
                       _%hd166085166981%_
                       _%tl166084166983%_
                       _%e166089166986%_
                       _%hd166088166989%_
                       _%tl166087166991%_
                       _%e166092166994%_
                       _%hd166091166997%_
                       _%tl166090166999%_
                       _%e166095167002%_
                       _%hd166094167005%_
                       _%tl166093167007%_
                       _%e166098167010%_
                       _%hd166097167013%_
                       _%tl166096167015%_))))
              (_%__match170430170431%_
               _%e166071166938%_
               _%hd166070166941%_
               _%tl166069166943%_
               _%e166074166946%_
               _%hd166073166949%_
               _%tl166072166951%_
               _%e166077166954%_
               _%hd166076166957%_
               _%tl166075166959%_
               _%e166080166962%_
               _%hd166079166965%_
               _%tl166078166967%_
               _%e166083166970%_
               _%hd166082166973%_
               _%tl166081166975%_
               _%e166086166978%_
               _%hd166085166981%_
               _%tl166084166983%_
               _%e166089166986%_
               _%hd166088166989%_
               _%tl166087166991%_
               _%e166092166994%_
               _%hd166091166997%_
               _%tl166090166999%_
               _%e166095167002%_
               _%hd166094167005%_
               _%tl166093167007%_
               _%e166098167010%_
               _%hd166097167013%_
               _%tl166096167015%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match170634170635%_
                                                   _%e166071166938%_
                                                   _%hd166070166941%_
                                                   _%tl166069166943%_
                                                   _%e166074166946%_
                                                   _%hd166073166949%_
                                                   _%tl166072166951%_
                                                   _%e166077166954%_
                                                   _%hd166076166957%_
                                                   _%tl166075166959%_
                                                   _%e166080166962%_
                                                   _%hd166079166965%_
                                                   _%tl166078166967%_
                                                   _%e166083166970%_
                                                   _%hd166082166973%_
                                                   _%tl166081166975%_
                                                   _%e166086166978%_
                                                   _%hd166085166981%_
                                                   _%tl166084166983%_
                                                   _%e166089166986%_
                                                   _%hd166088166989%_
                                                   _%tl166087166991%_
                                                   _%e166092166994%_
                                                   _%hd166091166997%_
                                                   _%tl166090166999%_))))
                                          (_%__match170634170635%_
                                           _%e166071166938%_
                                           _%hd166070166941%_
                                           _%tl166069166943%_
                                           _%e166074166946%_
                                           _%hd166073166949%_
                                           _%tl166072166951%_
                                           _%e166077166954%_
                                           _%hd166076166957%_
                                           _%tl166075166959%_
                                           _%e166080166962%_
                                           _%hd166079166965%_
                                           _%tl166078166967%_
                                           _%e166083166970%_
                                           _%hd166082166973%_
                                           _%tl166081166975%_
                                           _%e166086166978%_
                                           _%hd166085166981%_
                                           _%tl166084166983%_
                                           _%e166089166986%_
                                           _%hd166088166989%_
                                           _%tl166087166991%_
                                           _%e166092166994%_
                                           _%hd166091166997%_
                                           _%tl166090166999%_))
                                      (_%__match170310170311%_
                                       _%e166071166938%_
                                       _%hd166070166941%_
                                       _%tl166069166943%_
                                       _%e166074166946%_
                                       _%hd166073166949%_
                                       _%tl166072166951%_
                                       _%e166077166954%_
                                       _%hd166076166957%_
                                       _%tl166075166959%_
                                       _%e166080166962%_
                                       _%hd166079166965%_
                                       _%tl166078166967%_
                                       _%e166083166970%_
                                       _%hd166082166973%_
                                       _%tl166081166975%_
                                       _%e166086166978%_
                                       _%hd166085166981%_
                                       _%tl166084166983%_
                                       _%e166089166986%_
                                       _%hd166088166989%_
                                       _%tl166087166991%_
                                       _%e166092166994%_
                                       _%hd166091166997%_
                                       _%tl166090166999%_
                                       _%e166095167002%_
                                       _%hd166094167005%_
                                       _%tl166093167007%_))
                                  (_%__match170634170635%_
                                   _%e166071166938%_
                                   _%hd166070166941%_
                                   _%tl166069166943%_
                                   _%e166074166946%_
                                   _%hd166073166949%_
                                   _%tl166072166951%_
                                   _%e166077166954%_
                                   _%hd166076166957%_
                                   _%tl166075166959%_
                                   _%e166080166962%_
                                   _%hd166079166965%_
                                   _%tl166078166967%_
                                   _%e166083166970%_
                                   _%hd166082166973%_
                                   _%tl166081166975%_
                                   _%e166086166978%_
                                   _%hd166085166981%_
                                   _%tl166084166983%_
                                   _%e166089166986%_
                                   _%hd166088166989%_
                                   _%tl166087166991%_
                                   _%e166092166994%_
                                   _%hd166091166997%_
                                   _%tl166090166999%_))))
                          (_%__match170634170635%_
                           _%e166071166938%_
                           _%hd166070166941%_
                           _%tl166069166943%_
                           _%e166074166946%_
                           _%hd166073166949%_
                           _%tl166072166951%_
                           _%e166077166954%_
                           _%hd166076166957%_
                           _%tl166075166959%_
                           _%e166080166962%_
                           _%hd166079166965%_
                           _%tl166078166967%_
                           _%e166083166970%_
                           _%hd166082166973%_
                           _%tl166081166975%_
                           _%e166086166978%_
                           _%hd166085166981%_
                           _%tl166084166983%_
                           _%e166089166986%_
                           _%hd166088166989%_
                           _%tl166087166991%_
                           _%e166092166994%_
                           _%hd166091166997%_
                           _%tl166090166999%_))))
                  (_%__match170572170573%_
                   _%e166071166938%_
                   _%hd166070166941%_
                   _%tl166069166943%_
                   _%e166074166946%_
                   _%hd166073166949%_
                   _%tl166072166951%_
                   _%e166077166954%_
                   _%hd166076166957%_
                   _%tl166075166959%_
                   _%e166080166962%_
                   _%hd166079166965%_
                   _%tl166078166967%_
                   _%e166083166970%_
                   _%hd166082166973%_
                   _%tl166081166975%_
                   _%e166086166978%_
                   _%hd166085166981%_
                   _%tl166084166983%_
                   _%e166089166986%_
                   _%hd166088166989%_
                   _%tl166087166991%_))
              (_%__kont170155170156%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont170155170156%_))
                                          (_%__kont170155170156%_))
                                      (_%__kont170155170156%_))))
                              (_%__kont170155170156%_))))
                      (_%__kont170155170156%_))
                  (_%__kont170155170156%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont170155170156%_))
                                              (_%__kont170155170156%_))
                                          (_%__kont170155170156%_))))
                                  (_%__kont170155170156%_))))
                          (_%__kont170155170156%_))))
                  (_%__kont170155170156%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self164993%_ _%stx164994%_)
        (letrec ((_%force-e164996%_
                  (lambda (_%target166052%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target166052%_ '()))
                                      '()))))))
          (let* ((_%__stx170639170640%_ _%stx164994%_)
                 (_%g165004165226%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx170639170640%_)))))
            (let ((_%__kont170641170642%_
                   (lambda (_%L165998%_ _%L165999%_ _%L166000%_ _%L166001%_)
                     (let ((_%$method166046%_
                            (let ((__tmp171274
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self164993%_ 'methods)))
                                  (__tmp171273
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L165999%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp171274 __tmp171273)))
                           (_%args166047%_
                            (map (lambda (_%g166034166036%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self164993%_
                                      _%g166034166036%_)))
                                 (let ((__tmp171275
                                        (lambda (_%g166038166041%_
                                                 _%g166039166043%_)
                                          (cons _%g166038166041%_
                                                _%g166039166043%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp171275 '() _%L165998%_)))))
                       (let ((__tmp171276
                              (cons '%#call
                                    (cons (let ()
                                            (declare (not safe))
                                            (_%force-e164996%_
                                             _%$method166046%_))
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self164993%_
                                                               'receiver))
                                                            '()))
                                                _%args166047%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp171276 _%stx164994%_)))))
                  (_%__kont170645170646%_
                   (lambda (_%L165830%_
                            _%L165831%_
                            _%L165832%_
                            _%L165833%_
                            _%L165834%_)
                     (let ((_%$method165886%_
                            (let ((__tmp171278
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self164993%_ 'methods)))
                                  (__tmp171277
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L165831%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp171278 __tmp171277)))
                           (_%args165887%_
                            (map (lambda (_%g165874165876%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self164993%_
                                      _%g165874165876%_)))
                                 (let ((__tmp171279
                                        (lambda (_%g165878165881%_
                                                 _%g165879165883%_)
                                          (cons _%g165878165881%_
                                                _%g165879165883%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp171279 '() _%L165830%_)))))
                       (let ((__tmp171280
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (_%force-e164996%_
                                                   _%$method165886%_))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self164993%_ 'receiver))
                          '()))
              _%args165887%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp171280 _%stx164994%_)))))
                  (_%__kont170649170650%_
                   (lambda (_%L165661%_ _%L165662%_ _%L165663%_)
                     (let* ((_%$field165695%_
                             (let ((__tmp171282
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self164993%_ 'slots)))
                                   (__tmp171281
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%L165661%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp171282 __tmp171281)))
                            (__tmp171283
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self164993%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field165695%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self164993%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp171283 _%stx164994%_))))
                  (_%__kont170651170652%_
                   (lambda (_%L165535%_ _%L165536%_ _%L165537%_ _%L165538%_)
                     (let ((_%$field165573%_
                            (let ((__tmp171285
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self164993%_ 'slots)))
                                  (__tmp171284
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L165536%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp171285 __tmp171284)))
                           (_%expr165574%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1 _%self164993%_ _%L165535%_))))
                       (let ((__tmp171286
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self164993%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field165573%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self164993%_ 'receiver))
                          '()))
              (cons _%expr165574%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp171286 _%stx164994%_)))))
                  (_%__kont170653170654%_
                   (lambda (_%L165407%_ _%L165408%_)
                     (let* ((_%accessor165430%_
                             (let ((__tmp171287
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L165408%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp171287)))
                            (_%klass165432%_
                             (let ((__tmp171288
                                    (##structure-ref
                                     _%accessor165430%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx164994%_
                                __tmp171288)))
                            (_%slot165434%_
                             (##structure-ref
                              _%accessor165430%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (and (let ((__tmp171289
                                       (##structure-ref
                                        _%accessor165430%_
                                        '4
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp171289))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _%klass165432%_
                                       _%slot165434%_))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass165432%_
                                       '8
                                       '#f
                                       '#f))))
                           _%stx164994%_
                           (let* ((_%$field165440%_
                                   (let ((__tmp171290
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self164993%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp171290 _%slot165434%_)))
                                  (__tmp171291
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self164993%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field165440%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self164993%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp171291
                              _%stx164994%_))))))
                  (_%__kont170655170656%_
                   (lambda (_%L165302%_ _%L165303%_ _%L165304%_)
                     (let* ((_%mutator165332%_
                             (let ((__tmp171292
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L165304%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp171292)))
                            (_%klass165334%_
                             (let ((__tmp171293
                                    (##structure-ref
                                     _%mutator165332%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx164994%_
                                __tmp171293)))
                            (_%slot165336%_
                             (##structure-ref
                              _%mutator165332%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr165338%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1 _%self164993%_ _%L165302%_))))
                       (if (and (let ((__tmp171294
                                       (##structure-ref
                                        _%mutator165332%_
                                        '4
                                        gxc#!mutator::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp171294))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _%klass165334%_
                                       _%slot165336%_))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass165334%_
                                       '8
                                       '#f
                                       '#f))))
                           (let ((__tmp171295
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%L165304%_ '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L165303%_
                                                                '()))
                                                    (cons _%expr165338%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp171295 _%stx164994%_))
                           (let* ((_%$field165344%_
                                   (let ((__tmp171296
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self164993%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp171296 _%slot165336%_)))
                                  (__tmp171297
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self164993%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field165344%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self164993%_ 'receiver))
                               '()))
                   (cons _%expr165338%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp171297
                              _%stx164994%_))))))
                  (_%__kont170657170658%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self164993%_ _%stx164994%_)))))
              (let* ((_%__match171138171139%_
                      (lambda (_%e165200165238%_
                               _%hd165199165241%_
                               _%tl165198165243%_
                               _%e165203165246%_
                               _%hd165202165249%_
                               _%tl165201165251%_
                               _%e165206165254%_
                               _%hd165205165257%_
                               _%tl165204165259%_
                               _%e165209165262%_
                               _%hd165208165265%_
                               _%tl165207165267%_
                               _%e165212165270%_
                               _%hd165211165273%_
                               _%tl165210165275%_
                               _%e165215165278%_
                               _%hd165214165281%_
                               _%tl165213165283%_
                               _%e165218165286%_
                               _%hd165217165289%_
                               _%tl165216165291%_
                               _%e165221165294%_
                               _%hd165220165297%_
                               _%tl165219165299%_)
                        (let ((_%L165302%_ _%hd165220165297%_)
                              (_%L165303%_ _%hd165217165289%_)
                              (_%L165304%_ _%hd165208165265%_))
                          (if (and (let ((__tmp171298
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self164993%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L165303%_
                                      __tmp171298))
                                   (let ((__tmp171299
                                          (let ((__tmp171300
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L165304%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp171300))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp171299
                                      'gxc#!mutator::t)))
                              (_%__kont170655170656%_
                               _%L165302%_
                               _%L165303%_
                               _%L165304%_)
                              (_%__kont170657170658%_)))))
                     (_%__match171136171137%_
                      (lambda (_%e165200165238%_
                               _%hd165199165241%_
                               _%tl165198165243%_
                               _%e165203165246%_
                               _%hd165202165249%_
                               _%tl165201165251%_
                               _%e165206165254%_
                               _%hd165205165257%_
                               _%tl165204165259%_
                               _%e165209165262%_
                               _%hd165208165265%_
                               _%tl165207165267%_
                               _%e165212165270%_
                               _%hd165211165273%_
                               _%tl165210165275%_
                               _%e165215165278%_
                               _%hd165214165281%_
                               _%tl165213165283%_
                               _%e165218165286%_
                               _%hd165217165289%_
                               _%tl165216165291%_
                               _%e165221165294%_
                               _%hd165220165297%_
                               _%tl165219165299%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl165219165299%_))
                            (_%__match171138171139%_
                             _%e165200165238%_
                             _%hd165199165241%_
                             _%tl165198165243%_
                             _%e165203165246%_
                             _%hd165202165249%_
                             _%tl165201165251%_
                             _%e165206165254%_
                             _%hd165205165257%_
                             _%tl165204165259%_
                             _%e165209165262%_
                             _%hd165208165265%_
                             _%tl165207165267%_
                             _%e165212165270%_
                             _%hd165211165273%_
                             _%tl165210165275%_
                             _%e165215165278%_
                             _%hd165214165281%_
                             _%tl165213165283%_
                             _%e165218165286%_
                             _%hd165217165289%_
                             _%tl165216165291%_
                             _%e165221165294%_
                             _%hd165220165297%_
                             _%tl165219165299%_)
                            (_%__kont170657170658%_))))
                     (_%__match171130171131%_
                      (lambda (_%e165200165238%_
                               _%hd165199165241%_
                               _%tl165198165243%_
                               _%e165203165246%_
                               _%hd165202165249%_
                               _%tl165201165251%_
                               _%e165206165254%_
                               _%hd165205165257%_
                               _%tl165204165259%_
                               _%e165209165262%_
                               _%hd165208165265%_
                               _%tl165207165267%_
                               _%e165212165270%_
                               _%hd165211165273%_
                               _%tl165210165275%_
                               _%e165215165278%_
                               _%hd165214165281%_
                               _%tl165213165283%_
                               _%e165218165286%_
                               _%hd165217165289%_
                               _%tl165216165291%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl165210165275%_))
                            (let ((_%e165221165294%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl165210165275%_))))
                              (let ((_%tl165219165299%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e165221165294%_)))
                                    (_%hd165220165297%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e165221165294%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl165219165299%_))
                                    (_%__match171138171139%_
                                     _%e165200165238%_
                                     _%hd165199165241%_
                                     _%tl165198165243%_
                                     _%e165203165246%_
                                     _%hd165202165249%_
                                     _%tl165201165251%_
                                     _%e165206165254%_
                                     _%hd165205165257%_
                                     _%tl165204165259%_
                                     _%e165209165262%_
                                     _%hd165208165265%_
                                     _%tl165207165267%_
                                     _%e165212165270%_
                                     _%hd165211165273%_
                                     _%tl165210165275%_
                                     _%e165215165278%_
                                     _%hd165214165281%_
                                     _%tl165213165283%_
                                     _%e165218165286%_
                                     _%hd165217165289%_
                                     _%tl165216165291%_
                                     _%e165221165294%_
                                     _%hd165220165297%_
                                     _%tl165219165299%_)
                                    (_%__kont170657170658%_))))
                            (_%__kont170657170658%_))))
                     (_%__match171076171077%_
                      (lambda (_%e165176165351%_
                               _%hd165175165354%_
                               _%tl165174165356%_
                               _%e165179165359%_
                               _%hd165178165362%_
                               _%tl165177165364%_
                               _%e165182165367%_
                               _%hd165181165370%_
                               _%tl165180165372%_
                               _%e165185165375%_
                               _%hd165184165378%_
                               _%tl165183165380%_
                               _%e165188165383%_
                               _%hd165187165386%_
                               _%tl165186165388%_
                               _%e165191165391%_
                               _%hd165190165394%_
                               _%tl165189165396%_
                               _%e165194165399%_
                               _%hd165193165402%_
                               _%tl165192165404%_)
                        (let ((_%L165407%_ _%hd165193165402%_)
                              (_%L165408%_ _%hd165184165378%_))
                          (if (and (let ((__tmp171301
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self164993%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L165407%_
                                      __tmp171301))
                                   (let ((__tmp171302
                                          (let ((__tmp171303
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L165408%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp171303))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp171302
                                      'gxc#!accessor::t)))
                              (_%__kont170653170654%_ _%L165407%_ _%L165408%_)
                              (_%__kont170657170658%_)))))
                     (_%__match171074171075%_
                      (lambda (_%e165176165351%_
                               _%hd165175165354%_
                               _%tl165174165356%_
                               _%e165179165359%_
                               _%hd165178165362%_
                               _%tl165177165364%_
                               _%e165182165367%_
                               _%hd165181165370%_
                               _%tl165180165372%_
                               _%e165185165375%_
                               _%hd165184165378%_
                               _%tl165183165380%_
                               _%e165188165383%_
                               _%hd165187165386%_
                               _%tl165186165388%_
                               _%e165191165391%_
                               _%hd165190165394%_
                               _%tl165189165396%_
                               _%e165194165399%_
                               _%hd165193165402%_
                               _%tl165192165404%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl165186165388%_))
                            (_%__match171076171077%_
                             _%e165176165351%_
                             _%hd165175165354%_
                             _%tl165174165356%_
                             _%e165179165359%_
                             _%hd165178165362%_
                             _%tl165177165364%_
                             _%e165182165367%_
                             _%hd165181165370%_
                             _%tl165180165372%_
                             _%e165185165375%_
                             _%hd165184165378%_
                             _%tl165183165380%_
                             _%e165188165383%_
                             _%hd165187165386%_
                             _%tl165186165388%_
                             _%e165191165391%_
                             _%hd165190165394%_
                             _%tl165189165396%_
                             _%e165194165399%_
                             _%hd165193165402%_
                             _%tl165192165404%_)
                            (_%__match171130171131%_
                             _%e165176165351%_
                             _%hd165175165354%_
                             _%tl165174165356%_
                             _%e165179165359%_
                             _%hd165178165362%_
                             _%tl165177165364%_
                             _%e165182165367%_
                             _%hd165181165370%_
                             _%tl165180165372%_
                             _%e165185165375%_
                             _%hd165184165378%_
                             _%tl165183165380%_
                             _%e165188165383%_
                             _%hd165187165386%_
                             _%tl165186165388%_
                             _%e165191165391%_
                             _%hd165190165394%_
                             _%tl165189165396%_
                             _%e165194165399%_
                             _%hd165193165402%_
                             _%tl165192165404%_))))
                     (_%__match171020171021%_
                      (lambda (_%e165141165447%_
                               _%hd165140165450%_
                               _%tl165139165452%_
                               _%e165144165455%_
                               _%hd165143165458%_
                               _%tl165142165460%_
                               _%e165147165463%_
                               _%hd165146165466%_
                               _%tl165145165468%_
                               _%e165150165471%_
                               _%hd165149165474%_
                               _%tl165148165476%_
                               _%e165153165479%_
                               _%hd165152165482%_
                               _%tl165151165484%_
                               _%e165156165487%_
                               _%hd165155165490%_
                               _%tl165154165492%_
                               _%e165159165495%_
                               _%hd165158165498%_
                               _%tl165157165500%_
                               _%e165162165503%_
                               _%hd165161165506%_
                               _%tl165160165508%_
                               _%e165165165511%_
                               _%hd165164165514%_
                               _%tl165163165516%_
                               _%e165168165519%_
                               _%hd165167165522%_
                               _%tl165166165524%_
                               _%e165171165527%_
                               _%hd165170165530%_
                               _%tl165169165532%_)
                        (let ((_%L165535%_ _%hd165170165530%_)
                              (_%L165536%_ _%hd165167165522%_)
                              (_%L165537%_ _%hd165158165498%_)
                              (_%L165538%_ _%hd165149165474%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L165538%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L165538%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp171304
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self164993%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L165537%_
                                      __tmp171304)))
                              (_%__kont170651170652%_
                               _%L165535%_
                               _%L165536%_
                               _%L165537%_
                               _%L165538%_)
                              (_%__kont170657170658%_)))))
                     (_%__match171012171013%_
                      (lambda (_%e165141165447%_
                               _%hd165140165450%_
                               _%tl165139165452%_
                               _%e165144165455%_
                               _%hd165143165458%_
                               _%tl165142165460%_
                               _%e165147165463%_
                               _%hd165146165466%_
                               _%tl165145165468%_
                               _%e165150165471%_
                               _%hd165149165474%_
                               _%tl165148165476%_
                               _%e165153165479%_
                               _%hd165152165482%_
                               _%tl165151165484%_
                               _%e165156165487%_
                               _%hd165155165490%_
                               _%tl165154165492%_
                               _%e165159165495%_
                               _%hd165158165498%_
                               _%tl165157165500%_
                               _%e165162165503%_
                               _%hd165161165506%_
                               _%tl165160165508%_
                               _%e165165165511%_
                               _%hd165164165514%_
                               _%tl165163165516%_
                               _%e165168165519%_
                               _%hd165167165522%_
                               _%tl165166165524%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl165160165508%_))
                            (let ((_%e165171165527%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl165160165508%_))))
                              (let ((_%tl165169165532%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e165171165527%_)))
                                    (_%hd165170165530%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e165171165527%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl165169165532%_))
                                    (_%__match171020171021%_
                                     _%e165141165447%_
                                     _%hd165140165450%_
                                     _%tl165139165452%_
                                     _%e165144165455%_
                                     _%hd165143165458%_
                                     _%tl165142165460%_
                                     _%e165147165463%_
                                     _%hd165146165466%_
                                     _%tl165145165468%_
                                     _%e165150165471%_
                                     _%hd165149165474%_
                                     _%tl165148165476%_
                                     _%e165153165479%_
                                     _%hd165152165482%_
                                     _%tl165151165484%_
                                     _%e165156165487%_
                                     _%hd165155165490%_
                                     _%tl165154165492%_
                                     _%e165159165495%_
                                     _%hd165158165498%_
                                     _%tl165157165500%_
                                     _%e165162165503%_
                                     _%hd165161165506%_
                                     _%tl165160165508%_
                                     _%e165165165511%_
                                     _%hd165164165514%_
                                     _%tl165163165516%_
                                     _%e165168165519%_
                                     _%hd165167165522%_
                                     _%tl165166165524%_
                                     _%e165171165527%_
                                     _%hd165170165530%_
                                     _%tl165169165532%_)
                                    (_%__kont170657170658%_))))
                            (_%__match171136171137%_
                             _%e165141165447%_
                             _%hd165140165450%_
                             _%tl165139165452%_
                             _%e165144165455%_
                             _%hd165143165458%_
                             _%tl165142165460%_
                             _%e165147165463%_
                             _%hd165146165466%_
                             _%tl165145165468%_
                             _%e165150165471%_
                             _%hd165149165474%_
                             _%tl165148165476%_
                             _%e165153165479%_
                             _%hd165152165482%_
                             _%tl165151165484%_
                             _%e165156165487%_
                             _%hd165155165490%_
                             _%tl165154165492%_
                             _%e165159165495%_
                             _%hd165158165498%_
                             _%tl165157165500%_
                             _%e165162165503%_
                             _%hd165161165506%_
                             _%tl165160165508%_))))
                     (_%__match170934170935%_
                      (lambda (_%e165107165581%_
                               _%hd165106165584%_
                               _%tl165105165586%_
                               _%e165110165589%_
                               _%hd165109165592%_
                               _%tl165108165594%_
                               _%e165113165597%_
                               _%hd165112165600%_
                               _%tl165111165602%_
                               _%e165116165605%_
                               _%hd165115165608%_
                               _%tl165114165610%_
                               _%e165119165613%_
                               _%hd165118165616%_
                               _%tl165117165618%_
                               _%e165122165621%_
                               _%hd165121165624%_
                               _%tl165120165626%_
                               _%e165125165629%_
                               _%hd165124165632%_
                               _%tl165123165634%_
                               _%e165128165637%_
                               _%hd165127165640%_
                               _%tl165126165642%_
                               _%e165131165645%_
                               _%hd165130165648%_
                               _%tl165129165650%_
                               _%e165134165653%_
                               _%hd165133165656%_
                               _%tl165132165658%_)
                        (let ((_%L165661%_ _%hd165133165656%_)
                              (_%L165662%_ _%hd165124165632%_)
                              (_%L165663%_ _%hd165115165608%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L165663%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L165663%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp171305
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self164993%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L165662%_
                                      __tmp171305)))
                              (_%__kont170649170650%_
                               _%L165661%_
                               _%L165662%_
                               _%L165663%_)
                              (_%__match171138171139%_
                               _%e165107165581%_
                               _%hd165106165584%_
                               _%tl165105165586%_
                               _%e165110165589%_
                               _%hd165109165592%_
                               _%tl165108165594%_
                               _%e165113165597%_
                               _%hd165112165600%_
                               _%tl165111165602%_
                               _%e165116165605%_
                               _%hd165115165608%_
                               _%tl165114165610%_
                               _%e165119165613%_
                               _%hd165118165616%_
                               _%tl165117165618%_
                               _%e165122165621%_
                               _%hd165121165624%_
                               _%tl165120165626%_
                               _%e165125165629%_
                               _%hd165124165632%_
                               _%tl165123165634%_
                               _%e165128165637%_
                               _%hd165127165640%_
                               _%tl165126165642%_)))))
                     (_%__match170932170933%_
                      (lambda (_%e165107165581%_
                               _%hd165106165584%_
                               _%tl165105165586%_
                               _%e165110165589%_
                               _%hd165109165592%_
                               _%tl165108165594%_
                               _%e165113165597%_
                               _%hd165112165600%_
                               _%tl165111165602%_
                               _%e165116165605%_
                               _%hd165115165608%_
                               _%tl165114165610%_
                               _%e165119165613%_
                               _%hd165118165616%_
                               _%tl165117165618%_
                               _%e165122165621%_
                               _%hd165121165624%_
                               _%tl165120165626%_
                               _%e165125165629%_
                               _%hd165124165632%_
                               _%tl165123165634%_
                               _%e165128165637%_
                               _%hd165127165640%_
                               _%tl165126165642%_
                               _%e165131165645%_
                               _%hd165130165648%_
                               _%tl165129165650%_
                               _%e165134165653%_
                               _%hd165133165656%_
                               _%tl165132165658%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl165126165642%_))
                            (_%__match170934170935%_
                             _%e165107165581%_
                             _%hd165106165584%_
                             _%tl165105165586%_
                             _%e165110165589%_
                             _%hd165109165592%_
                             _%tl165108165594%_
                             _%e165113165597%_
                             _%hd165112165600%_
                             _%tl165111165602%_
                             _%e165116165605%_
                             _%hd165115165608%_
                             _%tl165114165610%_
                             _%e165119165613%_
                             _%hd165118165616%_
                             _%tl165117165618%_
                             _%e165122165621%_
                             _%hd165121165624%_
                             _%tl165120165626%_
                             _%e165125165629%_
                             _%hd165124165632%_
                             _%tl165123165634%_
                             _%e165128165637%_
                             _%hd165127165640%_
                             _%tl165126165642%_
                             _%e165131165645%_
                             _%hd165130165648%_
                             _%tl165129165650%_
                             _%e165134165653%_
                             _%hd165133165656%_
                             _%tl165132165658%_)
                            (_%__match171012171013%_
                             _%e165107165581%_
                             _%hd165106165584%_
                             _%tl165105165586%_
                             _%e165110165589%_
                             _%hd165109165592%_
                             _%tl165108165594%_
                             _%e165113165597%_
                             _%hd165112165600%_
                             _%tl165111165602%_
                             _%e165116165605%_
                             _%hd165115165608%_
                             _%tl165114165610%_
                             _%e165119165613%_
                             _%hd165118165616%_
                             _%tl165117165618%_
                             _%e165122165621%_
                             _%hd165121165624%_
                             _%tl165120165626%_
                             _%e165125165629%_
                             _%hd165124165632%_
                             _%tl165123165634%_
                             _%e165128165637%_
                             _%hd165127165640%_
                             _%tl165126165642%_
                             _%e165131165645%_
                             _%hd165130165648%_
                             _%tl165129165650%_
                             _%e165134165653%_
                             _%hd165133165656%_
                             _%tl165132165658%_))))
                     (_%__match170922170923%_
                      (lambda (_%e165107165581%_
                               _%hd165106165584%_
                               _%tl165105165586%_
                               _%e165110165589%_
                               _%hd165109165592%_
                               _%tl165108165594%_
                               _%e165113165597%_
                               _%hd165112165600%_
                               _%tl165111165602%_
                               _%e165116165605%_
                               _%hd165115165608%_
                               _%tl165114165610%_
                               _%e165119165613%_
                               _%hd165118165616%_
                               _%tl165117165618%_
                               _%e165122165621%_
                               _%hd165121165624%_
                               _%tl165120165626%_
                               _%e165125165629%_
                               _%hd165124165632%_
                               _%tl165123165634%_
                               _%e165128165637%_
                               _%hd165127165640%_
                               _%tl165126165642%_
                               _%e165131165645%_
                               _%hd165130165648%_
                               _%tl165129165650%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd165130165648%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl165129165650%_))
                                (let ((_%e165134165653%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl165129165650%_))))
                                  (let ((_%tl165132165658%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e165134165653%_)))
                                        (_%hd165133165656%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e165134165653%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl165132165658%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl165126165642%_))
                                            (_%__match170934170935%_
                                             _%e165107165581%_
                                             _%hd165106165584%_
                                             _%tl165105165586%_
                                             _%e165110165589%_
                                             _%hd165109165592%_
                                             _%tl165108165594%_
                                             _%e165113165597%_
                                             _%hd165112165600%_
                                             _%tl165111165602%_
                                             _%e165116165605%_
                                             _%hd165115165608%_
                                             _%tl165114165610%_
                                             _%e165119165613%_
                                             _%hd165118165616%_
                                             _%tl165117165618%_
                                             _%e165122165621%_
                                             _%hd165121165624%_
                                             _%tl165120165626%_
                                             _%e165125165629%_
                                             _%hd165124165632%_
                                             _%tl165123165634%_
                                             _%e165128165637%_
                                             _%hd165127165640%_
                                             _%tl165126165642%_
                                             _%e165131165645%_
                                             _%hd165130165648%_
                                             _%tl165129165650%_
                                             _%e165134165653%_
                                             _%hd165133165656%_
                                             _%tl165132165658%_)
                                            (_%__match171012171013%_
                                             _%e165107165581%_
                                             _%hd165106165584%_
                                             _%tl165105165586%_
                                             _%e165110165589%_
                                             _%hd165109165592%_
                                             _%tl165108165594%_
                                             _%e165113165597%_
                                             _%hd165112165600%_
                                             _%tl165111165602%_
                                             _%e165116165605%_
                                             _%hd165115165608%_
                                             _%tl165114165610%_
                                             _%e165119165613%_
                                             _%hd165118165616%_
                                             _%tl165117165618%_
                                             _%e165122165621%_
                                             _%hd165121165624%_
                                             _%tl165120165626%_
                                             _%e165125165629%_
                                             _%hd165124165632%_
                                             _%tl165123165634%_
                                             _%e165128165637%_
                                             _%hd165127165640%_
                                             _%tl165126165642%_
                                             _%e165131165645%_
                                             _%hd165130165648%_
                                             _%tl165129165650%_
                                             _%e165134165653%_
                                             _%hd165133165656%_
                                             _%tl165132165658%_))
                                        (_%__match171136171137%_
                                         _%e165107165581%_
                                         _%hd165106165584%_
                                         _%tl165105165586%_
                                         _%e165110165589%_
                                         _%hd165109165592%_
                                         _%tl165108165594%_
                                         _%e165113165597%_
                                         _%hd165112165600%_
                                         _%tl165111165602%_
                                         _%e165116165605%_
                                         _%hd165115165608%_
                                         _%tl165114165610%_
                                         _%e165119165613%_
                                         _%hd165118165616%_
                                         _%tl165117165618%_
                                         _%e165122165621%_
                                         _%hd165121165624%_
                                         _%tl165120165626%_
                                         _%e165125165629%_
                                         _%hd165124165632%_
                                         _%tl165123165634%_
                                         _%e165128165637%_
                                         _%hd165127165640%_
                                         _%tl165126165642%_))))
                                (_%__match171136171137%_
                                 _%e165107165581%_
                                 _%hd165106165584%_
                                 _%tl165105165586%_
                                 _%e165110165589%_
                                 _%hd165109165592%_
                                 _%tl165108165594%_
                                 _%e165113165597%_
                                 _%hd165112165600%_
                                 _%tl165111165602%_
                                 _%e165116165605%_
                                 _%hd165115165608%_
                                 _%tl165114165610%_
                                 _%e165119165613%_
                                 _%hd165118165616%_
                                 _%tl165117165618%_
                                 _%e165122165621%_
                                 _%hd165121165624%_
                                 _%tl165120165626%_
                                 _%e165125165629%_
                                 _%hd165124165632%_
                                 _%tl165123165634%_
                                 _%e165128165637%_
                                 _%hd165127165640%_
                                 _%tl165126165642%_))
                            (_%__match171136171137%_
                             _%e165107165581%_
                             _%hd165106165584%_
                             _%tl165105165586%_
                             _%e165110165589%_
                             _%hd165109165592%_
                             _%tl165108165594%_
                             _%e165113165597%_
                             _%hd165112165600%_
                             _%tl165111165602%_
                             _%e165116165605%_
                             _%hd165115165608%_
                             _%tl165114165610%_
                             _%e165119165613%_
                             _%hd165118165616%_
                             _%tl165117165618%_
                             _%e165122165621%_
                             _%hd165121165624%_
                             _%tl165120165626%_
                             _%e165125165629%_
                             _%hd165124165632%_
                             _%tl165123165634%_
                             _%e165128165637%_
                             _%hd165127165640%_
                             _%tl165126165642%_))))
                     (_%__match170854170855%_
                      (lambda (_%e165056165702%_
                               _%hd165055165705%_
                               _%tl165054165707%_
                               _%e165059165710%_
                               _%hd165058165713%_
                               _%tl165057165715%_
                               _%e165062165718%_
                               _%hd165061165721%_
                               _%tl165060165723%_
                               _%e165065165726%_
                               _%hd165064165729%_
                               _%tl165063165731%_
                               _%e165068165734%_
                               _%hd165067165737%_
                               _%tl165066165739%_
                               _%e165071165742%_
                               _%hd165070165745%_
                               _%tl165069165747%_
                               _%e165074165750%_
                               _%hd165073165753%_
                               _%tl165072165755%_
                               _%e165077165758%_
                               _%hd165076165761%_
                               _%tl165075165763%_
                               _%e165080165766%_
                               _%hd165079165769%_
                               _%tl165078165771%_
                               _%e165083165774%_
                               _%hd165082165777%_
                               _%tl165081165779%_
                               _%e165086165782%_
                               _%hd165085165785%_
                               _%tl165084165787%_
                               _%e165089165790%_
                               _%hd165088165793%_
                               _%tl165087165795%_
                               _%e165092165798%_
                               _%hd165091165801%_
                               _%tl165090165803%_
                               _%__splice170647170648%_
                               _%target165093165806%_
                               _%tl165095165808%_)
                        (letrec ((_%loop165096165811%_
                                  (lambda (_%hd165094165814%_
                                           _%args165100165816%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd165094165814%_))
                                        (let ((_%e165097165819%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd165094165814%_))))
                                          (let ((_%lp-tl165099165824%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e165097165819%_)))
                                                (_%lp-hd165098165822%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e165097165819%_))))
                                            (let ((__tmp171306
                                                   (cons _%lp-hd165098165822%_
                                                         _%args165100165816%_)))
                                              (declare (not safe))
                                              (_%loop165096165811%_
                                               _%lp-tl165099165824%_
                                               __tmp171306))))
                                        (let ((_%args165101165827%_
                                               (reverse _%args165100165816%_)))
                                          (let ((_%L165830%_
                                                 _%args165101165827%_)
                                                (_%L165831%_
                                                 _%hd165091165801%_)
                                                (_%L165832%_
                                                 _%hd165082165777%_)
                                                (_%L165833%_
                                                 _%hd165073165753%_)
                                                (_%L165834%_
                                                 _%hd165064165729%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L165834%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L165833%_
                                                        'call-method))
                                                     (let ((__tmp171307
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self164993%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L165832%_
                                                        __tmp171307)))
                                                (_%__kont170645170646%_
                                                 _%L165830%_
                                                 _%L165831%_
                                                 _%L165832%_
                                                 _%L165833%_
                                                 _%L165834%_)
                                                (_%__kont170657170658%_))))))))
                          (let ()
                            (declare (not safe))
                            (_%loop165096165811%_
                             _%target165093165806%_
                             '())))))
                     (_%__match170812170813%_
                      (lambda (_%e165056165702%_
                               _%hd165055165705%_
                               _%tl165054165707%_
                               _%e165059165710%_
                               _%hd165058165713%_
                               _%tl165057165715%_
                               _%e165062165718%_
                               _%hd165061165721%_
                               _%tl165060165723%_
                               _%e165065165726%_
                               _%hd165064165729%_
                               _%tl165063165731%_
                               _%e165068165734%_
                               _%hd165067165737%_
                               _%tl165066165739%_
                               _%e165071165742%_
                               _%hd165070165745%_
                               _%tl165069165747%_
                               _%e165074165750%_
                               _%hd165073165753%_
                               _%tl165072165755%_
                               _%e165077165758%_
                               _%hd165076165761%_
                               _%tl165075165763%_
                               _%e165080165766%_
                               _%hd165079165769%_
                               _%tl165078165771%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd165079165769%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl165078165771%_))
                                (let ((_%e165083165774%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl165078165771%_))))
                                  (let ((_%tl165081165779%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e165083165774%_)))
                                        (_%hd165082165777%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e165083165774%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl165081165779%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl165075165763%_))
                                            (let ((_%e165086165782%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl165075165763%_))))
                                              (let ((_%tl165084165787%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e165086165782%_)))
                                                    (_%hd165085165785%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e165086165782%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd165085165785%_))
                                                    (let ((_%e165089165790%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd165085165785%_))))
                                                      (let ((_%tl165087165795%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e165089165790%_)))
                    (_%hd165088165793%_
                     (let () (declare (not safe)) (##car _%e165089165790%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd165088165793%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd165088165793%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl165087165795%_))
                            (let ((_%e165092165798%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl165087165795%_))))
                              (let ((_%tl165090165803%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e165092165798%_)))
                                    (_%hd165091165801%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e165092165798%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl165090165803%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl165084165787%_))
                                        (let ((_%__splice170647170648%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl165084165787%_
                                                  '0))))
                                          (let ((_%tl165095165808%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice170647170648%_
                                                    '1)))
                                                (_%target165093165806%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice170647170648%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl165095165808%_))
                                                (_%__match170854170855%_
                                                 _%e165056165702%_
                                                 _%hd165055165705%_
                                                 _%tl165054165707%_
                                                 _%e165059165710%_
                                                 _%hd165058165713%_
                                                 _%tl165057165715%_
                                                 _%e165062165718%_
                                                 _%hd165061165721%_
                                                 _%tl165060165723%_
                                                 _%e165065165726%_
                                                 _%hd165064165729%_
                                                 _%tl165063165731%_
                                                 _%e165068165734%_
                                                 _%hd165067165737%_
                                                 _%tl165066165739%_
                                                 _%e165071165742%_
                                                 _%hd165070165745%_
                                                 _%tl165069165747%_
                                                 _%e165074165750%_
                                                 _%hd165073165753%_
                                                 _%tl165072165755%_
                                                 _%e165077165758%_
                                                 _%hd165076165761%_
                                                 _%tl165075165763%_
                                                 _%e165080165766%_
                                                 _%hd165079165769%_
                                                 _%tl165078165771%_
                                                 _%e165083165774%_
                                                 _%hd165082165777%_
                                                 _%tl165081165779%_
                                                 _%e165086165782%_
                                                 _%hd165085165785%_
                                                 _%tl165084165787%_
                                                 _%e165089165790%_
                                                 _%hd165088165793%_
                                                 _%tl165087165795%_
                                                 _%e165092165798%_
                                                 _%hd165091165801%_
                                                 _%tl165090165803%_
                                                 _%__splice170647170648%_
                                                 _%target165093165806%_
                                                 _%tl165095165808%_)
                                                (_%__kont170657170658%_))))
                                        (_%__kont170657170658%_))
                                    (_%__kont170657170658%_))))
                            (_%__kont170657170658%_))
                        (_%__kont170657170658%_))
                    (_%__kont170657170658%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont170657170658%_))))
                                            (_%__match171136171137%_
                                             _%e165056165702%_
                                             _%hd165055165705%_
                                             _%tl165054165707%_
                                             _%e165059165710%_
                                             _%hd165058165713%_
                                             _%tl165057165715%_
                                             _%e165062165718%_
                                             _%hd165061165721%_
                                             _%tl165060165723%_
                                             _%e165065165726%_
                                             _%hd165064165729%_
                                             _%tl165063165731%_
                                             _%e165068165734%_
                                             _%hd165067165737%_
                                             _%tl165066165739%_
                                             _%e165071165742%_
                                             _%hd165070165745%_
                                             _%tl165069165747%_
                                             _%e165074165750%_
                                             _%hd165073165753%_
                                             _%tl165072165755%_
                                             _%e165077165758%_
                                             _%hd165076165761%_
                                             _%tl165075165763%_))
                                        (_%__match171136171137%_
                                         _%e165056165702%_
                                         _%hd165055165705%_
                                         _%tl165054165707%_
                                         _%e165059165710%_
                                         _%hd165058165713%_
                                         _%tl165057165715%_
                                         _%e165062165718%_
                                         _%hd165061165721%_
                                         _%tl165060165723%_
                                         _%e165065165726%_
                                         _%hd165064165729%_
                                         _%tl165063165731%_
                                         _%e165068165734%_
                                         _%hd165067165737%_
                                         _%tl165066165739%_
                                         _%e165071165742%_
                                         _%hd165070165745%_
                                         _%tl165069165747%_
                                         _%e165074165750%_
                                         _%hd165073165753%_
                                         _%tl165072165755%_
                                         _%e165077165758%_
                                         _%hd165076165761%_
                                         _%tl165075165763%_))))
                                (_%__match171136171137%_
                                 _%e165056165702%_
                                 _%hd165055165705%_
                                 _%tl165054165707%_
                                 _%e165059165710%_
                                 _%hd165058165713%_
                                 _%tl165057165715%_
                                 _%e165062165718%_
                                 _%hd165061165721%_
                                 _%tl165060165723%_
                                 _%e165065165726%_
                                 _%hd165064165729%_
                                 _%tl165063165731%_
                                 _%e165068165734%_
                                 _%hd165067165737%_
                                 _%tl165066165739%_
                                 _%e165071165742%_
                                 _%hd165070165745%_
                                 _%tl165069165747%_
                                 _%e165074165750%_
                                 _%hd165073165753%_
                                 _%tl165072165755%_
                                 _%e165077165758%_
                                 _%hd165076165761%_
                                 _%tl165075165763%_))
                            (_%__match170922170923%_
                             _%e165056165702%_
                             _%hd165055165705%_
                             _%tl165054165707%_
                             _%e165059165710%_
                             _%hd165058165713%_
                             _%tl165057165715%_
                             _%e165062165718%_
                             _%hd165061165721%_
                             _%tl165060165723%_
                             _%e165065165726%_
                             _%hd165064165729%_
                             _%tl165063165731%_
                             _%e165068165734%_
                             _%hd165067165737%_
                             _%tl165066165739%_
                             _%e165071165742%_
                             _%hd165070165745%_
                             _%tl165069165747%_
                             _%e165074165750%_
                             _%hd165073165753%_
                             _%tl165072165755%_
                             _%e165077165758%_
                             _%hd165076165761%_
                             _%tl165075165763%_
                             _%e165080165766%_
                             _%hd165079165769%_
                             _%tl165078165771%_))))
                     (_%__match170744170745%_
                      (lambda (_%e165012165894%_
                               _%hd165011165897%_
                               _%tl165010165899%_
                               _%e165015165902%_
                               _%hd165014165905%_
                               _%tl165013165907%_
                               _%e165018165910%_
                               _%hd165017165913%_
                               _%tl165016165915%_
                               _%e165021165918%_
                               _%hd165020165921%_
                               _%tl165019165923%_
                               _%e165024165926%_
                               _%hd165023165929%_
                               _%tl165022165931%_
                               _%e165027165934%_
                               _%hd165026165937%_
                               _%tl165025165939%_
                               _%e165030165942%_
                               _%hd165029165945%_
                               _%tl165028165947%_
                               _%e165033165950%_
                               _%hd165032165953%_
                               _%tl165031165955%_
                               _%e165036165958%_
                               _%hd165035165961%_
                               _%tl165034165963%_
                               _%e165039165966%_
                               _%hd165038165969%_
                               _%tl165037165971%_
                               _%__splice170643170644%_
                               _%target165040165974%_
                               _%tl165042165976%_)
                        (letrec ((_%loop165043165979%_
                                  (lambda (_%hd165041165982%_
                                           _%args165047165984%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd165041165982%_))
                                        (let ((_%e165044165987%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd165041165982%_))))
                                          (let ((_%lp-tl165046165992%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e165044165987%_)))
                                                (_%lp-hd165045165990%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e165044165987%_))))
                                            (let ((__tmp171308
                                                   (cons _%lp-hd165045165990%_
                                                         _%args165047165984%_)))
                                              (declare (not safe))
                                              (_%loop165043165979%_
                                               _%lp-tl165046165992%_
                                               __tmp171308))))
                                        (let ((_%args165048165995%_
                                               (reverse _%args165047165984%_)))
                                          (let ((_%L165998%_
                                                 _%args165048165995%_)
                                                (_%L165999%_
                                                 _%hd165038165969%_)
                                                (_%L166000%_
                                                 _%hd165029165945%_)
                                                (_%L166001%_
                                                 _%hd165020165921%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L166001%_
                                                        'call-method))
                                                     (let ((__tmp171309
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self164993%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L166000%_
                                                        __tmp171309)))
                                                (_%__kont170641170642%_
                                                 _%L165998%_
                                                 _%L165999%_
                                                 _%L166000%_
                                                 _%L166001%_)
                                                (_%__match170932170933%_
                                                 _%e165012165894%_
                                                 _%hd165011165897%_
                                                 _%tl165010165899%_
                                                 _%e165015165902%_
                                                 _%hd165014165905%_
                                                 _%tl165013165907%_
                                                 _%e165018165910%_
                                                 _%hd165017165913%_
                                                 _%tl165016165915%_
                                                 _%e165021165918%_
                                                 _%hd165020165921%_
                                                 _%tl165019165923%_
                                                 _%e165024165926%_
                                                 _%hd165023165929%_
                                                 _%tl165022165931%_
                                                 _%e165027165934%_
                                                 _%hd165026165937%_
                                                 _%tl165025165939%_
                                                 _%e165030165942%_
                                                 _%hd165029165945%_
                                                 _%tl165028165947%_
                                                 _%e165033165950%_
                                                 _%hd165032165953%_
                                                 _%tl165031165955%_
                                                 _%e165036165958%_
                                                 _%hd165035165961%_
                                                 _%tl165034165963%_
                                                 _%e165039165966%_
                                                 _%hd165038165969%_
                                                 _%tl165037165971%_))))))))
                          (let ()
                            (declare (not safe))
                            (_%loop165043165979%_
                             _%target165040165974%_
                             '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx170639170640%_))
                    (let ((_%e165012165894%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx170639170640%_))))
                      (let ((_%tl165010165899%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e165012165894%_)))
                            (_%hd165011165897%_
                             (let ()
                               (declare (not safe))
                               (##car _%e165012165894%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl165010165899%_))
                            (let ((_%e165015165902%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl165010165899%_))))
                              (let ((_%tl165013165907%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e165015165902%_)))
                                    (_%hd165014165905%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e165015165902%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd165014165905%_))
                                    (let ((_%e165018165910%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd165014165905%_))))
                                      (let ((_%tl165016165915%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e165018165910%_)))
                                            (_%hd165017165913%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e165018165910%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd165017165913%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd165017165913%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl165016165915%_))
                                                    (let ((_%e165021165918%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl165016165915%_))))
                                                      (let ((_%tl165019165923%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e165021165918%_)))
                    (_%hd165020165921%_
                     (let () (declare (not safe)) (##car _%e165021165918%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl165019165923%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl165013165907%_))
                        (let ((_%e165024165926%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl165013165907%_))))
                          (let ((_%tl165022165931%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e165024165926%_)))
                                (_%hd165023165929%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e165024165926%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd165023165929%_))
                                (let ((_%e165027165934%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd165023165929%_))))
                                  (let ((_%tl165025165939%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e165027165934%_)))
                                        (_%hd165026165937%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e165027165934%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd165026165937%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd165026165937%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl165025165939%_))
                                                (let ((_%e165030165942%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl165025165939%_))))
                                                  (let ((_%tl165028165947%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e165030165942%_)))
                                                        (_%hd165029165945%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e165030165942%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl165028165947%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl165022165931%_))
                                                            (let ((_%e165033165950%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl165022165931%_))))
                      (let ((_%tl165031165955%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e165033165950%_)))
                            (_%hd165032165953%_
                             (let ()
                               (declare (not safe))
                               (##car _%e165033165950%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd165032165953%_))
                            (let ((_%e165036165958%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd165032165953%_))))
                              (let ((_%tl165034165963%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e165036165958%_)))
                                    (_%hd165035165961%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e165036165958%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd165035165961%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd165035165961%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl165034165963%_))
                                            (let ((_%e165039165966%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl165034165963%_))))
                                              (let ((_%tl165037165971%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e165039165966%_)))
                                                    (_%hd165038165969%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e165039165966%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl165037165971%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl165031165955%_))
                                                        (let ((_%__splice170643170644%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _%tl165031165955%_ '0))))
                  (let ((_%tl165042165976%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice170643170644%_ '1)))
                        (_%target165040165974%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice170643170644%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl165042165976%_))
                        (_%__match170744170745%_
                         _%e165012165894%_
                         _%hd165011165897%_
                         _%tl165010165899%_
                         _%e165015165902%_
                         _%hd165014165905%_
                         _%tl165013165907%_
                         _%e165018165910%_
                         _%hd165017165913%_
                         _%tl165016165915%_
                         _%e165021165918%_
                         _%hd165020165921%_
                         _%tl165019165923%_
                         _%e165024165926%_
                         _%hd165023165929%_
                         _%tl165022165931%_
                         _%e165027165934%_
                         _%hd165026165937%_
                         _%tl165025165939%_
                         _%e165030165942%_
                         _%hd165029165945%_
                         _%tl165028165947%_
                         _%e165033165950%_
                         _%hd165032165953%_
                         _%tl165031165955%_
                         _%e165036165958%_
                         _%hd165035165961%_
                         _%tl165034165963%_
                         _%e165039165966%_
                         _%hd165038165969%_
                         _%tl165037165971%_
                         _%__splice170643170644%_
                         _%target165040165974%_
                         _%tl165042165976%_)
                        (_%__match170932170933%_
                         _%e165012165894%_
                         _%hd165011165897%_
                         _%tl165010165899%_
                         _%e165015165902%_
                         _%hd165014165905%_
                         _%tl165013165907%_
                         _%e165018165910%_
                         _%hd165017165913%_
                         _%tl165016165915%_
                         _%e165021165918%_
                         _%hd165020165921%_
                         _%tl165019165923%_
                         _%e165024165926%_
                         _%hd165023165929%_
                         _%tl165022165931%_
                         _%e165027165934%_
                         _%hd165026165937%_
                         _%tl165025165939%_
                         _%e165030165942%_
                         _%hd165029165945%_
                         _%tl165028165947%_
                         _%e165033165950%_
                         _%hd165032165953%_
                         _%tl165031165955%_
                         _%e165036165958%_
                         _%hd165035165961%_
                         _%tl165034165963%_
                         _%e165039165966%_
                         _%hd165038165969%_
                         _%tl165037165971%_))))
                (_%__match170932170933%_
                 _%e165012165894%_
                 _%hd165011165897%_
                 _%tl165010165899%_
                 _%e165015165902%_
                 _%hd165014165905%_
                 _%tl165013165907%_
                 _%e165018165910%_
                 _%hd165017165913%_
                 _%tl165016165915%_
                 _%e165021165918%_
                 _%hd165020165921%_
                 _%tl165019165923%_
                 _%e165024165926%_
                 _%hd165023165929%_
                 _%tl165022165931%_
                 _%e165027165934%_
                 _%hd165026165937%_
                 _%tl165025165939%_
                 _%e165030165942%_
                 _%hd165029165945%_
                 _%tl165028165947%_
                 _%e165033165950%_
                 _%hd165032165953%_
                 _%tl165031165955%_
                 _%e165036165958%_
                 _%hd165035165961%_
                 _%tl165034165963%_
                 _%e165039165966%_
                 _%hd165038165969%_
                 _%tl165037165971%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match171136171137%_
                                                     _%e165012165894%_
                                                     _%hd165011165897%_
                                                     _%tl165010165899%_
                                                     _%e165015165902%_
                                                     _%hd165014165905%_
                                                     _%tl165013165907%_
                                                     _%e165018165910%_
                                                     _%hd165017165913%_
                                                     _%tl165016165915%_
                                                     _%e165021165918%_
                                                     _%hd165020165921%_
                                                     _%tl165019165923%_
                                                     _%e165024165926%_
                                                     _%hd165023165929%_
                                                     _%tl165022165931%_
                                                     _%e165027165934%_
                                                     _%hd165026165937%_
                                                     _%tl165025165939%_
                                                     _%e165030165942%_
                                                     _%hd165029165945%_
                                                     _%tl165028165947%_
                                                     _%e165033165950%_
                                                     _%hd165032165953%_
                                                     _%tl165031165955%_))))
                                            (_%__match171136171137%_
                                             _%e165012165894%_
                                             _%hd165011165897%_
                                             _%tl165010165899%_
                                             _%e165015165902%_
                                             _%hd165014165905%_
                                             _%tl165013165907%_
                                             _%e165018165910%_
                                             _%hd165017165913%_
                                             _%tl165016165915%_
                                             _%e165021165918%_
                                             _%hd165020165921%_
                                             _%tl165019165923%_
                                             _%e165024165926%_
                                             _%hd165023165929%_
                                             _%tl165022165931%_
                                             _%e165027165934%_
                                             _%hd165026165937%_
                                             _%tl165025165939%_
                                             _%e165030165942%_
                                             _%hd165029165945%_
                                             _%tl165028165947%_
                                             _%e165033165950%_
                                             _%hd165032165953%_
                                             _%tl165031165955%_))
                                        (_%__match170812170813%_
                                         _%e165012165894%_
                                         _%hd165011165897%_
                                         _%tl165010165899%_
                                         _%e165015165902%_
                                         _%hd165014165905%_
                                         _%tl165013165907%_
                                         _%e165018165910%_
                                         _%hd165017165913%_
                                         _%tl165016165915%_
                                         _%e165021165918%_
                                         _%hd165020165921%_
                                         _%tl165019165923%_
                                         _%e165024165926%_
                                         _%hd165023165929%_
                                         _%tl165022165931%_
                                         _%e165027165934%_
                                         _%hd165026165937%_
                                         _%tl165025165939%_
                                         _%e165030165942%_
                                         _%hd165029165945%_
                                         _%tl165028165947%_
                                         _%e165033165950%_
                                         _%hd165032165953%_
                                         _%tl165031165955%_
                                         _%e165036165958%_
                                         _%hd165035165961%_
                                         _%tl165034165963%_))
                                    (_%__match171136171137%_
                                     _%e165012165894%_
                                     _%hd165011165897%_
                                     _%tl165010165899%_
                                     _%e165015165902%_
                                     _%hd165014165905%_
                                     _%tl165013165907%_
                                     _%e165018165910%_
                                     _%hd165017165913%_
                                     _%tl165016165915%_
                                     _%e165021165918%_
                                     _%hd165020165921%_
                                     _%tl165019165923%_
                                     _%e165024165926%_
                                     _%hd165023165929%_
                                     _%tl165022165931%_
                                     _%e165027165934%_
                                     _%hd165026165937%_
                                     _%tl165025165939%_
                                     _%e165030165942%_
                                     _%hd165029165945%_
                                     _%tl165028165947%_
                                     _%e165033165950%_
                                     _%hd165032165953%_
                                     _%tl165031165955%_))))
                            (_%__match171136171137%_
                             _%e165012165894%_
                             _%hd165011165897%_
                             _%tl165010165899%_
                             _%e165015165902%_
                             _%hd165014165905%_
                             _%tl165013165907%_
                             _%e165018165910%_
                             _%hd165017165913%_
                             _%tl165016165915%_
                             _%e165021165918%_
                             _%hd165020165921%_
                             _%tl165019165923%_
                             _%e165024165926%_
                             _%hd165023165929%_
                             _%tl165022165931%_
                             _%e165027165934%_
                             _%hd165026165937%_
                             _%tl165025165939%_
                             _%e165030165942%_
                             _%hd165029165945%_
                             _%tl165028165947%_
                             _%e165033165950%_
                             _%hd165032165953%_
                             _%tl165031165955%_))))
                    (_%__match171074171075%_
                     _%e165012165894%_
                     _%hd165011165897%_
                     _%tl165010165899%_
                     _%e165015165902%_
                     _%hd165014165905%_
                     _%tl165013165907%_
                     _%e165018165910%_
                     _%hd165017165913%_
                     _%tl165016165915%_
                     _%e165021165918%_
                     _%hd165020165921%_
                     _%tl165019165923%_
                     _%e165024165926%_
                     _%hd165023165929%_
                     _%tl165022165931%_
                     _%e165027165934%_
                     _%hd165026165937%_
                     _%tl165025165939%_
                     _%e165030165942%_
                     _%hd165029165945%_
                     _%tl165028165947%_))
                (_%__kont170657170658%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont170657170658%_))
                                            (_%__kont170657170658%_))
                                        (_%__kont170657170658%_))))
                                (_%__kont170657170658%_))))
                        (_%__kont170657170658%_))
                    (_%__kont170657170658%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont170657170658%_))
                                                (_%__kont170657170658%_))
                                            (_%__kont170657170658%_))))
                                    (_%__kont170657170658%_))))
                            (_%__kont170657170658%_))))
                    (_%__kont170657170658%_))))))))))
