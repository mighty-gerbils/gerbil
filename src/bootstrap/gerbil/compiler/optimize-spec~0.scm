(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1769384632)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp190196 (list gxc#::identity::t))
            (__tmp190195 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp190196
         '()
         __tmp190195
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args188993%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args188993%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp190197
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
        (__make-atomic-promise __tmp190197)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx188985%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self188988%_
                (let ((__obj190188
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj190188))
               (__tmp190198
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self188988%_ _%stx188985%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp190198
           gxc#current-compile-method
           _%self188988%_))))
    (define gxc#::extract-receiver::t
      (let ((__tmp190200 (list gxc#::false::t))
            (__tmp190199 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::extract-receiver::t
         '::extract-receiver
         __tmp190200
         '()
         __tmp190199
         '#f)))
    (define gxc#::extract-receiver?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::extract-receiver::t)))
    (define gxc#make-::extract-receiver
      (lambda _%$args188982%_
        (apply make-instance gxc#::extract-receiver::t _%$args188982%_)))
    (define gxc#::extract-receiver-bind-methods!
      (let ((__tmp190201
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
        (__make-atomic-promise __tmp190201)))
    (define gxc#apply-extract-receiver
      (lambda (_%stx188974%_)
        (force gxc#::extract-receiver-bind-methods!)
        (let* ((_%self188977%_
                (let ((__obj190190
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::extract-receiver::t))))
                  __obj190190))
               (__tmp190202
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self188977%_ _%stx188974%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp190202
           gxc#current-compile-method
           _%self188977%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp190204 (list gxc#::void::t))
            (__tmp190203 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp190204
         '(receiver methods slots)
         __tmp190203
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args188971%_
        (apply make-instance gxc#::collect-object-refs::t _%$args188971%_)))
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
      (let ((__tmp190205
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
        (__make-atomic-promise __tmp190205)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords188940%_
               _%receiver188935188941%_
               _%methods188936188942%_
               _%slots188937188943%_
               _%stx188944%_)
        (let* ((_%receiver188947%_
                (if (eq? _%receiver188935188941%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver188935188941%_))
               (_%methods188949%_
                (if (eq? _%methods188936188942%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods188936188942%_))
               (_%slots188951%_
                (if (eq? _%slots188937188943%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots188937188943%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self188953%_
                  (let ((__obj190192
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
                       __obj190192
                       _%receiver188947%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj190192
                       _%methods188949%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj190192
                       _%slots188951%_
                       '3
                       '#f
                       '#f))
                    __obj190192))
                 (__tmp190206
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self188953%_ _%stx188944%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp190206
             gxc#current-compile-method
             _%self188953%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords188960%_ . _%args188961%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords188960%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords188960%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords188960%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords188960%_
                  'slots:
                  absent-value))
               _%args188961%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args188938188967%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args188938188967%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp190208 (list gxc#::basic-xform-expression::t))
            (__tmp190207 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp190208
         '(receiver klass methods slots)
         __tmp190207
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args188931%_
        (apply make-instance gxc#::subst-object-refs::t _%$args188931%_)))
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
      (let ((__tmp190209
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
        (__make-atomic-promise __tmp190209)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords188897%_
               _%receiver188891188898%_
               _%klass188892188899%_
               _%methods188893188900%_
               _%slots188894188901%_
               _%stx188902%_)
        (let* ((_%receiver188905%_
                (if (eq? _%receiver188891188898%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver188891188898%_))
               (_%klass188907%_
                (if (eq? _%klass188892188899%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass188892188899%_))
               (_%methods188909%_
                (if (eq? _%methods188893188900%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods188893188900%_))
               (_%slots188911%_
                (if (eq? _%slots188894188901%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots188894188901%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self188913%_
                  (let ((__obj190194
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
                       __obj190194
                       _%receiver188905%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj190194
                       _%klass188907%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj190194
                       _%methods188909%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj190194
                       _%slots188911%_
                       '4
                       '#f
                       '#f))
                    __obj190194))
                 (__tmp190210
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self188913%_ _%stx188902%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp190210
             gxc#current-compile-method
             _%self188913%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords188920%_ . _%args188921%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords188920%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords188920%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords188920%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords188920%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords188920%_
                  'slots:
                  absent-value))
               _%args188921%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args188895188927%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args188895188927%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self186022%_ _%stx186023%_)
        (letrec ((_%generate-method-bind186025%_
                  (lambda (_%$klass188883%_
                           _%$method-table188884%_
                           _%id188885%_
                           _%$id188886%_)
                    (let ((_%$tmp188888%_
                           (let ((__tmp190211
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp190211))))
                      (cons (cons _%$id188886%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp188888%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table188884%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id188885%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp188888%_ '()))
                    (cons (cons '%#ref (cons _%$tmp188888%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id188885%_
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
                 (_%generate-slot-bind186026%_
                  (lambda (_%$klass188877%_ _%id188878%_ _%$id188879%_)
                    (let ((_%$tmp188881%_
                           (let ((__tmp190212
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp190212))))
                      (cons (cons _%$id188879%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp188881%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass188877%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id188878%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp188881%_ '()))
                        (cons (cons '%#ref (cons _%$tmp188881%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id188878%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl186027%_
                  (lambda (_%$klass188871%_
                           _%$method-table188872%_
                           _%methods-bind188873%_
                           _%slots-bind188874%_
                           _%specializer-impl188875%_)
                    (let ((__tmp190213
                           (cons '%#lambda
                                 (cons (cons _%$klass188871%_
                                             (cons _%$method-table188872%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__foldr1
                                                            cons
                                                            _%slots-bind188874%_
                                                            _%methods-bind188873%_))
                                                         (cons _%specializer-impl188875%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp190213 _%stx186023%_))))
                 (_%generate-specializer-def186028%_
                  (lambda (_%id188867%_
                           _%specializer-id188868%_
                           _%specializer-impl188869%_)
                    (let ((__tmp190214
                           (cons '%#begin
                                 (cons _%stx186023%_
                                       (cons (let ((__tmp190215
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id188868%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl188869%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp190215
                                                _%stx186023%_))
                                             (cons (let ((__tmp190216
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id188867%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id188868%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp190216
                                                      _%stx186023%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp190214 _%stx186023%_)))))
          (let* ((_%__stx189082189083%_ _%stx186023%_)
                 (_%g186031186051%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx189082189083%_)))))
            (let ((_%__kont189084189085%_
                   (lambda (_%g186033186095%_ _%g186034186096%_)
                     (let ((_%method-calls186115%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs186116%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty186117%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?186119%_
                                 (lambda ()
                                   (if (let ((__tmp190217
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%method-calls186115%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp190217))
                                       (let ((__tmp190218
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%slot-refs186116%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp190218))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%g186033186095%_))
                             (let* ((_%__stx188996188997%_ _%g186033186095%_)
                                    (_%g186503186521%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx188996188997%_)))))
                               (let ((_%__kont188998188999%_
                                      (lambda (_%g186505186557%_
                                               _%g186506186558%_
                                               _%g186507186559%_)
                                        (let ((_%receiver186579%_
                                               (let ((_%$e186576%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%g186505186557%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e186576%_
                                                     _%$e186576%_
                                                     _%g186507186559%_))))
                                          (for-each
                                           (lambda (_%g186580186582%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver186579%_
                                              _%method-calls186115%_
                                              _%slot-refs186116%_
                                              _%g186580186582%_))
                                           _%g186505186557%_)
                                          (if (_%no-specializer?186119%_)
                                              _%stx186023%_
                                              (let* ((_%specializer-id186591%_
                                                      (let* ((_%id186585%_
                                                              (let ((__tmp190219
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g186034186096%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp190219 '"::specialize")))
                     (_%specializer-id186588%_
                      (let ((__tmp190220
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx186023%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id186585%_ __tmp190220))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id186588%_))
                _%specializer-id186588%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass186593%_
                                                      (let ((__tmp190221
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp190221)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table186595%_
                                                      (let ((__tmp190222
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp190222)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods186597%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls186115%_)))
                                                     (_%$methods186601%_
                                                      (let ((__tmp190223
                                                             (lambda (_%id186599%_)
                                                               (let ((__tmp190224
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id186599%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp190224)))))
                (declare (not safe))
                (##map __tmp190223 _%methods186597%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_186610%_
                                                      (let ((__tmp190225
                                                             (lambda (_%g186602186605%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g186603186607%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls186115%_
                          _%g186602186605%_
                          _%g186603186607%_)))))
                (declare (not safe))
                (##for-each __tmp190225 _%methods186597%_ _%$methods186601%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind186620%_
                                                      (let ((__tmp190226
                                                             (lambda (_%g186612186615%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g186613186617%_)
                       (_%generate-method-bind186025%_
                        _%$klass186593%_
                        _%$method-table186595%_
                        _%g186612186615%_
                        _%g186613186617%_))))
                (declare (not safe))
                (##map __tmp190226 _%methods186597%_ _%$methods186601%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots186622%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs186116%_)))
                                                     (_%$slots186626%_
                                                      (let ((__tmp190227
                                                             (lambda (_%id186624%_)
                                                               (let ((__tmp190228
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id186624%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp190228)))))
                (declare (not safe))
                (##map __tmp190227 _%slots186622%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_186635%_
                                                      (let ((__tmp190229
                                                             (lambda (_%g186627186630%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g186628186632%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs186116%_
                          _%g186627186630%_
                          _%g186628186632%_)))))
                (declare (not safe))
                (##for-each __tmp190229 _%slots186622%_ _%$slots186626%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind186644%_
                                                      (let ((__tmp190230
                                                             (lambda (_%g186636186639%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g186637186641%_)
                       (_%generate-slot-bind186026%_
                        _%$klass186593%_
                        _%g186636186639%_
                        _%g186637186641%_))))
                (declare (not safe))
                (##map __tmp190230 _%slots186622%_ _%$slots186626%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body186650%_
                                                      (map (lambda (_%g186645186647%_)
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%receiver186579%_
                                                              _%$klass186593%_
                                                              _%method-calls186115%_
                                                              _%slot-refs186116%_
                                                              _%g186645186647%_))
                                                           _%g186505186557%_))
                                                     (_%specializer-impl186652%_
                                                      (let ((__tmp190231
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%g186507186559%_ _%g186506186558%_)
                                 _%specializer-body186650%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp190231 _%stx186023%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl186654%_
                                                      (_%generate-specializer-impl186027%_
                                                       _%$klass186593%_
                                                       _%$method-table186595%_
                                                       _%methods-bind186620%_
                                                       _%slots-bind186644%_
                                                       _%specializer-impl186652%_)))
                                                (let ((__tmp190233
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g186034186096%_)))
                                                      (__tmp190232
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id186591%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp190233
                                                   '" => "
                                                   __tmp190232))
                                                (_%generate-specializer-def186028%_
                                                 _%g186034186096%_
                                                 _%specializer-id186591%_
                                                 _%specializer-impl186654%_))))))
                                     (_%__kont189000189001%_
                                      (lambda () _%stx186023%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx188996188997%_))
                                     (let ((_%e186508186533%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx188996188997%_))))
                                       (let ((_%tl186510186538%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e186508186533%_)))
                                             (_%hd186509186536%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e186508186533%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl186510186538%_))
                                             (let ((_%e186511186541%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl186510186538%_))))
                                               (let ((_%tl186513186546%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e186511186541%_)))
                                                     (_%hd186512186544%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e186511186541%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%hd186512186544%_))
                                                     (let ((_%e186514186549%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd186512186544%_))))
                                                       (let ((_%tl186516186554%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e186514186549%_)))
                     (_%hd186515186552%_
                      (let () (declare (not safe)) (##car _%e186514186549%_))))
                 (_%__kont188998188999%_
                  _%tl186513186546%_
                  _%tl186516186554%_
                  _%hd186515186552%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont189000189001%_))))
                                             (_%__kont189000189001%_))))
                                     (_%__kont189000189001%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%g186033186095%_))
                                 (let* ((_%g186661186680%_
                                         (lambda (_%g186662186677%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g186662186677%_))))
                                        (_%g186660186976%_
                                         (lambda (_%g186662186683%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g186662186683%_))
                                               (let ((_%e186664186685%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g186662186683%_))))
                                                 (let ((_%hd186665186688%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e186664186685%_)))
                                                       (_%tl186666186690%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e186664186685%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%tl186666186690%_))
                                                       (let ((_g190234_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%tl186666186690%_ '0))))
                 (begin
                   (let ((_g190235_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g190234_)
                                (##values-length _g190234_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g190235_ 2)))
                         (error "Context expects 2 values" _g190235_)))
                   (let ((_%target186667186693%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g190234_ 0)))
                         (_%tl186669186695%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g190234_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl186669186695%_))
                         (letrec ((_%loop186670186698%_
                                   (lambda (_%hd186668186701%_
                                            _%clause186674186703%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd186668186701%_))
                                         (let ((_%e186671186705%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd186668186701%_))))
                                           (let ((_%lp-hd186672186708%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e186671186705%_)))
                                                 (_%lp-tl186673186710%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e186671186705%_))))
                                             (_%loop186670186698%_
                                              _%lp-tl186673186710%_
                                              (cons _%lp-hd186672186708%_
                                                    _%clause186674186703%_))))
                                         (let ((_%clause186675186713%_
                                                (reverse _%clause186674186703%_)))
                                           ((lambda (_%g186663186715%_)
                                              (for-each
                                               (lambda (_%clause186729%_)
                                                 (let* ((_%__stx189022189023%_
                                                         _%clause186729%_)
                                                        (_%g186732186747%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx189022189023%_)))))
                                                   (let ((_%__kont189024189025%_
                                                          (lambda (_%g186734186775%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g186735186776%_
                           _%g186736186777%_)
                    (let ((_%receiver186796%_
                           (let ((_%$e186793%_
                                  (gxc#apply-extract-receiver
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f '%#begin))
                                         _%g186734186775%_))))
                             (if _%$e186793%_
                                 _%$e186793%_
                                 _%g186736186777%_))))
                      (for-each
                       (lambda (_%g186797186799%_)
                         (gxc#apply-collect-object-refs__%
                          '#f
                          _%receiver186796%_
                          _%method-calls186115%_
                          _%slot-refs186116%_
                          _%g186797186799%_))
                       _%g186734186775%_))))
                 (_%__kont189026189027%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx189022189023%_))
                                                         (let ((_%e186737186759%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx189022189023%_))))
                   (let ((_%tl186739186764%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e186737186759%_)))
                         (_%hd186738186762%_
                          (let ()
                            (declare (not safe))
                            (##car _%e186737186759%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd186738186762%_))
                         (let ((_%e186740186767%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd186738186762%_))))
                           (let ((_%tl186742186772%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e186740186767%_)))
                                 (_%hd186741186770%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e186740186767%_))))
                             (_%__kont189024189025%_
                              _%tl186739186764%_
                              _%tl186742186772%_
                              _%hd186741186770%_)))
                         (_%__kont189026189027%_))))
                 (_%__kont189026189027%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp190236
                                                      (lambda (_%g186804186807%_
                                                               _%g186805186809%_)
                                                        (cons _%g186804186807%_
                                                              _%g186805186809%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp190236
                                                  '()
                                                  _%g186663186715%_)))
                                              (if (_%no-specializer?186119%_)
                                                  _%stx186023%_
                                                  (let* ((_%specializer-id186818%_
                                                          (let* ((_%id186812%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp190237
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g186034186096%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp190237 '"::specialize")))
                         (_%specializer-id186815%_
                          (let ((__tmp190238
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx186023%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id186812%_
                             __tmp190238))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id186815%_))
                    _%specializer-id186815%_))
                 (_%$klass186820%_
                  (let ((__tmp190239
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp190239)))
                 (_%$method-table186822%_
                  (let ((__tmp190240
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp190240)))
                 (_%methods186824%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls186115%_)))
                 (_%$methods186828%_
                  (let ((__tmp190241
                         (lambda (_%id186826%_)
                           (let ((__tmp190242 (gensym _%id186826%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp190242)))))
                    (declare (not safe))
                    (##map __tmp190241 _%methods186824%_)))
                 (_%_186837%_
                  (let ((__tmp190243
                         (lambda (_%g186829186832%_ _%g186830186834%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%method-calls186115%_
                              _%g186829186832%_
                              _%g186830186834%_)))))
                    (declare (not safe))
                    (##for-each
                     __tmp190243
                     _%methods186824%_
                     _%$methods186828%_)))
                 (_%methods-bind186847%_
                  (let ((__tmp190244
                         (lambda (_%g186839186842%_ _%g186840186844%_)
                           (_%generate-method-bind186025%_
                            _%$klass186820%_
                            _%$method-table186822%_
                            _%g186839186842%_
                            _%g186840186844%_))))
                    (declare (not safe))
                    (##map __tmp190244 _%methods186824%_ _%$methods186828%_)))
                 (_%slots186849%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs186116%_)))
                 (_%$slots186853%_
                  (let ((__tmp190245
                         (lambda (_%id186851%_)
                           (let ((__tmp190246 (gensym _%id186851%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp190246)))))
                    (declare (not safe))
                    (##map __tmp190245 _%slots186849%_)))
                 (_%_186862%_
                  (let ((__tmp190247
                         (lambda (_%g186854186857%_ _%g186855186859%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%slot-refs186116%_
                              _%g186854186857%_
                              _%g186855186859%_)))))
                    (declare (not safe))
                    (##for-each __tmp190247 _%slots186849%_ _%$slots186853%_)))
                 (_%slots-bind186871%_
                  (let ((__tmp190248
                         (lambda (_%g186863186866%_ _%g186864186868%_)
                           (_%generate-slot-bind186026%_
                            _%$klass186820%_
                            _%g186863186866%_
                            _%g186864186868%_))))
                    (declare (not safe))
                    (##map __tmp190248 _%slots186849%_ _%$slots186853%_)))
                 (_%specializer-clauses186969%_
                  (map (lambda (_%clause186873%_)
                         (let* ((_%__stx189042189043%_ _%clause186873%_)
                                (_%g186876186891%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx189042189043%_)))))
                           (let ((_%__kont189044189045%_
                                  (lambda (_%g186878186919%_
                                           _%g186879186920%_
                                           _%g186880186921%_)
                                    (let* ((_%receiver186950%_
                                            (let ((_%$e186947%_
                                                   (gxc#apply-extract-receiver
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#begin))
                                                          _%g186878186919%_))))
                                              (if _%$e186947%_
                                                  _%$e186947%_
                                                  _%g186880186921%_)))
                                           (_%body186956%_
                                            (map (lambda (_%g186951186953%_)
                                                   (gxc#apply-subst-object-refs__%
                                                    '#f
                                                    _%receiver186950%_
                                                    _%$klass186820%_
                                                    _%method-calls186115%_
                                                    _%slot-refs186116%_
                                                    _%g186951186953%_))
                                                 _%g186878186919%_)))
                                      (cons (cons _%g186880186921%_
                                                  _%g186879186920%_)
                                            _%body186956%_))))
                                 (_%__kont189046189047%_
                                  (lambda () _%clause186873%_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx189042189043%_))
                                 (let ((_%e186881186903%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx189042189043%_))))
                                   (let ((_%tl186883186908%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e186881186903%_)))
                                         (_%hd186882186906%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e186881186903%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd186882186906%_))
                                         (let ((_%e186884186911%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd186882186906%_))))
                                           (let ((_%tl186886186916%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e186884186911%_)))
                                                 (_%hd186885186914%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e186884186911%_))))
                                             (_%__kont189044189045%_
                                              _%tl186883186908%_
                                              _%tl186886186916%_
                                              _%hd186885186914%_)))
                                         (_%__kont189046189047%_))))
                                 (_%__kont189046189047%_)))))
                       (let ((__tmp190249
                              (lambda (_%g186961186964%_ _%g186962186966%_)
                                (cons _%g186961186964%_ _%g186962186966%_))))
                         (declare (not safe))
                         (__foldr1 __tmp190249 '() _%g186663186715%_))))
                 (_%specializer-impl186971%_
                  (let ((__tmp190250
                         (cons '%#case-lambda _%specializer-clauses186969%_)))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp190250 _%stx186023%_)))
                 (_%specializer-impl186973%_
                  (_%generate-specializer-impl186027%_
                   _%$klass186820%_
                   _%$method-table186822%_
                   _%methods-bind186847%_
                   _%slots-bind186871%_
                   _%specializer-impl186971%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp190252
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%g186034186096%_)))
                                                          (__tmp190251
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id186818%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp190252
                                                       '" => "
                                                       __tmp190251))
                                                    (_%generate-specializer-def186028%_
                                                     _%g186034186096%_
                                                     _%specializer-id186818%_
                                                     _%specializer-impl186973%_))))
                                            _%clause186675186713%_))))))
                           (_%loop186670186698%_ _%target186667186693%_ '()))
                         (_%g186661186680%_ _%g186662186683%_)))))
               (_%g186661186680%_ _%g186662186683%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g186661186680%_
                                                _%g186662186683%_)))))
                                   (_%g186660186976%_ _%g186033186095%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr?
                                        _%g186033186095%_))
                                     (let* ((_%g186980187010%_
                                             (lambda (_%g186981187007%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g186981187007%_))))
                                            (_%g186979187637%_
                                             (lambda (_%g186981187013%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g186981187013%_))
                                                   (let ((_%e186985187015%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g186981187013%_))))
                                                     (let ((_%hd186986187018%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e186985187015%_)))
                                                           (_%tl186987187020%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e186985187015%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl186987187020%_))
                                                           (let ((_%e186988187023%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl186987187020%_))))
                     (let ((_%hd186989187026%_
                            (let ()
                              (declare (not safe))
                              (##car _%e186988187023%_)))
                           (_%tl186990187028%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e186988187023%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd186989187026%_))
                           (let ((_%e186991187031%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd186989187026%_))))
                             (let ((_%hd186992187034%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e186991187031%_)))
                                   (_%tl186993187036%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e186991187031%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd186992187034%_))
                                   (let ((_%e186994187039%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd186992187034%_))))
                                     (let ((_%hd186995187042%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e186994187039%_)))
                                           (_%tl186996187044%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e186994187039%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd186995187042%_))
                                           (let ((_%e186997187047%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd186995187042%_))))
                                             (let ((_%hd186998187050%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e186997187047%_)))
                                                   (_%tl186999187052%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e186997187047%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl186999187052%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl186996187044%_))
                                                       (let ((_%e187000187055%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl186996187044%_))))
                 (let ((_%hd187001187058%_
                        (let ()
                          (declare (not safe))
                          (##car _%e187000187055%_)))
                       (_%tl187002187060%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e187000187055%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl187002187060%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl186993187036%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl186990187028%_))
                               (let ((_%e187003187063%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl186990187028%_))))
                                 (let ((_%hd187004187066%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e187003187063%_)))
                                       (_%tl187005187068%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e187003187063%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl187005187068%_))
                                       ((lambda (_%g186982187071%_
                                                 _%g186983187072%_
                                                 _%g186984187073%_)
                                          (let* ((_%g187097187115%_
                                                  (lambda (_%g187098187112%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g187098187112%_))))
                                                 (_%g187096187171%_
                                                  (lambda (_%g187098187118%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g187098187118%_))
                                                        (let ((_%e187102187120%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g187098187118%_))))
                  (let ((_%hd187103187123%_
                         (let ()
                           (declare (not safe))
                           (##car _%e187102187120%_)))
                        (_%tl187104187125%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e187102187120%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl187104187125%_))
                        (let ((_%e187105187128%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl187104187125%_))))
                          (let ((_%hd187106187131%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e187105187128%_)))
                                (_%tl187107187133%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e187105187128%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd187106187131%_))
                                (let ((_%e187108187136%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd187106187131%_))))
                                  (let ((_%hd187109187139%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e187108187136%_)))
                                        (_%tl187110187141%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e187108187136%_))))
                                    ((lambda (_%g187099187144%_
                                              _%g187100187145%_
                                              _%g187101187146%_)
                                       (let ((_%receiver187165%_
                                              (let ((_%$e187162%_
                                                     (gxc#apply-extract-receiver
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))
                                                            _%g187099187144%_))))
                                                (if _%$e187162%_
                                                    _%$e187162%_
                                                    _%g187101187146%_))))
                                         (for-each
                                          (lambda (_%g187166187168%_)
                                            (gxc#apply-collect-object-refs__%
                                             '#f
                                             _%receiver187165%_
                                             _%method-calls186115%_
                                             _%slot-refs186116%_
                                             _%g187166187168%_))
                                          _%g187099187144%_)))
                                     _%tl187107187133%_
                                     _%tl187110187141%_
                                     _%hd187109187139%_)))
                                (_%g187097187115%_ _%g187098187118%_))))
                        (_%g187097187115%_ _%g187098187118%_))))
                (_%g187097187115%_ _%g187098187118%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g187096187171%_
                                             _%g186983187072%_))
                                          (let* ((_%g187174187193%_
                                                  (lambda (_%g187175187190%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g187175187190%_))))
                                                 (_%g187173187315%_
                                                  (lambda (_%g187175187196%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g187175187196%_))
                                                        (let ((_%e187177187198%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g187175187196%_))))
                  (let ((_%hd187178187201%_
                         (let ()
                           (declare (not safe))
                           (##car _%e187177187198%_)))
                        (_%tl187179187203%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e187177187198%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl187179187203%_))
                        (let ((_g190253_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%tl187179187203%_
                                  '0))))
                          (begin
                            (let ((_g190254_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g190253_)
                                         (##values-length _g190253_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g190254_ 2)))
                                  (error "Context expects 2 values"
                                         _g190254_)))
                            (let ((_%target187180187206%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g190253_ 0)))
                                  (_%tl187182187208%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g190253_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl187182187208%_))
                                  (letrec ((_%loop187183187211%_
                                            (lambda (_%hd187181187214%_
                                                     _%clause187187187216%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd187181187214%_))
                                                  (let ((_%e187184187218%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd187181187214%_))))
                                                    (let ((_%lp-hd187185187221%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e187184187218%_)))
                                                          (_%lp-tl187186187223%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e187184187218%_))))
                                                      (_%loop187183187211%_
                                                       _%lp-tl187186187223%_
                                                       (cons _%lp-hd187185187221%_
                                                             _%clause187187187216%_))))
                                                  (let ((_%clause187188187226%_
                                                         (reverse _%clause187187187216%_)))
                                                    ((lambda (_%g187176187228%_)
                                                       (for-each
                                                        (lambda (_%clause187241%_)
                                                          (let* ((_%g187243187258%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g187244187255%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g187244187255%_))))
                         (_%g187242187305%_
                          (lambda (_%g187244187261%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g187244187261%_))
                                (let ((_%e187248187263%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g187244187261%_))))
                                  (let ((_%hd187249187266%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e187248187263%_)))
                                        (_%tl187250187268%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e187248187263%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd187249187266%_))
                                        (let ((_%e187251187271%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd187249187266%_))))
                                          (let ((_%hd187252187274%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e187251187271%_)))
                                                (_%tl187253187276%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e187251187271%_))))
                                            ((lambda (_%g187245187279%_
                                                      _%g187246187280%_
                                                      _%g187247187281%_)
                                               (let ((_%receiver187299%_
                                                      (let ((_%$e187296%_
                                                             (gxc#apply-extract-receiver
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '%#begin))
                            _%g187245187279%_))))
                (if _%$e187296%_ _%$e187296%_ _%g187247187281%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (for-each
                                                  (lambda (_%g187300187302%_)
                                                    (gxc#apply-collect-object-refs__%
                                                     '#f
                                                     _%receiver187299%_
                                                     _%method-calls186115%_
                                                     _%slot-refs186116%_
                                                     _%g187300187302%_))
                                                  _%g187245187279%_)))
                                             _%tl187250187268%_
                                             _%tl187253187276%_
                                             _%hd187252187274%_)))
                                        (_%g187243187258%_
                                         _%g187244187261%_))))
                                (_%g187243187258%_ _%g187244187261%_)))))
                    (_%g187242187305%_ _%clause187241%_)))
                (let ((__tmp190255
                       (lambda (_%g187307187310%_ _%g187308187312%_)
                         (cons _%g187307187310%_ _%g187308187312%_))))
                  (declare (not safe))
                  (__foldr1 __tmp190255 '() _%g187176187228%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%clause187188187226%_))))))
                                    (_%loop187183187211%_
                                     _%target187180187206%_
                                     '()))
                                  (_%g187174187193%_ _%g187175187196%_)))))
                        (_%g187174187193%_ _%g187175187196%_))))
                (_%g187174187193%_ _%g187175187196%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g187173187315%_
                                             _%g186982187071%_))
                                          (if (_%no-specializer?186119%_)
                                              _%stx186023%_
                                              (let* ((_%specializer-id187324%_
                                                      (let* ((_%id187318%_
                                                              (let ((__tmp190256
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g186034186096%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp190256 '"::specialize")))
                     (_%specializer-id187321%_
                      (let ((__tmp190257
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx186023%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id187318%_ __tmp190257))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id187321%_))
                _%specializer-id187321%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass187326%_
                                                      (let ((__tmp190258
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp190258)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table187328%_
                                                      (let ((__tmp190259
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp190259)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods187330%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls186115%_)))
                                                     (_%$methods187334%_
                                                      (let ((__tmp190260
                                                             (lambda (_%id187332%_)
                                                               (let ((__tmp190261
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id187332%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp190261)))))
                (declare (not safe))
                (##map __tmp190260 _%methods187330%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_187343%_
                                                      (let ((__tmp190262
                                                             (lambda (_%g187335187338%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g187336187340%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls186115%_
                          _%g187335187338%_
                          _%g187336187340%_)))))
                (declare (not safe))
                (##for-each __tmp190262 _%methods187330%_ _%$methods187334%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind187353%_
                                                      (let ((__tmp190263
                                                             (lambda (_%g187345187348%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g187346187350%_)
                       (_%generate-method-bind186025%_
                        _%$klass187326%_
                        _%$method-table187328%_
                        _%g187345187348%_
                        _%g187346187350%_))))
                (declare (not safe))
                (##map __tmp190263 _%methods187330%_ _%$methods187334%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots187355%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs186116%_)))
                                                     (_%$slots187359%_
                                                      (let ((__tmp190264
                                                             (lambda (_%id187357%_)
                                                               (let ((__tmp190265
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id187357%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp190265)))))
                (declare (not safe))
                (##map __tmp190264 _%slots187355%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_187368%_
                                                      (let ((__tmp190266
                                                             (lambda (_%g187360187363%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g187361187365%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs186116%_
                          _%g187360187363%_
                          _%g187361187365%_)))))
                (declare (not safe))
                (##for-each __tmp190266 _%slots187355%_ _%$slots187359%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind187377%_
                                                      (let ((__tmp190267
                                                             (lambda (_%g187369187372%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g187370187374%_)
                       (_%generate-slot-bind186026%_
                        _%$klass187326%_
                        _%g187369187372%_
                        _%g187370187374%_))))
                (declare (not safe))
                (##map __tmp190267 _%slots187355%_ _%$slots187359%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-lambda-expr187469%_
                                                      (let* ((_%g187379187397%_
                                                              (lambda (_%g187380187394%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g187380187394%_))))
                     (_%g187378187466%_
                      (lambda (_%g187380187400%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g187380187400%_))
                            (let ((_%e187384187402%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g187380187400%_))))
                              (let ((_%hd187385187405%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e187384187402%_)))
                                    (_%tl187386187407%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e187384187402%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl187386187407%_))
                                    (let ((_%e187387187410%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl187386187407%_))))
                                      (let ((_%hd187388187413%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e187387187410%_)))
                                            (_%tl187389187415%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e187387187410%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd187388187413%_))
                                            (let ((_%e187390187418%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd187388187413%_))))
                                              (let ((_%hd187391187421%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e187390187418%_)))
                                                    (_%tl187392187423%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e187390187418%_))))
                                                ((lambda (_%g187381187426%_
                                                          _%g187382187427%_
                                                          _%g187383187428%_)
                                                   (let* ((_%receiver187457%_
                                                           (let ((_%$e187454%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#apply-extract-receiver
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#begin))
                                 _%g187381187426%_))))
                     (if _%$e187454%_ _%$e187454%_ _%g187383187428%_)))
                  (_%body187463%_
                   (map (lambda (_%g187458187460%_)
                          (gxc#apply-subst-object-refs__%
                           '#f
                           _%receiver187457%_
                           _%$klass187326%_
                           _%method-calls186115%_
                           _%slot-refs186116%_
                           _%g187458187460%_))
                        _%g187381187426%_))
                  (__tmp190268
                   (cons '%#lambda
                         (cons (cons _%g187383187428%_ _%g187382187427%_)
                               _%body187463%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp190268
                                                      _%g186983187072%_)))
                                                 _%tl187389187415%_
                                                 _%tl187392187423%_
                                                 _%hd187391187421%_)))
                                            (_%g187379187397%_
                                             _%g187380187400%_))))
                                    (_%g187379187397%_ _%g187380187400%_))))
                            (_%g187379187397%_ _%g187380187400%_)))))
                (_%g187378187466%_ _%g186983187072%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-case-lambda-expr187630%_
                                                      (let* ((_%g187471187490%_
                                                              (lambda (_%g187472187487%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g187472187487%_))))
                     (_%g187470187627%_
                      (lambda (_%g187472187493%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g187472187493%_))
                            (let ((_%e187474187495%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g187472187493%_))))
                              (let ((_%hd187475187498%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e187474187495%_)))
                                    (_%tl187476187500%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e187474187495%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl187476187500%_))
                                    (let ((_g190269_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl187476187500%_
                                              '0))))
                                      (begin
                                        (let ((_g190270_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g190269_)
                                                     (##values-length
                                                      _g190269_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g190270_ 2)))
                                              (error "Context expects 2 values"
                                                     _g190270_)))
                                        (let ((_%target187477187503%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g190269_ 0)))
                                              (_%tl187479187505%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g190269_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl187479187505%_))
                                              (letrec ((_%loop187480187508%_
                                                        (lambda (_%hd187478187511%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%clause187484187513%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd187478187511%_))
                      (let ((_%e187481187515%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd187478187511%_))))
                        (let ((_%lp-hd187482187518%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e187481187515%_)))
                              (_%lp-tl187483187520%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e187481187515%_))))
                          (_%loop187480187508%_
                           _%lp-tl187483187520%_
                           (cons _%lp-hd187482187518%_
                                 _%clause187484187513%_))))
                      (let ((_%clause187485187523%_
                             (reverse _%clause187484187513%_)))
                        ((lambda (_%g187473187525%_)
                           (let* ((_%clauses187625%_
                                   (map (lambda (_%clause187539%_)
                                          (let* ((_%__stx189062189063%_
                                                  _%clause187539%_)
                                                 (_%g187542187557%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx189062189063%_)))))
                                            (let ((_%__kont189064189065%_
                                                   (lambda (_%g187544187585%_
                                                            _%g187545187586%_
                                                            _%g187546187587%_)
                                                     (let* ((_%receiver187606%_
                                                             (let ((_%$e187603%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#apply-extract-receiver
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#begin))
                                   _%g187544187585%_))))
                       (if _%$e187603%_ _%$e187603%_ _%g187546187587%_)))
                    (_%body187612%_
                     (map (lambda (_%g187607187609%_)
                            (gxc#apply-subst-object-refs__%
                             '#f
                             _%receiver187606%_
                             _%$klass187326%_
                             _%method-calls186115%_
                             _%slot-refs186116%_
                             _%g187607187609%_))
                          _%g187544187585%_)))
               (cons (cons _%g187546187587%_ _%g187545187586%_)
                     _%body187612%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont189066189067%_
                                                   (lambda ()
                                                     _%clause187539%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx189062189063%_))
                                                  (let ((_%e187547187569%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%__stx189062189063%_))))
                                                    (let ((_%tl187549187574%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e187547187569%_)))
                                                          (_%hd187548187572%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e187547187569%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd187548187572%_))
                                                          (let ((_%e187550187577%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd187548187572%_))))
                    (let ((_%tl187552187582%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e187550187577%_)))
                          (_%hd187551187580%_
                           (let ()
                             (declare (not safe))
                             (##car _%e187550187577%_))))
                      (_%__kont189064189065%_
                       _%tl187549187574%_
                       _%tl187552187582%_
                       _%hd187551187580%_)))
                  (_%__kont189066189067%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont189066189067%_)))))
                                        (let ((__tmp190271
                                               (lambda (_%g187617187620%_
                                                        _%g187618187622%_)
                                                 (cons _%g187617187620%_
                                                       _%g187618187622%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp190271
                                           '()
                                           _%g187473187525%_))))
                                  (__tmp190272
                                   (cons '%#case-lambda _%clauses187625%_)))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp190272
                              _%g186982187071%_)))
                         _%clause187485187523%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop187480187508%_
                                                 _%target187477187503%_
                                                 '()))
                                              (_%g187471187490%_
                                               _%g187472187493%_)))))
                                    (_%g187471187490%_ _%g187472187493%_))))
                            (_%g187471187490%_ _%g187472187493%_)))))
                (_%g187470187627%_ _%g186982187071%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl187632%_
                                                      (let ((__tmp190273
                                                             (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons (cons _%g186984187073%_ '())
                                             (cons _%specializer-lambda-expr187469%_
                                                   '()))
                                       '())
                                 (cons _%specializer-case-lambda-expr187630%_
                                       '())))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp190273 _%stx186023%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl187634%_
                                                      (_%generate-specializer-impl186027%_
                                                       _%$klass187326%_
                                                       _%$method-table187328%_
                                                       _%methods-bind187353%_
                                                       _%slots-bind187377%_
                                                       _%specializer-impl187632%_)))
                                                (let ((__tmp190275
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g186034186096%_)))
                                                      (__tmp190274
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id187324%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp190275
                                                   '" => "
                                                   __tmp190274))
                                                (_%generate-specializer-def186028%_
                                                 _%g186034186096%_
                                                 _%specializer-id187324%_
                                                 _%specializer-impl187634%_))))
                                        _%hd187004187066%_
                                        _%hd187001187058%_
                                        _%hd186998187050%_)
                                       (_%g186980187010%_ _%g186981187013%_))))
                               (_%g186980187010%_ _%g186981187013%_))
                           (_%g186980187010%_ _%g186981187013%_))
                       (_%g186980187010%_ _%g186981187013%_))))
               (_%g186980187010%_ _%g186981187013%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g186980187010%_
                                                    _%g186981187013%_))))
                                           (_%g186980187010%_
                                            _%g186981187013%_))))
                                   (_%g186980187010%_ _%g186981187013%_))))
                           (_%g186980187010%_ _%g186981187013%_))))
                   (_%g186980187010%_ _%g186981187013%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g186980187010%_
                                                    _%g186981187013%_)))))
                                       (_%g186979187637%_ _%g186033186095%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr?
                                            _%g186033186095%_))
                                         (let* ((_%g187641187694%_
                                                 (lambda (_%g187642187691%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g187642187691%_))))
                                                (_%g187640188859%_
                                                 (lambda (_%g187642187697%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g187642187697%_))
                                                       (let ((_%e187648187699%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g187642187697%_))))
                 (let ((_%hd187649187702%_
                        (let ()
                          (declare (not safe))
                          (##car _%e187648187699%_)))
                       (_%tl187650187704%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e187648187699%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%hd187649187702%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%hd187649187702%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl187650187704%_))
                               (let ((_%e187651187707%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl187650187704%_))))
                                 (let ((_%hd187652187710%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e187651187707%_)))
                                       (_%tl187653187712%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e187651187707%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd187652187710%_))
                                       (let ((_%e187654187715%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd187652187710%_))))
                                         (let ((_%hd187655187718%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e187654187715%_)))
                                               (_%tl187656187720%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e187654187715%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd187655187718%_))
                                               (let ((_%e187657187723%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd187655187718%_))))
                                                 (let ((_%hd187658187726%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e187657187723%_)))
                                                       (_%tl187659187728%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e187657187723%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd187658187726%_))
                                                       (let ((_%e187660187731%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd187658187726%_))))
                 (let ((_%hd187661187734%_
                        (let ()
                          (declare (not safe))
                          (##car _%e187660187731%_)))
                       (_%tl187662187736%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e187660187731%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl187662187736%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl187659187728%_))
                           (let ((_%e187663187739%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl187659187728%_))))
                             (let ((_%hd187664187742%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e187663187739%_)))
                                   (_%tl187665187744%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e187663187739%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd187664187742%_))
                                   (let ((_%e187666187747%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd187664187742%_))))
                                     (let ((_%hd187667187750%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e187666187747%_)))
                                           (_%tl187668187752%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e187666187747%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd187667187750%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%hd187667187750%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl187668187752%_))
                                                   (let ((_%e187669187755%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl187668187752%_))))
                                                     (let ((_%hd187670187758%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e187669187755%_)))
                                                           (_%tl187671187760%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e187669187755%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd187670187758%_))
                                                           (let ((_%e187672187763%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%hd187670187758%_))))
                     (let ((_%hd187673187766%_
                            (let ()
                              (declare (not safe))
                              (##car _%e187672187763%_)))
                           (_%tl187674187768%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e187672187763%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd187673187766%_))
                           (let ((_%e187675187771%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd187673187766%_))))
                             (let ((_%hd187676187774%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e187675187771%_)))
                                   (_%tl187677187776%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e187675187771%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd187676187774%_))
                                   (let ((_%e187678187779%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd187676187774%_))))
                                     (let ((_%hd187679187782%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e187678187779%_)))
                                           (_%tl187680187784%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e187678187779%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl187680187784%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl187677187776%_))
                                               (let ((_%e187681187787%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl187677187776%_))))
                                                 (let ((_%hd187682187790%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e187681187787%_)))
                                                       (_%tl187683187792%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e187681187787%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl187683187792%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl187674187768%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl187671187760%_))
                       (let ((_%e187684187795%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl187671187760%_))))
                         (let ((_%hd187685187798%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e187684187795%_)))
                               (_%tl187686187800%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e187684187795%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl187686187800%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl187665187744%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl187656187720%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl187653187712%_))
                                           (let ((_%e187687187803%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl187653187712%_))))
                                             (let ((_%hd187688187806%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e187687187803%_)))
                                                   (_%tl187689187808%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e187687187803%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl187689187808%_))
                                                   ((lambda (_%g187643187811%_
                                                             _%g187644187812%_
                                                             _%g187645187813%_
                                                             _%g187646187814%_
                                                             _%g187647187815%_)
                                                      (let* ((_%g187855187917%_
                                                              (lambda (_%g187856187914%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g187856187914%_))))
                     (_%g187854188856%_
                      (lambda (_%g187856187920%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g187856187920%_))
                            (let ((_%e187862187922%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g187856187920%_))))
                              (let ((_%hd187863187925%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e187862187922%_)))
                                    (_%tl187864187927%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e187862187922%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd187863187925%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd187863187925%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl187864187927%_))
                                            (let ((_%e187865187930%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl187864187927%_))))
                                              (let ((_%hd187866187933%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e187865187930%_)))
                                                    (_%tl187867187935%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e187865187930%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl187867187935%_))
                                                    (let ((_%e187868187938%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl187867187935%_))))
                                                      (let ((_%hd187869187941%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e187868187938%_)))
                    (_%tl187870187943%_
                     (let () (declare (not safe)) (##cdr _%e187868187938%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd187869187941%_))
                    (let ((_%e187871187946%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd187869187941%_))))
                      (let ((_%hd187872187949%_
                             (let ()
                               (declare (not safe))
                               (##car _%e187871187946%_)))
                            (_%tl187873187951%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e187871187946%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd187872187949%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _%hd187872187949%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl187873187951%_))
                                    (let ((_%e187874187954%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl187873187951%_))))
                                      (let ((_%hd187875187957%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e187874187954%_)))
                                            (_%tl187876187959%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e187874187954%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd187875187957%_))
                                            (let ((_%e187877187962%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd187875187957%_))))
                                              (let ((_%hd187878187965%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e187877187962%_)))
                                                    (_%tl187879187967%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e187877187962%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd187878187965%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd187878187965%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl187879187967%_))
                                                            (let ((_%e187880187970%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl187879187967%_))))
                      (let ((_%hd187881187973%_
                             (let ()
                               (declare (not safe))
                               (##car _%e187880187970%_)))
                            (_%tl187882187975%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e187880187970%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl187882187975%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl187876187959%_))
                                (let ((_%e187883187978%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl187876187959%_))))
                                  (let ((_%hd187884187981%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e187883187978%_)))
                                        (_%tl187885187983%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e187883187978%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd187884187981%_))
                                        (let ((_%e187886187986%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd187884187981%_))))
                                          (let ((_%hd187887187989%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e187886187986%_)))
                                                (_%tl187888187991%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e187886187986%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd187887187989%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%hd187887187989%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl187888187991%_))
                                                        (let ((_%e187889187994%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl187888187991%_))))
                  (let ((_%hd187890187997%_
                         (let ()
                           (declare (not safe))
                           (##car _%e187889187994%_)))
                        (_%tl187891187999%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e187889187994%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl187891187999%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl187885187983%_))
                            (let ((_%e187892188002%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl187885187983%_))))
                              (let ((_%hd187893188005%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e187892188002%_)))
                                    (_%tl187894188007%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e187892188002%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd187893188005%_))
                                    (let ((_%e187895188010%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd187893188005%_))))
                                      (let ((_%hd187896188013%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e187895188010%_)))
                                            (_%tl187897188015%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e187895188010%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd187896188013%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd187896188013%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl187897188015%_))
                                                    (let ((_%e187898188018%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl187897188015%_))))
                                                      (let ((_%hd187899188021%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e187898188018%_)))
                    (_%tl187900188023%_
                     (let () (declare (not safe)) (##cdr _%e187898188018%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl187900188023%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl187894188007%_))
                        (if (let ((__tmp190276
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-length _%tl187894188007%_))))
                              (declare (not safe))
                              (##fx>= __tmp190276 '1))
                            (let ((_g190277_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl187894188007%_
                                      '1))))
                              (begin
                                (let ((_g190278_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g190277_)
                                             (##values-length _g190277_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g190278_ 2)))
                                      (error "Context expects 2 values"
                                             _g190278_)))
                                (let ((_%target187901188026%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g190277_ 0)))
                                      (_%tl187903188028%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g190277_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl187903188028%_))
                                      (let ((_%e187910188031%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl187903188028%_))))
                                        (let ((_%hd187911188034%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e187910188031%_)))
                                              (_%tl187912188036%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e187910188031%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl187912188036%_))
                                              (letrec ((_%loop187904188039%_
                                                        (lambda (_%hd187902188042%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%kw-ref187908188044%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd187902188042%_))
                      (let ((_%e187905188046%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd187902188042%_))))
                        (let ((_%lp-hd187906188049%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e187905188046%_)))
                              (_%lp-tl187907188051%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e187905188046%_))))
                          (_%loop187904188039%_
                           _%lp-tl187907188051%_
                           (cons _%lp-hd187906188049%_
                                 _%kw-ref187908188044%_))))
                      (let ((_%kw-ref187909188054%_
                             (reverse _%kw-ref187908188044%_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl187870187943%_))
                            ((lambda (_%g187857188056%_
                                      _%g187858188057%_
                                      _%g187859188058%_
                                      _%g187860188059%_
                                      _%g187861188060%_)
                               (let* ((_%kw-count188111%_
                                       (length (let ((__tmp190279
                                                      (lambda (_%g188103188106%_
                                                               _%g188104188108%_)
                                                        (cons _%g188103188106%_
                                                              _%g188104188108%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp190279
                                                  '()
                                                  _%g187858188057%_))))
                                      (_%self-index188113%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%kw-count188111%_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _%g187645187813%_))
                                     (let* ((_%g188117188131%_
                                             (lambda (_%g188118188128%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g188118188128%_))))
                                            (_%g188116188254%_
                                             (lambda (_%g188118188134%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g188118188134%_))
                                                   (let ((_%e188121188136%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g188118188134%_))))
                                                     (let ((_%hd188122188139%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e188121188136%_)))
                                                           (_%tl188123188141%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e188121188136%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl188123188141%_))
                                                           (let ((_%e188124188144%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl188123188141%_))))
                     (let ((_%hd188125188147%_
                            (let ()
                              (declare (not safe))
                              (##car _%e188124188144%_)))
                           (_%tl188126188149%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e188124188144%_))))
                       ((lambda (_%g188119188152%_ _%g188120188153%_)
                          (let* ((_%self188170%_
                                  (list-ref
                                   _%g188120188153%_
                                   _%self-index188113%_))
                                 (_%receiver188175%_
                                  (let ((_%$e188172%_
                                         (gxc#apply-extract-receiver
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   '%#begin))
                                                _%g188119188152%_))))
                                    (if _%$e188172%_
                                        _%$e188172%_
                                        _%self188170%_))))
                            (for-each
                             (lambda (_%g188177188179%_)
                               (gxc#apply-collect-object-refs__%
                                '#f
                                _%receiver188175%_
                                _%method-calls186115%_
                                _%slot-refs186116%_
                                _%g188177188179%_))
                             _%g188119188152%_)
                            (if (_%no-specializer?186119%_)
                                _%stx186023%_
                                (let* ((_%specializer-id188188%_
                                        (let* ((_%id188182%_
                                                (let ((__tmp190280
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g186034186096%_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp190280
                                                   '"::specialize")))
                                               (_%specializer-id188185%_
                                                (let ((__tmp190281
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _%stx186023%_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _%id188182%_
                                                   __tmp190281))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _%specializer-id188185%_))
                                          _%specializer-id188185%_))
                                       (_%$klass188190%_
                                        (let ((__tmp190282
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__klass))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp190282)))
                                       (_%$method-table188192%_
                                        (let ((__tmp190283
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__method-table))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp190283)))
                                       (_%methods188194%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys
                                           _%method-calls186115%_)))
                                       (_%$methods188198%_
                                        (let ((__tmp190284
                                               (lambda (_%id188196%_)
                                                 (let ((__tmp190285
                                                        (gensym _%id188196%_)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    '"__"
                                                    __tmp190285)))))
                                          (declare (not safe))
                                          (##map __tmp190284
                                                 _%methods188194%_)))
                                       (_%_188207%_
                                        (let ((__tmp190286
                                               (lambda (_%g188199188202%_
                                                        _%g188200188204%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%method-calls186115%_
                                                    _%g188199188202%_
                                                    _%g188200188204%_)))))
                                          (declare (not safe))
                                          (##for-each
                                           __tmp190286
                                           _%methods188194%_
                                           _%$methods188198%_)))
                                       (_%methods-bind188217%_
                                        (let ((__tmp190287
                                               (lambda (_%g188209188212%_
                                                        _%g188210188214%_)
                                                 (_%generate-method-bind186025%_
                                                  _%$klass188190%_
                                                  _%$method-table188192%_
                                                  _%g188209188212%_
                                                  _%g188210188214%_))))
                                          (declare (not safe))
                                          (##map __tmp190287
                                                 _%methods188194%_
                                                 _%$methods188198%_)))
                                       (_%slots188219%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys _%slot-refs186116%_)))
                                       (_%$slots188223%_
                                        (let ((__tmp190288
                                               (lambda (_%id188221%_)
                                                 (let ((__tmp190289
                                                        (gensym _%id188221%_)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    '"__"
                                                    __tmp190289)))))
                                          (declare (not safe))
                                          (##map __tmp190288 _%slots188219%_)))
                                       (_%_188232%_
                                        (let ((__tmp190290
                                               (lambda (_%g188224188227%_
                                                        _%g188225188229%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%slot-refs186116%_
                                                    _%g188224188227%_
                                                    _%g188225188229%_)))))
                                          (declare (not safe))
                                          (##for-each
                                           __tmp190290
                                           _%slots188219%_
                                           _%$slots188223%_)))
                                       (_%slots-bind188241%_
                                        (let ((__tmp190291
                                               (lambda (_%g188233188236%_
                                                        _%g188234188238%_)
                                                 (_%generate-slot-bind186026%_
                                                  _%$klass188190%_
                                                  _%g188233188236%_
                                                  _%g188234188238%_))))
                                          (declare (not safe))
                                          (##map __tmp190291
                                                 _%slots188219%_
                                                 _%$slots188223%_)))
                                       (_%specializer-impl188249%_
                                        (let* ((_%specializer-body188247%_
                                                (map (lambda (_%g188242188244%_)
                                                       (gxc#apply-subst-object-refs__%
                                                        '#f
                                                        _%receiver188175%_
                                                        _%$klass188190%_
                                                        _%method-calls186115%_
                                                        _%slot-refs186116%_
                                                        _%g188242188244%_))
                                                     _%g188119188152%_))
                                               (__tmp190292
                                                (cons '%#let-values
                                                      (cons (cons (cons (cons _%g187647187815%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (cons '%#let-values
                                            (cons (cons (cons (cons _%g187646187814%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (let ((__tmp190293
                                   (cons '%#lambda
                                         (cons _%g188120188153%_
                                               _%specializer-body188247%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp190293
                               _%g187645187813%_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%g187644187812%_
                                                        '())))
                                      '()))
                          '())
                    (cons _%g187643187811%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp190292
                                           _%stx186023%_)))
                                       (_%specializer-impl188251%_
                                        (_%generate-specializer-impl186027%_
                                         _%$klass188190%_
                                         _%$method-table188192%_
                                         _%methods-bind188217%_
                                         _%slots-bind188241%_
                                         _%specializer-impl188249%_)))
                                  (let ((__tmp190295
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g186034186096%_)))
                                        (__tmp190294
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e
                                            _%specializer-id188188%_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp190295
                                     '" => "
                                     __tmp190294))
                                  (_%generate-specializer-def186028%_
                                   _%g186034186096%_
                                   _%specializer-id188188%_
                                   _%specializer-impl188251%_)))))
                        _%tl188126188149%_
                        _%hd188125188147%_)))
                   (_%g188117188131%_ _%g188118188134%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g188117188131%_
                                                    _%g188118188134%_)))))
                                       (_%g188116188254%_ _%g187645187813%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr?
                                            _%g187645187813%_))
                                         (let* ((_%g188258188288%_
                                                 (lambda (_%g188259188285%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g188259188285%_))))
                                                (_%g188257188852%_
                                                 (lambda (_%g188259188291%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g188259188291%_))
                                                       (let ((_%e188263188293%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g188259188291%_))))
                 (let ((_%hd188264188296%_
                        (let ()
                          (declare (not safe))
                          (##car _%e188263188293%_)))
                       (_%tl188265188298%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e188263188293%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl188265188298%_))
                       (let ((_%e188266188301%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl188265188298%_))))
                         (let ((_%hd188267188304%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e188266188301%_)))
                               (_%tl188268188306%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e188266188301%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd188267188304%_))
                               (let ((_%e188269188309%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd188267188304%_))))
                                 (let ((_%hd188270188312%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e188269188309%_)))
                                       (_%tl188271188314%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e188269188309%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd188270188312%_))
                                       (let ((_%e188272188317%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd188270188312%_))))
                                         (let ((_%hd188273188320%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e188272188317%_)))
                                               (_%tl188274188322%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e188272188317%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd188273188320%_))
                                               (let ((_%e188275188325%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd188273188320%_))))
                                                 (let ((_%hd188276188328%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e188275188325%_)))
                                                       (_%tl188277188330%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e188275188325%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl188277188330%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl188274188322%_))
                                                           (let ((_%e188278188333%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl188274188322%_))))
                     (let ((_%hd188279188336%_
                            (let ()
                              (declare (not safe))
                              (##car _%e188278188333%_)))
                           (_%tl188280188338%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e188278188333%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl188280188338%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl188271188314%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl188268188306%_))
                                   (let ((_%e188281188341%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl188268188306%_))))
                                     (let ((_%hd188282188344%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e188281188341%_)))
                                           (_%tl188283188346%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e188281188341%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl188283188346%_))
                                           ((lambda (_%g188260188349%_
                                                     _%g188261188350%_
                                                     _%g188262188351%_)
                                              (let* ((_%g188375188389%_
                                                      (lambda (_%g188376188386%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g188376188386%_))))
                                                     (_%g188374188436%_
                                                      (lambda (_%g188376188392%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g188376188392%_))
                                                            (let ((_%e188379188394%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g188376188392%_))))
                      (let ((_%hd188380188397%_
                             (let ()
                               (declare (not safe))
                               (##car _%e188379188394%_)))
                            (_%tl188381188399%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e188379188394%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl188381188399%_))
                            (let ((_%e188382188402%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl188381188399%_))))
                              (let ((_%hd188383188405%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e188382188402%_)))
                                    (_%tl188384188407%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e188382188402%_))))
                                ((lambda (_%g188377188410%_ _%g188378188411%_)
                                   (let* ((_%self188424%_
                                           (list-ref
                                            _%g188378188411%_
                                            _%self-index188113%_))
                                          (_%receiver188429%_
                                           (let ((_%$e188426%_
                                                  (gxc#apply-extract-receiver
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '%#begin))
                                                         _%g188377188410%_))))
                                             (if _%$e188426%_
                                                 _%$e188426%_
                                                 _%self188424%_))))
                                     (for-each
                                      (lambda (_%g188431188433%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%receiver188429%_
                                         _%method-calls186115%_
                                         _%slot-refs186116%_
                                         _%g188431188433%_))
                                      _%g188377188410%_)))
                                 _%tl188384188407%_
                                 _%hd188383188405%_)))
                            (_%g188375188389%_ _%g188376188392%_))))
                    (_%g188375188389%_ _%g188376188392%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g188374188436%_
                                                 _%g188261188350%_))
                                              (let* ((_%g188439188458%_
                                                      (lambda (_%g188440188455%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g188440188455%_))))
                                                     (_%g188438188567%_
                                                      (lambda (_%g188440188461%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g188440188461%_))
                                                            (let ((_%e188442188463%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g188440188461%_))))
                      (let ((_%hd188443188466%_
                             (let ()
                               (declare (not safe))
                               (##car _%e188442188463%_)))
                            (_%tl188444188468%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e188442188463%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _%tl188444188468%_))
                            (let ((_g190296_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl188444188468%_
                                      '0))))
                              (begin
                                (let ((_g190297_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g190296_)
                                             (##values-length _g190296_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g190297_ 2)))
                                      (error "Context expects 2 values"
                                             _g190297_)))
                                (let ((_%target188445188471%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g190296_ 0)))
                                      (_%tl188447188473%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g190296_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl188447188473%_))
                                      (letrec ((_%loop188448188476%_
                                                (lambda (_%hd188446188479%_
                                                         _%clause188452188481%_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd188446188479%_))
                                                      (let ((_%e188449188483%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd188446188479%_))))
                (let ((_%lp-hd188450188486%_
                       (let () (declare (not safe)) (##car _%e188449188483%_)))
                      (_%lp-tl188451188488%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e188449188483%_))))
                  (_%loop188448188476%_
                   _%lp-tl188451188488%_
                   (cons _%lp-hd188450188486%_ _%clause188452188481%_))))
              (let ((_%clause188453188491%_ (reverse _%clause188452188481%_)))
                ((lambda (_%g188441188493%_)
                   (for-each
                    (lambda (_%clause188506%_)
                      (let* ((_%g188508188519%_
                              (lambda (_%g188509188516%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g188509188516%_))))
                             (_%g188507188557%_
                              (lambda (_%g188509188522%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g188509188522%_))
                                    (let ((_%e188512188524%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g188509188522%_))))
                                      (let ((_%hd188513188527%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e188512188524%_)))
                                            (_%tl188514188529%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e188512188524%_))))
                                        ((lambda (_%g188510188532%_
                                                  _%g188511188533%_)
                                           (let* ((_%self188545%_
                                                   (list-ref
                                                    _%g188511188533%_
                                                    _%self-index188113%_))
                                                  (_%receiver188550%_
                                                   (let ((_%$e188547%_
                                                          (gxc#apply-extract-receiver
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#begin))
                         _%g188510188532%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e188547%_
                                                         _%$e188547%_
                                                         _%self188545%_))))
                                             (for-each
                                              (lambda (_%g188552188554%_)
                                                (gxc#apply-collect-object-refs__%
                                                 '#f
                                                 _%receiver188550%_
                                                 _%method-calls186115%_
                                                 _%slot-refs186116%_
                                                 _%g188552188554%_))
                                              _%g188510188532%_)))
                                         _%tl188514188529%_
                                         _%hd188513188527%_)))
                                    (_%g188508188519%_ _%g188509188522%_)))))
                        (_%g188507188557%_ _%clause188506%_)))
                    (let ((__tmp190298
                           (lambda (_%g188559188562%_ _%g188560188564%_)
                             (cons _%g188559188562%_ _%g188560188564%_))))
                      (declare (not safe))
                      (__foldr1 __tmp190298 '() _%g188441188493%_))))
                 _%clause188453188491%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop188448188476%_
                                         _%target188445188471%_
                                         '()))
                                      (_%g188439188458%_ _%g188440188461%_)))))
                            (_%g188439188458%_ _%g188440188461%_))))
                    (_%g188439188458%_ _%g188440188461%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g188438188567%_
                                                 _%g188260188349%_))
                                              (if (_%no-specializer?186119%_)
                                                  _%stx186023%_
                                                  (let* ((_%specializer-id188576%_
                                                          (let* ((_%id188570%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp190299
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g186034186096%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp190299 '"::specialize")))
                         (_%specializer-id188573%_
                          (let ((__tmp190300
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx186023%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id188570%_
                             __tmp190300))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id188573%_))
                    _%specializer-id188573%_))
                 (_%$klass188578%_
                  (let ((__tmp190301
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp190301)))
                 (_%$method-table188580%_
                  (let ((__tmp190302
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp190302)))
                 (_%methods188582%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls186115%_)))
                 (_%$methods188586%_
                  (let ((__tmp190303
                         (lambda (_%id188584%_)
                           (let ((__tmp190304 (gensym _%id188584%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp190304)))))
                    (declare (not safe))
                    (##map __tmp190303 _%methods188582%_)))
                 (_%_188595%_
                  (let ((__tmp190305
                         (lambda (_%g188587188590%_ _%g188588188592%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%method-calls186115%_
                              _%g188587188590%_
                              _%g188588188592%_)))))
                    (declare (not safe))
                    (##for-each
                     __tmp190305
                     _%methods188582%_
                     _%$methods188586%_)))
                 (_%methods-bind188605%_
                  (let ((__tmp190306
                         (lambda (_%g188597188600%_ _%g188598188602%_)
                           (_%generate-method-bind186025%_
                            _%$klass188578%_
                            _%$method-table188580%_
                            _%g188597188600%_
                            _%g188598188602%_))))
                    (declare (not safe))
                    (##map __tmp190306 _%methods188582%_ _%$methods188586%_)))
                 (_%slots188607%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs186116%_)))
                 (_%$slots188611%_
                  (let ((__tmp190307
                         (lambda (_%id188609%_)
                           (let ((__tmp190308 (gensym _%id188609%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp190308)))))
                    (declare (not safe))
                    (##map __tmp190307 _%slots188607%_)))
                 (_%_188620%_
                  (let ((__tmp190309
                         (lambda (_%g188612188615%_ _%g188613188617%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%slot-refs186116%_
                              _%g188612188615%_
                              _%g188613188617%_)))))
                    (declare (not safe))
                    (##for-each __tmp190309 _%slots188607%_ _%$slots188611%_)))
                 (_%slots-bind188629%_
                  (let ((__tmp190310
                         (lambda (_%g188621188624%_ _%g188622188626%_)
                           (_%generate-slot-bind186026%_
                            _%$klass188578%_
                            _%g188621188624%_
                            _%g188622188626%_))))
                    (declare (not safe))
                    (##map __tmp190310 _%slots188607%_ _%$slots188611%_)))
                 (_%specializer-lambda-expr188707%_
                  (let* ((_%g188631188645%_
                          (lambda (_%g188632188642%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g188632188642%_))))
                         (_%g188630188704%_
                          (lambda (_%g188632188648%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g188632188648%_))
                                (let ((_%e188635188650%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g188632188648%_))))
                                  (let ((_%hd188636188653%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e188635188650%_)))
                                        (_%tl188637188655%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e188635188650%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl188637188655%_))
                                        (let ((_%e188638188658%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl188637188655%_))))
                                          (let ((_%hd188639188661%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e188638188658%_)))
                                                (_%tl188640188663%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e188638188658%_))))
                                            ((lambda (_%g188633188666%_
                                                      _%g188634188667%_)
                                               (let* ((_%self188690%_
                                                       (list-ref
                                                        _%g188634188667%_
                                                        _%self-index188113%_))
                                                      (_%receiver188695%_
                                                       (let ((_%$e188692%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%g188633188666%_))))
                 (if _%$e188692%_ _%$e188692%_ _%self188690%_)))
              (_%body188701%_
               (map (lambda (_%g188696188698%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver188695%_
                       _%$klass188578%_
                       _%method-calls186115%_
                       _%slot-refs186116%_
                       _%g188696188698%_))
                    _%g188633188666%_))
              (__tmp190311
               (cons '%#lambda (cons _%g188634188667%_ _%body188701%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp190311
                                                  _%g188261188350%_)))
                                             _%tl188640188663%_
                                             _%hd188639188661%_)))
                                        (_%g188631188645%_
                                         _%g188632188648%_))))
                                (_%g188631188645%_ _%g188632188648%_)))))
                    (_%g188630188704%_ _%g188261188350%_)))
                 (_%specializer-case-lambda-expr188845%_
                  (let* ((_%g188709188728%_
                          (lambda (_%g188710188725%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g188710188725%_))))
                         (_%g188708188842%_
                          (lambda (_%g188710188731%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g188710188731%_))
                                (let ((_%e188712188733%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g188710188731%_))))
                                  (let ((_%hd188713188736%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e188712188733%_)))
                                        (_%tl188714188738%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e188712188733%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl188714188738%_))
                                        (let ((_g190312_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl188714188738%_
                                                  '0))))
                                          (begin
                                            (let ((_g190313_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g190312_)
                                                         (##values-length
                                                          _g190312_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g190313_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g190313_)))
                                            (let ((_%target188715188741%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g190312_
                                                      0)))
                                                  (_%tl188717188743%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g190312_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl188717188743%_))
                                                  (letrec ((_%loop188718188746%_
                                                            (lambda (_%hd188716188749%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause188722188751%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd188716188749%_))
                          (let ((_%e188719188753%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd188716188749%_))))
                            (let ((_%lp-hd188720188756%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e188719188753%_)))
                                  (_%lp-tl188721188758%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e188719188753%_))))
                              (_%loop188718188746%_
                               _%lp-tl188721188758%_
                               (cons _%lp-hd188720188756%_
                                     _%clause188722188751%_))))
                          (let ((_%clause188723188761%_
                                 (reverse _%clause188722188751%_)))
                            ((lambda (_%g188711188763%_)
                               (let* ((_%clauses188840%_
                                       (map (lambda (_%clause188777%_)
                                              (let* ((_%g188779188790%_
                                                      (lambda (_%g188780188787%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g188780188787%_))))
                                                     (_%g188778188830%_
                                                      (lambda (_%g188780188793%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g188780188793%_))
                                                            (let ((_%e188783188795%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g188780188793%_))))
                      (let ((_%hd188784188798%_
                             (let ()
                               (declare (not safe))
                               (##car _%e188783188795%_)))
                            (_%tl188785188800%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e188783188795%_))))
                        ((lambda (_%g188781188803%_ _%g188782188804%_)
                           (let* ((_%self188816%_
                                   (list-ref
                                    _%g188782188804%_
                                    _%self-index188113%_))
                                  (_%receiver188821%_
                                   (let ((_%$e188818%_
                                          (gxc#apply-extract-receiver
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '%#begin))
                                                 _%g188781188803%_))))
                                     (if _%$e188818%_
                                         _%$e188818%_
                                         _%self188816%_)))
                                  (_%body188827%_
                                   (map (lambda (_%g188822188824%_)
                                          (gxc#apply-subst-object-refs__%
                                           '#f
                                           _%receiver188821%_
                                           _%$klass188578%_
                                           _%method-calls186115%_
                                           _%slot-refs186116%_
                                           _%g188822188824%_))
                                        _%g188781188803%_)))
                             (cons _%g188782188804%_ _%body188827%_)))
                         _%tl188785188800%_
                         _%hd188784188798%_)))
                    (_%g188779188790%_ _%g188780188793%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g188778188830%_
                                                 _%clause188777%_)))
                                            (let ((__tmp190314
                                                   (lambda (_%g188832188835%_
                                                            _%g188833188837%_)
                                                     (cons _%g188832188835%_
                                                           _%g188833188837%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp190314
                                               '()
                                               _%g188711188763%_))))
                                      (__tmp190315
                                       (cons '%#case-lambda
                                             _%clauses188840%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp190315
                                  _%g188260188349%_)))
                             _%clause188723188761%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop188718188746%_
                                                     _%target188715188741%_
                                                     '()))
                                                  (_%g188709188728%_
                                                   _%g188710188731%_)))))
                                        (_%g188709188728%_
                                         _%g188710188731%_))))
                                (_%g188709188728%_ _%g188710188731%_)))))
                    (_%g188708188842%_ _%g188260188349%_)))
                 (_%specializer-impl188847%_
                  (let ((__tmp190316
                         (cons '%#let-values
                               (cons (cons (cons (cons _%g187647187815%_ '())
                                                 (cons (cons '%#let-values
                                                             (cons (cons (cons (cons _%g187646187814%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             '())
                                       (cons (let ((__tmp190317
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%g188262188351%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons _%specializer-lambda-expr188707%_
                                          '()))
                              '())
                        (cons _%specializer-case-lambda-expr188845%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp190317
                                                _%stx186023%_))
                                             '()))
                                 '())
                           (cons _%g187644187812%_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons _%g187643187811%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp190316 _%stx186023%_)))
                 (_%specializer-impl188849%_
                  (_%generate-specializer-impl186027%_
                   _%$klass188578%_
                   _%$method-table188580%_
                   _%methods-bind188605%_
                   _%slots-bind188629%_
                   _%specializer-impl188847%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp190319
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%g186034186096%_)))
                                                          (__tmp190318
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id188576%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp190319
                                                       '" => "
                                                       __tmp190318))
                                                    (_%generate-specializer-def186028%_
                                                     _%g186034186096%_
                                                     _%specializer-id188576%_
                                                     _%specializer-impl188849%_))))
                                            _%hd188282188344%_
                                            _%hd188279188336%_
                                            _%hd188276188328%_)
                                           (_%g188258188288%_
                                            _%g188259188291%_))))
                                   (_%g188258188288%_ _%g188259188291%_))
                               (_%g188258188288%_ _%g188259188291%_))
                           (_%g188258188288%_ _%g188259188291%_))))
                   (_%g188258188288%_ _%g188259188291%_))
               (_%g188258188288%_ _%g188259188291%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g188258188288%_
                                                _%g188259188291%_))))
                                       (_%g188258188288%_ _%g188259188291%_))))
                               (_%g188258188288%_ _%g188259188291%_))))
                       (_%g188258188288%_ _%g188259188291%_))))
               (_%g188258188288%_ _%g188259188291%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g188257188852%_
                                            _%g187645187813%_))
                                         _%stx186023%_))))
                             _%hd187911188034%_
                             _%kw-ref187909188054%_
                             _%hd187899188021%_
                             _%hd187890187997%_
                             _%hd187881187973%_)
                            (_%g187855187917%_ _%g187856187920%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop187904188039%_
                                                 _%target187901188026%_
                                                 '()))
                                              (_%g187855187917%_
                                               _%g187856187920%_))))
                                      (_%g187855187917%_ _%g187856187920%_)))))
                            (_%g187855187917%_ _%g187856187920%_))
                        (_%g187855187917%_ _%g187856187920%_))
                    (_%g187855187917%_ _%g187856187920%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g187855187917%_
                                                     _%g187856187920%_))
                                                (_%g187855187917%_
                                                 _%g187856187920%_))
                                            (_%g187855187917%_
                                             _%g187856187920%_))))
                                    (_%g187855187917%_ _%g187856187920%_))))
                            (_%g187855187917%_ _%g187856187920%_))
                        (_%g187855187917%_ _%g187856187920%_))))
                (_%g187855187917%_ _%g187856187920%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g187855187917%_
                                                     _%g187856187920%_))
                                                (_%g187855187917%_
                                                 _%g187856187920%_))))
                                        (_%g187855187917%_
                                         _%g187856187920%_))))
                                (_%g187855187917%_ _%g187856187920%_))
                            (_%g187855187917%_ _%g187856187920%_))))
                    (_%g187855187917%_ _%g187856187920%_))
                (_%g187855187917%_ _%g187856187920%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g187855187917%_
                                                     _%g187856187920%_))))
                                            (_%g187855187917%_
                                             _%g187856187920%_))))
                                    (_%g187855187917%_ _%g187856187920%_))
                                (_%g187855187917%_ _%g187856187920%_))
                            (_%g187855187917%_ _%g187856187920%_))))
                    (_%g187855187917%_ _%g187856187920%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g187855187917%_
                                                     _%g187856187920%_))))
                                            (_%g187855187917%_
                                             _%g187856187920%_))
                                        (_%g187855187917%_ _%g187856187920%_))
                                    (_%g187855187917%_ _%g187856187920%_))))
                            (_%g187855187917%_ _%g187856187920%_)))))
                (_%g187854188856%_ _%g187644187812%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd187688187806%_
                                                    _%hd187685187798%_
                                                    _%hd187682187790%_
                                                    _%hd187679187782%_
                                                    _%hd187661187734%_)
                                                   (_%g187641187694%_
                                                    _%g187642187697%_))))
                                           (_%g187641187694%_
                                            _%g187642187697%_))
                                       (_%g187641187694%_ _%g187642187697%_))
                                   (_%g187641187694%_ _%g187642187697%_))
                               (_%g187641187694%_ _%g187642187697%_))))
                       (_%g187641187694%_ _%g187642187697%_))
                   (_%g187641187694%_ _%g187642187697%_))
               (_%g187641187694%_ _%g187642187697%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g187641187694%_
                                                _%g187642187697%_))
                                           (_%g187641187694%_
                                            _%g187642187697%_))))
                                   (_%g187641187694%_ _%g187642187697%_))))
                           (_%g187641187694%_ _%g187642187697%_))))
                   (_%g187641187694%_ _%g187642187697%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g187641187694%_
                                                    _%g187642187697%_))
                                               (_%g187641187694%_
                                                _%g187642187697%_))
                                           (_%g187641187694%_
                                            _%g187642187697%_))))
                                   (_%g187641187694%_ _%g187642187697%_))))
                           (_%g187641187694%_ _%g187642187697%_))
                       (_%g187641187694%_ _%g187642187697%_))))
               (_%g187641187694%_ _%g187642187697%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g187641187694%_
                                                _%g187642187697%_))))
                                       (_%g187641187694%_ _%g187642187697%_))))
                               (_%g187641187694%_ _%g187642187697%_))
                           (_%g187641187694%_ _%g187642187697%_))
                       (_%g187641187694%_ _%g187642187697%_))))
               (_%g187641187694%_ _%g187642187697%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g187640188859%_
                                            _%g186033186095%_))
                                         _%stx186023%_))))))))
                  (_%__kont189086189087%_ (lambda () _%stx186023%_)))
              (let ((_%__match189115189116%_
                     (lambda (_%e186035186063%_
                              _%hd186036186066%_
                              _%tl186037186068%_
                              _%e186038186071%_
                              _%hd186039186074%_
                              _%tl186040186076%_
                              _%e186041186079%_
                              _%hd186042186082%_
                              _%tl186043186084%_
                              _%e186044186087%_
                              _%hd186045186090%_
                              _%tl186046186092%_)
                       (let ((_%g186033186095%_ _%hd186045186090%_)
                             (_%g186034186096%_ _%hd186042186082%_))
                         (if (let ((__tmp190320
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g186034186096%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp190320))
                             (_%__kont189084189085%_
                              _%g186033186095%_
                              _%g186034186096%_)
                             (_%__kont189086189087%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx189082189083%_))
                    (let ((_%e186035186063%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx189082189083%_))))
                      (let ((_%tl186037186068%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e186035186063%_)))
                            (_%hd186036186066%_
                             (let ()
                               (declare (not safe))
                               (##car _%e186035186063%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl186037186068%_))
                            (let ((_%e186038186071%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl186037186068%_))))
                              (let ((_%tl186040186076%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e186038186071%_)))
                                    (_%hd186039186074%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e186038186071%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd186039186074%_))
                                    (let ((_%e186041186079%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd186039186074%_))))
                                      (let ((_%tl186043186084%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e186041186079%_)))
                                            (_%hd186042186082%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e186041186079%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl186043186084%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl186040186076%_))
                                                (let ((_%e186044186087%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl186040186076%_))))
                                                  (let ((_%tl186046186092%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e186044186087%_)))
                                                        (_%hd186045186090%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e186044186087%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl186046186092%_))
                                                        (_%__match189115189116%_
                                                         _%e186035186063%_
                                                         _%hd186036186066%_
                                                         _%tl186037186068%_
                                                         _%e186038186071%_
                                                         _%hd186039186074%_
                                                         _%tl186040186076%_
                                                         _%e186041186079%_
                                                         _%hd186042186082%_
                                                         _%tl186043186084%_
                                                         _%e186044186087%_
                                                         _%hd186045186090%_
                                                         _%tl186046186092%_)
                                                        (_%__kont189086189087%_))))
                                                (_%__kont189086189087%_))
                                            (_%__kont189086189087%_))))
                                    (_%__kont189086189087%_))))
                            (_%__kont189086189087%_))))
                    (_%__kont189086189087%_))))))))
    (define gxc#extract-receiver-begin-annotation%
      (lambda (_%self185875%_ _%stx185876%_)
        (let* ((_%__stx189118189119%_ _%stx185876%_)
               (_%g185879185912%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx189118189119%_)))))
          (let ((_%__kont189120189121%_
                 (lambda (_%g185881186002%_) _%g185881186002%_))
                (_%__kont189122189123%_
                 (lambda (_%g185897185941%_ _%g185898185942%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self185875%_ _%g185897185941%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx189118189119%_))
                (let ((_%e185882185962%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx189118189119%_))))
                  (let ((_%tl185884185967%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e185882185962%_)))
                        (_%hd185883185965%_
                         (let ()
                           (declare (not safe))
                           (##car _%e185882185962%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl185884185967%_))
                        (let ((_%e185885185970%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl185884185967%_))))
                          (let ((_%tl185887185975%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e185885185970%_)))
                                (_%hd185886185973%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e185885185970%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd185886185973%_))
                                (let ((_%e185888185978%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd185886185973%_))))
                                  (let ((_%tl185890185983%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e185888185978%_)))
                                        (_%hd185889185981%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e185888185978%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd185889185981%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@receiver
                                               _%hd185889185981%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl185890185983%_))
                                                (let ((_%e185891185986%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl185890185983%_))))
                                                  (let ((_%tl185893185991%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e185891185986%_)))
                                                        (_%hd185892185989%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e185891185986%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl185893185991%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl185887185975%_))
                                                            (let ((_%e185894185994%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl185887185975%_))))
                      (let ((_%tl185896185999%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e185894185994%_)))
                            (_%hd185895185997%_
                             (let ()
                               (declare (not safe))
                               (##car _%e185894185994%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl185896185999%_))
                            (_%__kont189120189121%_ _%hd185892185989%_)
                            (let ()
                              (declare (not safe))
                              (_%g185879185912%_)))))
                    (let () (declare (not safe)) (_%g185879185912%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl185887185975%_))
                    (let ((_%e185905185933%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl185887185975%_))))
                      (let ((_%tl185907185938%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e185905185933%_)))
                            (_%hd185906185936%_
                             (let ()
                               (declare (not safe))
                               (##car _%e185905185933%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl185907185938%_))
                            (_%__kont189122189123%_
                             _%hd185906185936%_
                             _%hd185886185973%_)
                            (let ()
                              (declare (not safe))
                              (_%g185879185912%_)))))
                    (let () (declare (not safe)) (_%g185879185912%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl185887185975%_))
                                                    (let ((_%e185905185933%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl185887185975%_))))
                                                      (let ((_%tl185907185938%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e185905185933%_)))
                    (_%hd185906185936%_
                     (let () (declare (not safe)) (##car _%e185905185933%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl185907185938%_))
                    (_%__kont189122189123%_
                     _%hd185906185936%_
                     _%hd185886185973%_)
                    (let () (declare (not safe)) (_%g185879185912%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g185879185912%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl185887185975%_))
                                                (let ((_%e185905185933%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl185887185975%_))))
                                                  (let ((_%tl185907185938%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e185905185933%_)))
                                                        (_%hd185906185936%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e185905185933%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl185907185938%_))
                                                        (_%__kont189122189123%_
                                                         _%hd185906185936%_
                                                         _%hd185886185973%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g185879185912%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g185879185912%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl185887185975%_))
                                            (let ((_%e185905185933%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl185887185975%_))))
                                              (let ((_%tl185907185938%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e185905185933%_)))
                                                    (_%hd185906185936%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e185905185933%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl185907185938%_))
                                                    (_%__kont189122189123%_
                                                     _%hd185906185936%_
                                                     _%hd185886185973%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g185879185912%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g185879185912%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl185887185975%_))
                                    (let ((_%e185905185933%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl185887185975%_))))
                                      (let ((_%tl185907185938%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e185905185933%_)))
                                            (_%hd185906185936%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e185905185933%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl185907185938%_))
                                            (_%__kont189122189123%_
                                             _%hd185906185936%_
                                             _%hd185886185973%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g185879185912%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g185879185912%_))))))
                        (let () (declare (not safe)) (_%g185879185912%_)))))
                (let () (declare (not safe)) (_%g185879185912%_)))))))
    (define gxc#extract-receiver-if%
      (lambda (_%self185791%_ _%stx185792%_)
        (let* ((_%g185794185815%_
                (lambda (_%g185795185812%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g185795185812%_))))
               (_%g185793185872%_
                (lambda (_%g185795185818%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g185795185818%_))
                      (let ((_%e185799185820%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g185795185818%_))))
                        (let ((_%hd185800185823%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e185799185820%_)))
                              (_%tl185801185825%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e185799185820%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl185801185825%_))
                              (let ((_%e185802185828%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl185801185825%_))))
                                (let ((_%hd185803185831%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e185802185828%_)))
                                      (_%tl185804185833%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e185802185828%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl185804185833%_))
                                      (let ((_%e185805185836%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl185804185833%_))))
                                        (let ((_%hd185806185839%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e185805185836%_)))
                                              (_%tl185807185841%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e185805185836%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl185807185841%_))
                                              (let ((_%e185808185844%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl185807185841%_))))
                                                (let ((_%hd185809185847%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e185808185844%_)))
                                                      (_%tl185810185849%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e185808185844%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl185810185849%_))
                                                      ((lambda (_%g185796185852%_
                                                                _%g185797185853%_
                                                                _%g185798185854%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self185791%_
                                                            _%g185797185853%_)))
                                                       _%hd185809185847%_
                                                       _%hd185806185839%_
                                                       _%hd185803185831%_)
                                                      (_%g185794185815%_
                                                       _%g185795185818%_))))
                                              (_%g185794185815%_
                                               _%g185795185818%_))))
                                      (_%g185794185815%_ _%g185795185818%_))))
                              (_%g185794185815%_ _%g185795185818%_))))
                      (_%g185794185815%_ _%g185795185818%_)))))
          (_%g185793185872%_ _%stx185792%_))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self184756%_ _%stx184757%_)
        (let* ((_%__stx189184189185%_ _%stx184757%_)
               (_%g184765184987%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx189184189185%_)))))
          (let ((_%__kont189186189187%_
                 (lambda (_%g184767185740%_
                          _%g184768185741%_
                          _%g184769185742%_
                          _%g184770185743%_)
                   (let ((__tmp190322
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self184756%_ 'methods)))
                         (__tmp190321
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g184768185741%_))))
                     (declare (not safe))
                     (hash-put! __tmp190322 __tmp190321 '#t))
                   (for-each
                    (lambda (_%g185776185778%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self184756%_ _%g185776185778%_)))
                    (let ((__tmp190323
                           (lambda (_%g185780185783%_ _%g185781185785%_)
                             (cons _%g185780185783%_ _%g185781185785%_))))
                      (declare (not safe))
                      (__foldr1 __tmp190323 '() _%g184767185740%_)))))
                (_%__kont189190189191%_
                 (lambda (_%g184810185577%_
                          _%g184811185578%_
                          _%g184812185579%_
                          _%g184813185580%_
                          _%g184814185581%_)
                   (let ((__tmp190325
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self184756%_ 'methods)))
                         (__tmp190324
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g184811185578%_))))
                     (declare (not safe))
                     (hash-put! __tmp190325 __tmp190324 '#t))
                   (for-each
                    (lambda (_%g185621185623%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self184756%_ _%g185621185623%_)))
                    (let ((__tmp190326
                           (lambda (_%g185625185628%_ _%g185626185630%_)
                             (cons _%g185625185628%_ _%g185626185630%_))))
                      (declare (not safe))
                      (__foldr1 __tmp190326 '() _%g184810185577%_)))))
                (_%__kont189194189195%_
                 (lambda (_%g184863185412%_
                          _%g184864185413%_
                          _%g184865185414%_)
                   (let ((__tmp190328
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self184756%_ 'slots)))
                         (__tmp190327
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g184863185412%_))))
                     (declare (not safe))
                     (hash-put! __tmp190328 __tmp190327 '#t))))
                (_%__kont189196189197%_
                 (lambda (_%g184896185289%_
                          _%g184897185290%_
                          _%g184898185291%_
                          _%g184899185292%_)
                   (let ((__tmp190330
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self184756%_ 'slots)))
                         (__tmp190329
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g184897185290%_))))
                     (declare (not safe))
                     (hash-put! __tmp190330 __tmp190329 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self184756%_ _%g184896185289%_))))
                (_%__kont189198189199%_
                 (lambda (_%g184933185163%_ _%g184934185164%_)
                   (let* ((_%accessor185186%_
                           (let ((__tmp190331
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%g184934185164%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp190331)))
                          (_%klass185188%_
                           (let ((__tmp190332
                                  (##structure-ref
                                   _%accessor185186%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx184757%_
                              __tmp190332)))
                          (_%slot185190%_
                           (##structure-ref
                            _%accessor185186%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (if (##structure-ref
                              _%accessor185186%_
                              '4
                              gxc#!accessor::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass185188%_
                                    _%slot185190%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass185188%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp190334
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self184756%_ 'slots)))
                               (__tmp190333
                                (##structure-ref
                                 _%accessor185186%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp190334 __tmp190333 '#t))))))
                (_%__kont189200189201%_
                 (lambda (_%g184956185063%_
                          _%g184957185064%_
                          _%g184958185065%_)
                   (let* ((_%mutator185092%_
                           (let ((__tmp190335
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%g184958185065%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp190335)))
                          (_%klass185094%_
                           (let ((__tmp190336
                                  (##structure-ref
                                   _%mutator185092%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx184757%_
                              __tmp190336)))
                          (_%slot185096%_
                           (##structure-ref
                            _%mutator185092%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (if (##structure-ref
                              _%mutator185092%_
                              '4
                              gxc#!mutator::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass185094%_
                                    _%slot185096%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass185094%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp190337
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self184756%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp190337 _%slot185096%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self184756%_ _%g184956185063%_)))))
                (_%__kont189202189203%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self184756%_ _%stx184757%_)))))
            (let* ((_%__match189683189684%_
                    (lambda (_%e184959184999%_
                             _%hd184960185002%_
                             _%tl184961185004%_
                             _%e184962185007%_
                             _%hd184963185010%_
                             _%tl184964185012%_
                             _%e184965185015%_
                             _%hd184966185018%_
                             _%tl184967185020%_
                             _%e184968185023%_
                             _%hd184969185026%_
                             _%tl184970185028%_
                             _%e184971185031%_
                             _%hd184972185034%_
                             _%tl184973185036%_
                             _%e184974185039%_
                             _%hd184975185042%_
                             _%tl184976185044%_
                             _%e184977185047%_
                             _%hd184978185050%_
                             _%tl184979185052%_
                             _%e184980185055%_
                             _%hd184981185058%_
                             _%tl184982185060%_)
                      (let ((_%g184956185063%_ _%hd184981185058%_)
                            (_%g184957185064%_ _%hd184978185050%_)
                            (_%g184958185065%_ _%hd184969185026%_))
                        (if (and (let ((__tmp190338
                                        (let ((__tmp190339
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%g184958185065%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp190339))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp190338
                                    'gxc#!mutator::t))
                                 (let ((__tmp190340
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self184756%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g184957185064%_
                                    __tmp190340)))
                            (_%__kont189200189201%_
                             _%g184956185063%_
                             _%g184957185064%_
                             _%g184958185065%_)
                            (_%__kont189202189203%_)))))
                   (_%__match189681189682%_
                    (lambda (_%e184959184999%_
                             _%hd184960185002%_
                             _%tl184961185004%_
                             _%e184962185007%_
                             _%hd184963185010%_
                             _%tl184964185012%_
                             _%e184965185015%_
                             _%hd184966185018%_
                             _%tl184967185020%_
                             _%e184968185023%_
                             _%hd184969185026%_
                             _%tl184970185028%_
                             _%e184971185031%_
                             _%hd184972185034%_
                             _%tl184973185036%_
                             _%e184974185039%_
                             _%hd184975185042%_
                             _%tl184976185044%_
                             _%e184977185047%_
                             _%hd184978185050%_
                             _%tl184979185052%_
                             _%e184980185055%_
                             _%hd184981185058%_
                             _%tl184982185060%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl184982185060%_))
                          (_%__match189683189684%_
                           _%e184959184999%_
                           _%hd184960185002%_
                           _%tl184961185004%_
                           _%e184962185007%_
                           _%hd184963185010%_
                           _%tl184964185012%_
                           _%e184965185015%_
                           _%hd184966185018%_
                           _%tl184967185020%_
                           _%e184968185023%_
                           _%hd184969185026%_
                           _%tl184970185028%_
                           _%e184971185031%_
                           _%hd184972185034%_
                           _%tl184973185036%_
                           _%e184974185039%_
                           _%hd184975185042%_
                           _%tl184976185044%_
                           _%e184977185047%_
                           _%hd184978185050%_
                           _%tl184979185052%_
                           _%e184980185055%_
                           _%hd184981185058%_
                           _%tl184982185060%_)
                          (_%__kont189202189203%_))))
                   (_%__match189675189676%_
                    (lambda (_%e184959184999%_
                             _%hd184960185002%_
                             _%tl184961185004%_
                             _%e184962185007%_
                             _%hd184963185010%_
                             _%tl184964185012%_
                             _%e184965185015%_
                             _%hd184966185018%_
                             _%tl184967185020%_
                             _%e184968185023%_
                             _%hd184969185026%_
                             _%tl184970185028%_
                             _%e184971185031%_
                             _%hd184972185034%_
                             _%tl184973185036%_
                             _%e184974185039%_
                             _%hd184975185042%_
                             _%tl184976185044%_
                             _%e184977185047%_
                             _%hd184978185050%_
                             _%tl184979185052%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl184973185036%_))
                          (let ((_%e184980185055%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl184973185036%_))))
                            (let ((_%tl184982185060%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e184980185055%_)))
                                  (_%hd184981185058%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e184980185055%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl184982185060%_))
                                  (_%__match189683189684%_
                                   _%e184959184999%_
                                   _%hd184960185002%_
                                   _%tl184961185004%_
                                   _%e184962185007%_
                                   _%hd184963185010%_
                                   _%tl184964185012%_
                                   _%e184965185015%_
                                   _%hd184966185018%_
                                   _%tl184967185020%_
                                   _%e184968185023%_
                                   _%hd184969185026%_
                                   _%tl184970185028%_
                                   _%e184971185031%_
                                   _%hd184972185034%_
                                   _%tl184973185036%_
                                   _%e184974185039%_
                                   _%hd184975185042%_
                                   _%tl184976185044%_
                                   _%e184977185047%_
                                   _%hd184978185050%_
                                   _%tl184979185052%_
                                   _%e184980185055%_
                                   _%hd184981185058%_
                                   _%tl184982185060%_)
                                  (_%__kont189202189203%_))))
                          (_%__kont189202189203%_))))
                   (_%__match189621189622%_
                    (lambda (_%e184935185107%_
                             _%hd184936185110%_
                             _%tl184937185112%_
                             _%e184938185115%_
                             _%hd184939185118%_
                             _%tl184940185120%_
                             _%e184941185123%_
                             _%hd184942185126%_
                             _%tl184943185128%_
                             _%e184944185131%_
                             _%hd184945185134%_
                             _%tl184946185136%_
                             _%e184947185139%_
                             _%hd184948185142%_
                             _%tl184949185144%_
                             _%e184950185147%_
                             _%hd184951185150%_
                             _%tl184952185152%_
                             _%e184953185155%_
                             _%hd184954185158%_
                             _%tl184955185160%_)
                      (let ((_%g184933185163%_ _%hd184954185158%_)
                            (_%g184934185164%_ _%hd184945185134%_))
                        (if (and (let ((__tmp190341
                                        (let ((__tmp190342
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%g184934185164%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp190342))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp190341
                                    'gxc#!accessor::t))
                                 (let ((__tmp190343
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self184756%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g184933185163%_
                                    __tmp190343)))
                            (_%__kont189198189199%_
                             _%g184933185163%_
                             _%g184934185164%_)
                            (_%__kont189202189203%_)))))
                   (_%__match189619189620%_
                    (lambda (_%e184935185107%_
                             _%hd184936185110%_
                             _%tl184937185112%_
                             _%e184938185115%_
                             _%hd184939185118%_
                             _%tl184940185120%_
                             _%e184941185123%_
                             _%hd184942185126%_
                             _%tl184943185128%_
                             _%e184944185131%_
                             _%hd184945185134%_
                             _%tl184946185136%_
                             _%e184947185139%_
                             _%hd184948185142%_
                             _%tl184949185144%_
                             _%e184950185147%_
                             _%hd184951185150%_
                             _%tl184952185152%_
                             _%e184953185155%_
                             _%hd184954185158%_
                             _%tl184955185160%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl184949185144%_))
                          (_%__match189621189622%_
                           _%e184935185107%_
                           _%hd184936185110%_
                           _%tl184937185112%_
                           _%e184938185115%_
                           _%hd184939185118%_
                           _%tl184940185120%_
                           _%e184941185123%_
                           _%hd184942185126%_
                           _%tl184943185128%_
                           _%e184944185131%_
                           _%hd184945185134%_
                           _%tl184946185136%_
                           _%e184947185139%_
                           _%hd184948185142%_
                           _%tl184949185144%_
                           _%e184950185147%_
                           _%hd184951185150%_
                           _%tl184952185152%_
                           _%e184953185155%_
                           _%hd184954185158%_
                           _%tl184955185160%_)
                          (_%__match189675189676%_
                           _%e184935185107%_
                           _%hd184936185110%_
                           _%tl184937185112%_
                           _%e184938185115%_
                           _%hd184939185118%_
                           _%tl184940185120%_
                           _%e184941185123%_
                           _%hd184942185126%_
                           _%tl184943185128%_
                           _%e184944185131%_
                           _%hd184945185134%_
                           _%tl184946185136%_
                           _%e184947185139%_
                           _%hd184948185142%_
                           _%tl184949185144%_
                           _%e184950185147%_
                           _%hd184951185150%_
                           _%tl184952185152%_
                           _%e184953185155%_
                           _%hd184954185158%_
                           _%tl184955185160%_))))
                   (_%__match189565189566%_
                    (lambda (_%e184900185201%_
                             _%hd184901185204%_
                             _%tl184902185206%_
                             _%e184903185209%_
                             _%hd184904185212%_
                             _%tl184905185214%_
                             _%e184906185217%_
                             _%hd184907185220%_
                             _%tl184908185222%_
                             _%e184909185225%_
                             _%hd184910185228%_
                             _%tl184911185230%_
                             _%e184912185233%_
                             _%hd184913185236%_
                             _%tl184914185238%_
                             _%e184915185241%_
                             _%hd184916185244%_
                             _%tl184917185246%_
                             _%e184918185249%_
                             _%hd184919185252%_
                             _%tl184920185254%_
                             _%e184921185257%_
                             _%hd184922185260%_
                             _%tl184923185262%_
                             _%e184924185265%_
                             _%hd184925185268%_
                             _%tl184926185270%_
                             _%e184927185273%_
                             _%hd184928185276%_
                             _%tl184929185278%_
                             _%e184930185281%_
                             _%hd184931185284%_
                             _%tl184932185286%_)
                      (let ((_%g184896185289%_ _%hd184931185284%_)
                            (_%g184897185290%_ _%hd184928185276%_)
                            (_%g184898185291%_ _%hd184919185252%_)
                            (_%g184899185292%_ _%hd184910185228%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g184899185292%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g184899185292%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp190344
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self184756%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g184898185291%_
                                    __tmp190344)))
                            (_%__kont189196189197%_
                             _%g184896185289%_
                             _%g184897185290%_
                             _%g184898185291%_
                             _%g184899185292%_)
                            (_%__kont189202189203%_)))))
                   (_%__match189557189558%_
                    (lambda (_%e184900185201%_
                             _%hd184901185204%_
                             _%tl184902185206%_
                             _%e184903185209%_
                             _%hd184904185212%_
                             _%tl184905185214%_
                             _%e184906185217%_
                             _%hd184907185220%_
                             _%tl184908185222%_
                             _%e184909185225%_
                             _%hd184910185228%_
                             _%tl184911185230%_
                             _%e184912185233%_
                             _%hd184913185236%_
                             _%tl184914185238%_
                             _%e184915185241%_
                             _%hd184916185244%_
                             _%tl184917185246%_
                             _%e184918185249%_
                             _%hd184919185252%_
                             _%tl184920185254%_
                             _%e184921185257%_
                             _%hd184922185260%_
                             _%tl184923185262%_
                             _%e184924185265%_
                             _%hd184925185268%_
                             _%tl184926185270%_
                             _%e184927185273%_
                             _%hd184928185276%_
                             _%tl184929185278%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl184923185262%_))
                          (let ((_%e184930185281%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl184923185262%_))))
                            (let ((_%tl184932185286%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e184930185281%_)))
                                  (_%hd184931185284%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e184930185281%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl184932185286%_))
                                  (_%__match189565189566%_
                                   _%e184900185201%_
                                   _%hd184901185204%_
                                   _%tl184902185206%_
                                   _%e184903185209%_
                                   _%hd184904185212%_
                                   _%tl184905185214%_
                                   _%e184906185217%_
                                   _%hd184907185220%_
                                   _%tl184908185222%_
                                   _%e184909185225%_
                                   _%hd184910185228%_
                                   _%tl184911185230%_
                                   _%e184912185233%_
                                   _%hd184913185236%_
                                   _%tl184914185238%_
                                   _%e184915185241%_
                                   _%hd184916185244%_
                                   _%tl184917185246%_
                                   _%e184918185249%_
                                   _%hd184919185252%_
                                   _%tl184920185254%_
                                   _%e184921185257%_
                                   _%hd184922185260%_
                                   _%tl184923185262%_
                                   _%e184924185265%_
                                   _%hd184925185268%_
                                   _%tl184926185270%_
                                   _%e184927185273%_
                                   _%hd184928185276%_
                                   _%tl184929185278%_
                                   _%e184930185281%_
                                   _%hd184931185284%_
                                   _%tl184932185286%_)
                                  (_%__kont189202189203%_))))
                          (_%__match189681189682%_
                           _%e184900185201%_
                           _%hd184901185204%_
                           _%tl184902185206%_
                           _%e184903185209%_
                           _%hd184904185212%_
                           _%tl184905185214%_
                           _%e184906185217%_
                           _%hd184907185220%_
                           _%tl184908185222%_
                           _%e184909185225%_
                           _%hd184910185228%_
                           _%tl184911185230%_
                           _%e184912185233%_
                           _%hd184913185236%_
                           _%tl184914185238%_
                           _%e184915185241%_
                           _%hd184916185244%_
                           _%tl184917185246%_
                           _%e184918185249%_
                           _%hd184919185252%_
                           _%tl184920185254%_
                           _%e184921185257%_
                           _%hd184922185260%_
                           _%tl184923185262%_))))
                   (_%__match189479189480%_
                    (lambda (_%e184866185332%_
                             _%hd184867185335%_
                             _%tl184868185337%_
                             _%e184869185340%_
                             _%hd184870185343%_
                             _%tl184871185345%_
                             _%e184872185348%_
                             _%hd184873185351%_
                             _%tl184874185353%_
                             _%e184875185356%_
                             _%hd184876185359%_
                             _%tl184877185361%_
                             _%e184878185364%_
                             _%hd184879185367%_
                             _%tl184880185369%_
                             _%e184881185372%_
                             _%hd184882185375%_
                             _%tl184883185377%_
                             _%e184884185380%_
                             _%hd184885185383%_
                             _%tl184886185385%_
                             _%e184887185388%_
                             _%hd184888185391%_
                             _%tl184889185393%_
                             _%e184890185396%_
                             _%hd184891185399%_
                             _%tl184892185401%_
                             _%e184893185404%_
                             _%hd184894185407%_
                             _%tl184895185409%_)
                      (let ((_%g184863185412%_ _%hd184894185407%_)
                            (_%g184864185413%_ _%hd184885185383%_)
                            (_%g184865185414%_ _%hd184876185359%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g184865185414%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g184865185414%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp190345
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self184756%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g184864185413%_
                                    __tmp190345)))
                            (_%__kont189194189195%_
                             _%g184863185412%_
                             _%g184864185413%_
                             _%g184865185414%_)
                            (_%__match189683189684%_
                             _%e184866185332%_
                             _%hd184867185335%_
                             _%tl184868185337%_
                             _%e184869185340%_
                             _%hd184870185343%_
                             _%tl184871185345%_
                             _%e184872185348%_
                             _%hd184873185351%_
                             _%tl184874185353%_
                             _%e184875185356%_
                             _%hd184876185359%_
                             _%tl184877185361%_
                             _%e184878185364%_
                             _%hd184879185367%_
                             _%tl184880185369%_
                             _%e184881185372%_
                             _%hd184882185375%_
                             _%tl184883185377%_
                             _%e184884185380%_
                             _%hd184885185383%_
                             _%tl184886185385%_
                             _%e184887185388%_
                             _%hd184888185391%_
                             _%tl184889185393%_)))))
                   (_%__match189477189478%_
                    (lambda (_%e184866185332%_
                             _%hd184867185335%_
                             _%tl184868185337%_
                             _%e184869185340%_
                             _%hd184870185343%_
                             _%tl184871185345%_
                             _%e184872185348%_
                             _%hd184873185351%_
                             _%tl184874185353%_
                             _%e184875185356%_
                             _%hd184876185359%_
                             _%tl184877185361%_
                             _%e184878185364%_
                             _%hd184879185367%_
                             _%tl184880185369%_
                             _%e184881185372%_
                             _%hd184882185375%_
                             _%tl184883185377%_
                             _%e184884185380%_
                             _%hd184885185383%_
                             _%tl184886185385%_
                             _%e184887185388%_
                             _%hd184888185391%_
                             _%tl184889185393%_
                             _%e184890185396%_
                             _%hd184891185399%_
                             _%tl184892185401%_
                             _%e184893185404%_
                             _%hd184894185407%_
                             _%tl184895185409%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl184889185393%_))
                          (_%__match189479189480%_
                           _%e184866185332%_
                           _%hd184867185335%_
                           _%tl184868185337%_
                           _%e184869185340%_
                           _%hd184870185343%_
                           _%tl184871185345%_
                           _%e184872185348%_
                           _%hd184873185351%_
                           _%tl184874185353%_
                           _%e184875185356%_
                           _%hd184876185359%_
                           _%tl184877185361%_
                           _%e184878185364%_
                           _%hd184879185367%_
                           _%tl184880185369%_
                           _%e184881185372%_
                           _%hd184882185375%_
                           _%tl184883185377%_
                           _%e184884185380%_
                           _%hd184885185383%_
                           _%tl184886185385%_
                           _%e184887185388%_
                           _%hd184888185391%_
                           _%tl184889185393%_
                           _%e184890185396%_
                           _%hd184891185399%_
                           _%tl184892185401%_
                           _%e184893185404%_
                           _%hd184894185407%_
                           _%tl184895185409%_)
                          (_%__match189557189558%_
                           _%e184866185332%_
                           _%hd184867185335%_
                           _%tl184868185337%_
                           _%e184869185340%_
                           _%hd184870185343%_
                           _%tl184871185345%_
                           _%e184872185348%_
                           _%hd184873185351%_
                           _%tl184874185353%_
                           _%e184875185356%_
                           _%hd184876185359%_
                           _%tl184877185361%_
                           _%e184878185364%_
                           _%hd184879185367%_
                           _%tl184880185369%_
                           _%e184881185372%_
                           _%hd184882185375%_
                           _%tl184883185377%_
                           _%e184884185380%_
                           _%hd184885185383%_
                           _%tl184886185385%_
                           _%e184887185388%_
                           _%hd184888185391%_
                           _%tl184889185393%_
                           _%e184890185396%_
                           _%hd184891185399%_
                           _%tl184892185401%_
                           _%e184893185404%_
                           _%hd184894185407%_
                           _%tl184895185409%_))))
                   (_%__match189467189468%_
                    (lambda (_%e184866185332%_
                             _%hd184867185335%_
                             _%tl184868185337%_
                             _%e184869185340%_
                             _%hd184870185343%_
                             _%tl184871185345%_
                             _%e184872185348%_
                             _%hd184873185351%_
                             _%tl184874185353%_
                             _%e184875185356%_
                             _%hd184876185359%_
                             _%tl184877185361%_
                             _%e184878185364%_
                             _%hd184879185367%_
                             _%tl184880185369%_
                             _%e184881185372%_
                             _%hd184882185375%_
                             _%tl184883185377%_
                             _%e184884185380%_
                             _%hd184885185383%_
                             _%tl184886185385%_
                             _%e184887185388%_
                             _%hd184888185391%_
                             _%tl184889185393%_
                             _%e184890185396%_
                             _%hd184891185399%_
                             _%tl184892185401%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd184891185399%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl184892185401%_))
                              (let ((_%e184893185404%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl184892185401%_))))
                                (let ((_%tl184895185409%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e184893185404%_)))
                                      (_%hd184894185407%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e184893185404%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl184895185409%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl184889185393%_))
                                          (_%__match189479189480%_
                                           _%e184866185332%_
                                           _%hd184867185335%_
                                           _%tl184868185337%_
                                           _%e184869185340%_
                                           _%hd184870185343%_
                                           _%tl184871185345%_
                                           _%e184872185348%_
                                           _%hd184873185351%_
                                           _%tl184874185353%_
                                           _%e184875185356%_
                                           _%hd184876185359%_
                                           _%tl184877185361%_
                                           _%e184878185364%_
                                           _%hd184879185367%_
                                           _%tl184880185369%_
                                           _%e184881185372%_
                                           _%hd184882185375%_
                                           _%tl184883185377%_
                                           _%e184884185380%_
                                           _%hd184885185383%_
                                           _%tl184886185385%_
                                           _%e184887185388%_
                                           _%hd184888185391%_
                                           _%tl184889185393%_
                                           _%e184890185396%_
                                           _%hd184891185399%_
                                           _%tl184892185401%_
                                           _%e184893185404%_
                                           _%hd184894185407%_
                                           _%tl184895185409%_)
                                          (_%__match189557189558%_
                                           _%e184866185332%_
                                           _%hd184867185335%_
                                           _%tl184868185337%_
                                           _%e184869185340%_
                                           _%hd184870185343%_
                                           _%tl184871185345%_
                                           _%e184872185348%_
                                           _%hd184873185351%_
                                           _%tl184874185353%_
                                           _%e184875185356%_
                                           _%hd184876185359%_
                                           _%tl184877185361%_
                                           _%e184878185364%_
                                           _%hd184879185367%_
                                           _%tl184880185369%_
                                           _%e184881185372%_
                                           _%hd184882185375%_
                                           _%tl184883185377%_
                                           _%e184884185380%_
                                           _%hd184885185383%_
                                           _%tl184886185385%_
                                           _%e184887185388%_
                                           _%hd184888185391%_
                                           _%tl184889185393%_
                                           _%e184890185396%_
                                           _%hd184891185399%_
                                           _%tl184892185401%_
                                           _%e184893185404%_
                                           _%hd184894185407%_
                                           _%tl184895185409%_))
                                      (_%__match189681189682%_
                                       _%e184866185332%_
                                       _%hd184867185335%_
                                       _%tl184868185337%_
                                       _%e184869185340%_
                                       _%hd184870185343%_
                                       _%tl184871185345%_
                                       _%e184872185348%_
                                       _%hd184873185351%_
                                       _%tl184874185353%_
                                       _%e184875185356%_
                                       _%hd184876185359%_
                                       _%tl184877185361%_
                                       _%e184878185364%_
                                       _%hd184879185367%_
                                       _%tl184880185369%_
                                       _%e184881185372%_
                                       _%hd184882185375%_
                                       _%tl184883185377%_
                                       _%e184884185380%_
                                       _%hd184885185383%_
                                       _%tl184886185385%_
                                       _%e184887185388%_
                                       _%hd184888185391%_
                                       _%tl184889185393%_))))
                              (_%__match189681189682%_
                               _%e184866185332%_
                               _%hd184867185335%_
                               _%tl184868185337%_
                               _%e184869185340%_
                               _%hd184870185343%_
                               _%tl184871185345%_
                               _%e184872185348%_
                               _%hd184873185351%_
                               _%tl184874185353%_
                               _%e184875185356%_
                               _%hd184876185359%_
                               _%tl184877185361%_
                               _%e184878185364%_
                               _%hd184879185367%_
                               _%tl184880185369%_
                               _%e184881185372%_
                               _%hd184882185375%_
                               _%tl184883185377%_
                               _%e184884185380%_
                               _%hd184885185383%_
                               _%tl184886185385%_
                               _%e184887185388%_
                               _%hd184888185391%_
                               _%tl184889185393%_))
                          (_%__match189681189682%_
                           _%e184866185332%_
                           _%hd184867185335%_
                           _%tl184868185337%_
                           _%e184869185340%_
                           _%hd184870185343%_
                           _%tl184871185345%_
                           _%e184872185348%_
                           _%hd184873185351%_
                           _%tl184874185353%_
                           _%e184875185356%_
                           _%hd184876185359%_
                           _%tl184877185361%_
                           _%e184878185364%_
                           _%hd184879185367%_
                           _%tl184880185369%_
                           _%e184881185372%_
                           _%hd184882185375%_
                           _%tl184883185377%_
                           _%e184884185380%_
                           _%hd184885185383%_
                           _%tl184886185385%_
                           _%e184887185388%_
                           _%hd184888185391%_
                           _%tl184889185393%_))))
                   (_%__match189399189400%_
                    (lambda (_%e184815185451%_
                             _%hd184816185454%_
                             _%tl184817185456%_
                             _%e184818185459%_
                             _%hd184819185462%_
                             _%tl184820185464%_
                             _%e184821185467%_
                             _%hd184822185470%_
                             _%tl184823185472%_
                             _%e184824185475%_
                             _%hd184825185478%_
                             _%tl184826185480%_
                             _%e184827185483%_
                             _%hd184828185486%_
                             _%tl184829185488%_
                             _%e184830185491%_
                             _%hd184831185494%_
                             _%tl184832185496%_
                             _%e184833185499%_
                             _%hd184834185502%_
                             _%tl184835185504%_
                             _%e184836185507%_
                             _%hd184837185510%_
                             _%tl184838185512%_
                             _%e184839185515%_
                             _%hd184840185518%_
                             _%tl184841185520%_
                             _%e184842185523%_
                             _%hd184843185526%_
                             _%tl184844185528%_
                             _%e184845185531%_
                             _%hd184846185534%_
                             _%tl184847185536%_
                             _%e184848185539%_
                             _%hd184849185542%_
                             _%tl184850185544%_
                             _%e184851185547%_
                             _%hd184852185550%_
                             _%tl184853185552%_
                             _%__splice189192189193%_
                             _%target184854185555%_
                             _%tl184856185557%_)
                      (letrec ((_%loop184857185560%_
                                (lambda (_%hd184855185563%_
                                         _%args184861185565%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd184855185563%_))
                                      (let ((_%e184858185567%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd184855185563%_))))
                                        (let ((_%lp-tl184860185572%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e184858185567%_)))
                                              (_%lp-hd184859185570%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e184858185567%_))))
                                          (_%loop184857185560%_
                                           _%lp-tl184860185572%_
                                           (cons _%lp-hd184859185570%_
                                                 _%args184861185565%_))))
                                      (let ((_%args184862185575%_
                                             (reverse _%args184861185565%_)))
                                        (let ((_%g184810185577%_
                                               _%args184862185575%_)
                                              (_%g184811185578%_
                                               _%hd184852185550%_)
                                              (_%g184812185579%_
                                               _%hd184843185526%_)
                                              (_%g184813185580%_
                                               _%hd184834185502%_)
                                              (_%g184814185581%_
                                               _%hd184825185478%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g184814185581%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g184813185580%_
                                                      'call-method))
                                                   (let ((__tmp190346
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self184756%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g184812185579%_
                                                      __tmp190346)))
                                              (_%__kont189190189191%_
                                               _%g184810185577%_
                                               _%g184811185578%_
                                               _%g184812185579%_
                                               _%g184813185580%_
                                               _%g184814185581%_)
                                              (_%__kont189202189203%_))))))))
                        (_%loop184857185560%_ _%target184854185555%_ '()))))
                   (_%__match189357189358%_
                    (lambda (_%e184815185451%_
                             _%hd184816185454%_
                             _%tl184817185456%_
                             _%e184818185459%_
                             _%hd184819185462%_
                             _%tl184820185464%_
                             _%e184821185467%_
                             _%hd184822185470%_
                             _%tl184823185472%_
                             _%e184824185475%_
                             _%hd184825185478%_
                             _%tl184826185480%_
                             _%e184827185483%_
                             _%hd184828185486%_
                             _%tl184829185488%_
                             _%e184830185491%_
                             _%hd184831185494%_
                             _%tl184832185496%_
                             _%e184833185499%_
                             _%hd184834185502%_
                             _%tl184835185504%_
                             _%e184836185507%_
                             _%hd184837185510%_
                             _%tl184838185512%_
                             _%e184839185515%_
                             _%hd184840185518%_
                             _%tl184841185520%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd184840185518%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl184841185520%_))
                              (let ((_%e184842185523%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl184841185520%_))))
                                (let ((_%tl184844185528%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e184842185523%_)))
                                      (_%hd184843185526%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e184842185523%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl184844185528%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl184838185512%_))
                                          (let ((_%e184845185531%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl184838185512%_))))
                                            (let ((_%tl184847185536%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e184845185531%_)))
                                                  (_%hd184846185534%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e184845185531%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd184846185534%_))
                                                  (let ((_%e184848185539%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd184846185534%_))))
                                                    (let ((_%tl184850185544%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e184848185539%_)))
                                                          (_%hd184849185542%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e184848185539%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd184849185542%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd184849185542%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl184850185544%_))
                          (let ((_%e184851185547%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl184850185544%_))))
                            (let ((_%tl184853185552%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e184851185547%_)))
                                  (_%hd184852185550%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e184851185547%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl184853185552%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl184847185536%_))
                                      (let ((_%__splice189192189193%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl184847185536%_
                                                '0))))
                                        (let ((_%tl184856185557%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice189192189193%_
                                                  '1)))
                                              (_%target184854185555%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice189192189193%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl184856185557%_))
                                              (_%__match189399189400%_
                                               _%e184815185451%_
                                               _%hd184816185454%_
                                               _%tl184817185456%_
                                               _%e184818185459%_
                                               _%hd184819185462%_
                                               _%tl184820185464%_
                                               _%e184821185467%_
                                               _%hd184822185470%_
                                               _%tl184823185472%_
                                               _%e184824185475%_
                                               _%hd184825185478%_
                                               _%tl184826185480%_
                                               _%e184827185483%_
                                               _%hd184828185486%_
                                               _%tl184829185488%_
                                               _%e184830185491%_
                                               _%hd184831185494%_
                                               _%tl184832185496%_
                                               _%e184833185499%_
                                               _%hd184834185502%_
                                               _%tl184835185504%_
                                               _%e184836185507%_
                                               _%hd184837185510%_
                                               _%tl184838185512%_
                                               _%e184839185515%_
                                               _%hd184840185518%_
                                               _%tl184841185520%_
                                               _%e184842185523%_
                                               _%hd184843185526%_
                                               _%tl184844185528%_
                                               _%e184845185531%_
                                               _%hd184846185534%_
                                               _%tl184847185536%_
                                               _%e184848185539%_
                                               _%hd184849185542%_
                                               _%tl184850185544%_
                                               _%e184851185547%_
                                               _%hd184852185550%_
                                               _%tl184853185552%_
                                               _%__splice189192189193%_
                                               _%target184854185555%_
                                               _%tl184856185557%_)
                                              (_%__kont189202189203%_))))
                                      (_%__kont189202189203%_))
                                  (_%__kont189202189203%_))))
                          (_%__kont189202189203%_))
                      (_%__kont189202189203%_))
                  (_%__kont189202189203%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont189202189203%_))))
                                          (_%__match189681189682%_
                                           _%e184815185451%_
                                           _%hd184816185454%_
                                           _%tl184817185456%_
                                           _%e184818185459%_
                                           _%hd184819185462%_
                                           _%tl184820185464%_
                                           _%e184821185467%_
                                           _%hd184822185470%_
                                           _%tl184823185472%_
                                           _%e184824185475%_
                                           _%hd184825185478%_
                                           _%tl184826185480%_
                                           _%e184827185483%_
                                           _%hd184828185486%_
                                           _%tl184829185488%_
                                           _%e184830185491%_
                                           _%hd184831185494%_
                                           _%tl184832185496%_
                                           _%e184833185499%_
                                           _%hd184834185502%_
                                           _%tl184835185504%_
                                           _%e184836185507%_
                                           _%hd184837185510%_
                                           _%tl184838185512%_))
                                      (_%__match189681189682%_
                                       _%e184815185451%_
                                       _%hd184816185454%_
                                       _%tl184817185456%_
                                       _%e184818185459%_
                                       _%hd184819185462%_
                                       _%tl184820185464%_
                                       _%e184821185467%_
                                       _%hd184822185470%_
                                       _%tl184823185472%_
                                       _%e184824185475%_
                                       _%hd184825185478%_
                                       _%tl184826185480%_
                                       _%e184827185483%_
                                       _%hd184828185486%_
                                       _%tl184829185488%_
                                       _%e184830185491%_
                                       _%hd184831185494%_
                                       _%tl184832185496%_
                                       _%e184833185499%_
                                       _%hd184834185502%_
                                       _%tl184835185504%_
                                       _%e184836185507%_
                                       _%hd184837185510%_
                                       _%tl184838185512%_))))
                              (_%__match189681189682%_
                               _%e184815185451%_
                               _%hd184816185454%_
                               _%tl184817185456%_
                               _%e184818185459%_
                               _%hd184819185462%_
                               _%tl184820185464%_
                               _%e184821185467%_
                               _%hd184822185470%_
                               _%tl184823185472%_
                               _%e184824185475%_
                               _%hd184825185478%_
                               _%tl184826185480%_
                               _%e184827185483%_
                               _%hd184828185486%_
                               _%tl184829185488%_
                               _%e184830185491%_
                               _%hd184831185494%_
                               _%tl184832185496%_
                               _%e184833185499%_
                               _%hd184834185502%_
                               _%tl184835185504%_
                               _%e184836185507%_
                               _%hd184837185510%_
                               _%tl184838185512%_))
                          (_%__match189467189468%_
                           _%e184815185451%_
                           _%hd184816185454%_
                           _%tl184817185456%_
                           _%e184818185459%_
                           _%hd184819185462%_
                           _%tl184820185464%_
                           _%e184821185467%_
                           _%hd184822185470%_
                           _%tl184823185472%_
                           _%e184824185475%_
                           _%hd184825185478%_
                           _%tl184826185480%_
                           _%e184827185483%_
                           _%hd184828185486%_
                           _%tl184829185488%_
                           _%e184830185491%_
                           _%hd184831185494%_
                           _%tl184832185496%_
                           _%e184833185499%_
                           _%hd184834185502%_
                           _%tl184835185504%_
                           _%e184836185507%_
                           _%hd184837185510%_
                           _%tl184838185512%_
                           _%e184839185515%_
                           _%hd184840185518%_
                           _%tl184841185520%_))))
                   (_%__match189289189290%_
                    (lambda (_%e184771185638%_
                             _%hd184772185641%_
                             _%tl184773185643%_
                             _%e184774185646%_
                             _%hd184775185649%_
                             _%tl184776185651%_
                             _%e184777185654%_
                             _%hd184778185657%_
                             _%tl184779185659%_
                             _%e184780185662%_
                             _%hd184781185665%_
                             _%tl184782185667%_
                             _%e184783185670%_
                             _%hd184784185673%_
                             _%tl184785185675%_
                             _%e184786185678%_
                             _%hd184787185681%_
                             _%tl184788185683%_
                             _%e184789185686%_
                             _%hd184790185689%_
                             _%tl184791185691%_
                             _%e184792185694%_
                             _%hd184793185697%_
                             _%tl184794185699%_
                             _%e184795185702%_
                             _%hd184796185705%_
                             _%tl184797185707%_
                             _%e184798185710%_
                             _%hd184799185713%_
                             _%tl184800185715%_
                             _%__splice189188189189%_
                             _%target184801185718%_
                             _%tl184803185720%_)
                      (letrec ((_%loop184804185723%_
                                (lambda (_%hd184802185726%_
                                         _%args184808185728%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd184802185726%_))
                                      (let ((_%e184805185730%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd184802185726%_))))
                                        (let ((_%lp-tl184807185735%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e184805185730%_)))
                                              (_%lp-hd184806185733%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e184805185730%_))))
                                          (_%loop184804185723%_
                                           _%lp-tl184807185735%_
                                           (cons _%lp-hd184806185733%_
                                                 _%args184808185728%_))))
                                      (let ((_%args184809185738%_
                                             (reverse _%args184808185728%_)))
                                        (let ((_%g184767185740%_
                                               _%args184809185738%_)
                                              (_%g184768185741%_
                                               _%hd184799185713%_)
                                              (_%g184769185742%_
                                               _%hd184790185689%_)
                                              (_%g184770185743%_
                                               _%hd184781185665%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g184770185743%_
                                                      'call-method))
                                                   (let ((__tmp190347
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self184756%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g184769185742%_
                                                      __tmp190347)))
                                              (_%__kont189186189187%_
                                               _%g184767185740%_
                                               _%g184768185741%_
                                               _%g184769185742%_
                                               _%g184770185743%_)
                                              (_%__match189477189478%_
                                               _%e184771185638%_
                                               _%hd184772185641%_
                                               _%tl184773185643%_
                                               _%e184774185646%_
                                               _%hd184775185649%_
                                               _%tl184776185651%_
                                               _%e184777185654%_
                                               _%hd184778185657%_
                                               _%tl184779185659%_
                                               _%e184780185662%_
                                               _%hd184781185665%_
                                               _%tl184782185667%_
                                               _%e184783185670%_
                                               _%hd184784185673%_
                                               _%tl184785185675%_
                                               _%e184786185678%_
                                               _%hd184787185681%_
                                               _%tl184788185683%_
                                               _%e184789185686%_
                                               _%hd184790185689%_
                                               _%tl184791185691%_
                                               _%e184792185694%_
                                               _%hd184793185697%_
                                               _%tl184794185699%_
                                               _%e184795185702%_
                                               _%hd184796185705%_
                                               _%tl184797185707%_
                                               _%e184798185710%_
                                               _%hd184799185713%_
                                               _%tl184800185715%_))))))))
                        (_%loop184804185723%_ _%target184801185718%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx189184189185%_))
                  (let ((_%e184771185638%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx189184189185%_))))
                    (let ((_%tl184773185643%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e184771185638%_)))
                          (_%hd184772185641%_
                           (let ()
                             (declare (not safe))
                             (##car _%e184771185638%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl184773185643%_))
                          (let ((_%e184774185646%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl184773185643%_))))
                            (let ((_%tl184776185651%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e184774185646%_)))
                                  (_%hd184775185649%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e184774185646%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd184775185649%_))
                                  (let ((_%e184777185654%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd184775185649%_))))
                                    (let ((_%tl184779185659%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e184777185654%_)))
                                          (_%hd184778185657%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e184777185654%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd184778185657%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd184778185657%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl184779185659%_))
                                                  (let ((_%e184780185662%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl184779185659%_))))
                                                    (let ((_%tl184782185667%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e184780185662%_)))
                                                          (_%hd184781185665%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e184780185662%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl184782185667%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl184776185651%_))
                      (let ((_%e184783185670%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl184776185651%_))))
                        (let ((_%tl184785185675%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e184783185670%_)))
                              (_%hd184784185673%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e184783185670%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd184784185673%_))
                              (let ((_%e184786185678%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd184784185673%_))))
                                (let ((_%tl184788185683%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e184786185678%_)))
                                      (_%hd184787185681%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e184786185678%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd184787185681%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd184787185681%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl184788185683%_))
                                              (let ((_%e184789185686%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl184788185683%_))))
                                                (let ((_%tl184791185691%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e184789185686%_)))
                                                      (_%hd184790185689%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e184789185686%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl184791185691%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl184785185675%_))
                                                          (let ((_%e184792185694%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl184785185675%_))))
                    (let ((_%tl184794185699%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e184792185694%_)))
                          (_%hd184793185697%_
                           (let ()
                             (declare (not safe))
                             (##car _%e184792185694%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd184793185697%_))
                          (let ((_%e184795185702%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd184793185697%_))))
                            (let ((_%tl184797185707%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e184795185702%_)))
                                  (_%hd184796185705%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e184795185702%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd184796185705%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd184796185705%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl184797185707%_))
                                          (let ((_%e184798185710%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl184797185707%_))))
                                            (let ((_%tl184800185715%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e184798185710%_)))
                                                  (_%hd184799185713%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e184798185710%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl184800185715%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl184794185699%_))
                                                      (let ((_%__splice189188189189%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl184794185699%_
                        '0))))
                (let ((_%tl184803185720%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice189188189189%_ '1)))
                      (_%target184801185718%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice189188189189%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl184803185720%_))
                      (_%__match189289189290%_
                       _%e184771185638%_
                       _%hd184772185641%_
                       _%tl184773185643%_
                       _%e184774185646%_
                       _%hd184775185649%_
                       _%tl184776185651%_
                       _%e184777185654%_
                       _%hd184778185657%_
                       _%tl184779185659%_
                       _%e184780185662%_
                       _%hd184781185665%_
                       _%tl184782185667%_
                       _%e184783185670%_
                       _%hd184784185673%_
                       _%tl184785185675%_
                       _%e184786185678%_
                       _%hd184787185681%_
                       _%tl184788185683%_
                       _%e184789185686%_
                       _%hd184790185689%_
                       _%tl184791185691%_
                       _%e184792185694%_
                       _%hd184793185697%_
                       _%tl184794185699%_
                       _%e184795185702%_
                       _%hd184796185705%_
                       _%tl184797185707%_
                       _%e184798185710%_
                       _%hd184799185713%_
                       _%tl184800185715%_
                       _%__splice189188189189%_
                       _%target184801185718%_
                       _%tl184803185720%_)
                      (_%__match189477189478%_
                       _%e184771185638%_
                       _%hd184772185641%_
                       _%tl184773185643%_
                       _%e184774185646%_
                       _%hd184775185649%_
                       _%tl184776185651%_
                       _%e184777185654%_
                       _%hd184778185657%_
                       _%tl184779185659%_
                       _%e184780185662%_
                       _%hd184781185665%_
                       _%tl184782185667%_
                       _%e184783185670%_
                       _%hd184784185673%_
                       _%tl184785185675%_
                       _%e184786185678%_
                       _%hd184787185681%_
                       _%tl184788185683%_
                       _%e184789185686%_
                       _%hd184790185689%_
                       _%tl184791185691%_
                       _%e184792185694%_
                       _%hd184793185697%_
                       _%tl184794185699%_
                       _%e184795185702%_
                       _%hd184796185705%_
                       _%tl184797185707%_
                       _%e184798185710%_
                       _%hd184799185713%_
                       _%tl184800185715%_))))
              (_%__match189477189478%_
               _%e184771185638%_
               _%hd184772185641%_
               _%tl184773185643%_
               _%e184774185646%_
               _%hd184775185649%_
               _%tl184776185651%_
               _%e184777185654%_
               _%hd184778185657%_
               _%tl184779185659%_
               _%e184780185662%_
               _%hd184781185665%_
               _%tl184782185667%_
               _%e184783185670%_
               _%hd184784185673%_
               _%tl184785185675%_
               _%e184786185678%_
               _%hd184787185681%_
               _%tl184788185683%_
               _%e184789185686%_
               _%hd184790185689%_
               _%tl184791185691%_
               _%e184792185694%_
               _%hd184793185697%_
               _%tl184794185699%_
               _%e184795185702%_
               _%hd184796185705%_
               _%tl184797185707%_
               _%e184798185710%_
               _%hd184799185713%_
               _%tl184800185715%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match189681189682%_
                                                   _%e184771185638%_
                                                   _%hd184772185641%_
                                                   _%tl184773185643%_
                                                   _%e184774185646%_
                                                   _%hd184775185649%_
                                                   _%tl184776185651%_
                                                   _%e184777185654%_
                                                   _%hd184778185657%_
                                                   _%tl184779185659%_
                                                   _%e184780185662%_
                                                   _%hd184781185665%_
                                                   _%tl184782185667%_
                                                   _%e184783185670%_
                                                   _%hd184784185673%_
                                                   _%tl184785185675%_
                                                   _%e184786185678%_
                                                   _%hd184787185681%_
                                                   _%tl184788185683%_
                                                   _%e184789185686%_
                                                   _%hd184790185689%_
                                                   _%tl184791185691%_
                                                   _%e184792185694%_
                                                   _%hd184793185697%_
                                                   _%tl184794185699%_))))
                                          (_%__match189681189682%_
                                           _%e184771185638%_
                                           _%hd184772185641%_
                                           _%tl184773185643%_
                                           _%e184774185646%_
                                           _%hd184775185649%_
                                           _%tl184776185651%_
                                           _%e184777185654%_
                                           _%hd184778185657%_
                                           _%tl184779185659%_
                                           _%e184780185662%_
                                           _%hd184781185665%_
                                           _%tl184782185667%_
                                           _%e184783185670%_
                                           _%hd184784185673%_
                                           _%tl184785185675%_
                                           _%e184786185678%_
                                           _%hd184787185681%_
                                           _%tl184788185683%_
                                           _%e184789185686%_
                                           _%hd184790185689%_
                                           _%tl184791185691%_
                                           _%e184792185694%_
                                           _%hd184793185697%_
                                           _%tl184794185699%_))
                                      (_%__match189357189358%_
                                       _%e184771185638%_
                                       _%hd184772185641%_
                                       _%tl184773185643%_
                                       _%e184774185646%_
                                       _%hd184775185649%_
                                       _%tl184776185651%_
                                       _%e184777185654%_
                                       _%hd184778185657%_
                                       _%tl184779185659%_
                                       _%e184780185662%_
                                       _%hd184781185665%_
                                       _%tl184782185667%_
                                       _%e184783185670%_
                                       _%hd184784185673%_
                                       _%tl184785185675%_
                                       _%e184786185678%_
                                       _%hd184787185681%_
                                       _%tl184788185683%_
                                       _%e184789185686%_
                                       _%hd184790185689%_
                                       _%tl184791185691%_
                                       _%e184792185694%_
                                       _%hd184793185697%_
                                       _%tl184794185699%_
                                       _%e184795185702%_
                                       _%hd184796185705%_
                                       _%tl184797185707%_))
                                  (_%__match189681189682%_
                                   _%e184771185638%_
                                   _%hd184772185641%_
                                   _%tl184773185643%_
                                   _%e184774185646%_
                                   _%hd184775185649%_
                                   _%tl184776185651%_
                                   _%e184777185654%_
                                   _%hd184778185657%_
                                   _%tl184779185659%_
                                   _%e184780185662%_
                                   _%hd184781185665%_
                                   _%tl184782185667%_
                                   _%e184783185670%_
                                   _%hd184784185673%_
                                   _%tl184785185675%_
                                   _%e184786185678%_
                                   _%hd184787185681%_
                                   _%tl184788185683%_
                                   _%e184789185686%_
                                   _%hd184790185689%_
                                   _%tl184791185691%_
                                   _%e184792185694%_
                                   _%hd184793185697%_
                                   _%tl184794185699%_))))
                          (_%__match189681189682%_
                           _%e184771185638%_
                           _%hd184772185641%_
                           _%tl184773185643%_
                           _%e184774185646%_
                           _%hd184775185649%_
                           _%tl184776185651%_
                           _%e184777185654%_
                           _%hd184778185657%_
                           _%tl184779185659%_
                           _%e184780185662%_
                           _%hd184781185665%_
                           _%tl184782185667%_
                           _%e184783185670%_
                           _%hd184784185673%_
                           _%tl184785185675%_
                           _%e184786185678%_
                           _%hd184787185681%_
                           _%tl184788185683%_
                           _%e184789185686%_
                           _%hd184790185689%_
                           _%tl184791185691%_
                           _%e184792185694%_
                           _%hd184793185697%_
                           _%tl184794185699%_))))
                  (_%__match189619189620%_
                   _%e184771185638%_
                   _%hd184772185641%_
                   _%tl184773185643%_
                   _%e184774185646%_
                   _%hd184775185649%_
                   _%tl184776185651%_
                   _%e184777185654%_
                   _%hd184778185657%_
                   _%tl184779185659%_
                   _%e184780185662%_
                   _%hd184781185665%_
                   _%tl184782185667%_
                   _%e184783185670%_
                   _%hd184784185673%_
                   _%tl184785185675%_
                   _%e184786185678%_
                   _%hd184787185681%_
                   _%tl184788185683%_
                   _%e184789185686%_
                   _%hd184790185689%_
                   _%tl184791185691%_))
              (_%__kont189202189203%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont189202189203%_))
                                          (_%__kont189202189203%_))
                                      (_%__kont189202189203%_))))
                              (_%__kont189202189203%_))))
                      (_%__kont189202189203%_))
                  (_%__kont189202189203%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont189202189203%_))
                                              (_%__kont189202189203%_))
                                          (_%__kont189202189203%_))))
                                  (_%__kont189202189203%_))))
                          (_%__kont189202189203%_))))
                  (_%__kont189202189203%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self183699%_ _%stx183700%_)
        (letrec ((_%force-e183702%_
                  (lambda (_%target184754%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target184754%_ '()))
                                      '()))))))
          (let* ((_%__stx189686189687%_ _%stx183700%_)
                 (_%g183710183932%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx189686189687%_)))))
            (let ((_%__kont189688189689%_
                   (lambda (_%g183712184700%_
                            _%g183713184701%_
                            _%g183714184702%_
                            _%g183715184703%_)
                     (let ((_%$method184748%_
                            (let ((__tmp190349
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self183699%_ 'methods)))
                                  (__tmp190348
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g183713184701%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp190349 __tmp190348)))
                           (_%args184749%_
                            (map (lambda (_%g184736184738%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self183699%_
                                      _%g184736184738%_)))
                                 (let ((__tmp190350
                                        (lambda (_%g184740184743%_
                                                 _%g184741184745%_)
                                          (cons _%g184740184743%_
                                                _%g184741184745%_))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp190350
                                    '()
                                    _%g183712184700%_)))))
                       (let ((__tmp190351
                              (cons '%#call
                                    (cons (_%force-e183702%_ _%$method184748%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self183699%_
                                                               'receiver))
                                                            '()))
                                                _%args184749%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp190351 _%stx183700%_)))))
                  (_%__kont189692189693%_
                   (lambda (_%g183755184534%_
                            _%g183756184535%_
                            _%g183757184536%_
                            _%g183758184537%_
                            _%g183759184538%_)
                     (let ((_%$method184590%_
                            (let ((__tmp190353
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self183699%_ 'methods)))
                                  (__tmp190352
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g183756184535%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp190353 __tmp190352)))
                           (_%args184591%_
                            (map (lambda (_%g184578184580%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self183699%_
                                      _%g184578184580%_)))
                                 (let ((__tmp190354
                                        (lambda (_%g184582184585%_
                                                 _%g184583184587%_)
                                          (cons _%g184582184585%_
                                                _%g184583184587%_))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp190354
                                    '()
                                    _%g183755184534%_)))))
                       (let ((__tmp190355
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e183702%_
                                                 _%$method184590%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self183699%_ 'receiver))
                          '()))
              _%args184591%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp190355 _%stx183700%_)))))
                  (_%__kont189696189697%_
                   (lambda (_%g183808184367%_
                            _%g183809184368%_
                            _%g183810184369%_)
                     (let* ((_%$field184401%_
                             (let ((__tmp190357
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self183699%_ 'slots)))
                                   (__tmp190356
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%g183808184367%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp190357 __tmp190356)))
                            (__tmp190358
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self183699%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field184401%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self183699%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp190358 _%stx183700%_))))
                  (_%__kont189698189699%_
                   (lambda (_%g183841184241%_
                            _%g183842184242%_
                            _%g183843184243%_
                            _%g183844184244%_)
                     (let ((_%$field184279%_
                            (let ((__tmp190360
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self183699%_ 'slots)))
                                  (__tmp190359
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g183842184242%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp190360 __tmp190359)))
                           (_%expr184280%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self183699%_
                               _%g183841184241%_))))
                       (let ((__tmp190361
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self183699%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field184279%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self183699%_ 'receiver))
                          '()))
              (cons _%expr184280%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp190361 _%stx183700%_)))))
                  (_%__kont189700189701%_
                   (lambda (_%g183878184113%_ _%g183879184114%_)
                     (let* ((_%accessor184136%_
                             (let ((__tmp190362
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g183879184114%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp190362)))
                            (_%klass184138%_
                             (let ((__tmp190363
                                    (##structure-ref
                                     _%accessor184136%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx183700%_
                                __tmp190363)))
                            (_%slot184140%_
                             (##structure-ref
                              _%accessor184136%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (if (##structure-ref
                                _%accessor184136%_
                                '4
                                gxc#!accessor::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass184138%_
                                      _%slot184140%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass184138%_
                                      '8
                                      '#f
                                      '#f))))
                           _%stx183700%_
                           (let* ((_%$field184146%_
                                   (let ((__tmp190364
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self183699%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp190364 _%slot184140%_)))
                                  (__tmp190365
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self183699%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field184146%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self183699%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp190365
                              _%stx183700%_))))))
                  (_%__kont189702189703%_
                   (lambda (_%g183901184008%_
                            _%g183902184009%_
                            _%g183903184010%_)
                     (let* ((_%mutator184038%_
                             (let ((__tmp190366
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g183903184010%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp190366)))
                            (_%klass184040%_
                             (let ((__tmp190367
                                    (##structure-ref
                                     _%mutator184038%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx183700%_
                                __tmp190367)))
                            (_%slot184042%_
                             (##structure-ref
                              _%mutator184038%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr184044%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self183699%_
                                _%g183901184008%_))))
                       (if (if (##structure-ref
                                _%mutator184038%_
                                '4
                                gxc#!mutator::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass184040%_
                                      _%slot184042%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass184040%_
                                      '8
                                      '#f
                                      '#f))))
                           (let ((__tmp190368
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%g183903184010%_
                                                          '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%g183902184009%_
                                                                '()))
                                                    (cons _%expr184044%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp190368 _%stx183700%_))
                           (let* ((_%$field184050%_
                                   (let ((__tmp190369
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self183699%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp190369 _%slot184042%_)))
                                  (__tmp190370
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self183699%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field184050%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self183699%_ 'receiver))
                               '()))
                   (cons _%expr184044%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp190370
                              _%stx183700%_))))))
                  (_%__kont189704189705%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self183699%_ _%stx183700%_)))))
              (let* ((_%__match190185190186%_
                      (lambda (_%e183904183944%_
                               _%hd183905183947%_
                               _%tl183906183949%_
                               _%e183907183952%_
                               _%hd183908183955%_
                               _%tl183909183957%_
                               _%e183910183960%_
                               _%hd183911183963%_
                               _%tl183912183965%_
                               _%e183913183968%_
                               _%hd183914183971%_
                               _%tl183915183973%_
                               _%e183916183976%_
                               _%hd183917183979%_
                               _%tl183918183981%_
                               _%e183919183984%_
                               _%hd183920183987%_
                               _%tl183921183989%_
                               _%e183922183992%_
                               _%hd183923183995%_
                               _%tl183924183997%_
                               _%e183925184000%_
                               _%hd183926184003%_
                               _%tl183927184005%_)
                        (let ((_%g183901184008%_ _%hd183926184003%_)
                              (_%g183902184009%_ _%hd183923183995%_)
                              (_%g183903184010%_ _%hd183914183971%_))
                          (if (and (let ((__tmp190371
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self183699%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g183902184009%_
                                      __tmp190371))
                                   (let ((__tmp190372
                                          (let ((__tmp190373
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g183903184010%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp190373))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp190372
                                      'gxc#!mutator::t)))
                              (_%__kont189702189703%_
                               _%g183901184008%_
                               _%g183902184009%_
                               _%g183903184010%_)
                              (_%__kont189704189705%_)))))
                     (_%__match190183190184%_
                      (lambda (_%e183904183944%_
                               _%hd183905183947%_
                               _%tl183906183949%_
                               _%e183907183952%_
                               _%hd183908183955%_
                               _%tl183909183957%_
                               _%e183910183960%_
                               _%hd183911183963%_
                               _%tl183912183965%_
                               _%e183913183968%_
                               _%hd183914183971%_
                               _%tl183915183973%_
                               _%e183916183976%_
                               _%hd183917183979%_
                               _%tl183918183981%_
                               _%e183919183984%_
                               _%hd183920183987%_
                               _%tl183921183989%_
                               _%e183922183992%_
                               _%hd183923183995%_
                               _%tl183924183997%_
                               _%e183925184000%_
                               _%hd183926184003%_
                               _%tl183927184005%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl183927184005%_))
                            (_%__match190185190186%_
                             _%e183904183944%_
                             _%hd183905183947%_
                             _%tl183906183949%_
                             _%e183907183952%_
                             _%hd183908183955%_
                             _%tl183909183957%_
                             _%e183910183960%_
                             _%hd183911183963%_
                             _%tl183912183965%_
                             _%e183913183968%_
                             _%hd183914183971%_
                             _%tl183915183973%_
                             _%e183916183976%_
                             _%hd183917183979%_
                             _%tl183918183981%_
                             _%e183919183984%_
                             _%hd183920183987%_
                             _%tl183921183989%_
                             _%e183922183992%_
                             _%hd183923183995%_
                             _%tl183924183997%_
                             _%e183925184000%_
                             _%hd183926184003%_
                             _%tl183927184005%_)
                            (_%__kont189704189705%_))))
                     (_%__match190177190178%_
                      (lambda (_%e183904183944%_
                               _%hd183905183947%_
                               _%tl183906183949%_
                               _%e183907183952%_
                               _%hd183908183955%_
                               _%tl183909183957%_
                               _%e183910183960%_
                               _%hd183911183963%_
                               _%tl183912183965%_
                               _%e183913183968%_
                               _%hd183914183971%_
                               _%tl183915183973%_
                               _%e183916183976%_
                               _%hd183917183979%_
                               _%tl183918183981%_
                               _%e183919183984%_
                               _%hd183920183987%_
                               _%tl183921183989%_
                               _%e183922183992%_
                               _%hd183923183995%_
                               _%tl183924183997%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl183918183981%_))
                            (let ((_%e183925184000%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl183918183981%_))))
                              (let ((_%tl183927184005%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e183925184000%_)))
                                    (_%hd183926184003%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e183925184000%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl183927184005%_))
                                    (_%__match190185190186%_
                                     _%e183904183944%_
                                     _%hd183905183947%_
                                     _%tl183906183949%_
                                     _%e183907183952%_
                                     _%hd183908183955%_
                                     _%tl183909183957%_
                                     _%e183910183960%_
                                     _%hd183911183963%_
                                     _%tl183912183965%_
                                     _%e183913183968%_
                                     _%hd183914183971%_
                                     _%tl183915183973%_
                                     _%e183916183976%_
                                     _%hd183917183979%_
                                     _%tl183918183981%_
                                     _%e183919183984%_
                                     _%hd183920183987%_
                                     _%tl183921183989%_
                                     _%e183922183992%_
                                     _%hd183923183995%_
                                     _%tl183924183997%_
                                     _%e183925184000%_
                                     _%hd183926184003%_
                                     _%tl183927184005%_)
                                    (_%__kont189704189705%_))))
                            (_%__kont189704189705%_))))
                     (_%__match190123190124%_
                      (lambda (_%e183880184057%_
                               _%hd183881184060%_
                               _%tl183882184062%_
                               _%e183883184065%_
                               _%hd183884184068%_
                               _%tl183885184070%_
                               _%e183886184073%_
                               _%hd183887184076%_
                               _%tl183888184078%_
                               _%e183889184081%_
                               _%hd183890184084%_
                               _%tl183891184086%_
                               _%e183892184089%_
                               _%hd183893184092%_
                               _%tl183894184094%_
                               _%e183895184097%_
                               _%hd183896184100%_
                               _%tl183897184102%_
                               _%e183898184105%_
                               _%hd183899184108%_
                               _%tl183900184110%_)
                        (let ((_%g183878184113%_ _%hd183899184108%_)
                              (_%g183879184114%_ _%hd183890184084%_))
                          (if (and (let ((__tmp190374
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self183699%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g183878184113%_
                                      __tmp190374))
                                   (let ((__tmp190375
                                          (let ((__tmp190376
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g183879184114%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp190376))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp190375
                                      'gxc#!accessor::t)))
                              (_%__kont189700189701%_
                               _%g183878184113%_
                               _%g183879184114%_)
                              (_%__kont189704189705%_)))))
                     (_%__match190121190122%_
                      (lambda (_%e183880184057%_
                               _%hd183881184060%_
                               _%tl183882184062%_
                               _%e183883184065%_
                               _%hd183884184068%_
                               _%tl183885184070%_
                               _%e183886184073%_
                               _%hd183887184076%_
                               _%tl183888184078%_
                               _%e183889184081%_
                               _%hd183890184084%_
                               _%tl183891184086%_
                               _%e183892184089%_
                               _%hd183893184092%_
                               _%tl183894184094%_
                               _%e183895184097%_
                               _%hd183896184100%_
                               _%tl183897184102%_
                               _%e183898184105%_
                               _%hd183899184108%_
                               _%tl183900184110%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl183894184094%_))
                            (_%__match190123190124%_
                             _%e183880184057%_
                             _%hd183881184060%_
                             _%tl183882184062%_
                             _%e183883184065%_
                             _%hd183884184068%_
                             _%tl183885184070%_
                             _%e183886184073%_
                             _%hd183887184076%_
                             _%tl183888184078%_
                             _%e183889184081%_
                             _%hd183890184084%_
                             _%tl183891184086%_
                             _%e183892184089%_
                             _%hd183893184092%_
                             _%tl183894184094%_
                             _%e183895184097%_
                             _%hd183896184100%_
                             _%tl183897184102%_
                             _%e183898184105%_
                             _%hd183899184108%_
                             _%tl183900184110%_)
                            (_%__match190177190178%_
                             _%e183880184057%_
                             _%hd183881184060%_
                             _%tl183882184062%_
                             _%e183883184065%_
                             _%hd183884184068%_
                             _%tl183885184070%_
                             _%e183886184073%_
                             _%hd183887184076%_
                             _%tl183888184078%_
                             _%e183889184081%_
                             _%hd183890184084%_
                             _%tl183891184086%_
                             _%e183892184089%_
                             _%hd183893184092%_
                             _%tl183894184094%_
                             _%e183895184097%_
                             _%hd183896184100%_
                             _%tl183897184102%_
                             _%e183898184105%_
                             _%hd183899184108%_
                             _%tl183900184110%_))))
                     (_%__match190067190068%_
                      (lambda (_%e183845184153%_
                               _%hd183846184156%_
                               _%tl183847184158%_
                               _%e183848184161%_
                               _%hd183849184164%_
                               _%tl183850184166%_
                               _%e183851184169%_
                               _%hd183852184172%_
                               _%tl183853184174%_
                               _%e183854184177%_
                               _%hd183855184180%_
                               _%tl183856184182%_
                               _%e183857184185%_
                               _%hd183858184188%_
                               _%tl183859184190%_
                               _%e183860184193%_
                               _%hd183861184196%_
                               _%tl183862184198%_
                               _%e183863184201%_
                               _%hd183864184204%_
                               _%tl183865184206%_
                               _%e183866184209%_
                               _%hd183867184212%_
                               _%tl183868184214%_
                               _%e183869184217%_
                               _%hd183870184220%_
                               _%tl183871184222%_
                               _%e183872184225%_
                               _%hd183873184228%_
                               _%tl183874184230%_
                               _%e183875184233%_
                               _%hd183876184236%_
                               _%tl183877184238%_)
                        (let ((_%g183841184241%_ _%hd183876184236%_)
                              (_%g183842184242%_ _%hd183873184228%_)
                              (_%g183843184243%_ _%hd183864184204%_)
                              (_%g183844184244%_ _%hd183855184180%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g183844184244%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g183844184244%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp190377
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self183699%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g183843184243%_
                                      __tmp190377)))
                              (_%__kont189698189699%_
                               _%g183841184241%_
                               _%g183842184242%_
                               _%g183843184243%_
                               _%g183844184244%_)
                              (_%__kont189704189705%_)))))
                     (_%__match190059190060%_
                      (lambda (_%e183845184153%_
                               _%hd183846184156%_
                               _%tl183847184158%_
                               _%e183848184161%_
                               _%hd183849184164%_
                               _%tl183850184166%_
                               _%e183851184169%_
                               _%hd183852184172%_
                               _%tl183853184174%_
                               _%e183854184177%_
                               _%hd183855184180%_
                               _%tl183856184182%_
                               _%e183857184185%_
                               _%hd183858184188%_
                               _%tl183859184190%_
                               _%e183860184193%_
                               _%hd183861184196%_
                               _%tl183862184198%_
                               _%e183863184201%_
                               _%hd183864184204%_
                               _%tl183865184206%_
                               _%e183866184209%_
                               _%hd183867184212%_
                               _%tl183868184214%_
                               _%e183869184217%_
                               _%hd183870184220%_
                               _%tl183871184222%_
                               _%e183872184225%_
                               _%hd183873184228%_
                               _%tl183874184230%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl183868184214%_))
                            (let ((_%e183875184233%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl183868184214%_))))
                              (let ((_%tl183877184238%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e183875184233%_)))
                                    (_%hd183876184236%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e183875184233%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl183877184238%_))
                                    (_%__match190067190068%_
                                     _%e183845184153%_
                                     _%hd183846184156%_
                                     _%tl183847184158%_
                                     _%e183848184161%_
                                     _%hd183849184164%_
                                     _%tl183850184166%_
                                     _%e183851184169%_
                                     _%hd183852184172%_
                                     _%tl183853184174%_
                                     _%e183854184177%_
                                     _%hd183855184180%_
                                     _%tl183856184182%_
                                     _%e183857184185%_
                                     _%hd183858184188%_
                                     _%tl183859184190%_
                                     _%e183860184193%_
                                     _%hd183861184196%_
                                     _%tl183862184198%_
                                     _%e183863184201%_
                                     _%hd183864184204%_
                                     _%tl183865184206%_
                                     _%e183866184209%_
                                     _%hd183867184212%_
                                     _%tl183868184214%_
                                     _%e183869184217%_
                                     _%hd183870184220%_
                                     _%tl183871184222%_
                                     _%e183872184225%_
                                     _%hd183873184228%_
                                     _%tl183874184230%_
                                     _%e183875184233%_
                                     _%hd183876184236%_
                                     _%tl183877184238%_)
                                    (_%__kont189704189705%_))))
                            (_%__match190183190184%_
                             _%e183845184153%_
                             _%hd183846184156%_
                             _%tl183847184158%_
                             _%e183848184161%_
                             _%hd183849184164%_
                             _%tl183850184166%_
                             _%e183851184169%_
                             _%hd183852184172%_
                             _%tl183853184174%_
                             _%e183854184177%_
                             _%hd183855184180%_
                             _%tl183856184182%_
                             _%e183857184185%_
                             _%hd183858184188%_
                             _%tl183859184190%_
                             _%e183860184193%_
                             _%hd183861184196%_
                             _%tl183862184198%_
                             _%e183863184201%_
                             _%hd183864184204%_
                             _%tl183865184206%_
                             _%e183866184209%_
                             _%hd183867184212%_
                             _%tl183868184214%_))))
                     (_%__match189981189982%_
                      (lambda (_%e183811184287%_
                               _%hd183812184290%_
                               _%tl183813184292%_
                               _%e183814184295%_
                               _%hd183815184298%_
                               _%tl183816184300%_
                               _%e183817184303%_
                               _%hd183818184306%_
                               _%tl183819184308%_
                               _%e183820184311%_
                               _%hd183821184314%_
                               _%tl183822184316%_
                               _%e183823184319%_
                               _%hd183824184322%_
                               _%tl183825184324%_
                               _%e183826184327%_
                               _%hd183827184330%_
                               _%tl183828184332%_
                               _%e183829184335%_
                               _%hd183830184338%_
                               _%tl183831184340%_
                               _%e183832184343%_
                               _%hd183833184346%_
                               _%tl183834184348%_
                               _%e183835184351%_
                               _%hd183836184354%_
                               _%tl183837184356%_
                               _%e183838184359%_
                               _%hd183839184362%_
                               _%tl183840184364%_)
                        (let ((_%g183808184367%_ _%hd183839184362%_)
                              (_%g183809184368%_ _%hd183830184338%_)
                              (_%g183810184369%_ _%hd183821184314%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g183810184369%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g183810184369%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp190378
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self183699%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g183809184368%_
                                      __tmp190378)))
                              (_%__kont189696189697%_
                               _%g183808184367%_
                               _%g183809184368%_
                               _%g183810184369%_)
                              (_%__match190185190186%_
                               _%e183811184287%_
                               _%hd183812184290%_
                               _%tl183813184292%_
                               _%e183814184295%_
                               _%hd183815184298%_
                               _%tl183816184300%_
                               _%e183817184303%_
                               _%hd183818184306%_
                               _%tl183819184308%_
                               _%e183820184311%_
                               _%hd183821184314%_
                               _%tl183822184316%_
                               _%e183823184319%_
                               _%hd183824184322%_
                               _%tl183825184324%_
                               _%e183826184327%_
                               _%hd183827184330%_
                               _%tl183828184332%_
                               _%e183829184335%_
                               _%hd183830184338%_
                               _%tl183831184340%_
                               _%e183832184343%_
                               _%hd183833184346%_
                               _%tl183834184348%_)))))
                     (_%__match189979189980%_
                      (lambda (_%e183811184287%_
                               _%hd183812184290%_
                               _%tl183813184292%_
                               _%e183814184295%_
                               _%hd183815184298%_
                               _%tl183816184300%_
                               _%e183817184303%_
                               _%hd183818184306%_
                               _%tl183819184308%_
                               _%e183820184311%_
                               _%hd183821184314%_
                               _%tl183822184316%_
                               _%e183823184319%_
                               _%hd183824184322%_
                               _%tl183825184324%_
                               _%e183826184327%_
                               _%hd183827184330%_
                               _%tl183828184332%_
                               _%e183829184335%_
                               _%hd183830184338%_
                               _%tl183831184340%_
                               _%e183832184343%_
                               _%hd183833184346%_
                               _%tl183834184348%_
                               _%e183835184351%_
                               _%hd183836184354%_
                               _%tl183837184356%_
                               _%e183838184359%_
                               _%hd183839184362%_
                               _%tl183840184364%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl183834184348%_))
                            (_%__match189981189982%_
                             _%e183811184287%_
                             _%hd183812184290%_
                             _%tl183813184292%_
                             _%e183814184295%_
                             _%hd183815184298%_
                             _%tl183816184300%_
                             _%e183817184303%_
                             _%hd183818184306%_
                             _%tl183819184308%_
                             _%e183820184311%_
                             _%hd183821184314%_
                             _%tl183822184316%_
                             _%e183823184319%_
                             _%hd183824184322%_
                             _%tl183825184324%_
                             _%e183826184327%_
                             _%hd183827184330%_
                             _%tl183828184332%_
                             _%e183829184335%_
                             _%hd183830184338%_
                             _%tl183831184340%_
                             _%e183832184343%_
                             _%hd183833184346%_
                             _%tl183834184348%_
                             _%e183835184351%_
                             _%hd183836184354%_
                             _%tl183837184356%_
                             _%e183838184359%_
                             _%hd183839184362%_
                             _%tl183840184364%_)
                            (_%__match190059190060%_
                             _%e183811184287%_
                             _%hd183812184290%_
                             _%tl183813184292%_
                             _%e183814184295%_
                             _%hd183815184298%_
                             _%tl183816184300%_
                             _%e183817184303%_
                             _%hd183818184306%_
                             _%tl183819184308%_
                             _%e183820184311%_
                             _%hd183821184314%_
                             _%tl183822184316%_
                             _%e183823184319%_
                             _%hd183824184322%_
                             _%tl183825184324%_
                             _%e183826184327%_
                             _%hd183827184330%_
                             _%tl183828184332%_
                             _%e183829184335%_
                             _%hd183830184338%_
                             _%tl183831184340%_
                             _%e183832184343%_
                             _%hd183833184346%_
                             _%tl183834184348%_
                             _%e183835184351%_
                             _%hd183836184354%_
                             _%tl183837184356%_
                             _%e183838184359%_
                             _%hd183839184362%_
                             _%tl183840184364%_))))
                     (_%__match189969189970%_
                      (lambda (_%e183811184287%_
                               _%hd183812184290%_
                               _%tl183813184292%_
                               _%e183814184295%_
                               _%hd183815184298%_
                               _%tl183816184300%_
                               _%e183817184303%_
                               _%hd183818184306%_
                               _%tl183819184308%_
                               _%e183820184311%_
                               _%hd183821184314%_
                               _%tl183822184316%_
                               _%e183823184319%_
                               _%hd183824184322%_
                               _%tl183825184324%_
                               _%e183826184327%_
                               _%hd183827184330%_
                               _%tl183828184332%_
                               _%e183829184335%_
                               _%hd183830184338%_
                               _%tl183831184340%_
                               _%e183832184343%_
                               _%hd183833184346%_
                               _%tl183834184348%_
                               _%e183835184351%_
                               _%hd183836184354%_
                               _%tl183837184356%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd183836184354%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl183837184356%_))
                                (let ((_%e183838184359%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl183837184356%_))))
                                  (let ((_%tl183840184364%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e183838184359%_)))
                                        (_%hd183839184362%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e183838184359%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl183840184364%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl183834184348%_))
                                            (_%__match189981189982%_
                                             _%e183811184287%_
                                             _%hd183812184290%_
                                             _%tl183813184292%_
                                             _%e183814184295%_
                                             _%hd183815184298%_
                                             _%tl183816184300%_
                                             _%e183817184303%_
                                             _%hd183818184306%_
                                             _%tl183819184308%_
                                             _%e183820184311%_
                                             _%hd183821184314%_
                                             _%tl183822184316%_
                                             _%e183823184319%_
                                             _%hd183824184322%_
                                             _%tl183825184324%_
                                             _%e183826184327%_
                                             _%hd183827184330%_
                                             _%tl183828184332%_
                                             _%e183829184335%_
                                             _%hd183830184338%_
                                             _%tl183831184340%_
                                             _%e183832184343%_
                                             _%hd183833184346%_
                                             _%tl183834184348%_
                                             _%e183835184351%_
                                             _%hd183836184354%_
                                             _%tl183837184356%_
                                             _%e183838184359%_
                                             _%hd183839184362%_
                                             _%tl183840184364%_)
                                            (_%__match190059190060%_
                                             _%e183811184287%_
                                             _%hd183812184290%_
                                             _%tl183813184292%_
                                             _%e183814184295%_
                                             _%hd183815184298%_
                                             _%tl183816184300%_
                                             _%e183817184303%_
                                             _%hd183818184306%_
                                             _%tl183819184308%_
                                             _%e183820184311%_
                                             _%hd183821184314%_
                                             _%tl183822184316%_
                                             _%e183823184319%_
                                             _%hd183824184322%_
                                             _%tl183825184324%_
                                             _%e183826184327%_
                                             _%hd183827184330%_
                                             _%tl183828184332%_
                                             _%e183829184335%_
                                             _%hd183830184338%_
                                             _%tl183831184340%_
                                             _%e183832184343%_
                                             _%hd183833184346%_
                                             _%tl183834184348%_
                                             _%e183835184351%_
                                             _%hd183836184354%_
                                             _%tl183837184356%_
                                             _%e183838184359%_
                                             _%hd183839184362%_
                                             _%tl183840184364%_))
                                        (_%__match190183190184%_
                                         _%e183811184287%_
                                         _%hd183812184290%_
                                         _%tl183813184292%_
                                         _%e183814184295%_
                                         _%hd183815184298%_
                                         _%tl183816184300%_
                                         _%e183817184303%_
                                         _%hd183818184306%_
                                         _%tl183819184308%_
                                         _%e183820184311%_
                                         _%hd183821184314%_
                                         _%tl183822184316%_
                                         _%e183823184319%_
                                         _%hd183824184322%_
                                         _%tl183825184324%_
                                         _%e183826184327%_
                                         _%hd183827184330%_
                                         _%tl183828184332%_
                                         _%e183829184335%_
                                         _%hd183830184338%_
                                         _%tl183831184340%_
                                         _%e183832184343%_
                                         _%hd183833184346%_
                                         _%tl183834184348%_))))
                                (_%__match190183190184%_
                                 _%e183811184287%_
                                 _%hd183812184290%_
                                 _%tl183813184292%_
                                 _%e183814184295%_
                                 _%hd183815184298%_
                                 _%tl183816184300%_
                                 _%e183817184303%_
                                 _%hd183818184306%_
                                 _%tl183819184308%_
                                 _%e183820184311%_
                                 _%hd183821184314%_
                                 _%tl183822184316%_
                                 _%e183823184319%_
                                 _%hd183824184322%_
                                 _%tl183825184324%_
                                 _%e183826184327%_
                                 _%hd183827184330%_
                                 _%tl183828184332%_
                                 _%e183829184335%_
                                 _%hd183830184338%_
                                 _%tl183831184340%_
                                 _%e183832184343%_
                                 _%hd183833184346%_
                                 _%tl183834184348%_))
                            (_%__match190183190184%_
                             _%e183811184287%_
                             _%hd183812184290%_
                             _%tl183813184292%_
                             _%e183814184295%_
                             _%hd183815184298%_
                             _%tl183816184300%_
                             _%e183817184303%_
                             _%hd183818184306%_
                             _%tl183819184308%_
                             _%e183820184311%_
                             _%hd183821184314%_
                             _%tl183822184316%_
                             _%e183823184319%_
                             _%hd183824184322%_
                             _%tl183825184324%_
                             _%e183826184327%_
                             _%hd183827184330%_
                             _%tl183828184332%_
                             _%e183829184335%_
                             _%hd183830184338%_
                             _%tl183831184340%_
                             _%e183832184343%_
                             _%hd183833184346%_
                             _%tl183834184348%_))))
                     (_%__match189901189902%_
                      (lambda (_%e183760184408%_
                               _%hd183761184411%_
                               _%tl183762184413%_
                               _%e183763184416%_
                               _%hd183764184419%_
                               _%tl183765184421%_
                               _%e183766184424%_
                               _%hd183767184427%_
                               _%tl183768184429%_
                               _%e183769184432%_
                               _%hd183770184435%_
                               _%tl183771184437%_
                               _%e183772184440%_
                               _%hd183773184443%_
                               _%tl183774184445%_
                               _%e183775184448%_
                               _%hd183776184451%_
                               _%tl183777184453%_
                               _%e183778184456%_
                               _%hd183779184459%_
                               _%tl183780184461%_
                               _%e183781184464%_
                               _%hd183782184467%_
                               _%tl183783184469%_
                               _%e183784184472%_
                               _%hd183785184475%_
                               _%tl183786184477%_
                               _%e183787184480%_
                               _%hd183788184483%_
                               _%tl183789184485%_
                               _%e183790184488%_
                               _%hd183791184491%_
                               _%tl183792184493%_
                               _%e183793184496%_
                               _%hd183794184499%_
                               _%tl183795184501%_
                               _%e183796184504%_
                               _%hd183797184507%_
                               _%tl183798184509%_
                               _%__splice189694189695%_
                               _%target183799184512%_
                               _%tl183801184514%_)
                        (letrec ((_%loop183802184517%_
                                  (lambda (_%hd183800184520%_
                                           _%args183806184522%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd183800184520%_))
                                        (let ((_%e183803184524%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd183800184520%_))))
                                          (let ((_%lp-tl183805184529%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e183803184524%_)))
                                                (_%lp-hd183804184527%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e183803184524%_))))
                                            (_%loop183802184517%_
                                             _%lp-tl183805184529%_
                                             (cons _%lp-hd183804184527%_
                                                   _%args183806184522%_))))
                                        (let ((_%args183807184532%_
                                               (reverse _%args183806184522%_)))
                                          (let ((_%g183755184534%_
                                                 _%args183807184532%_)
                                                (_%g183756184535%_
                                                 _%hd183797184507%_)
                                                (_%g183757184536%_
                                                 _%hd183788184483%_)
                                                (_%g183758184537%_
                                                 _%hd183779184459%_)
                                                (_%g183759184538%_
                                                 _%hd183770184435%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g183759184538%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g183758184537%_
                                                        'call-method))
                                                     (let ((__tmp190379
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self183699%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%g183757184536%_
                                                        __tmp190379)))
                                                (_%__kont189692189693%_
                                                 _%g183755184534%_
                                                 _%g183756184535%_
                                                 _%g183757184536%_
                                                 _%g183758184537%_
                                                 _%g183759184538%_)
                                                (_%__kont189704189705%_))))))))
                          (_%loop183802184517%_ _%target183799184512%_ '()))))
                     (_%__match189859189860%_
                      (lambda (_%e183760184408%_
                               _%hd183761184411%_
                               _%tl183762184413%_
                               _%e183763184416%_
                               _%hd183764184419%_
                               _%tl183765184421%_
                               _%e183766184424%_
                               _%hd183767184427%_
                               _%tl183768184429%_
                               _%e183769184432%_
                               _%hd183770184435%_
                               _%tl183771184437%_
                               _%e183772184440%_
                               _%hd183773184443%_
                               _%tl183774184445%_
                               _%e183775184448%_
                               _%hd183776184451%_
                               _%tl183777184453%_
                               _%e183778184456%_
                               _%hd183779184459%_
                               _%tl183780184461%_
                               _%e183781184464%_
                               _%hd183782184467%_
                               _%tl183783184469%_
                               _%e183784184472%_
                               _%hd183785184475%_
                               _%tl183786184477%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd183785184475%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl183786184477%_))
                                (let ((_%e183787184480%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl183786184477%_))))
                                  (let ((_%tl183789184485%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e183787184480%_)))
                                        (_%hd183788184483%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e183787184480%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl183789184485%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl183783184469%_))
                                            (let ((_%e183790184488%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl183783184469%_))))
                                              (let ((_%tl183792184493%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e183790184488%_)))
                                                    (_%hd183791184491%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e183790184488%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd183791184491%_))
                                                    (let ((_%e183793184496%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd183791184491%_))))
                                                      (let ((_%tl183795184501%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e183793184496%_)))
                    (_%hd183794184499%_
                     (let () (declare (not safe)) (##car _%e183793184496%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd183794184499%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd183794184499%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl183795184501%_))
                            (let ((_%e183796184504%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl183795184501%_))))
                              (let ((_%tl183798184509%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e183796184504%_)))
                                    (_%hd183797184507%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e183796184504%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl183798184509%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl183792184493%_))
                                        (let ((_%__splice189694189695%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl183792184493%_
                                                  '0))))
                                          (let ((_%tl183801184514%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice189694189695%_
                                                    '1)))
                                                (_%target183799184512%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice189694189695%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl183801184514%_))
                                                (_%__match189901189902%_
                                                 _%e183760184408%_
                                                 _%hd183761184411%_
                                                 _%tl183762184413%_
                                                 _%e183763184416%_
                                                 _%hd183764184419%_
                                                 _%tl183765184421%_
                                                 _%e183766184424%_
                                                 _%hd183767184427%_
                                                 _%tl183768184429%_
                                                 _%e183769184432%_
                                                 _%hd183770184435%_
                                                 _%tl183771184437%_
                                                 _%e183772184440%_
                                                 _%hd183773184443%_
                                                 _%tl183774184445%_
                                                 _%e183775184448%_
                                                 _%hd183776184451%_
                                                 _%tl183777184453%_
                                                 _%e183778184456%_
                                                 _%hd183779184459%_
                                                 _%tl183780184461%_
                                                 _%e183781184464%_
                                                 _%hd183782184467%_
                                                 _%tl183783184469%_
                                                 _%e183784184472%_
                                                 _%hd183785184475%_
                                                 _%tl183786184477%_
                                                 _%e183787184480%_
                                                 _%hd183788184483%_
                                                 _%tl183789184485%_
                                                 _%e183790184488%_
                                                 _%hd183791184491%_
                                                 _%tl183792184493%_
                                                 _%e183793184496%_
                                                 _%hd183794184499%_
                                                 _%tl183795184501%_
                                                 _%e183796184504%_
                                                 _%hd183797184507%_
                                                 _%tl183798184509%_
                                                 _%__splice189694189695%_
                                                 _%target183799184512%_
                                                 _%tl183801184514%_)
                                                (_%__kont189704189705%_))))
                                        (_%__kont189704189705%_))
                                    (_%__kont189704189705%_))))
                            (_%__kont189704189705%_))
                        (_%__kont189704189705%_))
                    (_%__kont189704189705%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont189704189705%_))))
                                            (_%__match190183190184%_
                                             _%e183760184408%_
                                             _%hd183761184411%_
                                             _%tl183762184413%_
                                             _%e183763184416%_
                                             _%hd183764184419%_
                                             _%tl183765184421%_
                                             _%e183766184424%_
                                             _%hd183767184427%_
                                             _%tl183768184429%_
                                             _%e183769184432%_
                                             _%hd183770184435%_
                                             _%tl183771184437%_
                                             _%e183772184440%_
                                             _%hd183773184443%_
                                             _%tl183774184445%_
                                             _%e183775184448%_
                                             _%hd183776184451%_
                                             _%tl183777184453%_
                                             _%e183778184456%_
                                             _%hd183779184459%_
                                             _%tl183780184461%_
                                             _%e183781184464%_
                                             _%hd183782184467%_
                                             _%tl183783184469%_))
                                        (_%__match190183190184%_
                                         _%e183760184408%_
                                         _%hd183761184411%_
                                         _%tl183762184413%_
                                         _%e183763184416%_
                                         _%hd183764184419%_
                                         _%tl183765184421%_
                                         _%e183766184424%_
                                         _%hd183767184427%_
                                         _%tl183768184429%_
                                         _%e183769184432%_
                                         _%hd183770184435%_
                                         _%tl183771184437%_
                                         _%e183772184440%_
                                         _%hd183773184443%_
                                         _%tl183774184445%_
                                         _%e183775184448%_
                                         _%hd183776184451%_
                                         _%tl183777184453%_
                                         _%e183778184456%_
                                         _%hd183779184459%_
                                         _%tl183780184461%_
                                         _%e183781184464%_
                                         _%hd183782184467%_
                                         _%tl183783184469%_))))
                                (_%__match190183190184%_
                                 _%e183760184408%_
                                 _%hd183761184411%_
                                 _%tl183762184413%_
                                 _%e183763184416%_
                                 _%hd183764184419%_
                                 _%tl183765184421%_
                                 _%e183766184424%_
                                 _%hd183767184427%_
                                 _%tl183768184429%_
                                 _%e183769184432%_
                                 _%hd183770184435%_
                                 _%tl183771184437%_
                                 _%e183772184440%_
                                 _%hd183773184443%_
                                 _%tl183774184445%_
                                 _%e183775184448%_
                                 _%hd183776184451%_
                                 _%tl183777184453%_
                                 _%e183778184456%_
                                 _%hd183779184459%_
                                 _%tl183780184461%_
                                 _%e183781184464%_
                                 _%hd183782184467%_
                                 _%tl183783184469%_))
                            (_%__match189969189970%_
                             _%e183760184408%_
                             _%hd183761184411%_
                             _%tl183762184413%_
                             _%e183763184416%_
                             _%hd183764184419%_
                             _%tl183765184421%_
                             _%e183766184424%_
                             _%hd183767184427%_
                             _%tl183768184429%_
                             _%e183769184432%_
                             _%hd183770184435%_
                             _%tl183771184437%_
                             _%e183772184440%_
                             _%hd183773184443%_
                             _%tl183774184445%_
                             _%e183775184448%_
                             _%hd183776184451%_
                             _%tl183777184453%_
                             _%e183778184456%_
                             _%hd183779184459%_
                             _%tl183780184461%_
                             _%e183781184464%_
                             _%hd183782184467%_
                             _%tl183783184469%_
                             _%e183784184472%_
                             _%hd183785184475%_
                             _%tl183786184477%_))))
                     (_%__match189791189792%_
                      (lambda (_%e183716184598%_
                               _%hd183717184601%_
                               _%tl183718184603%_
                               _%e183719184606%_
                               _%hd183720184609%_
                               _%tl183721184611%_
                               _%e183722184614%_
                               _%hd183723184617%_
                               _%tl183724184619%_
                               _%e183725184622%_
                               _%hd183726184625%_
                               _%tl183727184627%_
                               _%e183728184630%_
                               _%hd183729184633%_
                               _%tl183730184635%_
                               _%e183731184638%_
                               _%hd183732184641%_
                               _%tl183733184643%_
                               _%e183734184646%_
                               _%hd183735184649%_
                               _%tl183736184651%_
                               _%e183737184654%_
                               _%hd183738184657%_
                               _%tl183739184659%_
                               _%e183740184662%_
                               _%hd183741184665%_
                               _%tl183742184667%_
                               _%e183743184670%_
                               _%hd183744184673%_
                               _%tl183745184675%_
                               _%__splice189690189691%_
                               _%target183746184678%_
                               _%tl183748184680%_)
                        (letrec ((_%loop183749184683%_
                                  (lambda (_%hd183747184686%_
                                           _%args183753184688%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd183747184686%_))
                                        (let ((_%e183750184690%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd183747184686%_))))
                                          (let ((_%lp-tl183752184695%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e183750184690%_)))
                                                (_%lp-hd183751184693%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e183750184690%_))))
                                            (_%loop183749184683%_
                                             _%lp-tl183752184695%_
                                             (cons _%lp-hd183751184693%_
                                                   _%args183753184688%_))))
                                        (let ((_%args183754184698%_
                                               (reverse _%args183753184688%_)))
                                          (let ((_%g183712184700%_
                                                 _%args183754184698%_)
                                                (_%g183713184701%_
                                                 _%hd183744184673%_)
                                                (_%g183714184702%_
                                                 _%hd183735184649%_)
                                                (_%g183715184703%_
                                                 _%hd183726184625%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g183715184703%_
                                                        'call-method))
                                                     (let ((__tmp190380
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self183699%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%g183714184702%_
                                                        __tmp190380)))
                                                (_%__kont189688189689%_
                                                 _%g183712184700%_
                                                 _%g183713184701%_
                                                 _%g183714184702%_
                                                 _%g183715184703%_)
                                                (_%__match189979189980%_
                                                 _%e183716184598%_
                                                 _%hd183717184601%_
                                                 _%tl183718184603%_
                                                 _%e183719184606%_
                                                 _%hd183720184609%_
                                                 _%tl183721184611%_
                                                 _%e183722184614%_
                                                 _%hd183723184617%_
                                                 _%tl183724184619%_
                                                 _%e183725184622%_
                                                 _%hd183726184625%_
                                                 _%tl183727184627%_
                                                 _%e183728184630%_
                                                 _%hd183729184633%_
                                                 _%tl183730184635%_
                                                 _%e183731184638%_
                                                 _%hd183732184641%_
                                                 _%tl183733184643%_
                                                 _%e183734184646%_
                                                 _%hd183735184649%_
                                                 _%tl183736184651%_
                                                 _%e183737184654%_
                                                 _%hd183738184657%_
                                                 _%tl183739184659%_
                                                 _%e183740184662%_
                                                 _%hd183741184665%_
                                                 _%tl183742184667%_
                                                 _%e183743184670%_
                                                 _%hd183744184673%_
                                                 _%tl183745184675%_))))))))
                          (_%loop183749184683%_ _%target183746184678%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx189686189687%_))
                    (let ((_%e183716184598%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx189686189687%_))))
                      (let ((_%tl183718184603%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e183716184598%_)))
                            (_%hd183717184601%_
                             (let ()
                               (declare (not safe))
                               (##car _%e183716184598%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl183718184603%_))
                            (let ((_%e183719184606%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl183718184603%_))))
                              (let ((_%tl183721184611%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e183719184606%_)))
                                    (_%hd183720184609%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e183719184606%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd183720184609%_))
                                    (let ((_%e183722184614%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd183720184609%_))))
                                      (let ((_%tl183724184619%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e183722184614%_)))
                                            (_%hd183723184617%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e183722184614%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd183723184617%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd183723184617%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl183724184619%_))
                                                    (let ((_%e183725184622%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl183724184619%_))))
                                                      (let ((_%tl183727184627%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e183725184622%_)))
                    (_%hd183726184625%_
                     (let () (declare (not safe)) (##car _%e183725184622%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl183727184627%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl183721184611%_))
                        (let ((_%e183728184630%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl183721184611%_))))
                          (let ((_%tl183730184635%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e183728184630%_)))
                                (_%hd183729184633%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e183728184630%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd183729184633%_))
                                (let ((_%e183731184638%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd183729184633%_))))
                                  (let ((_%tl183733184643%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e183731184638%_)))
                                        (_%hd183732184641%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e183731184638%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd183732184641%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd183732184641%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl183733184643%_))
                                                (let ((_%e183734184646%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl183733184643%_))))
                                                  (let ((_%tl183736184651%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e183734184646%_)))
                                                        (_%hd183735184649%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e183734184646%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl183736184651%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl183730184635%_))
                                                            (let ((_%e183737184654%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl183730184635%_))))
                      (let ((_%tl183739184659%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e183737184654%_)))
                            (_%hd183738184657%_
                             (let ()
                               (declare (not safe))
                               (##car _%e183737184654%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd183738184657%_))
                            (let ((_%e183740184662%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd183738184657%_))))
                              (let ((_%tl183742184667%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e183740184662%_)))
                                    (_%hd183741184665%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e183740184662%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd183741184665%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd183741184665%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl183742184667%_))
                                            (let ((_%e183743184670%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl183742184667%_))))
                                              (let ((_%tl183745184675%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e183743184670%_)))
                                                    (_%hd183744184673%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e183743184670%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl183745184675%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl183739184659%_))
                                                        (let ((_%__splice189690189691%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice->vector
                          _%tl183739184659%_
                          '0))))
                  (let ((_%tl183748184680%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice189690189691%_ '1)))
                        (_%target183746184678%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice189690189691%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl183748184680%_))
                        (_%__match189791189792%_
                         _%e183716184598%_
                         _%hd183717184601%_
                         _%tl183718184603%_
                         _%e183719184606%_
                         _%hd183720184609%_
                         _%tl183721184611%_
                         _%e183722184614%_
                         _%hd183723184617%_
                         _%tl183724184619%_
                         _%e183725184622%_
                         _%hd183726184625%_
                         _%tl183727184627%_
                         _%e183728184630%_
                         _%hd183729184633%_
                         _%tl183730184635%_
                         _%e183731184638%_
                         _%hd183732184641%_
                         _%tl183733184643%_
                         _%e183734184646%_
                         _%hd183735184649%_
                         _%tl183736184651%_
                         _%e183737184654%_
                         _%hd183738184657%_
                         _%tl183739184659%_
                         _%e183740184662%_
                         _%hd183741184665%_
                         _%tl183742184667%_
                         _%e183743184670%_
                         _%hd183744184673%_
                         _%tl183745184675%_
                         _%__splice189690189691%_
                         _%target183746184678%_
                         _%tl183748184680%_)
                        (_%__match189979189980%_
                         _%e183716184598%_
                         _%hd183717184601%_
                         _%tl183718184603%_
                         _%e183719184606%_
                         _%hd183720184609%_
                         _%tl183721184611%_
                         _%e183722184614%_
                         _%hd183723184617%_
                         _%tl183724184619%_
                         _%e183725184622%_
                         _%hd183726184625%_
                         _%tl183727184627%_
                         _%e183728184630%_
                         _%hd183729184633%_
                         _%tl183730184635%_
                         _%e183731184638%_
                         _%hd183732184641%_
                         _%tl183733184643%_
                         _%e183734184646%_
                         _%hd183735184649%_
                         _%tl183736184651%_
                         _%e183737184654%_
                         _%hd183738184657%_
                         _%tl183739184659%_
                         _%e183740184662%_
                         _%hd183741184665%_
                         _%tl183742184667%_
                         _%e183743184670%_
                         _%hd183744184673%_
                         _%tl183745184675%_))))
                (_%__match189979189980%_
                 _%e183716184598%_
                 _%hd183717184601%_
                 _%tl183718184603%_
                 _%e183719184606%_
                 _%hd183720184609%_
                 _%tl183721184611%_
                 _%e183722184614%_
                 _%hd183723184617%_
                 _%tl183724184619%_
                 _%e183725184622%_
                 _%hd183726184625%_
                 _%tl183727184627%_
                 _%e183728184630%_
                 _%hd183729184633%_
                 _%tl183730184635%_
                 _%e183731184638%_
                 _%hd183732184641%_
                 _%tl183733184643%_
                 _%e183734184646%_
                 _%hd183735184649%_
                 _%tl183736184651%_
                 _%e183737184654%_
                 _%hd183738184657%_
                 _%tl183739184659%_
                 _%e183740184662%_
                 _%hd183741184665%_
                 _%tl183742184667%_
                 _%e183743184670%_
                 _%hd183744184673%_
                 _%tl183745184675%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match190183190184%_
                                                     _%e183716184598%_
                                                     _%hd183717184601%_
                                                     _%tl183718184603%_
                                                     _%e183719184606%_
                                                     _%hd183720184609%_
                                                     _%tl183721184611%_
                                                     _%e183722184614%_
                                                     _%hd183723184617%_
                                                     _%tl183724184619%_
                                                     _%e183725184622%_
                                                     _%hd183726184625%_
                                                     _%tl183727184627%_
                                                     _%e183728184630%_
                                                     _%hd183729184633%_
                                                     _%tl183730184635%_
                                                     _%e183731184638%_
                                                     _%hd183732184641%_
                                                     _%tl183733184643%_
                                                     _%e183734184646%_
                                                     _%hd183735184649%_
                                                     _%tl183736184651%_
                                                     _%e183737184654%_
                                                     _%hd183738184657%_
                                                     _%tl183739184659%_))))
                                            (_%__match190183190184%_
                                             _%e183716184598%_
                                             _%hd183717184601%_
                                             _%tl183718184603%_
                                             _%e183719184606%_
                                             _%hd183720184609%_
                                             _%tl183721184611%_
                                             _%e183722184614%_
                                             _%hd183723184617%_
                                             _%tl183724184619%_
                                             _%e183725184622%_
                                             _%hd183726184625%_
                                             _%tl183727184627%_
                                             _%e183728184630%_
                                             _%hd183729184633%_
                                             _%tl183730184635%_
                                             _%e183731184638%_
                                             _%hd183732184641%_
                                             _%tl183733184643%_
                                             _%e183734184646%_
                                             _%hd183735184649%_
                                             _%tl183736184651%_
                                             _%e183737184654%_
                                             _%hd183738184657%_
                                             _%tl183739184659%_))
                                        (_%__match189859189860%_
                                         _%e183716184598%_
                                         _%hd183717184601%_
                                         _%tl183718184603%_
                                         _%e183719184606%_
                                         _%hd183720184609%_
                                         _%tl183721184611%_
                                         _%e183722184614%_
                                         _%hd183723184617%_
                                         _%tl183724184619%_
                                         _%e183725184622%_
                                         _%hd183726184625%_
                                         _%tl183727184627%_
                                         _%e183728184630%_
                                         _%hd183729184633%_
                                         _%tl183730184635%_
                                         _%e183731184638%_
                                         _%hd183732184641%_
                                         _%tl183733184643%_
                                         _%e183734184646%_
                                         _%hd183735184649%_
                                         _%tl183736184651%_
                                         _%e183737184654%_
                                         _%hd183738184657%_
                                         _%tl183739184659%_
                                         _%e183740184662%_
                                         _%hd183741184665%_
                                         _%tl183742184667%_))
                                    (_%__match190183190184%_
                                     _%e183716184598%_
                                     _%hd183717184601%_
                                     _%tl183718184603%_
                                     _%e183719184606%_
                                     _%hd183720184609%_
                                     _%tl183721184611%_
                                     _%e183722184614%_
                                     _%hd183723184617%_
                                     _%tl183724184619%_
                                     _%e183725184622%_
                                     _%hd183726184625%_
                                     _%tl183727184627%_
                                     _%e183728184630%_
                                     _%hd183729184633%_
                                     _%tl183730184635%_
                                     _%e183731184638%_
                                     _%hd183732184641%_
                                     _%tl183733184643%_
                                     _%e183734184646%_
                                     _%hd183735184649%_
                                     _%tl183736184651%_
                                     _%e183737184654%_
                                     _%hd183738184657%_
                                     _%tl183739184659%_))))
                            (_%__match190183190184%_
                             _%e183716184598%_
                             _%hd183717184601%_
                             _%tl183718184603%_
                             _%e183719184606%_
                             _%hd183720184609%_
                             _%tl183721184611%_
                             _%e183722184614%_
                             _%hd183723184617%_
                             _%tl183724184619%_
                             _%e183725184622%_
                             _%hd183726184625%_
                             _%tl183727184627%_
                             _%e183728184630%_
                             _%hd183729184633%_
                             _%tl183730184635%_
                             _%e183731184638%_
                             _%hd183732184641%_
                             _%tl183733184643%_
                             _%e183734184646%_
                             _%hd183735184649%_
                             _%tl183736184651%_
                             _%e183737184654%_
                             _%hd183738184657%_
                             _%tl183739184659%_))))
                    (_%__match190121190122%_
                     _%e183716184598%_
                     _%hd183717184601%_
                     _%tl183718184603%_
                     _%e183719184606%_
                     _%hd183720184609%_
                     _%tl183721184611%_
                     _%e183722184614%_
                     _%hd183723184617%_
                     _%tl183724184619%_
                     _%e183725184622%_
                     _%hd183726184625%_
                     _%tl183727184627%_
                     _%e183728184630%_
                     _%hd183729184633%_
                     _%tl183730184635%_
                     _%e183731184638%_
                     _%hd183732184641%_
                     _%tl183733184643%_
                     _%e183734184646%_
                     _%hd183735184649%_
                     _%tl183736184651%_))
                (_%__kont189704189705%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont189704189705%_))
                                            (_%__kont189704189705%_))
                                        (_%__kont189704189705%_))))
                                (_%__kont189704189705%_))))
                        (_%__kont189704189705%_))
                    (_%__kont189704189705%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont189704189705%_))
                                                (_%__kont189704189705%_))
                                            (_%__kont189704189705%_))))
                                    (_%__kont189704189705%_))))
                            (_%__kont189704189705%_))))
                    (_%__kont189704189705%_))))))))))
