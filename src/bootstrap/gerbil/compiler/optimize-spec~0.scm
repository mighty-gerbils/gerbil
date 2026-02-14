(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1771037613)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp244242 (list gxc#::identity::t))
            (__tmp244241 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp244242
         '()
         __tmp244241
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args243039%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args243039%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp244243
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
        (__make-atomic-promise __tmp244243)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx243031%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self243034%_
                (let ((__obj244234
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj244234))
               (__tmp244244
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self243034%_ _%stx243031%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp244244
           gxc#current-compile-method
           _%self243034%_))))
    (define gxc#::extract-receiver::t
      (let ((__tmp244246 (list gxc#::false::t))
            (__tmp244245 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::extract-receiver::t
         '::extract-receiver
         __tmp244246
         '()
         __tmp244245
         '#f)))
    (define gxc#::extract-receiver?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::extract-receiver::t)))
    (define gxc#make-::extract-receiver
      (lambda _%$args243028%_
        (apply make-instance gxc#::extract-receiver::t _%$args243028%_)))
    (define gxc#::extract-receiver-bind-methods!
      (let ((__tmp244247
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
        (__make-atomic-promise __tmp244247)))
    (define gxc#apply-extract-receiver
      (lambda (_%stx243020%_)
        (force gxc#::extract-receiver-bind-methods!)
        (let* ((_%self243023%_
                (let ((__obj244236
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::extract-receiver::t))))
                  __obj244236))
               (__tmp244248
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self243023%_ _%stx243020%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp244248
           gxc#current-compile-method
           _%self243023%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp244250 (list gxc#::void::t))
            (__tmp244249 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp244250
         '(receiver methods slots)
         __tmp244249
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args243017%_
        (apply make-instance gxc#::collect-object-refs::t _%$args243017%_)))
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
      (let ((__tmp244251
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
        (__make-atomic-promise __tmp244251)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords242986%_
               _%receiver242981242987%_
               _%methods242982242988%_
               _%slots242983242989%_
               _%stx242990%_)
        (let* ((_%receiver242993%_
                (if (eq? _%receiver242981242987%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver242981242987%_))
               (_%methods242995%_
                (if (eq? _%methods242982242988%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods242982242988%_))
               (_%slots242997%_
                (if (eq? _%slots242983242989%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots242983242989%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self242999%_
                  (let ((__obj244238
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
                       __obj244238
                       _%receiver242993%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj244238
                       _%methods242995%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj244238
                       _%slots242997%_
                       '3
                       '#f
                       '#f))
                    __obj244238))
                 (__tmp244252
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self242999%_ _%stx242990%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp244252
             gxc#current-compile-method
             _%self242999%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords243006%_ . _%args243007%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords243006%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords243006%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords243006%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords243006%_
                  'slots:
                  absent-value))
               _%args243007%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args242984243013%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args242984243013%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp244254 (list gxc#::basic-xform-expression::t))
            (__tmp244253 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp244254
         '(receiver klass methods slots)
         __tmp244253
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args242977%_
        (apply make-instance gxc#::subst-object-refs::t _%$args242977%_)))
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
      (let ((__tmp244255
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
        (__make-atomic-promise __tmp244255)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords242943%_
               _%receiver242937242944%_
               _%klass242938242945%_
               _%methods242939242946%_
               _%slots242940242947%_
               _%stx242948%_)
        (let* ((_%receiver242951%_
                (if (eq? _%receiver242937242944%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver242937242944%_))
               (_%klass242953%_
                (if (eq? _%klass242938242945%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass242938242945%_))
               (_%methods242955%_
                (if (eq? _%methods242939242946%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods242939242946%_))
               (_%slots242957%_
                (if (eq? _%slots242940242947%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots242940242947%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self242959%_
                  (let ((__obj244240
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
                       __obj244240
                       _%receiver242951%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj244240
                       _%klass242953%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj244240
                       _%methods242955%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj244240
                       _%slots242957%_
                       '4
                       '#f
                       '#f))
                    __obj244240))
                 (__tmp244256
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self242959%_ _%stx242948%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp244256
             gxc#current-compile-method
             _%self242959%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords242966%_ . _%args242967%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords242966%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords242966%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords242966%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords242966%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords242966%_
                  'slots:
                  absent-value))
               _%args242967%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args242941242973%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args242941242973%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self240068%_ _%stx240069%_)
        (letrec ((_%generate-method-bind240071%_
                  (lambda (_%$klass242929%_
                           _%$method-table242930%_
                           _%id242931%_
                           _%$id242932%_)
                    (let ((_%$tmp242934%_
                           (let ((__tmp244257
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp244257))))
                      (cons (cons _%$id242932%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp242934%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table242930%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id242931%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp242934%_ '()))
                    (cons (cons '%#ref (cons _%$tmp242934%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id242931%_
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
                 (_%generate-slot-bind240072%_
                  (lambda (_%$klass242923%_ _%id242924%_ _%$id242925%_)
                    (let ((_%$tmp242927%_
                           (let ((__tmp244258
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp244258))))
                      (cons (cons _%$id242925%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp242927%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass242923%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id242924%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp242927%_ '()))
                        (cons (cons '%#ref (cons _%$tmp242927%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id242924%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl240073%_
                  (lambda (_%$klass242917%_
                           _%$method-table242918%_
                           _%methods-bind242919%_
                           _%slots-bind242920%_
                           _%specializer-impl242921%_)
                    (let ((__tmp244259
                           (cons '%#lambda
                                 (cons (cons _%$klass242917%_
                                             (cons _%$method-table242918%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (foldr__0
                                                            cons
                                                            _%slots-bind242920%_
                                                            _%methods-bind242919%_))
                                                         (cons _%specializer-impl242921%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp244259 _%stx240069%_))))
                 (_%generate-specializer-def240074%_
                  (lambda (_%id242913%_
                           _%specializer-id242914%_
                           _%specializer-impl242915%_)
                    (let ((__tmp244260
                           (cons '%#begin
                                 (cons _%stx240069%_
                                       (cons (let ((__tmp244261
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id242914%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl242915%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp244261
                                                _%stx240069%_))
                                             (cons (let ((__tmp244262
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id242913%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id242914%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp244262
                                                      _%stx240069%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp244260 _%stx240069%_)))))
          (let* ((_%__stx243128243129%_ _%stx240069%_)
                 (_%g240077240097%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx243128243129%_)))))
            (let ((_%__kont243130243131%_
                   (lambda (_%g240079240141%_ _%g240080240142%_)
                     (let ((_%method-calls240161%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs240162%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty240163%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?240165%_
                                 (lambda ()
                                   (if (let ((__tmp244263
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%method-calls240161%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp244263))
                                       (let ((__tmp244264
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%slot-refs240162%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp244264))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%g240079240141%_))
                             (let* ((_%__stx243042243043%_ _%g240079240141%_)
                                    (_%g240549240567%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx243042243043%_)))))
                               (let ((_%__kont243044243045%_
                                      (lambda (_%g240551240603%_
                                               _%g240552240604%_
                                               _%g240553240605%_)
                                        (let ((_%receiver240625%_
                                               (let ((_%$e240622%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%g240551240603%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e240622%_
                                                     _%$e240622%_
                                                     _%g240553240605%_))))
                                          (for-each
                                           (lambda (_%g240626240628%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver240625%_
                                              _%method-calls240161%_
                                              _%slot-refs240162%_
                                              _%g240626240628%_))
                                           _%g240551240603%_)
                                          (if (_%no-specializer?240165%_)
                                              _%stx240069%_
                                              (let* ((_%specializer-id240637%_
                                                      (let* ((_%id240631%_
                                                              (let ((__tmp244265
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g240080240142%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp244265 '"::specialize")))
                     (_%specializer-id240634%_
                      (let ((__tmp244266
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx240069%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id240631%_ __tmp244266))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id240634%_))
                _%specializer-id240634%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass240639%_
                                                      (let ((__tmp244267
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp244267)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table240641%_
                                                      (let ((__tmp244268
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp244268)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods240643%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls240161%_)))
                                                     (_%$methods240647%_
                                                      (let ((__tmp244269
                                                             (lambda (_%id240645%_)
                                                               (let ((__tmp244270
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id240645%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp244270)))))
                (declare (not safe))
                (##map __tmp244269 _%methods240643%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_240656%_
                                                      (let ((__tmp244271
                                                             (lambda (_%g240648240651%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g240649240653%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls240161%_
                          _%g240648240651%_
                          _%g240649240653%_)))))
                (declare (not safe))
                (##for-each __tmp244271 _%methods240643%_ _%$methods240647%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind240666%_
                                                      (let ((__tmp244272
                                                             (lambda (_%g240658240661%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g240659240663%_)
                       (_%generate-method-bind240071%_
                        _%$klass240639%_
                        _%$method-table240641%_
                        _%g240658240661%_
                        _%g240659240663%_))))
                (declare (not safe))
                (##map __tmp244272 _%methods240643%_ _%$methods240647%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots240668%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs240162%_)))
                                                     (_%$slots240672%_
                                                      (let ((__tmp244273
                                                             (lambda (_%id240670%_)
                                                               (let ((__tmp244274
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id240670%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp244274)))))
                (declare (not safe))
                (##map __tmp244273 _%slots240668%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_240681%_
                                                      (let ((__tmp244275
                                                             (lambda (_%g240673240676%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g240674240678%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs240162%_
                          _%g240673240676%_
                          _%g240674240678%_)))))
                (declare (not safe))
                (##for-each __tmp244275 _%slots240668%_ _%$slots240672%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind240690%_
                                                      (let ((__tmp244276
                                                             (lambda (_%g240682240685%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g240683240687%_)
                       (_%generate-slot-bind240072%_
                        _%$klass240639%_
                        _%g240682240685%_
                        _%g240683240687%_))))
                (declare (not safe))
                (##map __tmp244276 _%slots240668%_ _%$slots240672%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body240696%_
                                                      (map (lambda (_%g240691240693%_)
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%receiver240625%_
                                                              _%$klass240639%_
                                                              _%method-calls240161%_
                                                              _%slot-refs240162%_
                                                              _%g240691240693%_))
                                                           _%g240551240603%_))
                                                     (_%specializer-impl240698%_
                                                      (let ((__tmp244277
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%g240553240605%_ _%g240552240604%_)
                                 _%specializer-body240696%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp244277 _%stx240069%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl240700%_
                                                      (_%generate-specializer-impl240073%_
                                                       _%$klass240639%_
                                                       _%$method-table240641%_
                                                       _%methods-bind240666%_
                                                       _%slots-bind240690%_
                                                       _%specializer-impl240698%_)))
                                                (let ((__tmp244279
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g240080240142%_)))
                                                      (__tmp244278
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id240637%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp244279
                                                   '" => "
                                                   __tmp244278))
                                                (_%generate-specializer-def240074%_
                                                 _%g240080240142%_
                                                 _%specializer-id240637%_
                                                 _%specializer-impl240700%_))))))
                                     (_%__kont243046243047%_
                                      (lambda () _%stx240069%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx243042243043%_))
                                     (let ((_%e240554240579%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx243042243043%_))))
                                       (let ((_%tl240556240584%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e240554240579%_)))
                                             (_%hd240555240582%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e240554240579%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl240556240584%_))
                                             (let ((_%e240557240587%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl240556240584%_))))
                                               (let ((_%tl240559240592%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e240557240587%_)))
                                                     (_%hd240558240590%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e240557240587%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%hd240558240590%_))
                                                     (let ((_%e240560240595%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd240558240590%_))))
                                                       (let ((_%tl240562240600%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e240560240595%_)))
                     (_%hd240561240598%_
                      (let () (declare (not safe)) (##car _%e240560240595%_))))
                 (_%__kont243044243045%_
                  _%tl240559240592%_
                  _%tl240562240600%_
                  _%hd240561240598%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont243046243047%_))))
                                             (_%__kont243046243047%_))))
                                     (_%__kont243046243047%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%g240079240141%_))
                                 (let* ((_%g240707240726%_
                                         (lambda (_%g240708240723%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g240708240723%_))))
                                        (_%g240706241022%_
                                         (lambda (_%g240708240729%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g240708240729%_))
                                               (let ((_%e240710240731%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g240708240729%_))))
                                                 (let ((_%hd240711240734%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e240710240731%_)))
                                                       (_%tl240712240736%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e240710240731%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%tl240712240736%_))
                                                       (let ((_g244280_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%tl240712240736%_ '0))))
                 (begin
                   (let ((_g244281_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g244280_)
                                (##values-length _g244280_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g244281_ 2)))
                         (error "Context expects 2 values" _g244281_)))
                   (let ((_%target240713240739%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g244280_ 0)))
                         (_%tl240715240741%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g244280_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl240715240741%_))
                         (letrec ((_%loop240716240744%_
                                   (lambda (_%hd240714240747%_
                                            _%clause240720240749%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd240714240747%_))
                                         (let ((_%e240717240751%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd240714240747%_))))
                                           (let ((_%lp-hd240718240754%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e240717240751%_)))
                                                 (_%lp-tl240719240756%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e240717240751%_))))
                                             (_%loop240716240744%_
                                              _%lp-tl240719240756%_
                                              (cons _%lp-hd240718240754%_
                                                    _%clause240720240749%_))))
                                         (let ((_%clause240721240759%_
                                                (reverse _%clause240720240749%_)))
                                           ((lambda (_%g240709240761%_)
                                              (for-each
                                               (lambda (_%clause240775%_)
                                                 (let* ((_%__stx243068243069%_
                                                         _%clause240775%_)
                                                        (_%g240778240793%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx243068243069%_)))))
                                                   (let ((_%__kont243070243071%_
                                                          (lambda (_%g240780240821%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g240781240822%_
                           _%g240782240823%_)
                    (let ((_%receiver240842%_
                           (let ((_%$e240839%_
                                  (gxc#apply-extract-receiver
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f '%#begin))
                                         _%g240780240821%_))))
                             (if _%$e240839%_
                                 _%$e240839%_
                                 _%g240782240823%_))))
                      (for-each
                       (lambda (_%g240843240845%_)
                         (gxc#apply-collect-object-refs__%
                          '#f
                          _%receiver240842%_
                          _%method-calls240161%_
                          _%slot-refs240162%_
                          _%g240843240845%_))
                       _%g240780240821%_))))
                 (_%__kont243072243073%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx243068243069%_))
                                                         (let ((_%e240783240805%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx243068243069%_))))
                   (let ((_%tl240785240810%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e240783240805%_)))
                         (_%hd240784240808%_
                          (let ()
                            (declare (not safe))
                            (##car _%e240783240805%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd240784240808%_))
                         (let ((_%e240786240813%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd240784240808%_))))
                           (let ((_%tl240788240818%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e240786240813%_)))
                                 (_%hd240787240816%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e240786240813%_))))
                             (_%__kont243070243071%_
                              _%tl240785240810%_
                              _%tl240788240818%_
                              _%hd240787240816%_)))
                         (_%__kont243072243073%_))))
                 (_%__kont243072243073%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp244282
                                                      (lambda (_%g240850240853%_
                                                               _%g240851240855%_)
                                                        (cons _%g240850240853%_
                                                              _%g240851240855%_))))
                                                 (declare (not safe))
                                                 (foldr__0
                                                  __tmp244282
                                                  '()
                                                  _%g240709240761%_)))
                                              (if (_%no-specializer?240165%_)
                                                  _%stx240069%_
                                                  (let* ((_%specializer-id240864%_
                                                          (let* ((_%id240858%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp244283
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g240080240142%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp244283 '"::specialize")))
                         (_%specializer-id240861%_
                          (let ((__tmp244284
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx240069%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id240858%_
                             __tmp244284))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id240861%_))
                    _%specializer-id240861%_))
                 (_%$klass240866%_
                  (let ((__tmp244285
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp244285)))
                 (_%$method-table240868%_
                  (let ((__tmp244286
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp244286)))
                 (_%methods240870%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls240161%_)))
                 (_%$methods240874%_
                  (let ((__tmp244287
                         (lambda (_%id240872%_)
                           (let ((__tmp244288 (gensym _%id240872%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp244288)))))
                    (declare (not safe))
                    (##map __tmp244287 _%methods240870%_)))
                 (_%_240883%_
                  (let ((__tmp244289
                         (lambda (_%g240875240878%_ _%g240876240880%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%method-calls240161%_
                              _%g240875240878%_
                              _%g240876240880%_)))))
                    (declare (not safe))
                    (##for-each
                     __tmp244289
                     _%methods240870%_
                     _%$methods240874%_)))
                 (_%methods-bind240893%_
                  (let ((__tmp244290
                         (lambda (_%g240885240888%_ _%g240886240890%_)
                           (_%generate-method-bind240071%_
                            _%$klass240866%_
                            _%$method-table240868%_
                            _%g240885240888%_
                            _%g240886240890%_))))
                    (declare (not safe))
                    (##map __tmp244290 _%methods240870%_ _%$methods240874%_)))
                 (_%slots240895%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs240162%_)))
                 (_%$slots240899%_
                  (let ((__tmp244291
                         (lambda (_%id240897%_)
                           (let ((__tmp244292 (gensym _%id240897%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp244292)))))
                    (declare (not safe))
                    (##map __tmp244291 _%slots240895%_)))
                 (_%_240908%_
                  (let ((__tmp244293
                         (lambda (_%g240900240903%_ _%g240901240905%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%slot-refs240162%_
                              _%g240900240903%_
                              _%g240901240905%_)))))
                    (declare (not safe))
                    (##for-each __tmp244293 _%slots240895%_ _%$slots240899%_)))
                 (_%slots-bind240917%_
                  (let ((__tmp244294
                         (lambda (_%g240909240912%_ _%g240910240914%_)
                           (_%generate-slot-bind240072%_
                            _%$klass240866%_
                            _%g240909240912%_
                            _%g240910240914%_))))
                    (declare (not safe))
                    (##map __tmp244294 _%slots240895%_ _%$slots240899%_)))
                 (_%specializer-clauses241015%_
                  (map (lambda (_%clause240919%_)
                         (let* ((_%__stx243088243089%_ _%clause240919%_)
                                (_%g240922240937%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx243088243089%_)))))
                           (let ((_%__kont243090243091%_
                                  (lambda (_%g240924240965%_
                                           _%g240925240966%_
                                           _%g240926240967%_)
                                    (let* ((_%receiver240996%_
                                            (let ((_%$e240993%_
                                                   (gxc#apply-extract-receiver
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#begin))
                                                          _%g240924240965%_))))
                                              (if _%$e240993%_
                                                  _%$e240993%_
                                                  _%g240926240967%_)))
                                           (_%body241002%_
                                            (map (lambda (_%g240997240999%_)
                                                   (gxc#apply-subst-object-refs__%
                                                    '#f
                                                    _%receiver240996%_
                                                    _%$klass240866%_
                                                    _%method-calls240161%_
                                                    _%slot-refs240162%_
                                                    _%g240997240999%_))
                                                 _%g240924240965%_)))
                                      (cons (cons _%g240926240967%_
                                                  _%g240925240966%_)
                                            _%body241002%_))))
                                 (_%__kont243092243093%_
                                  (lambda () _%clause240919%_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx243088243089%_))
                                 (let ((_%e240927240949%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx243088243089%_))))
                                   (let ((_%tl240929240954%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e240927240949%_)))
                                         (_%hd240928240952%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e240927240949%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd240928240952%_))
                                         (let ((_%e240930240957%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd240928240952%_))))
                                           (let ((_%tl240932240962%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e240930240957%_)))
                                                 (_%hd240931240960%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e240930240957%_))))
                                             (_%__kont243090243091%_
                                              _%tl240929240954%_
                                              _%tl240932240962%_
                                              _%hd240931240960%_)))
                                         (_%__kont243092243093%_))))
                                 (_%__kont243092243093%_)))))
                       (let ((__tmp244295
                              (lambda (_%g241007241010%_ _%g241008241012%_)
                                (cons _%g241007241010%_ _%g241008241012%_))))
                         (declare (not safe))
                         (foldr__0 __tmp244295 '() _%g240709240761%_))))
                 (_%specializer-impl241017%_
                  (let ((__tmp244296
                         (cons '%#case-lambda _%specializer-clauses241015%_)))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp244296 _%stx240069%_)))
                 (_%specializer-impl241019%_
                  (_%generate-specializer-impl240073%_
                   _%$klass240866%_
                   _%$method-table240868%_
                   _%methods-bind240893%_
                   _%slots-bind240917%_
                   _%specializer-impl241017%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp244298
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%g240080240142%_)))
                                                          (__tmp244297
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id240864%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp244298
                                                       '" => "
                                                       __tmp244297))
                                                    (_%generate-specializer-def240074%_
                                                     _%g240080240142%_
                                                     _%specializer-id240864%_
                                                     _%specializer-impl241019%_))))
                                            _%clause240721240759%_))))))
                           (_%loop240716240744%_ _%target240713240739%_ '()))
                         (_%g240707240726%_ _%g240708240729%_)))))
               (_%g240707240726%_ _%g240708240729%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g240707240726%_
                                                _%g240708240729%_)))))
                                   (_%g240706241022%_ _%g240079240141%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr?
                                        _%g240079240141%_))
                                     (let* ((_%g241026241056%_
                                             (lambda (_%g241027241053%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g241027241053%_))))
                                            (_%g241025241683%_
                                             (lambda (_%g241027241059%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g241027241059%_))
                                                   (let ((_%e241031241061%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g241027241059%_))))
                                                     (let ((_%hd241032241064%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e241031241061%_)))
                                                           (_%tl241033241066%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e241031241061%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl241033241066%_))
                                                           (let ((_%e241034241069%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl241033241066%_))))
                     (let ((_%hd241035241072%_
                            (let ()
                              (declare (not safe))
                              (##car _%e241034241069%_)))
                           (_%tl241036241074%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e241034241069%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd241035241072%_))
                           (let ((_%e241037241077%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd241035241072%_))))
                             (let ((_%hd241038241080%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e241037241077%_)))
                                   (_%tl241039241082%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e241037241077%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd241038241080%_))
                                   (let ((_%e241040241085%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd241038241080%_))))
                                     (let ((_%hd241041241088%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e241040241085%_)))
                                           (_%tl241042241090%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e241040241085%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd241041241088%_))
                                           (let ((_%e241043241093%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd241041241088%_))))
                                             (let ((_%hd241044241096%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e241043241093%_)))
                                                   (_%tl241045241098%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e241043241093%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl241045241098%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl241042241090%_))
                                                       (let ((_%e241046241101%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl241042241090%_))))
                 (let ((_%hd241047241104%_
                        (let ()
                          (declare (not safe))
                          (##car _%e241046241101%_)))
                       (_%tl241048241106%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e241046241101%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl241048241106%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl241039241082%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl241036241074%_))
                               (let ((_%e241049241109%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl241036241074%_))))
                                 (let ((_%hd241050241112%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e241049241109%_)))
                                       (_%tl241051241114%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e241049241109%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl241051241114%_))
                                       ((lambda (_%g241028241117%_
                                                 _%g241029241118%_
                                                 _%g241030241119%_)
                                          (let* ((_%g241143241161%_
                                                  (lambda (_%g241144241158%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g241144241158%_))))
                                                 (_%g241142241217%_
                                                  (lambda (_%g241144241164%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g241144241164%_))
                                                        (let ((_%e241148241166%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g241144241164%_))))
                  (let ((_%hd241149241169%_
                         (let ()
                           (declare (not safe))
                           (##car _%e241148241166%_)))
                        (_%tl241150241171%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e241148241166%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl241150241171%_))
                        (let ((_%e241151241174%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl241150241171%_))))
                          (let ((_%hd241152241177%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e241151241174%_)))
                                (_%tl241153241179%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e241151241174%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd241152241177%_))
                                (let ((_%e241154241182%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd241152241177%_))))
                                  (let ((_%hd241155241185%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e241154241182%_)))
                                        (_%tl241156241187%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e241154241182%_))))
                                    ((lambda (_%g241145241190%_
                                              _%g241146241191%_
                                              _%g241147241192%_)
                                       (let ((_%receiver241211%_
                                              (let ((_%$e241208%_
                                                     (gxc#apply-extract-receiver
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))
                                                            _%g241145241190%_))))
                                                (if _%$e241208%_
                                                    _%$e241208%_
                                                    _%g241147241192%_))))
                                         (for-each
                                          (lambda (_%g241212241214%_)
                                            (gxc#apply-collect-object-refs__%
                                             '#f
                                             _%receiver241211%_
                                             _%method-calls240161%_
                                             _%slot-refs240162%_
                                             _%g241212241214%_))
                                          _%g241145241190%_)))
                                     _%tl241153241179%_
                                     _%tl241156241187%_
                                     _%hd241155241185%_)))
                                (_%g241143241161%_ _%g241144241164%_))))
                        (_%g241143241161%_ _%g241144241164%_))))
                (_%g241143241161%_ _%g241144241164%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g241142241217%_
                                             _%g241029241118%_))
                                          (let* ((_%g241220241239%_
                                                  (lambda (_%g241221241236%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g241221241236%_))))
                                                 (_%g241219241361%_
                                                  (lambda (_%g241221241242%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g241221241242%_))
                                                        (let ((_%e241223241244%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g241221241242%_))))
                  (let ((_%hd241224241247%_
                         (let ()
                           (declare (not safe))
                           (##car _%e241223241244%_)))
                        (_%tl241225241249%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e241223241244%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl241225241249%_))
                        (let ((_g244299_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%tl241225241249%_
                                  '0))))
                          (begin
                            (let ((_g244300_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g244299_)
                                         (##values-length _g244299_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g244300_ 2)))
                                  (error "Context expects 2 values"
                                         _g244300_)))
                            (let ((_%target241226241252%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g244299_ 0)))
                                  (_%tl241228241254%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g244299_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl241228241254%_))
                                  (letrec ((_%loop241229241257%_
                                            (lambda (_%hd241227241260%_
                                                     _%clause241233241262%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd241227241260%_))
                                                  (let ((_%e241230241264%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd241227241260%_))))
                                                    (let ((_%lp-hd241231241267%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e241230241264%_)))
                                                          (_%lp-tl241232241269%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e241230241264%_))))
                                                      (_%loop241229241257%_
                                                       _%lp-tl241232241269%_
                                                       (cons _%lp-hd241231241267%_
                                                             _%clause241233241262%_))))
                                                  (let ((_%clause241234241272%_
                                                         (reverse _%clause241233241262%_)))
                                                    ((lambda (_%g241222241274%_)
                                                       (for-each
                                                        (lambda (_%clause241287%_)
                                                          (let* ((_%g241289241304%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g241290241301%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g241290241301%_))))
                         (_%g241288241351%_
                          (lambda (_%g241290241307%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g241290241307%_))
                                (let ((_%e241294241309%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g241290241307%_))))
                                  (let ((_%hd241295241312%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e241294241309%_)))
                                        (_%tl241296241314%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e241294241309%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd241295241312%_))
                                        (let ((_%e241297241317%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd241295241312%_))))
                                          (let ((_%hd241298241320%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e241297241317%_)))
                                                (_%tl241299241322%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e241297241317%_))))
                                            ((lambda (_%g241291241325%_
                                                      _%g241292241326%_
                                                      _%g241293241327%_)
                                               (let ((_%receiver241345%_
                                                      (let ((_%$e241342%_
                                                             (gxc#apply-extract-receiver
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '%#begin))
                            _%g241291241325%_))))
                (if _%$e241342%_ _%$e241342%_ _%g241293241327%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (for-each
                                                  (lambda (_%g241346241348%_)
                                                    (gxc#apply-collect-object-refs__%
                                                     '#f
                                                     _%receiver241345%_
                                                     _%method-calls240161%_
                                                     _%slot-refs240162%_
                                                     _%g241346241348%_))
                                                  _%g241291241325%_)))
                                             _%tl241296241314%_
                                             _%tl241299241322%_
                                             _%hd241298241320%_)))
                                        (_%g241289241304%_
                                         _%g241290241307%_))))
                                (_%g241289241304%_ _%g241290241307%_)))))
                    (_%g241288241351%_ _%clause241287%_)))
                (let ((__tmp244301
                       (lambda (_%g241353241356%_ _%g241354241358%_)
                         (cons _%g241353241356%_ _%g241354241358%_))))
                  (declare (not safe))
                  (foldr__0 __tmp244301 '() _%g241222241274%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%clause241234241272%_))))))
                                    (_%loop241229241257%_
                                     _%target241226241252%_
                                     '()))
                                  (_%g241220241239%_ _%g241221241242%_)))))
                        (_%g241220241239%_ _%g241221241242%_))))
                (_%g241220241239%_ _%g241221241242%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g241219241361%_
                                             _%g241028241117%_))
                                          (if (_%no-specializer?240165%_)
                                              _%stx240069%_
                                              (let* ((_%specializer-id241370%_
                                                      (let* ((_%id241364%_
                                                              (let ((__tmp244302
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g240080240142%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp244302 '"::specialize")))
                     (_%specializer-id241367%_
                      (let ((__tmp244303
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx240069%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id241364%_ __tmp244303))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id241367%_))
                _%specializer-id241367%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass241372%_
                                                      (let ((__tmp244304
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp244304)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table241374%_
                                                      (let ((__tmp244305
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp244305)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods241376%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls240161%_)))
                                                     (_%$methods241380%_
                                                      (let ((__tmp244306
                                                             (lambda (_%id241378%_)
                                                               (let ((__tmp244307
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id241378%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp244307)))))
                (declare (not safe))
                (##map __tmp244306 _%methods241376%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_241389%_
                                                      (let ((__tmp244308
                                                             (lambda (_%g241381241384%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g241382241386%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls240161%_
                          _%g241381241384%_
                          _%g241382241386%_)))))
                (declare (not safe))
                (##for-each __tmp244308 _%methods241376%_ _%$methods241380%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind241399%_
                                                      (let ((__tmp244309
                                                             (lambda (_%g241391241394%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g241392241396%_)
                       (_%generate-method-bind240071%_
                        _%$klass241372%_
                        _%$method-table241374%_
                        _%g241391241394%_
                        _%g241392241396%_))))
                (declare (not safe))
                (##map __tmp244309 _%methods241376%_ _%$methods241380%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots241401%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs240162%_)))
                                                     (_%$slots241405%_
                                                      (let ((__tmp244310
                                                             (lambda (_%id241403%_)
                                                               (let ((__tmp244311
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id241403%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp244311)))))
                (declare (not safe))
                (##map __tmp244310 _%slots241401%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_241414%_
                                                      (let ((__tmp244312
                                                             (lambda (_%g241406241409%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g241407241411%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs240162%_
                          _%g241406241409%_
                          _%g241407241411%_)))))
                (declare (not safe))
                (##for-each __tmp244312 _%slots241401%_ _%$slots241405%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind241423%_
                                                      (let ((__tmp244313
                                                             (lambda (_%g241415241418%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g241416241420%_)
                       (_%generate-slot-bind240072%_
                        _%$klass241372%_
                        _%g241415241418%_
                        _%g241416241420%_))))
                (declare (not safe))
                (##map __tmp244313 _%slots241401%_ _%$slots241405%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-lambda-expr241515%_
                                                      (let* ((_%g241425241443%_
                                                              (lambda (_%g241426241440%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g241426241440%_))))
                     (_%g241424241512%_
                      (lambda (_%g241426241446%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g241426241446%_))
                            (let ((_%e241430241448%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g241426241446%_))))
                              (let ((_%hd241431241451%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e241430241448%_)))
                                    (_%tl241432241453%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e241430241448%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl241432241453%_))
                                    (let ((_%e241433241456%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl241432241453%_))))
                                      (let ((_%hd241434241459%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e241433241456%_)))
                                            (_%tl241435241461%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e241433241456%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd241434241459%_))
                                            (let ((_%e241436241464%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd241434241459%_))))
                                              (let ((_%hd241437241467%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e241436241464%_)))
                                                    (_%tl241438241469%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e241436241464%_))))
                                                ((lambda (_%g241427241472%_
                                                          _%g241428241473%_
                                                          _%g241429241474%_)
                                                   (let* ((_%receiver241503%_
                                                           (let ((_%$e241500%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#apply-extract-receiver
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#begin))
                                 _%g241427241472%_))))
                     (if _%$e241500%_ _%$e241500%_ _%g241429241474%_)))
                  (_%body241509%_
                   (map (lambda (_%g241504241506%_)
                          (gxc#apply-subst-object-refs__%
                           '#f
                           _%receiver241503%_
                           _%$klass241372%_
                           _%method-calls240161%_
                           _%slot-refs240162%_
                           _%g241504241506%_))
                        _%g241427241472%_))
                  (__tmp244314
                   (cons '%#lambda
                         (cons (cons _%g241429241474%_ _%g241428241473%_)
                               _%body241509%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp244314
                                                      _%g241029241118%_)))
                                                 _%tl241435241461%_
                                                 _%tl241438241469%_
                                                 _%hd241437241467%_)))
                                            (_%g241425241443%_
                                             _%g241426241446%_))))
                                    (_%g241425241443%_ _%g241426241446%_))))
                            (_%g241425241443%_ _%g241426241446%_)))))
                (_%g241424241512%_ _%g241029241118%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-case-lambda-expr241676%_
                                                      (let* ((_%g241517241536%_
                                                              (lambda (_%g241518241533%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g241518241533%_))))
                     (_%g241516241673%_
                      (lambda (_%g241518241539%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g241518241539%_))
                            (let ((_%e241520241541%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g241518241539%_))))
                              (let ((_%hd241521241544%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e241520241541%_)))
                                    (_%tl241522241546%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e241520241541%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl241522241546%_))
                                    (let ((_g244315_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl241522241546%_
                                              '0))))
                                      (begin
                                        (let ((_g244316_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g244315_)
                                                     (##values-length
                                                      _g244315_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g244316_ 2)))
                                              (error "Context expects 2 values"
                                                     _g244316_)))
                                        (let ((_%target241523241549%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g244315_ 0)))
                                              (_%tl241525241551%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g244315_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl241525241551%_))
                                              (letrec ((_%loop241526241554%_
                                                        (lambda (_%hd241524241557%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%clause241530241559%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd241524241557%_))
                      (let ((_%e241527241561%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd241524241557%_))))
                        (let ((_%lp-hd241528241564%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e241527241561%_)))
                              (_%lp-tl241529241566%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e241527241561%_))))
                          (_%loop241526241554%_
                           _%lp-tl241529241566%_
                           (cons _%lp-hd241528241564%_
                                 _%clause241530241559%_))))
                      (let ((_%clause241531241569%_
                             (reverse _%clause241530241559%_)))
                        ((lambda (_%g241519241571%_)
                           (let* ((_%clauses241671%_
                                   (map (lambda (_%clause241585%_)
                                          (let* ((_%__stx243108243109%_
                                                  _%clause241585%_)
                                                 (_%g241588241603%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx243108243109%_)))))
                                            (let ((_%__kont243110243111%_
                                                   (lambda (_%g241590241631%_
                                                            _%g241591241632%_
                                                            _%g241592241633%_)
                                                     (let* ((_%receiver241652%_
                                                             (let ((_%$e241649%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#apply-extract-receiver
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#begin))
                                   _%g241590241631%_))))
                       (if _%$e241649%_ _%$e241649%_ _%g241592241633%_)))
                    (_%body241658%_
                     (map (lambda (_%g241653241655%_)
                            (gxc#apply-subst-object-refs__%
                             '#f
                             _%receiver241652%_
                             _%$klass241372%_
                             _%method-calls240161%_
                             _%slot-refs240162%_
                             _%g241653241655%_))
                          _%g241590241631%_)))
               (cons (cons _%g241592241633%_ _%g241591241632%_)
                     _%body241658%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont243112243113%_
                                                   (lambda ()
                                                     _%clause241585%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx243108243109%_))
                                                  (let ((_%e241593241615%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%__stx243108243109%_))))
                                                    (let ((_%tl241595241620%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e241593241615%_)))
                                                          (_%hd241594241618%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e241593241615%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd241594241618%_))
                                                          (let ((_%e241596241623%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd241594241618%_))))
                    (let ((_%tl241598241628%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e241596241623%_)))
                          (_%hd241597241626%_
                           (let ()
                             (declare (not safe))
                             (##car _%e241596241623%_))))
                      (_%__kont243110243111%_
                       _%tl241595241620%_
                       _%tl241598241628%_
                       _%hd241597241626%_)))
                  (_%__kont243112243113%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont243112243113%_)))))
                                        (let ((__tmp244317
                                               (lambda (_%g241663241666%_
                                                        _%g241664241668%_)
                                                 (cons _%g241663241666%_
                                                       _%g241664241668%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp244317
                                           '()
                                           _%g241519241571%_))))
                                  (__tmp244318
                                   (cons '%#case-lambda _%clauses241671%_)))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp244318
                              _%g241028241117%_)))
                         _%clause241531241569%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop241526241554%_
                                                 _%target241523241549%_
                                                 '()))
                                              (_%g241517241536%_
                                               _%g241518241539%_)))))
                                    (_%g241517241536%_ _%g241518241539%_))))
                            (_%g241517241536%_ _%g241518241539%_)))))
                (_%g241516241673%_ _%g241028241117%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl241678%_
                                                      (let ((__tmp244319
                                                             (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons (cons _%g241030241119%_ '())
                                             (cons _%specializer-lambda-expr241515%_
                                                   '()))
                                       '())
                                 (cons _%specializer-case-lambda-expr241676%_
                                       '())))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp244319 _%stx240069%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl241680%_
                                                      (_%generate-specializer-impl240073%_
                                                       _%$klass241372%_
                                                       _%$method-table241374%_
                                                       _%methods-bind241399%_
                                                       _%slots-bind241423%_
                                                       _%specializer-impl241678%_)))
                                                (let ((__tmp244321
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g240080240142%_)))
                                                      (__tmp244320
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id241370%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp244321
                                                   '" => "
                                                   __tmp244320))
                                                (_%generate-specializer-def240074%_
                                                 _%g240080240142%_
                                                 _%specializer-id241370%_
                                                 _%specializer-impl241680%_))))
                                        _%hd241050241112%_
                                        _%hd241047241104%_
                                        _%hd241044241096%_)
                                       (_%g241026241056%_ _%g241027241059%_))))
                               (_%g241026241056%_ _%g241027241059%_))
                           (_%g241026241056%_ _%g241027241059%_))
                       (_%g241026241056%_ _%g241027241059%_))))
               (_%g241026241056%_ _%g241027241059%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g241026241056%_
                                                    _%g241027241059%_))))
                                           (_%g241026241056%_
                                            _%g241027241059%_))))
                                   (_%g241026241056%_ _%g241027241059%_))))
                           (_%g241026241056%_ _%g241027241059%_))))
                   (_%g241026241056%_ _%g241027241059%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g241026241056%_
                                                    _%g241027241059%_)))))
                                       (_%g241025241683%_ _%g240079240141%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr?
                                            _%g240079240141%_))
                                         (let* ((_%g241687241740%_
                                                 (lambda (_%g241688241737%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g241688241737%_))))
                                                (_%g241686242905%_
                                                 (lambda (_%g241688241743%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g241688241743%_))
                                                       (let ((_%e241694241745%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g241688241743%_))))
                 (let ((_%hd241695241748%_
                        (let ()
                          (declare (not safe))
                          (##car _%e241694241745%_)))
                       (_%tl241696241750%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e241694241745%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%hd241695241748%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%hd241695241748%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl241696241750%_))
                               (let ((_%e241697241753%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl241696241750%_))))
                                 (let ((_%hd241698241756%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e241697241753%_)))
                                       (_%tl241699241758%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e241697241753%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd241698241756%_))
                                       (let ((_%e241700241761%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd241698241756%_))))
                                         (let ((_%hd241701241764%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e241700241761%_)))
                                               (_%tl241702241766%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e241700241761%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd241701241764%_))
                                               (let ((_%e241703241769%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd241701241764%_))))
                                                 (let ((_%hd241704241772%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e241703241769%_)))
                                                       (_%tl241705241774%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e241703241769%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd241704241772%_))
                                                       (let ((_%e241706241777%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd241704241772%_))))
                 (let ((_%hd241707241780%_
                        (let ()
                          (declare (not safe))
                          (##car _%e241706241777%_)))
                       (_%tl241708241782%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e241706241777%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl241708241782%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl241705241774%_))
                           (let ((_%e241709241785%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl241705241774%_))))
                             (let ((_%hd241710241788%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e241709241785%_)))
                                   (_%tl241711241790%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e241709241785%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd241710241788%_))
                                   (let ((_%e241712241793%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd241710241788%_))))
                                     (let ((_%hd241713241796%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e241712241793%_)))
                                           (_%tl241714241798%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e241712241793%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd241713241796%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%hd241713241796%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl241714241798%_))
                                                   (let ((_%e241715241801%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl241714241798%_))))
                                                     (let ((_%hd241716241804%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e241715241801%_)))
                                                           (_%tl241717241806%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e241715241801%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd241716241804%_))
                                                           (let ((_%e241718241809%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%hd241716241804%_))))
                     (let ((_%hd241719241812%_
                            (let ()
                              (declare (not safe))
                              (##car _%e241718241809%_)))
                           (_%tl241720241814%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e241718241809%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd241719241812%_))
                           (let ((_%e241721241817%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd241719241812%_))))
                             (let ((_%hd241722241820%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e241721241817%_)))
                                   (_%tl241723241822%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e241721241817%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd241722241820%_))
                                   (let ((_%e241724241825%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd241722241820%_))))
                                     (let ((_%hd241725241828%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e241724241825%_)))
                                           (_%tl241726241830%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e241724241825%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl241726241830%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl241723241822%_))
                                               (let ((_%e241727241833%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl241723241822%_))))
                                                 (let ((_%hd241728241836%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e241727241833%_)))
                                                       (_%tl241729241838%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e241727241833%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl241729241838%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl241720241814%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl241717241806%_))
                       (let ((_%e241730241841%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl241717241806%_))))
                         (let ((_%hd241731241844%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e241730241841%_)))
                               (_%tl241732241846%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e241730241841%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl241732241846%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl241711241790%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl241702241766%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl241699241758%_))
                                           (let ((_%e241733241849%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl241699241758%_))))
                                             (let ((_%hd241734241852%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e241733241849%_)))
                                                   (_%tl241735241854%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e241733241849%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl241735241854%_))
                                                   ((lambda (_%g241689241857%_
                                                             _%g241690241858%_
                                                             _%g241691241859%_
                                                             _%g241692241860%_
                                                             _%g241693241861%_)
                                                      (let* ((_%g241901241963%_
                                                              (lambda (_%g241902241960%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g241902241960%_))))
                     (_%g241900242902%_
                      (lambda (_%g241902241966%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g241902241966%_))
                            (let ((_%e241908241968%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g241902241966%_))))
                              (let ((_%hd241909241971%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e241908241968%_)))
                                    (_%tl241910241973%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e241908241968%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd241909241971%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd241909241971%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl241910241973%_))
                                            (let ((_%e241911241976%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl241910241973%_))))
                                              (let ((_%hd241912241979%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e241911241976%_)))
                                                    (_%tl241913241981%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e241911241976%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl241913241981%_))
                                                    (let ((_%e241914241984%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl241913241981%_))))
                                                      (let ((_%hd241915241987%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e241914241984%_)))
                    (_%tl241916241989%_
                     (let () (declare (not safe)) (##cdr _%e241914241984%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd241915241987%_))
                    (let ((_%e241917241992%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd241915241987%_))))
                      (let ((_%hd241918241995%_
                             (let ()
                               (declare (not safe))
                               (##car _%e241917241992%_)))
                            (_%tl241919241997%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e241917241992%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd241918241995%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _%hd241918241995%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl241919241997%_))
                                    (let ((_%e241920242000%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl241919241997%_))))
                                      (let ((_%hd241921242003%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e241920242000%_)))
                                            (_%tl241922242005%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e241920242000%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd241921242003%_))
                                            (let ((_%e241923242008%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd241921242003%_))))
                                              (let ((_%hd241924242011%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e241923242008%_)))
                                                    (_%tl241925242013%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e241923242008%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd241924242011%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd241924242011%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl241925242013%_))
                                                            (let ((_%e241926242016%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl241925242013%_))))
                      (let ((_%hd241927242019%_
                             (let ()
                               (declare (not safe))
                               (##car _%e241926242016%_)))
                            (_%tl241928242021%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e241926242016%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl241928242021%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl241922242005%_))
                                (let ((_%e241929242024%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl241922242005%_))))
                                  (let ((_%hd241930242027%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e241929242024%_)))
                                        (_%tl241931242029%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e241929242024%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd241930242027%_))
                                        (let ((_%e241932242032%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd241930242027%_))))
                                          (let ((_%hd241933242035%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e241932242032%_)))
                                                (_%tl241934242037%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e241932242032%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd241933242035%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%hd241933242035%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl241934242037%_))
                                                        (let ((_%e241935242040%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl241934242037%_))))
                  (let ((_%hd241936242043%_
                         (let ()
                           (declare (not safe))
                           (##car _%e241935242040%_)))
                        (_%tl241937242045%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e241935242040%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl241937242045%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl241931242029%_))
                            (let ((_%e241938242048%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl241931242029%_))))
                              (let ((_%hd241939242051%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e241938242048%_)))
                                    (_%tl241940242053%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e241938242048%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd241939242051%_))
                                    (let ((_%e241941242056%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd241939242051%_))))
                                      (let ((_%hd241942242059%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e241941242056%_)))
                                            (_%tl241943242061%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e241941242056%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd241942242059%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd241942242059%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl241943242061%_))
                                                    (let ((_%e241944242064%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl241943242061%_))))
                                                      (let ((_%hd241945242067%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e241944242064%_)))
                    (_%tl241946242069%_
                     (let () (declare (not safe)) (##cdr _%e241944242064%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl241946242069%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl241940242053%_))
                        (if (let ((__tmp244322
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-length _%tl241940242053%_))))
                              (declare (not safe))
                              (##fx>= __tmp244322 '1))
                            (let ((_g244323_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl241940242053%_
                                      '1))))
                              (begin
                                (let ((_g244324_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g244323_)
                                             (##values-length _g244323_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g244324_ 2)))
                                      (error "Context expects 2 values"
                                             _g244324_)))
                                (let ((_%target241947242072%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g244323_ 0)))
                                      (_%tl241949242074%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g244323_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl241949242074%_))
                                      (let ((_%e241956242077%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl241949242074%_))))
                                        (let ((_%hd241957242080%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e241956242077%_)))
                                              (_%tl241958242082%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e241956242077%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl241958242082%_))
                                              (letrec ((_%loop241950242085%_
                                                        (lambda (_%hd241948242088%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%kw-ref241954242090%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd241948242088%_))
                      (let ((_%e241951242092%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd241948242088%_))))
                        (let ((_%lp-hd241952242095%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e241951242092%_)))
                              (_%lp-tl241953242097%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e241951242092%_))))
                          (_%loop241950242085%_
                           _%lp-tl241953242097%_
                           (cons _%lp-hd241952242095%_
                                 _%kw-ref241954242090%_))))
                      (let ((_%kw-ref241955242100%_
                             (reverse _%kw-ref241954242090%_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl241916241989%_))
                            ((lambda (_%g241903242102%_
                                      _%g241904242103%_
                                      _%g241905242104%_
                                      _%g241906242105%_
                                      _%g241907242106%_)
                               (let* ((_%kw-count242157%_
                                       (length (let ((__tmp244325
                                                      (lambda (_%g242149242152%_
                                                               _%g242150242154%_)
                                                        (cons _%g242149242152%_
                                                              _%g242150242154%_))))
                                                 (declare (not safe))
                                                 (foldr__0
                                                  __tmp244325
                                                  '()
                                                  _%g241904242103%_))))
                                      (_%self-index242159%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%kw-count242157%_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _%g241691241859%_))
                                     (let* ((_%g242163242177%_
                                             (lambda (_%g242164242174%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g242164242174%_))))
                                            (_%g242162242300%_
                                             (lambda (_%g242164242180%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g242164242180%_))
                                                   (let ((_%e242167242182%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g242164242180%_))))
                                                     (let ((_%hd242168242185%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e242167242182%_)))
                                                           (_%tl242169242187%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e242167242182%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl242169242187%_))
                                                           (let ((_%e242170242190%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl242169242187%_))))
                     (let ((_%hd242171242193%_
                            (let ()
                              (declare (not safe))
                              (##car _%e242170242190%_)))
                           (_%tl242172242195%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e242170242190%_))))
                       ((lambda (_%g242165242198%_ _%g242166242199%_)
                          (let* ((_%self242216%_
                                  (list-ref
                                   _%g242166242199%_
                                   _%self-index242159%_))
                                 (_%receiver242221%_
                                  (let ((_%$e242218%_
                                         (gxc#apply-extract-receiver
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   '%#begin))
                                                _%g242165242198%_))))
                                    (if _%$e242218%_
                                        _%$e242218%_
                                        _%self242216%_))))
                            (for-each
                             (lambda (_%g242223242225%_)
                               (gxc#apply-collect-object-refs__%
                                '#f
                                _%receiver242221%_
                                _%method-calls240161%_
                                _%slot-refs240162%_
                                _%g242223242225%_))
                             _%g242165242198%_)
                            (if (_%no-specializer?240165%_)
                                _%stx240069%_
                                (let* ((_%specializer-id242234%_
                                        (let* ((_%id242228%_
                                                (let ((__tmp244326
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g240080240142%_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp244326
                                                   '"::specialize")))
                                               (_%specializer-id242231%_
                                                (let ((__tmp244327
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _%stx240069%_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _%id242228%_
                                                   __tmp244327))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _%specializer-id242231%_))
                                          _%specializer-id242231%_))
                                       (_%$klass242236%_
                                        (let ((__tmp244328
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__klass))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp244328)))
                                       (_%$method-table242238%_
                                        (let ((__tmp244329
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__method-table))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp244329)))
                                       (_%methods242240%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys
                                           _%method-calls240161%_)))
                                       (_%$methods242244%_
                                        (let ((__tmp244330
                                               (lambda (_%id242242%_)
                                                 (let ((__tmp244331
                                                        (gensym _%id242242%_)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    '"__"
                                                    __tmp244331)))))
                                          (declare (not safe))
                                          (##map __tmp244330
                                                 _%methods242240%_)))
                                       (_%_242253%_
                                        (let ((__tmp244332
                                               (lambda (_%g242245242248%_
                                                        _%g242246242250%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%method-calls240161%_
                                                    _%g242245242248%_
                                                    _%g242246242250%_)))))
                                          (declare (not safe))
                                          (##for-each
                                           __tmp244332
                                           _%methods242240%_
                                           _%$methods242244%_)))
                                       (_%methods-bind242263%_
                                        (let ((__tmp244333
                                               (lambda (_%g242255242258%_
                                                        _%g242256242260%_)
                                                 (_%generate-method-bind240071%_
                                                  _%$klass242236%_
                                                  _%$method-table242238%_
                                                  _%g242255242258%_
                                                  _%g242256242260%_))))
                                          (declare (not safe))
                                          (##map __tmp244333
                                                 _%methods242240%_
                                                 _%$methods242244%_)))
                                       (_%slots242265%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys _%slot-refs240162%_)))
                                       (_%$slots242269%_
                                        (let ((__tmp244334
                                               (lambda (_%id242267%_)
                                                 (let ((__tmp244335
                                                        (gensym _%id242267%_)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    '"__"
                                                    __tmp244335)))))
                                          (declare (not safe))
                                          (##map __tmp244334 _%slots242265%_)))
                                       (_%_242278%_
                                        (let ((__tmp244336
                                               (lambda (_%g242270242273%_
                                                        _%g242271242275%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%slot-refs240162%_
                                                    _%g242270242273%_
                                                    _%g242271242275%_)))))
                                          (declare (not safe))
                                          (##for-each
                                           __tmp244336
                                           _%slots242265%_
                                           _%$slots242269%_)))
                                       (_%slots-bind242287%_
                                        (let ((__tmp244337
                                               (lambda (_%g242279242282%_
                                                        _%g242280242284%_)
                                                 (_%generate-slot-bind240072%_
                                                  _%$klass242236%_
                                                  _%g242279242282%_
                                                  _%g242280242284%_))))
                                          (declare (not safe))
                                          (##map __tmp244337
                                                 _%slots242265%_
                                                 _%$slots242269%_)))
                                       (_%specializer-impl242295%_
                                        (let* ((_%specializer-body242293%_
                                                (map (lambda (_%g242288242290%_)
                                                       (gxc#apply-subst-object-refs__%
                                                        '#f
                                                        _%receiver242221%_
                                                        _%$klass242236%_
                                                        _%method-calls240161%_
                                                        _%slot-refs240162%_
                                                        _%g242288242290%_))
                                                     _%g242165242198%_))
                                               (__tmp244338
                                                (cons '%#let-values
                                                      (cons (cons (cons (cons _%g241693241861%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (cons '%#let-values
                                            (cons (cons (cons (cons _%g241692241860%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (let ((__tmp244339
                                   (cons '%#lambda
                                         (cons _%g242166242199%_
                                               _%specializer-body242293%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp244339
                               _%g241691241859%_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%g241690241858%_
                                                        '())))
                                      '()))
                          '())
                    (cons _%g241689241857%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp244338
                                           _%stx240069%_)))
                                       (_%specializer-impl242297%_
                                        (_%generate-specializer-impl240073%_
                                         _%$klass242236%_
                                         _%$method-table242238%_
                                         _%methods-bind242263%_
                                         _%slots-bind242287%_
                                         _%specializer-impl242295%_)))
                                  (let ((__tmp244341
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g240080240142%_)))
                                        (__tmp244340
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e
                                            _%specializer-id242234%_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp244341
                                     '" => "
                                     __tmp244340))
                                  (_%generate-specializer-def240074%_
                                   _%g240080240142%_
                                   _%specializer-id242234%_
                                   _%specializer-impl242297%_)))))
                        _%tl242172242195%_
                        _%hd242171242193%_)))
                   (_%g242163242177%_ _%g242164242180%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g242163242177%_
                                                    _%g242164242180%_)))))
                                       (_%g242162242300%_ _%g241691241859%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr?
                                            _%g241691241859%_))
                                         (let* ((_%g242304242334%_
                                                 (lambda (_%g242305242331%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g242305242331%_))))
                                                (_%g242303242898%_
                                                 (lambda (_%g242305242337%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g242305242337%_))
                                                       (let ((_%e242309242339%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g242305242337%_))))
                 (let ((_%hd242310242342%_
                        (let ()
                          (declare (not safe))
                          (##car _%e242309242339%_)))
                       (_%tl242311242344%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e242309242339%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl242311242344%_))
                       (let ((_%e242312242347%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl242311242344%_))))
                         (let ((_%hd242313242350%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e242312242347%_)))
                               (_%tl242314242352%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e242312242347%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd242313242350%_))
                               (let ((_%e242315242355%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd242313242350%_))))
                                 (let ((_%hd242316242358%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e242315242355%_)))
                                       (_%tl242317242360%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e242315242355%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd242316242358%_))
                                       (let ((_%e242318242363%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd242316242358%_))))
                                         (let ((_%hd242319242366%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e242318242363%_)))
                                               (_%tl242320242368%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e242318242363%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd242319242366%_))
                                               (let ((_%e242321242371%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd242319242366%_))))
                                                 (let ((_%hd242322242374%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e242321242371%_)))
                                                       (_%tl242323242376%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e242321242371%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl242323242376%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl242320242368%_))
                                                           (let ((_%e242324242379%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl242320242368%_))))
                     (let ((_%hd242325242382%_
                            (let ()
                              (declare (not safe))
                              (##car _%e242324242379%_)))
                           (_%tl242326242384%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e242324242379%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl242326242384%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl242317242360%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl242314242352%_))
                                   (let ((_%e242327242387%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl242314242352%_))))
                                     (let ((_%hd242328242390%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e242327242387%_)))
                                           (_%tl242329242392%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e242327242387%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl242329242392%_))
                                           ((lambda (_%g242306242395%_
                                                     _%g242307242396%_
                                                     _%g242308242397%_)
                                              (let* ((_%g242421242435%_
                                                      (lambda (_%g242422242432%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g242422242432%_))))
                                                     (_%g242420242482%_
                                                      (lambda (_%g242422242438%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g242422242438%_))
                                                            (let ((_%e242425242440%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g242422242438%_))))
                      (let ((_%hd242426242443%_
                             (let ()
                               (declare (not safe))
                               (##car _%e242425242440%_)))
                            (_%tl242427242445%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e242425242440%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl242427242445%_))
                            (let ((_%e242428242448%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl242427242445%_))))
                              (let ((_%hd242429242451%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e242428242448%_)))
                                    (_%tl242430242453%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e242428242448%_))))
                                ((lambda (_%g242423242456%_ _%g242424242457%_)
                                   (let* ((_%self242470%_
                                           (list-ref
                                            _%g242424242457%_
                                            _%self-index242159%_))
                                          (_%receiver242475%_
                                           (let ((_%$e242472%_
                                                  (gxc#apply-extract-receiver
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '%#begin))
                                                         _%g242423242456%_))))
                                             (if _%$e242472%_
                                                 _%$e242472%_
                                                 _%self242470%_))))
                                     (for-each
                                      (lambda (_%g242477242479%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%receiver242475%_
                                         _%method-calls240161%_
                                         _%slot-refs240162%_
                                         _%g242477242479%_))
                                      _%g242423242456%_)))
                                 _%tl242430242453%_
                                 _%hd242429242451%_)))
                            (_%g242421242435%_ _%g242422242438%_))))
                    (_%g242421242435%_ _%g242422242438%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g242420242482%_
                                                 _%g242307242396%_))
                                              (let* ((_%g242485242504%_
                                                      (lambda (_%g242486242501%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g242486242501%_))))
                                                     (_%g242484242613%_
                                                      (lambda (_%g242486242507%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g242486242507%_))
                                                            (let ((_%e242488242509%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g242486242507%_))))
                      (let ((_%hd242489242512%_
                             (let ()
                               (declare (not safe))
                               (##car _%e242488242509%_)))
                            (_%tl242490242514%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e242488242509%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _%tl242490242514%_))
                            (let ((_g244342_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl242490242514%_
                                      '0))))
                              (begin
                                (let ((_g244343_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g244342_)
                                             (##values-length _g244342_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g244343_ 2)))
                                      (error "Context expects 2 values"
                                             _g244343_)))
                                (let ((_%target242491242517%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g244342_ 0)))
                                      (_%tl242493242519%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g244342_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl242493242519%_))
                                      (letrec ((_%loop242494242522%_
                                                (lambda (_%hd242492242525%_
                                                         _%clause242498242527%_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd242492242525%_))
                                                      (let ((_%e242495242529%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd242492242525%_))))
                (let ((_%lp-hd242496242532%_
                       (let () (declare (not safe)) (##car _%e242495242529%_)))
                      (_%lp-tl242497242534%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e242495242529%_))))
                  (_%loop242494242522%_
                   _%lp-tl242497242534%_
                   (cons _%lp-hd242496242532%_ _%clause242498242527%_))))
              (let ((_%clause242499242537%_ (reverse _%clause242498242527%_)))
                ((lambda (_%g242487242539%_)
                   (for-each
                    (lambda (_%clause242552%_)
                      (let* ((_%g242554242565%_
                              (lambda (_%g242555242562%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g242555242562%_))))
                             (_%g242553242603%_
                              (lambda (_%g242555242568%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g242555242568%_))
                                    (let ((_%e242558242570%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g242555242568%_))))
                                      (let ((_%hd242559242573%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e242558242570%_)))
                                            (_%tl242560242575%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e242558242570%_))))
                                        ((lambda (_%g242556242578%_
                                                  _%g242557242579%_)
                                           (let* ((_%self242591%_
                                                   (list-ref
                                                    _%g242557242579%_
                                                    _%self-index242159%_))
                                                  (_%receiver242596%_
                                                   (let ((_%$e242593%_
                                                          (gxc#apply-extract-receiver
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#begin))
                         _%g242556242578%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e242593%_
                                                         _%$e242593%_
                                                         _%self242591%_))))
                                             (for-each
                                              (lambda (_%g242598242600%_)
                                                (gxc#apply-collect-object-refs__%
                                                 '#f
                                                 _%receiver242596%_
                                                 _%method-calls240161%_
                                                 _%slot-refs240162%_
                                                 _%g242598242600%_))
                                              _%g242556242578%_)))
                                         _%tl242560242575%_
                                         _%hd242559242573%_)))
                                    (_%g242554242565%_ _%g242555242568%_)))))
                        (_%g242553242603%_ _%clause242552%_)))
                    (let ((__tmp244344
                           (lambda (_%g242605242608%_ _%g242606242610%_)
                             (cons _%g242605242608%_ _%g242606242610%_))))
                      (declare (not safe))
                      (foldr__0 __tmp244344 '() _%g242487242539%_))))
                 _%clause242499242537%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop242494242522%_
                                         _%target242491242517%_
                                         '()))
                                      (_%g242485242504%_ _%g242486242507%_)))))
                            (_%g242485242504%_ _%g242486242507%_))))
                    (_%g242485242504%_ _%g242486242507%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g242484242613%_
                                                 _%g242306242395%_))
                                              (if (_%no-specializer?240165%_)
                                                  _%stx240069%_
                                                  (let* ((_%specializer-id242622%_
                                                          (let* ((_%id242616%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp244345
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g240080240142%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp244345 '"::specialize")))
                         (_%specializer-id242619%_
                          (let ((__tmp244346
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx240069%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id242616%_
                             __tmp244346))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id242619%_))
                    _%specializer-id242619%_))
                 (_%$klass242624%_
                  (let ((__tmp244347
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp244347)))
                 (_%$method-table242626%_
                  (let ((__tmp244348
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp244348)))
                 (_%methods242628%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls240161%_)))
                 (_%$methods242632%_
                  (let ((__tmp244349
                         (lambda (_%id242630%_)
                           (let ((__tmp244350 (gensym _%id242630%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp244350)))))
                    (declare (not safe))
                    (##map __tmp244349 _%methods242628%_)))
                 (_%_242641%_
                  (let ((__tmp244351
                         (lambda (_%g242633242636%_ _%g242634242638%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%method-calls240161%_
                              _%g242633242636%_
                              _%g242634242638%_)))))
                    (declare (not safe))
                    (##for-each
                     __tmp244351
                     _%methods242628%_
                     _%$methods242632%_)))
                 (_%methods-bind242651%_
                  (let ((__tmp244352
                         (lambda (_%g242643242646%_ _%g242644242648%_)
                           (_%generate-method-bind240071%_
                            _%$klass242624%_
                            _%$method-table242626%_
                            _%g242643242646%_
                            _%g242644242648%_))))
                    (declare (not safe))
                    (##map __tmp244352 _%methods242628%_ _%$methods242632%_)))
                 (_%slots242653%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs240162%_)))
                 (_%$slots242657%_
                  (let ((__tmp244353
                         (lambda (_%id242655%_)
                           (let ((__tmp244354 (gensym _%id242655%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp244354)))))
                    (declare (not safe))
                    (##map __tmp244353 _%slots242653%_)))
                 (_%_242666%_
                  (let ((__tmp244355
                         (lambda (_%g242658242661%_ _%g242659242663%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%slot-refs240162%_
                              _%g242658242661%_
                              _%g242659242663%_)))))
                    (declare (not safe))
                    (##for-each __tmp244355 _%slots242653%_ _%$slots242657%_)))
                 (_%slots-bind242675%_
                  (let ((__tmp244356
                         (lambda (_%g242667242670%_ _%g242668242672%_)
                           (_%generate-slot-bind240072%_
                            _%$klass242624%_
                            _%g242667242670%_
                            _%g242668242672%_))))
                    (declare (not safe))
                    (##map __tmp244356 _%slots242653%_ _%$slots242657%_)))
                 (_%specializer-lambda-expr242753%_
                  (let* ((_%g242677242691%_
                          (lambda (_%g242678242688%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g242678242688%_))))
                         (_%g242676242750%_
                          (lambda (_%g242678242694%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g242678242694%_))
                                (let ((_%e242681242696%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g242678242694%_))))
                                  (let ((_%hd242682242699%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e242681242696%_)))
                                        (_%tl242683242701%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e242681242696%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl242683242701%_))
                                        (let ((_%e242684242704%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl242683242701%_))))
                                          (let ((_%hd242685242707%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e242684242704%_)))
                                                (_%tl242686242709%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e242684242704%_))))
                                            ((lambda (_%g242679242712%_
                                                      _%g242680242713%_)
                                               (let* ((_%self242736%_
                                                       (list-ref
                                                        _%g242680242713%_
                                                        _%self-index242159%_))
                                                      (_%receiver242741%_
                                                       (let ((_%$e242738%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%g242679242712%_))))
                 (if _%$e242738%_ _%$e242738%_ _%self242736%_)))
              (_%body242747%_
               (map (lambda (_%g242742242744%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver242741%_
                       _%$klass242624%_
                       _%method-calls240161%_
                       _%slot-refs240162%_
                       _%g242742242744%_))
                    _%g242679242712%_))
              (__tmp244357
               (cons '%#lambda (cons _%g242680242713%_ _%body242747%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp244357
                                                  _%g242307242396%_)))
                                             _%tl242686242709%_
                                             _%hd242685242707%_)))
                                        (_%g242677242691%_
                                         _%g242678242694%_))))
                                (_%g242677242691%_ _%g242678242694%_)))))
                    (_%g242676242750%_ _%g242307242396%_)))
                 (_%specializer-case-lambda-expr242891%_
                  (let* ((_%g242755242774%_
                          (lambda (_%g242756242771%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g242756242771%_))))
                         (_%g242754242888%_
                          (lambda (_%g242756242777%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g242756242777%_))
                                (let ((_%e242758242779%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g242756242777%_))))
                                  (let ((_%hd242759242782%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e242758242779%_)))
                                        (_%tl242760242784%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e242758242779%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl242760242784%_))
                                        (let ((_g244358_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl242760242784%_
                                                  '0))))
                                          (begin
                                            (let ((_g244359_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g244358_)
                                                         (##values-length
                                                          _g244358_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g244359_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g244359_)))
                                            (let ((_%target242761242787%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g244358_
                                                      0)))
                                                  (_%tl242763242789%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g244358_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl242763242789%_))
                                                  (letrec ((_%loop242764242792%_
                                                            (lambda (_%hd242762242795%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause242768242797%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd242762242795%_))
                          (let ((_%e242765242799%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd242762242795%_))))
                            (let ((_%lp-hd242766242802%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e242765242799%_)))
                                  (_%lp-tl242767242804%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e242765242799%_))))
                              (_%loop242764242792%_
                               _%lp-tl242767242804%_
                               (cons _%lp-hd242766242802%_
                                     _%clause242768242797%_))))
                          (let ((_%clause242769242807%_
                                 (reverse _%clause242768242797%_)))
                            ((lambda (_%g242757242809%_)
                               (let* ((_%clauses242886%_
                                       (map (lambda (_%clause242823%_)
                                              (let* ((_%g242825242836%_
                                                      (lambda (_%g242826242833%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g242826242833%_))))
                                                     (_%g242824242876%_
                                                      (lambda (_%g242826242839%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g242826242839%_))
                                                            (let ((_%e242829242841%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g242826242839%_))))
                      (let ((_%hd242830242844%_
                             (let ()
                               (declare (not safe))
                               (##car _%e242829242841%_)))
                            (_%tl242831242846%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e242829242841%_))))
                        ((lambda (_%g242827242849%_ _%g242828242850%_)
                           (let* ((_%self242862%_
                                   (list-ref
                                    _%g242828242850%_
                                    _%self-index242159%_))
                                  (_%receiver242867%_
                                   (let ((_%$e242864%_
                                          (gxc#apply-extract-receiver
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '%#begin))
                                                 _%g242827242849%_))))
                                     (if _%$e242864%_
                                         _%$e242864%_
                                         _%self242862%_)))
                                  (_%body242873%_
                                   (map (lambda (_%g242868242870%_)
                                          (gxc#apply-subst-object-refs__%
                                           '#f
                                           _%receiver242867%_
                                           _%$klass242624%_
                                           _%method-calls240161%_
                                           _%slot-refs240162%_
                                           _%g242868242870%_))
                                        _%g242827242849%_)))
                             (cons _%g242828242850%_ _%body242873%_)))
                         _%tl242831242846%_
                         _%hd242830242844%_)))
                    (_%g242825242836%_ _%g242826242839%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g242824242876%_
                                                 _%clause242823%_)))
                                            (let ((__tmp244360
                                                   (lambda (_%g242878242881%_
                                                            _%g242879242883%_)
                                                     (cons _%g242878242881%_
                                                           _%g242879242883%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp244360
                                               '()
                                               _%g242757242809%_))))
                                      (__tmp244361
                                       (cons '%#case-lambda
                                             _%clauses242886%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp244361
                                  _%g242306242395%_)))
                             _%clause242769242807%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop242764242792%_
                                                     _%target242761242787%_
                                                     '()))
                                                  (_%g242755242774%_
                                                   _%g242756242777%_)))))
                                        (_%g242755242774%_
                                         _%g242756242777%_))))
                                (_%g242755242774%_ _%g242756242777%_)))))
                    (_%g242754242888%_ _%g242306242395%_)))
                 (_%specializer-impl242893%_
                  (let ((__tmp244362
                         (cons '%#let-values
                               (cons (cons (cons (cons _%g241693241861%_ '())
                                                 (cons (cons '%#let-values
                                                             (cons (cons (cons (cons _%g241692241860%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             '())
                                       (cons (let ((__tmp244363
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%g242308242397%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons _%specializer-lambda-expr242753%_
                                          '()))
                              '())
                        (cons _%specializer-case-lambda-expr242891%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp244363
                                                _%stx240069%_))
                                             '()))
                                 '())
                           (cons _%g241690241858%_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons _%g241689241857%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp244362 _%stx240069%_)))
                 (_%specializer-impl242895%_
                  (_%generate-specializer-impl240073%_
                   _%$klass242624%_
                   _%$method-table242626%_
                   _%methods-bind242651%_
                   _%slots-bind242675%_
                   _%specializer-impl242893%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp244365
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%g240080240142%_)))
                                                          (__tmp244364
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id242622%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp244365
                                                       '" => "
                                                       __tmp244364))
                                                    (_%generate-specializer-def240074%_
                                                     _%g240080240142%_
                                                     _%specializer-id242622%_
                                                     _%specializer-impl242895%_))))
                                            _%hd242328242390%_
                                            _%hd242325242382%_
                                            _%hd242322242374%_)
                                           (_%g242304242334%_
                                            _%g242305242337%_))))
                                   (_%g242304242334%_ _%g242305242337%_))
                               (_%g242304242334%_ _%g242305242337%_))
                           (_%g242304242334%_ _%g242305242337%_))))
                   (_%g242304242334%_ _%g242305242337%_))
               (_%g242304242334%_ _%g242305242337%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g242304242334%_
                                                _%g242305242337%_))))
                                       (_%g242304242334%_ _%g242305242337%_))))
                               (_%g242304242334%_ _%g242305242337%_))))
                       (_%g242304242334%_ _%g242305242337%_))))
               (_%g242304242334%_ _%g242305242337%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g242303242898%_
                                            _%g241691241859%_))
                                         _%stx240069%_))))
                             _%hd241957242080%_
                             _%kw-ref241955242100%_
                             _%hd241945242067%_
                             _%hd241936242043%_
                             _%hd241927242019%_)
                            (_%g241901241963%_ _%g241902241966%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop241950242085%_
                                                 _%target241947242072%_
                                                 '()))
                                              (_%g241901241963%_
                                               _%g241902241966%_))))
                                      (_%g241901241963%_ _%g241902241966%_)))))
                            (_%g241901241963%_ _%g241902241966%_))
                        (_%g241901241963%_ _%g241902241966%_))
                    (_%g241901241963%_ _%g241902241966%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g241901241963%_
                                                     _%g241902241966%_))
                                                (_%g241901241963%_
                                                 _%g241902241966%_))
                                            (_%g241901241963%_
                                             _%g241902241966%_))))
                                    (_%g241901241963%_ _%g241902241966%_))))
                            (_%g241901241963%_ _%g241902241966%_))
                        (_%g241901241963%_ _%g241902241966%_))))
                (_%g241901241963%_ _%g241902241966%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g241901241963%_
                                                     _%g241902241966%_))
                                                (_%g241901241963%_
                                                 _%g241902241966%_))))
                                        (_%g241901241963%_
                                         _%g241902241966%_))))
                                (_%g241901241963%_ _%g241902241966%_))
                            (_%g241901241963%_ _%g241902241966%_))))
                    (_%g241901241963%_ _%g241902241966%_))
                (_%g241901241963%_ _%g241902241966%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g241901241963%_
                                                     _%g241902241966%_))))
                                            (_%g241901241963%_
                                             _%g241902241966%_))))
                                    (_%g241901241963%_ _%g241902241966%_))
                                (_%g241901241963%_ _%g241902241966%_))
                            (_%g241901241963%_ _%g241902241966%_))))
                    (_%g241901241963%_ _%g241902241966%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g241901241963%_
                                                     _%g241902241966%_))))
                                            (_%g241901241963%_
                                             _%g241902241966%_))
                                        (_%g241901241963%_ _%g241902241966%_))
                                    (_%g241901241963%_ _%g241902241966%_))))
                            (_%g241901241963%_ _%g241902241966%_)))))
                (_%g241900242902%_ _%g241690241858%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd241734241852%_
                                                    _%hd241731241844%_
                                                    _%hd241728241836%_
                                                    _%hd241725241828%_
                                                    _%hd241707241780%_)
                                                   (_%g241687241740%_
                                                    _%g241688241743%_))))
                                           (_%g241687241740%_
                                            _%g241688241743%_))
                                       (_%g241687241740%_ _%g241688241743%_))
                                   (_%g241687241740%_ _%g241688241743%_))
                               (_%g241687241740%_ _%g241688241743%_))))
                       (_%g241687241740%_ _%g241688241743%_))
                   (_%g241687241740%_ _%g241688241743%_))
               (_%g241687241740%_ _%g241688241743%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g241687241740%_
                                                _%g241688241743%_))
                                           (_%g241687241740%_
                                            _%g241688241743%_))))
                                   (_%g241687241740%_ _%g241688241743%_))))
                           (_%g241687241740%_ _%g241688241743%_))))
                   (_%g241687241740%_ _%g241688241743%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g241687241740%_
                                                    _%g241688241743%_))
                                               (_%g241687241740%_
                                                _%g241688241743%_))
                                           (_%g241687241740%_
                                            _%g241688241743%_))))
                                   (_%g241687241740%_ _%g241688241743%_))))
                           (_%g241687241740%_ _%g241688241743%_))
                       (_%g241687241740%_ _%g241688241743%_))))
               (_%g241687241740%_ _%g241688241743%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g241687241740%_
                                                _%g241688241743%_))))
                                       (_%g241687241740%_ _%g241688241743%_))))
                               (_%g241687241740%_ _%g241688241743%_))
                           (_%g241687241740%_ _%g241688241743%_))
                       (_%g241687241740%_ _%g241688241743%_))))
               (_%g241687241740%_ _%g241688241743%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g241686242905%_
                                            _%g240079240141%_))
                                         _%stx240069%_))))))))
                  (_%__kont243132243133%_ (lambda () _%stx240069%_)))
              (let ((_%__match243161243162%_
                     (lambda (_%e240081240109%_
                              _%hd240082240112%_
                              _%tl240083240114%_
                              _%e240084240117%_
                              _%hd240085240120%_
                              _%tl240086240122%_
                              _%e240087240125%_
                              _%hd240088240128%_
                              _%tl240089240130%_
                              _%e240090240133%_
                              _%hd240091240136%_
                              _%tl240092240138%_)
                       (let ((_%g240079240141%_ _%hd240091240136%_)
                             (_%g240080240142%_ _%hd240088240128%_))
                         (if (let ((__tmp244366
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g240080240142%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp244366))
                             (_%__kont243130243131%_
                              _%g240079240141%_
                              _%g240080240142%_)
                             (_%__kont243132243133%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx243128243129%_))
                    (let ((_%e240081240109%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx243128243129%_))))
                      (let ((_%tl240083240114%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e240081240109%_)))
                            (_%hd240082240112%_
                             (let ()
                               (declare (not safe))
                               (##car _%e240081240109%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl240083240114%_))
                            (let ((_%e240084240117%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl240083240114%_))))
                              (let ((_%tl240086240122%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e240084240117%_)))
                                    (_%hd240085240120%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e240084240117%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd240085240120%_))
                                    (let ((_%e240087240125%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd240085240120%_))))
                                      (let ((_%tl240089240130%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e240087240125%_)))
                                            (_%hd240088240128%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e240087240125%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl240089240130%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl240086240122%_))
                                                (let ((_%e240090240133%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl240086240122%_))))
                                                  (let ((_%tl240092240138%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e240090240133%_)))
                                                        (_%hd240091240136%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e240090240133%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl240092240138%_))
                                                        (_%__match243161243162%_
                                                         _%e240081240109%_
                                                         _%hd240082240112%_
                                                         _%tl240083240114%_
                                                         _%e240084240117%_
                                                         _%hd240085240120%_
                                                         _%tl240086240122%_
                                                         _%e240087240125%_
                                                         _%hd240088240128%_
                                                         _%tl240089240130%_
                                                         _%e240090240133%_
                                                         _%hd240091240136%_
                                                         _%tl240092240138%_)
                                                        (_%__kont243132243133%_))))
                                                (_%__kont243132243133%_))
                                            (_%__kont243132243133%_))))
                                    (_%__kont243132243133%_))))
                            (_%__kont243132243133%_))))
                    (_%__kont243132243133%_))))))))
    (define gxc#extract-receiver-begin-annotation%
      (lambda (_%self239921%_ _%stx239922%_)
        (let* ((_%__stx243164243165%_ _%stx239922%_)
               (_%g239925239958%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx243164243165%_)))))
          (let ((_%__kont243166243167%_
                 (lambda (_%g239927240048%_) _%g239927240048%_))
                (_%__kont243168243169%_
                 (lambda (_%g239943239987%_ _%g239944239988%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self239921%_ _%g239943239987%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx243164243165%_))
                (let ((_%e239928240008%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx243164243165%_))))
                  (let ((_%tl239930240013%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e239928240008%_)))
                        (_%hd239929240011%_
                         (let ()
                           (declare (not safe))
                           (##car _%e239928240008%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl239930240013%_))
                        (let ((_%e239931240016%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl239930240013%_))))
                          (let ((_%tl239933240021%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e239931240016%_)))
                                (_%hd239932240019%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e239931240016%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd239932240019%_))
                                (let ((_%e239934240024%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd239932240019%_))))
                                  (let ((_%tl239936240029%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e239934240024%_)))
                                        (_%hd239935240027%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e239934240024%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd239935240027%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@receiver
                                               _%hd239935240027%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl239936240029%_))
                                                (let ((_%e239937240032%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl239936240029%_))))
                                                  (let ((_%tl239939240037%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e239937240032%_)))
                                                        (_%hd239938240035%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e239937240032%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl239939240037%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl239933240021%_))
                                                            (let ((_%e239940240040%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl239933240021%_))))
                      (let ((_%tl239942240045%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e239940240040%_)))
                            (_%hd239941240043%_
                             (let ()
                               (declare (not safe))
                               (##car _%e239940240040%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl239942240045%_))
                            (_%__kont243166243167%_ _%hd239938240035%_)
                            (let ()
                              (declare (not safe))
                              (_%g239925239958%_)))))
                    (let () (declare (not safe)) (_%g239925239958%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl239933240021%_))
                    (let ((_%e239951239979%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl239933240021%_))))
                      (let ((_%tl239953239984%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e239951239979%_)))
                            (_%hd239952239982%_
                             (let ()
                               (declare (not safe))
                               (##car _%e239951239979%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl239953239984%_))
                            (_%__kont243168243169%_
                             _%hd239952239982%_
                             _%hd239932240019%_)
                            (let ()
                              (declare (not safe))
                              (_%g239925239958%_)))))
                    (let () (declare (not safe)) (_%g239925239958%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl239933240021%_))
                                                    (let ((_%e239951239979%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl239933240021%_))))
                                                      (let ((_%tl239953239984%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e239951239979%_)))
                    (_%hd239952239982%_
                     (let () (declare (not safe)) (##car _%e239951239979%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl239953239984%_))
                    (_%__kont243168243169%_
                     _%hd239952239982%_
                     _%hd239932240019%_)
                    (let () (declare (not safe)) (_%g239925239958%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g239925239958%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl239933240021%_))
                                                (let ((_%e239951239979%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl239933240021%_))))
                                                  (let ((_%tl239953239984%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e239951239979%_)))
                                                        (_%hd239952239982%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e239951239979%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl239953239984%_))
                                                        (_%__kont243168243169%_
                                                         _%hd239952239982%_
                                                         _%hd239932240019%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g239925239958%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g239925239958%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl239933240021%_))
                                            (let ((_%e239951239979%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl239933240021%_))))
                                              (let ((_%tl239953239984%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e239951239979%_)))
                                                    (_%hd239952239982%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e239951239979%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl239953239984%_))
                                                    (_%__kont243168243169%_
                                                     _%hd239952239982%_
                                                     _%hd239932240019%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g239925239958%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g239925239958%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl239933240021%_))
                                    (let ((_%e239951239979%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl239933240021%_))))
                                      (let ((_%tl239953239984%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e239951239979%_)))
                                            (_%hd239952239982%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e239951239979%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl239953239984%_))
                                            (_%__kont243168243169%_
                                             _%hd239952239982%_
                                             _%hd239932240019%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g239925239958%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g239925239958%_))))))
                        (let () (declare (not safe)) (_%g239925239958%_)))))
                (let () (declare (not safe)) (_%g239925239958%_)))))))
    (define gxc#extract-receiver-if%
      (lambda (_%self239837%_ _%stx239838%_)
        (let* ((_%g239840239861%_
                (lambda (_%g239841239858%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g239841239858%_))))
               (_%g239839239918%_
                (lambda (_%g239841239864%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g239841239864%_))
                      (let ((_%e239845239866%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g239841239864%_))))
                        (let ((_%hd239846239869%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e239845239866%_)))
                              (_%tl239847239871%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e239845239866%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl239847239871%_))
                              (let ((_%e239848239874%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl239847239871%_))))
                                (let ((_%hd239849239877%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e239848239874%_)))
                                      (_%tl239850239879%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e239848239874%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl239850239879%_))
                                      (let ((_%e239851239882%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl239850239879%_))))
                                        (let ((_%hd239852239885%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e239851239882%_)))
                                              (_%tl239853239887%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e239851239882%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl239853239887%_))
                                              (let ((_%e239854239890%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl239853239887%_))))
                                                (let ((_%hd239855239893%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e239854239890%_)))
                                                      (_%tl239856239895%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e239854239890%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl239856239895%_))
                                                      ((lambda (_%g239842239898%_
                                                                _%g239843239899%_
                                                                _%g239844239900%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self239837%_
                                                            _%g239843239899%_)))
                                                       _%hd239855239893%_
                                                       _%hd239852239885%_
                                                       _%hd239849239877%_)
                                                      (_%g239840239861%_
                                                       _%g239841239864%_))))
                                              (_%g239840239861%_
                                               _%g239841239864%_))))
                                      (_%g239840239861%_ _%g239841239864%_))))
                              (_%g239840239861%_ _%g239841239864%_))))
                      (_%g239840239861%_ _%g239841239864%_)))))
          (_%g239839239918%_ _%stx239838%_))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self238802%_ _%stx238803%_)
        (let* ((_%__stx243230243231%_ _%stx238803%_)
               (_%g238811239033%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx243230243231%_)))))
          (let ((_%__kont243232243233%_
                 (lambda (_%g238813239786%_
                          _%g238814239787%_
                          _%g238815239788%_
                          _%g238816239789%_)
                   (let ((__tmp244368
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self238802%_ 'methods)))
                         (__tmp244367
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g238814239787%_))))
                     (declare (not safe))
                     (hash-put! __tmp244368 __tmp244367 '#t))
                   (for-each
                    (lambda (_%g239822239824%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self238802%_ _%g239822239824%_)))
                    (let ((__tmp244369
                           (lambda (_%g239826239829%_ _%g239827239831%_)
                             (cons _%g239826239829%_ _%g239827239831%_))))
                      (declare (not safe))
                      (foldr__0 __tmp244369 '() _%g238813239786%_)))))
                (_%__kont243236243237%_
                 (lambda (_%g238856239623%_
                          _%g238857239624%_
                          _%g238858239625%_
                          _%g238859239626%_
                          _%g238860239627%_)
                   (let ((__tmp244371
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self238802%_ 'methods)))
                         (__tmp244370
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g238857239624%_))))
                     (declare (not safe))
                     (hash-put! __tmp244371 __tmp244370 '#t))
                   (for-each
                    (lambda (_%g239667239669%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self238802%_ _%g239667239669%_)))
                    (let ((__tmp244372
                           (lambda (_%g239671239674%_ _%g239672239676%_)
                             (cons _%g239671239674%_ _%g239672239676%_))))
                      (declare (not safe))
                      (foldr__0 __tmp244372 '() _%g238856239623%_)))))
                (_%__kont243240243241%_
                 (lambda (_%g238909239458%_
                          _%g238910239459%_
                          _%g238911239460%_)
                   (let ((__tmp244374
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self238802%_ 'slots)))
                         (__tmp244373
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g238909239458%_))))
                     (declare (not safe))
                     (hash-put! __tmp244374 __tmp244373 '#t))))
                (_%__kont243242243243%_
                 (lambda (_%g238942239335%_
                          _%g238943239336%_
                          _%g238944239337%_
                          _%g238945239338%_)
                   (let ((__tmp244376
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self238802%_ 'slots)))
                         (__tmp244375
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g238943239336%_))))
                     (declare (not safe))
                     (hash-put! __tmp244376 __tmp244375 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self238802%_ _%g238942239335%_))))
                (_%__kont243244243245%_
                 (lambda (_%g238979239209%_ _%g238980239210%_)
                   (let* ((_%accessor239232%_
                           (let ((__tmp244377
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%g238980239210%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp244377)))
                          (_%klass239234%_
                           (let ((__tmp244378
                                  (##structure-ref
                                   _%accessor239232%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx238803%_
                              __tmp244378)))
                          (_%slot239236%_
                           (##structure-ref
                            _%accessor239232%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (if (##structure-ref
                              _%accessor239232%_
                              '4
                              gxc#!accessor::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass239234%_
                                    _%slot239236%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass239234%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp244380
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self238802%_ 'slots)))
                               (__tmp244379
                                (##structure-ref
                                 _%accessor239232%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp244380 __tmp244379 '#t))))))
                (_%__kont243246243247%_
                 (lambda (_%g239002239109%_
                          _%g239003239110%_
                          _%g239004239111%_)
                   (let* ((_%mutator239138%_
                           (let ((__tmp244381
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%g239004239111%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp244381)))
                          (_%klass239140%_
                           (let ((__tmp244382
                                  (##structure-ref
                                   _%mutator239138%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx238803%_
                              __tmp244382)))
                          (_%slot239142%_
                           (##structure-ref
                            _%mutator239138%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (if (##structure-ref
                              _%mutator239138%_
                              '4
                              gxc#!mutator::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass239140%_
                                    _%slot239142%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass239140%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp244383
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self238802%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp244383 _%slot239142%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self238802%_ _%g239002239109%_)))))
                (_%__kont243248243249%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self238802%_ _%stx238803%_)))))
            (let* ((_%__match243729243730%_
                    (lambda (_%e239005239045%_
                             _%hd239006239048%_
                             _%tl239007239050%_
                             _%e239008239053%_
                             _%hd239009239056%_
                             _%tl239010239058%_
                             _%e239011239061%_
                             _%hd239012239064%_
                             _%tl239013239066%_
                             _%e239014239069%_
                             _%hd239015239072%_
                             _%tl239016239074%_
                             _%e239017239077%_
                             _%hd239018239080%_
                             _%tl239019239082%_
                             _%e239020239085%_
                             _%hd239021239088%_
                             _%tl239022239090%_
                             _%e239023239093%_
                             _%hd239024239096%_
                             _%tl239025239098%_
                             _%e239026239101%_
                             _%hd239027239104%_
                             _%tl239028239106%_)
                      (let ((_%g239002239109%_ _%hd239027239104%_)
                            (_%g239003239110%_ _%hd239024239096%_)
                            (_%g239004239111%_ _%hd239015239072%_))
                        (if (and (let ((__tmp244384
                                        (let ((__tmp244385
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%g239004239111%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp244385))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp244384
                                    'gxc#!mutator::t))
                                 (let ((__tmp244386
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self238802%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g239003239110%_
                                    __tmp244386)))
                            (_%__kont243246243247%_
                             _%g239002239109%_
                             _%g239003239110%_
                             _%g239004239111%_)
                            (_%__kont243248243249%_)))))
                   (_%__match243727243728%_
                    (lambda (_%e239005239045%_
                             _%hd239006239048%_
                             _%tl239007239050%_
                             _%e239008239053%_
                             _%hd239009239056%_
                             _%tl239010239058%_
                             _%e239011239061%_
                             _%hd239012239064%_
                             _%tl239013239066%_
                             _%e239014239069%_
                             _%hd239015239072%_
                             _%tl239016239074%_
                             _%e239017239077%_
                             _%hd239018239080%_
                             _%tl239019239082%_
                             _%e239020239085%_
                             _%hd239021239088%_
                             _%tl239022239090%_
                             _%e239023239093%_
                             _%hd239024239096%_
                             _%tl239025239098%_
                             _%e239026239101%_
                             _%hd239027239104%_
                             _%tl239028239106%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl239028239106%_))
                          (_%__match243729243730%_
                           _%e239005239045%_
                           _%hd239006239048%_
                           _%tl239007239050%_
                           _%e239008239053%_
                           _%hd239009239056%_
                           _%tl239010239058%_
                           _%e239011239061%_
                           _%hd239012239064%_
                           _%tl239013239066%_
                           _%e239014239069%_
                           _%hd239015239072%_
                           _%tl239016239074%_
                           _%e239017239077%_
                           _%hd239018239080%_
                           _%tl239019239082%_
                           _%e239020239085%_
                           _%hd239021239088%_
                           _%tl239022239090%_
                           _%e239023239093%_
                           _%hd239024239096%_
                           _%tl239025239098%_
                           _%e239026239101%_
                           _%hd239027239104%_
                           _%tl239028239106%_)
                          (_%__kont243248243249%_))))
                   (_%__match243721243722%_
                    (lambda (_%e239005239045%_
                             _%hd239006239048%_
                             _%tl239007239050%_
                             _%e239008239053%_
                             _%hd239009239056%_
                             _%tl239010239058%_
                             _%e239011239061%_
                             _%hd239012239064%_
                             _%tl239013239066%_
                             _%e239014239069%_
                             _%hd239015239072%_
                             _%tl239016239074%_
                             _%e239017239077%_
                             _%hd239018239080%_
                             _%tl239019239082%_
                             _%e239020239085%_
                             _%hd239021239088%_
                             _%tl239022239090%_
                             _%e239023239093%_
                             _%hd239024239096%_
                             _%tl239025239098%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl239019239082%_))
                          (let ((_%e239026239101%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl239019239082%_))))
                            (let ((_%tl239028239106%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e239026239101%_)))
                                  (_%hd239027239104%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e239026239101%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl239028239106%_))
                                  (_%__match243729243730%_
                                   _%e239005239045%_
                                   _%hd239006239048%_
                                   _%tl239007239050%_
                                   _%e239008239053%_
                                   _%hd239009239056%_
                                   _%tl239010239058%_
                                   _%e239011239061%_
                                   _%hd239012239064%_
                                   _%tl239013239066%_
                                   _%e239014239069%_
                                   _%hd239015239072%_
                                   _%tl239016239074%_
                                   _%e239017239077%_
                                   _%hd239018239080%_
                                   _%tl239019239082%_
                                   _%e239020239085%_
                                   _%hd239021239088%_
                                   _%tl239022239090%_
                                   _%e239023239093%_
                                   _%hd239024239096%_
                                   _%tl239025239098%_
                                   _%e239026239101%_
                                   _%hd239027239104%_
                                   _%tl239028239106%_)
                                  (_%__kont243248243249%_))))
                          (_%__kont243248243249%_))))
                   (_%__match243667243668%_
                    (lambda (_%e238981239153%_
                             _%hd238982239156%_
                             _%tl238983239158%_
                             _%e238984239161%_
                             _%hd238985239164%_
                             _%tl238986239166%_
                             _%e238987239169%_
                             _%hd238988239172%_
                             _%tl238989239174%_
                             _%e238990239177%_
                             _%hd238991239180%_
                             _%tl238992239182%_
                             _%e238993239185%_
                             _%hd238994239188%_
                             _%tl238995239190%_
                             _%e238996239193%_
                             _%hd238997239196%_
                             _%tl238998239198%_
                             _%e238999239201%_
                             _%hd239000239204%_
                             _%tl239001239206%_)
                      (let ((_%g238979239209%_ _%hd239000239204%_)
                            (_%g238980239210%_ _%hd238991239180%_))
                        (if (and (let ((__tmp244387
                                        (let ((__tmp244388
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%g238980239210%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp244388))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp244387
                                    'gxc#!accessor::t))
                                 (let ((__tmp244389
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self238802%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g238979239209%_
                                    __tmp244389)))
                            (_%__kont243244243245%_
                             _%g238979239209%_
                             _%g238980239210%_)
                            (_%__kont243248243249%_)))))
                   (_%__match243665243666%_
                    (lambda (_%e238981239153%_
                             _%hd238982239156%_
                             _%tl238983239158%_
                             _%e238984239161%_
                             _%hd238985239164%_
                             _%tl238986239166%_
                             _%e238987239169%_
                             _%hd238988239172%_
                             _%tl238989239174%_
                             _%e238990239177%_
                             _%hd238991239180%_
                             _%tl238992239182%_
                             _%e238993239185%_
                             _%hd238994239188%_
                             _%tl238995239190%_
                             _%e238996239193%_
                             _%hd238997239196%_
                             _%tl238998239198%_
                             _%e238999239201%_
                             _%hd239000239204%_
                             _%tl239001239206%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl238995239190%_))
                          (_%__match243667243668%_
                           _%e238981239153%_
                           _%hd238982239156%_
                           _%tl238983239158%_
                           _%e238984239161%_
                           _%hd238985239164%_
                           _%tl238986239166%_
                           _%e238987239169%_
                           _%hd238988239172%_
                           _%tl238989239174%_
                           _%e238990239177%_
                           _%hd238991239180%_
                           _%tl238992239182%_
                           _%e238993239185%_
                           _%hd238994239188%_
                           _%tl238995239190%_
                           _%e238996239193%_
                           _%hd238997239196%_
                           _%tl238998239198%_
                           _%e238999239201%_
                           _%hd239000239204%_
                           _%tl239001239206%_)
                          (_%__match243721243722%_
                           _%e238981239153%_
                           _%hd238982239156%_
                           _%tl238983239158%_
                           _%e238984239161%_
                           _%hd238985239164%_
                           _%tl238986239166%_
                           _%e238987239169%_
                           _%hd238988239172%_
                           _%tl238989239174%_
                           _%e238990239177%_
                           _%hd238991239180%_
                           _%tl238992239182%_
                           _%e238993239185%_
                           _%hd238994239188%_
                           _%tl238995239190%_
                           _%e238996239193%_
                           _%hd238997239196%_
                           _%tl238998239198%_
                           _%e238999239201%_
                           _%hd239000239204%_
                           _%tl239001239206%_))))
                   (_%__match243611243612%_
                    (lambda (_%e238946239247%_
                             _%hd238947239250%_
                             _%tl238948239252%_
                             _%e238949239255%_
                             _%hd238950239258%_
                             _%tl238951239260%_
                             _%e238952239263%_
                             _%hd238953239266%_
                             _%tl238954239268%_
                             _%e238955239271%_
                             _%hd238956239274%_
                             _%tl238957239276%_
                             _%e238958239279%_
                             _%hd238959239282%_
                             _%tl238960239284%_
                             _%e238961239287%_
                             _%hd238962239290%_
                             _%tl238963239292%_
                             _%e238964239295%_
                             _%hd238965239298%_
                             _%tl238966239300%_
                             _%e238967239303%_
                             _%hd238968239306%_
                             _%tl238969239308%_
                             _%e238970239311%_
                             _%hd238971239314%_
                             _%tl238972239316%_
                             _%e238973239319%_
                             _%hd238974239322%_
                             _%tl238975239324%_
                             _%e238976239327%_
                             _%hd238977239330%_
                             _%tl238978239332%_)
                      (let ((_%g238942239335%_ _%hd238977239330%_)
                            (_%g238943239336%_ _%hd238974239322%_)
                            (_%g238944239337%_ _%hd238965239298%_)
                            (_%g238945239338%_ _%hd238956239274%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g238945239338%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g238945239338%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp244390
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self238802%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g238944239337%_
                                    __tmp244390)))
                            (_%__kont243242243243%_
                             _%g238942239335%_
                             _%g238943239336%_
                             _%g238944239337%_
                             _%g238945239338%_)
                            (_%__kont243248243249%_)))))
                   (_%__match243603243604%_
                    (lambda (_%e238946239247%_
                             _%hd238947239250%_
                             _%tl238948239252%_
                             _%e238949239255%_
                             _%hd238950239258%_
                             _%tl238951239260%_
                             _%e238952239263%_
                             _%hd238953239266%_
                             _%tl238954239268%_
                             _%e238955239271%_
                             _%hd238956239274%_
                             _%tl238957239276%_
                             _%e238958239279%_
                             _%hd238959239282%_
                             _%tl238960239284%_
                             _%e238961239287%_
                             _%hd238962239290%_
                             _%tl238963239292%_
                             _%e238964239295%_
                             _%hd238965239298%_
                             _%tl238966239300%_
                             _%e238967239303%_
                             _%hd238968239306%_
                             _%tl238969239308%_
                             _%e238970239311%_
                             _%hd238971239314%_
                             _%tl238972239316%_
                             _%e238973239319%_
                             _%hd238974239322%_
                             _%tl238975239324%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl238969239308%_))
                          (let ((_%e238976239327%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl238969239308%_))))
                            (let ((_%tl238978239332%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e238976239327%_)))
                                  (_%hd238977239330%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e238976239327%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl238978239332%_))
                                  (_%__match243611243612%_
                                   _%e238946239247%_
                                   _%hd238947239250%_
                                   _%tl238948239252%_
                                   _%e238949239255%_
                                   _%hd238950239258%_
                                   _%tl238951239260%_
                                   _%e238952239263%_
                                   _%hd238953239266%_
                                   _%tl238954239268%_
                                   _%e238955239271%_
                                   _%hd238956239274%_
                                   _%tl238957239276%_
                                   _%e238958239279%_
                                   _%hd238959239282%_
                                   _%tl238960239284%_
                                   _%e238961239287%_
                                   _%hd238962239290%_
                                   _%tl238963239292%_
                                   _%e238964239295%_
                                   _%hd238965239298%_
                                   _%tl238966239300%_
                                   _%e238967239303%_
                                   _%hd238968239306%_
                                   _%tl238969239308%_
                                   _%e238970239311%_
                                   _%hd238971239314%_
                                   _%tl238972239316%_
                                   _%e238973239319%_
                                   _%hd238974239322%_
                                   _%tl238975239324%_
                                   _%e238976239327%_
                                   _%hd238977239330%_
                                   _%tl238978239332%_)
                                  (_%__kont243248243249%_))))
                          (_%__match243727243728%_
                           _%e238946239247%_
                           _%hd238947239250%_
                           _%tl238948239252%_
                           _%e238949239255%_
                           _%hd238950239258%_
                           _%tl238951239260%_
                           _%e238952239263%_
                           _%hd238953239266%_
                           _%tl238954239268%_
                           _%e238955239271%_
                           _%hd238956239274%_
                           _%tl238957239276%_
                           _%e238958239279%_
                           _%hd238959239282%_
                           _%tl238960239284%_
                           _%e238961239287%_
                           _%hd238962239290%_
                           _%tl238963239292%_
                           _%e238964239295%_
                           _%hd238965239298%_
                           _%tl238966239300%_
                           _%e238967239303%_
                           _%hd238968239306%_
                           _%tl238969239308%_))))
                   (_%__match243525243526%_
                    (lambda (_%e238912239378%_
                             _%hd238913239381%_
                             _%tl238914239383%_
                             _%e238915239386%_
                             _%hd238916239389%_
                             _%tl238917239391%_
                             _%e238918239394%_
                             _%hd238919239397%_
                             _%tl238920239399%_
                             _%e238921239402%_
                             _%hd238922239405%_
                             _%tl238923239407%_
                             _%e238924239410%_
                             _%hd238925239413%_
                             _%tl238926239415%_
                             _%e238927239418%_
                             _%hd238928239421%_
                             _%tl238929239423%_
                             _%e238930239426%_
                             _%hd238931239429%_
                             _%tl238932239431%_
                             _%e238933239434%_
                             _%hd238934239437%_
                             _%tl238935239439%_
                             _%e238936239442%_
                             _%hd238937239445%_
                             _%tl238938239447%_
                             _%e238939239450%_
                             _%hd238940239453%_
                             _%tl238941239455%_)
                      (let ((_%g238909239458%_ _%hd238940239453%_)
                            (_%g238910239459%_ _%hd238931239429%_)
                            (_%g238911239460%_ _%hd238922239405%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g238911239460%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g238911239460%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp244391
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self238802%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g238910239459%_
                                    __tmp244391)))
                            (_%__kont243240243241%_
                             _%g238909239458%_
                             _%g238910239459%_
                             _%g238911239460%_)
                            (_%__match243729243730%_
                             _%e238912239378%_
                             _%hd238913239381%_
                             _%tl238914239383%_
                             _%e238915239386%_
                             _%hd238916239389%_
                             _%tl238917239391%_
                             _%e238918239394%_
                             _%hd238919239397%_
                             _%tl238920239399%_
                             _%e238921239402%_
                             _%hd238922239405%_
                             _%tl238923239407%_
                             _%e238924239410%_
                             _%hd238925239413%_
                             _%tl238926239415%_
                             _%e238927239418%_
                             _%hd238928239421%_
                             _%tl238929239423%_
                             _%e238930239426%_
                             _%hd238931239429%_
                             _%tl238932239431%_
                             _%e238933239434%_
                             _%hd238934239437%_
                             _%tl238935239439%_)))))
                   (_%__match243523243524%_
                    (lambda (_%e238912239378%_
                             _%hd238913239381%_
                             _%tl238914239383%_
                             _%e238915239386%_
                             _%hd238916239389%_
                             _%tl238917239391%_
                             _%e238918239394%_
                             _%hd238919239397%_
                             _%tl238920239399%_
                             _%e238921239402%_
                             _%hd238922239405%_
                             _%tl238923239407%_
                             _%e238924239410%_
                             _%hd238925239413%_
                             _%tl238926239415%_
                             _%e238927239418%_
                             _%hd238928239421%_
                             _%tl238929239423%_
                             _%e238930239426%_
                             _%hd238931239429%_
                             _%tl238932239431%_
                             _%e238933239434%_
                             _%hd238934239437%_
                             _%tl238935239439%_
                             _%e238936239442%_
                             _%hd238937239445%_
                             _%tl238938239447%_
                             _%e238939239450%_
                             _%hd238940239453%_
                             _%tl238941239455%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl238935239439%_))
                          (_%__match243525243526%_
                           _%e238912239378%_
                           _%hd238913239381%_
                           _%tl238914239383%_
                           _%e238915239386%_
                           _%hd238916239389%_
                           _%tl238917239391%_
                           _%e238918239394%_
                           _%hd238919239397%_
                           _%tl238920239399%_
                           _%e238921239402%_
                           _%hd238922239405%_
                           _%tl238923239407%_
                           _%e238924239410%_
                           _%hd238925239413%_
                           _%tl238926239415%_
                           _%e238927239418%_
                           _%hd238928239421%_
                           _%tl238929239423%_
                           _%e238930239426%_
                           _%hd238931239429%_
                           _%tl238932239431%_
                           _%e238933239434%_
                           _%hd238934239437%_
                           _%tl238935239439%_
                           _%e238936239442%_
                           _%hd238937239445%_
                           _%tl238938239447%_
                           _%e238939239450%_
                           _%hd238940239453%_
                           _%tl238941239455%_)
                          (_%__match243603243604%_
                           _%e238912239378%_
                           _%hd238913239381%_
                           _%tl238914239383%_
                           _%e238915239386%_
                           _%hd238916239389%_
                           _%tl238917239391%_
                           _%e238918239394%_
                           _%hd238919239397%_
                           _%tl238920239399%_
                           _%e238921239402%_
                           _%hd238922239405%_
                           _%tl238923239407%_
                           _%e238924239410%_
                           _%hd238925239413%_
                           _%tl238926239415%_
                           _%e238927239418%_
                           _%hd238928239421%_
                           _%tl238929239423%_
                           _%e238930239426%_
                           _%hd238931239429%_
                           _%tl238932239431%_
                           _%e238933239434%_
                           _%hd238934239437%_
                           _%tl238935239439%_
                           _%e238936239442%_
                           _%hd238937239445%_
                           _%tl238938239447%_
                           _%e238939239450%_
                           _%hd238940239453%_
                           _%tl238941239455%_))))
                   (_%__match243513243514%_
                    (lambda (_%e238912239378%_
                             _%hd238913239381%_
                             _%tl238914239383%_
                             _%e238915239386%_
                             _%hd238916239389%_
                             _%tl238917239391%_
                             _%e238918239394%_
                             _%hd238919239397%_
                             _%tl238920239399%_
                             _%e238921239402%_
                             _%hd238922239405%_
                             _%tl238923239407%_
                             _%e238924239410%_
                             _%hd238925239413%_
                             _%tl238926239415%_
                             _%e238927239418%_
                             _%hd238928239421%_
                             _%tl238929239423%_
                             _%e238930239426%_
                             _%hd238931239429%_
                             _%tl238932239431%_
                             _%e238933239434%_
                             _%hd238934239437%_
                             _%tl238935239439%_
                             _%e238936239442%_
                             _%hd238937239445%_
                             _%tl238938239447%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd238937239445%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl238938239447%_))
                              (let ((_%e238939239450%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl238938239447%_))))
                                (let ((_%tl238941239455%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e238939239450%_)))
                                      (_%hd238940239453%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e238939239450%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl238941239455%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl238935239439%_))
                                          (_%__match243525243526%_
                                           _%e238912239378%_
                                           _%hd238913239381%_
                                           _%tl238914239383%_
                                           _%e238915239386%_
                                           _%hd238916239389%_
                                           _%tl238917239391%_
                                           _%e238918239394%_
                                           _%hd238919239397%_
                                           _%tl238920239399%_
                                           _%e238921239402%_
                                           _%hd238922239405%_
                                           _%tl238923239407%_
                                           _%e238924239410%_
                                           _%hd238925239413%_
                                           _%tl238926239415%_
                                           _%e238927239418%_
                                           _%hd238928239421%_
                                           _%tl238929239423%_
                                           _%e238930239426%_
                                           _%hd238931239429%_
                                           _%tl238932239431%_
                                           _%e238933239434%_
                                           _%hd238934239437%_
                                           _%tl238935239439%_
                                           _%e238936239442%_
                                           _%hd238937239445%_
                                           _%tl238938239447%_
                                           _%e238939239450%_
                                           _%hd238940239453%_
                                           _%tl238941239455%_)
                                          (_%__match243603243604%_
                                           _%e238912239378%_
                                           _%hd238913239381%_
                                           _%tl238914239383%_
                                           _%e238915239386%_
                                           _%hd238916239389%_
                                           _%tl238917239391%_
                                           _%e238918239394%_
                                           _%hd238919239397%_
                                           _%tl238920239399%_
                                           _%e238921239402%_
                                           _%hd238922239405%_
                                           _%tl238923239407%_
                                           _%e238924239410%_
                                           _%hd238925239413%_
                                           _%tl238926239415%_
                                           _%e238927239418%_
                                           _%hd238928239421%_
                                           _%tl238929239423%_
                                           _%e238930239426%_
                                           _%hd238931239429%_
                                           _%tl238932239431%_
                                           _%e238933239434%_
                                           _%hd238934239437%_
                                           _%tl238935239439%_
                                           _%e238936239442%_
                                           _%hd238937239445%_
                                           _%tl238938239447%_
                                           _%e238939239450%_
                                           _%hd238940239453%_
                                           _%tl238941239455%_))
                                      (_%__match243727243728%_
                                       _%e238912239378%_
                                       _%hd238913239381%_
                                       _%tl238914239383%_
                                       _%e238915239386%_
                                       _%hd238916239389%_
                                       _%tl238917239391%_
                                       _%e238918239394%_
                                       _%hd238919239397%_
                                       _%tl238920239399%_
                                       _%e238921239402%_
                                       _%hd238922239405%_
                                       _%tl238923239407%_
                                       _%e238924239410%_
                                       _%hd238925239413%_
                                       _%tl238926239415%_
                                       _%e238927239418%_
                                       _%hd238928239421%_
                                       _%tl238929239423%_
                                       _%e238930239426%_
                                       _%hd238931239429%_
                                       _%tl238932239431%_
                                       _%e238933239434%_
                                       _%hd238934239437%_
                                       _%tl238935239439%_))))
                              (_%__match243727243728%_
                               _%e238912239378%_
                               _%hd238913239381%_
                               _%tl238914239383%_
                               _%e238915239386%_
                               _%hd238916239389%_
                               _%tl238917239391%_
                               _%e238918239394%_
                               _%hd238919239397%_
                               _%tl238920239399%_
                               _%e238921239402%_
                               _%hd238922239405%_
                               _%tl238923239407%_
                               _%e238924239410%_
                               _%hd238925239413%_
                               _%tl238926239415%_
                               _%e238927239418%_
                               _%hd238928239421%_
                               _%tl238929239423%_
                               _%e238930239426%_
                               _%hd238931239429%_
                               _%tl238932239431%_
                               _%e238933239434%_
                               _%hd238934239437%_
                               _%tl238935239439%_))
                          (_%__match243727243728%_
                           _%e238912239378%_
                           _%hd238913239381%_
                           _%tl238914239383%_
                           _%e238915239386%_
                           _%hd238916239389%_
                           _%tl238917239391%_
                           _%e238918239394%_
                           _%hd238919239397%_
                           _%tl238920239399%_
                           _%e238921239402%_
                           _%hd238922239405%_
                           _%tl238923239407%_
                           _%e238924239410%_
                           _%hd238925239413%_
                           _%tl238926239415%_
                           _%e238927239418%_
                           _%hd238928239421%_
                           _%tl238929239423%_
                           _%e238930239426%_
                           _%hd238931239429%_
                           _%tl238932239431%_
                           _%e238933239434%_
                           _%hd238934239437%_
                           _%tl238935239439%_))))
                   (_%__match243445243446%_
                    (lambda (_%e238861239497%_
                             _%hd238862239500%_
                             _%tl238863239502%_
                             _%e238864239505%_
                             _%hd238865239508%_
                             _%tl238866239510%_
                             _%e238867239513%_
                             _%hd238868239516%_
                             _%tl238869239518%_
                             _%e238870239521%_
                             _%hd238871239524%_
                             _%tl238872239526%_
                             _%e238873239529%_
                             _%hd238874239532%_
                             _%tl238875239534%_
                             _%e238876239537%_
                             _%hd238877239540%_
                             _%tl238878239542%_
                             _%e238879239545%_
                             _%hd238880239548%_
                             _%tl238881239550%_
                             _%e238882239553%_
                             _%hd238883239556%_
                             _%tl238884239558%_
                             _%e238885239561%_
                             _%hd238886239564%_
                             _%tl238887239566%_
                             _%e238888239569%_
                             _%hd238889239572%_
                             _%tl238890239574%_
                             _%e238891239577%_
                             _%hd238892239580%_
                             _%tl238893239582%_
                             _%e238894239585%_
                             _%hd238895239588%_
                             _%tl238896239590%_
                             _%e238897239593%_
                             _%hd238898239596%_
                             _%tl238899239598%_
                             _%__splice243238243239%_
                             _%target238900239601%_
                             _%tl238902239603%_)
                      (letrec ((_%loop238903239606%_
                                (lambda (_%hd238901239609%_
                                         _%args238907239611%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd238901239609%_))
                                      (let ((_%e238904239613%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd238901239609%_))))
                                        (let ((_%lp-tl238906239618%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e238904239613%_)))
                                              (_%lp-hd238905239616%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e238904239613%_))))
                                          (_%loop238903239606%_
                                           _%lp-tl238906239618%_
                                           (cons _%lp-hd238905239616%_
                                                 _%args238907239611%_))))
                                      (let ((_%args238908239621%_
                                             (reverse _%args238907239611%_)))
                                        (let ((_%g238856239623%_
                                               _%args238908239621%_)
                                              (_%g238857239624%_
                                               _%hd238898239596%_)
                                              (_%g238858239625%_
                                               _%hd238889239572%_)
                                              (_%g238859239626%_
                                               _%hd238880239548%_)
                                              (_%g238860239627%_
                                               _%hd238871239524%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g238860239627%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g238859239626%_
                                                      'call-method))
                                                   (let ((__tmp244392
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self238802%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g238858239625%_
                                                      __tmp244392)))
                                              (_%__kont243236243237%_
                                               _%g238856239623%_
                                               _%g238857239624%_
                                               _%g238858239625%_
                                               _%g238859239626%_
                                               _%g238860239627%_)
                                              (_%__kont243248243249%_))))))))
                        (_%loop238903239606%_ _%target238900239601%_ '()))))
                   (_%__match243403243404%_
                    (lambda (_%e238861239497%_
                             _%hd238862239500%_
                             _%tl238863239502%_
                             _%e238864239505%_
                             _%hd238865239508%_
                             _%tl238866239510%_
                             _%e238867239513%_
                             _%hd238868239516%_
                             _%tl238869239518%_
                             _%e238870239521%_
                             _%hd238871239524%_
                             _%tl238872239526%_
                             _%e238873239529%_
                             _%hd238874239532%_
                             _%tl238875239534%_
                             _%e238876239537%_
                             _%hd238877239540%_
                             _%tl238878239542%_
                             _%e238879239545%_
                             _%hd238880239548%_
                             _%tl238881239550%_
                             _%e238882239553%_
                             _%hd238883239556%_
                             _%tl238884239558%_
                             _%e238885239561%_
                             _%hd238886239564%_
                             _%tl238887239566%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd238886239564%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl238887239566%_))
                              (let ((_%e238888239569%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl238887239566%_))))
                                (let ((_%tl238890239574%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e238888239569%_)))
                                      (_%hd238889239572%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e238888239569%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl238890239574%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl238884239558%_))
                                          (let ((_%e238891239577%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl238884239558%_))))
                                            (let ((_%tl238893239582%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e238891239577%_)))
                                                  (_%hd238892239580%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e238891239577%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd238892239580%_))
                                                  (let ((_%e238894239585%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd238892239580%_))))
                                                    (let ((_%tl238896239590%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e238894239585%_)))
                                                          (_%hd238895239588%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e238894239585%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd238895239588%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd238895239588%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl238896239590%_))
                          (let ((_%e238897239593%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl238896239590%_))))
                            (let ((_%tl238899239598%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e238897239593%_)))
                                  (_%hd238898239596%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e238897239593%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl238899239598%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl238893239582%_))
                                      (let ((_%__splice243238243239%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl238893239582%_
                                                '0))))
                                        (let ((_%tl238902239603%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice243238243239%_
                                                  '1)))
                                              (_%target238900239601%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice243238243239%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl238902239603%_))
                                              (_%__match243445243446%_
                                               _%e238861239497%_
                                               _%hd238862239500%_
                                               _%tl238863239502%_
                                               _%e238864239505%_
                                               _%hd238865239508%_
                                               _%tl238866239510%_
                                               _%e238867239513%_
                                               _%hd238868239516%_
                                               _%tl238869239518%_
                                               _%e238870239521%_
                                               _%hd238871239524%_
                                               _%tl238872239526%_
                                               _%e238873239529%_
                                               _%hd238874239532%_
                                               _%tl238875239534%_
                                               _%e238876239537%_
                                               _%hd238877239540%_
                                               _%tl238878239542%_
                                               _%e238879239545%_
                                               _%hd238880239548%_
                                               _%tl238881239550%_
                                               _%e238882239553%_
                                               _%hd238883239556%_
                                               _%tl238884239558%_
                                               _%e238885239561%_
                                               _%hd238886239564%_
                                               _%tl238887239566%_
                                               _%e238888239569%_
                                               _%hd238889239572%_
                                               _%tl238890239574%_
                                               _%e238891239577%_
                                               _%hd238892239580%_
                                               _%tl238893239582%_
                                               _%e238894239585%_
                                               _%hd238895239588%_
                                               _%tl238896239590%_
                                               _%e238897239593%_
                                               _%hd238898239596%_
                                               _%tl238899239598%_
                                               _%__splice243238243239%_
                                               _%target238900239601%_
                                               _%tl238902239603%_)
                                              (_%__kont243248243249%_))))
                                      (_%__kont243248243249%_))
                                  (_%__kont243248243249%_))))
                          (_%__kont243248243249%_))
                      (_%__kont243248243249%_))
                  (_%__kont243248243249%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont243248243249%_))))
                                          (_%__match243727243728%_
                                           _%e238861239497%_
                                           _%hd238862239500%_
                                           _%tl238863239502%_
                                           _%e238864239505%_
                                           _%hd238865239508%_
                                           _%tl238866239510%_
                                           _%e238867239513%_
                                           _%hd238868239516%_
                                           _%tl238869239518%_
                                           _%e238870239521%_
                                           _%hd238871239524%_
                                           _%tl238872239526%_
                                           _%e238873239529%_
                                           _%hd238874239532%_
                                           _%tl238875239534%_
                                           _%e238876239537%_
                                           _%hd238877239540%_
                                           _%tl238878239542%_
                                           _%e238879239545%_
                                           _%hd238880239548%_
                                           _%tl238881239550%_
                                           _%e238882239553%_
                                           _%hd238883239556%_
                                           _%tl238884239558%_))
                                      (_%__match243727243728%_
                                       _%e238861239497%_
                                       _%hd238862239500%_
                                       _%tl238863239502%_
                                       _%e238864239505%_
                                       _%hd238865239508%_
                                       _%tl238866239510%_
                                       _%e238867239513%_
                                       _%hd238868239516%_
                                       _%tl238869239518%_
                                       _%e238870239521%_
                                       _%hd238871239524%_
                                       _%tl238872239526%_
                                       _%e238873239529%_
                                       _%hd238874239532%_
                                       _%tl238875239534%_
                                       _%e238876239537%_
                                       _%hd238877239540%_
                                       _%tl238878239542%_
                                       _%e238879239545%_
                                       _%hd238880239548%_
                                       _%tl238881239550%_
                                       _%e238882239553%_
                                       _%hd238883239556%_
                                       _%tl238884239558%_))))
                              (_%__match243727243728%_
                               _%e238861239497%_
                               _%hd238862239500%_
                               _%tl238863239502%_
                               _%e238864239505%_
                               _%hd238865239508%_
                               _%tl238866239510%_
                               _%e238867239513%_
                               _%hd238868239516%_
                               _%tl238869239518%_
                               _%e238870239521%_
                               _%hd238871239524%_
                               _%tl238872239526%_
                               _%e238873239529%_
                               _%hd238874239532%_
                               _%tl238875239534%_
                               _%e238876239537%_
                               _%hd238877239540%_
                               _%tl238878239542%_
                               _%e238879239545%_
                               _%hd238880239548%_
                               _%tl238881239550%_
                               _%e238882239553%_
                               _%hd238883239556%_
                               _%tl238884239558%_))
                          (_%__match243513243514%_
                           _%e238861239497%_
                           _%hd238862239500%_
                           _%tl238863239502%_
                           _%e238864239505%_
                           _%hd238865239508%_
                           _%tl238866239510%_
                           _%e238867239513%_
                           _%hd238868239516%_
                           _%tl238869239518%_
                           _%e238870239521%_
                           _%hd238871239524%_
                           _%tl238872239526%_
                           _%e238873239529%_
                           _%hd238874239532%_
                           _%tl238875239534%_
                           _%e238876239537%_
                           _%hd238877239540%_
                           _%tl238878239542%_
                           _%e238879239545%_
                           _%hd238880239548%_
                           _%tl238881239550%_
                           _%e238882239553%_
                           _%hd238883239556%_
                           _%tl238884239558%_
                           _%e238885239561%_
                           _%hd238886239564%_
                           _%tl238887239566%_))))
                   (_%__match243335243336%_
                    (lambda (_%e238817239684%_
                             _%hd238818239687%_
                             _%tl238819239689%_
                             _%e238820239692%_
                             _%hd238821239695%_
                             _%tl238822239697%_
                             _%e238823239700%_
                             _%hd238824239703%_
                             _%tl238825239705%_
                             _%e238826239708%_
                             _%hd238827239711%_
                             _%tl238828239713%_
                             _%e238829239716%_
                             _%hd238830239719%_
                             _%tl238831239721%_
                             _%e238832239724%_
                             _%hd238833239727%_
                             _%tl238834239729%_
                             _%e238835239732%_
                             _%hd238836239735%_
                             _%tl238837239737%_
                             _%e238838239740%_
                             _%hd238839239743%_
                             _%tl238840239745%_
                             _%e238841239748%_
                             _%hd238842239751%_
                             _%tl238843239753%_
                             _%e238844239756%_
                             _%hd238845239759%_
                             _%tl238846239761%_
                             _%__splice243234243235%_
                             _%target238847239764%_
                             _%tl238849239766%_)
                      (letrec ((_%loop238850239769%_
                                (lambda (_%hd238848239772%_
                                         _%args238854239774%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd238848239772%_))
                                      (let ((_%e238851239776%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd238848239772%_))))
                                        (let ((_%lp-tl238853239781%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e238851239776%_)))
                                              (_%lp-hd238852239779%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e238851239776%_))))
                                          (_%loop238850239769%_
                                           _%lp-tl238853239781%_
                                           (cons _%lp-hd238852239779%_
                                                 _%args238854239774%_))))
                                      (let ((_%args238855239784%_
                                             (reverse _%args238854239774%_)))
                                        (let ((_%g238813239786%_
                                               _%args238855239784%_)
                                              (_%g238814239787%_
                                               _%hd238845239759%_)
                                              (_%g238815239788%_
                                               _%hd238836239735%_)
                                              (_%g238816239789%_
                                               _%hd238827239711%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g238816239789%_
                                                      'call-method))
                                                   (let ((__tmp244393
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self238802%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g238815239788%_
                                                      __tmp244393)))
                                              (_%__kont243232243233%_
                                               _%g238813239786%_
                                               _%g238814239787%_
                                               _%g238815239788%_
                                               _%g238816239789%_)
                                              (_%__match243523243524%_
                                               _%e238817239684%_
                                               _%hd238818239687%_
                                               _%tl238819239689%_
                                               _%e238820239692%_
                                               _%hd238821239695%_
                                               _%tl238822239697%_
                                               _%e238823239700%_
                                               _%hd238824239703%_
                                               _%tl238825239705%_
                                               _%e238826239708%_
                                               _%hd238827239711%_
                                               _%tl238828239713%_
                                               _%e238829239716%_
                                               _%hd238830239719%_
                                               _%tl238831239721%_
                                               _%e238832239724%_
                                               _%hd238833239727%_
                                               _%tl238834239729%_
                                               _%e238835239732%_
                                               _%hd238836239735%_
                                               _%tl238837239737%_
                                               _%e238838239740%_
                                               _%hd238839239743%_
                                               _%tl238840239745%_
                                               _%e238841239748%_
                                               _%hd238842239751%_
                                               _%tl238843239753%_
                                               _%e238844239756%_
                                               _%hd238845239759%_
                                               _%tl238846239761%_))))))))
                        (_%loop238850239769%_ _%target238847239764%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx243230243231%_))
                  (let ((_%e238817239684%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx243230243231%_))))
                    (let ((_%tl238819239689%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e238817239684%_)))
                          (_%hd238818239687%_
                           (let ()
                             (declare (not safe))
                             (##car _%e238817239684%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl238819239689%_))
                          (let ((_%e238820239692%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl238819239689%_))))
                            (let ((_%tl238822239697%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e238820239692%_)))
                                  (_%hd238821239695%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e238820239692%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd238821239695%_))
                                  (let ((_%e238823239700%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd238821239695%_))))
                                    (let ((_%tl238825239705%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e238823239700%_)))
                                          (_%hd238824239703%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e238823239700%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd238824239703%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd238824239703%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl238825239705%_))
                                                  (let ((_%e238826239708%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl238825239705%_))))
                                                    (let ((_%tl238828239713%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e238826239708%_)))
                                                          (_%hd238827239711%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e238826239708%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl238828239713%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl238822239697%_))
                      (let ((_%e238829239716%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl238822239697%_))))
                        (let ((_%tl238831239721%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e238829239716%_)))
                              (_%hd238830239719%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e238829239716%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd238830239719%_))
                              (let ((_%e238832239724%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd238830239719%_))))
                                (let ((_%tl238834239729%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e238832239724%_)))
                                      (_%hd238833239727%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e238832239724%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd238833239727%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd238833239727%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl238834239729%_))
                                              (let ((_%e238835239732%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl238834239729%_))))
                                                (let ((_%tl238837239737%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e238835239732%_)))
                                                      (_%hd238836239735%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e238835239732%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl238837239737%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl238831239721%_))
                                                          (let ((_%e238838239740%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl238831239721%_))))
                    (let ((_%tl238840239745%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e238838239740%_)))
                          (_%hd238839239743%_
                           (let ()
                             (declare (not safe))
                             (##car _%e238838239740%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd238839239743%_))
                          (let ((_%e238841239748%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd238839239743%_))))
                            (let ((_%tl238843239753%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e238841239748%_)))
                                  (_%hd238842239751%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e238841239748%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd238842239751%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd238842239751%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl238843239753%_))
                                          (let ((_%e238844239756%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl238843239753%_))))
                                            (let ((_%tl238846239761%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e238844239756%_)))
                                                  (_%hd238845239759%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e238844239756%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl238846239761%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl238840239745%_))
                                                      (let ((_%__splice243234243235%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl238840239745%_
                        '0))))
                (let ((_%tl238849239766%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice243234243235%_ '1)))
                      (_%target238847239764%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice243234243235%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl238849239766%_))
                      (_%__match243335243336%_
                       _%e238817239684%_
                       _%hd238818239687%_
                       _%tl238819239689%_
                       _%e238820239692%_
                       _%hd238821239695%_
                       _%tl238822239697%_
                       _%e238823239700%_
                       _%hd238824239703%_
                       _%tl238825239705%_
                       _%e238826239708%_
                       _%hd238827239711%_
                       _%tl238828239713%_
                       _%e238829239716%_
                       _%hd238830239719%_
                       _%tl238831239721%_
                       _%e238832239724%_
                       _%hd238833239727%_
                       _%tl238834239729%_
                       _%e238835239732%_
                       _%hd238836239735%_
                       _%tl238837239737%_
                       _%e238838239740%_
                       _%hd238839239743%_
                       _%tl238840239745%_
                       _%e238841239748%_
                       _%hd238842239751%_
                       _%tl238843239753%_
                       _%e238844239756%_
                       _%hd238845239759%_
                       _%tl238846239761%_
                       _%__splice243234243235%_
                       _%target238847239764%_
                       _%tl238849239766%_)
                      (_%__match243523243524%_
                       _%e238817239684%_
                       _%hd238818239687%_
                       _%tl238819239689%_
                       _%e238820239692%_
                       _%hd238821239695%_
                       _%tl238822239697%_
                       _%e238823239700%_
                       _%hd238824239703%_
                       _%tl238825239705%_
                       _%e238826239708%_
                       _%hd238827239711%_
                       _%tl238828239713%_
                       _%e238829239716%_
                       _%hd238830239719%_
                       _%tl238831239721%_
                       _%e238832239724%_
                       _%hd238833239727%_
                       _%tl238834239729%_
                       _%e238835239732%_
                       _%hd238836239735%_
                       _%tl238837239737%_
                       _%e238838239740%_
                       _%hd238839239743%_
                       _%tl238840239745%_
                       _%e238841239748%_
                       _%hd238842239751%_
                       _%tl238843239753%_
                       _%e238844239756%_
                       _%hd238845239759%_
                       _%tl238846239761%_))))
              (_%__match243523243524%_
               _%e238817239684%_
               _%hd238818239687%_
               _%tl238819239689%_
               _%e238820239692%_
               _%hd238821239695%_
               _%tl238822239697%_
               _%e238823239700%_
               _%hd238824239703%_
               _%tl238825239705%_
               _%e238826239708%_
               _%hd238827239711%_
               _%tl238828239713%_
               _%e238829239716%_
               _%hd238830239719%_
               _%tl238831239721%_
               _%e238832239724%_
               _%hd238833239727%_
               _%tl238834239729%_
               _%e238835239732%_
               _%hd238836239735%_
               _%tl238837239737%_
               _%e238838239740%_
               _%hd238839239743%_
               _%tl238840239745%_
               _%e238841239748%_
               _%hd238842239751%_
               _%tl238843239753%_
               _%e238844239756%_
               _%hd238845239759%_
               _%tl238846239761%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match243727243728%_
                                                   _%e238817239684%_
                                                   _%hd238818239687%_
                                                   _%tl238819239689%_
                                                   _%e238820239692%_
                                                   _%hd238821239695%_
                                                   _%tl238822239697%_
                                                   _%e238823239700%_
                                                   _%hd238824239703%_
                                                   _%tl238825239705%_
                                                   _%e238826239708%_
                                                   _%hd238827239711%_
                                                   _%tl238828239713%_
                                                   _%e238829239716%_
                                                   _%hd238830239719%_
                                                   _%tl238831239721%_
                                                   _%e238832239724%_
                                                   _%hd238833239727%_
                                                   _%tl238834239729%_
                                                   _%e238835239732%_
                                                   _%hd238836239735%_
                                                   _%tl238837239737%_
                                                   _%e238838239740%_
                                                   _%hd238839239743%_
                                                   _%tl238840239745%_))))
                                          (_%__match243727243728%_
                                           _%e238817239684%_
                                           _%hd238818239687%_
                                           _%tl238819239689%_
                                           _%e238820239692%_
                                           _%hd238821239695%_
                                           _%tl238822239697%_
                                           _%e238823239700%_
                                           _%hd238824239703%_
                                           _%tl238825239705%_
                                           _%e238826239708%_
                                           _%hd238827239711%_
                                           _%tl238828239713%_
                                           _%e238829239716%_
                                           _%hd238830239719%_
                                           _%tl238831239721%_
                                           _%e238832239724%_
                                           _%hd238833239727%_
                                           _%tl238834239729%_
                                           _%e238835239732%_
                                           _%hd238836239735%_
                                           _%tl238837239737%_
                                           _%e238838239740%_
                                           _%hd238839239743%_
                                           _%tl238840239745%_))
                                      (_%__match243403243404%_
                                       _%e238817239684%_
                                       _%hd238818239687%_
                                       _%tl238819239689%_
                                       _%e238820239692%_
                                       _%hd238821239695%_
                                       _%tl238822239697%_
                                       _%e238823239700%_
                                       _%hd238824239703%_
                                       _%tl238825239705%_
                                       _%e238826239708%_
                                       _%hd238827239711%_
                                       _%tl238828239713%_
                                       _%e238829239716%_
                                       _%hd238830239719%_
                                       _%tl238831239721%_
                                       _%e238832239724%_
                                       _%hd238833239727%_
                                       _%tl238834239729%_
                                       _%e238835239732%_
                                       _%hd238836239735%_
                                       _%tl238837239737%_
                                       _%e238838239740%_
                                       _%hd238839239743%_
                                       _%tl238840239745%_
                                       _%e238841239748%_
                                       _%hd238842239751%_
                                       _%tl238843239753%_))
                                  (_%__match243727243728%_
                                   _%e238817239684%_
                                   _%hd238818239687%_
                                   _%tl238819239689%_
                                   _%e238820239692%_
                                   _%hd238821239695%_
                                   _%tl238822239697%_
                                   _%e238823239700%_
                                   _%hd238824239703%_
                                   _%tl238825239705%_
                                   _%e238826239708%_
                                   _%hd238827239711%_
                                   _%tl238828239713%_
                                   _%e238829239716%_
                                   _%hd238830239719%_
                                   _%tl238831239721%_
                                   _%e238832239724%_
                                   _%hd238833239727%_
                                   _%tl238834239729%_
                                   _%e238835239732%_
                                   _%hd238836239735%_
                                   _%tl238837239737%_
                                   _%e238838239740%_
                                   _%hd238839239743%_
                                   _%tl238840239745%_))))
                          (_%__match243727243728%_
                           _%e238817239684%_
                           _%hd238818239687%_
                           _%tl238819239689%_
                           _%e238820239692%_
                           _%hd238821239695%_
                           _%tl238822239697%_
                           _%e238823239700%_
                           _%hd238824239703%_
                           _%tl238825239705%_
                           _%e238826239708%_
                           _%hd238827239711%_
                           _%tl238828239713%_
                           _%e238829239716%_
                           _%hd238830239719%_
                           _%tl238831239721%_
                           _%e238832239724%_
                           _%hd238833239727%_
                           _%tl238834239729%_
                           _%e238835239732%_
                           _%hd238836239735%_
                           _%tl238837239737%_
                           _%e238838239740%_
                           _%hd238839239743%_
                           _%tl238840239745%_))))
                  (_%__match243665243666%_
                   _%e238817239684%_
                   _%hd238818239687%_
                   _%tl238819239689%_
                   _%e238820239692%_
                   _%hd238821239695%_
                   _%tl238822239697%_
                   _%e238823239700%_
                   _%hd238824239703%_
                   _%tl238825239705%_
                   _%e238826239708%_
                   _%hd238827239711%_
                   _%tl238828239713%_
                   _%e238829239716%_
                   _%hd238830239719%_
                   _%tl238831239721%_
                   _%e238832239724%_
                   _%hd238833239727%_
                   _%tl238834239729%_
                   _%e238835239732%_
                   _%hd238836239735%_
                   _%tl238837239737%_))
              (_%__kont243248243249%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont243248243249%_))
                                          (_%__kont243248243249%_))
                                      (_%__kont243248243249%_))))
                              (_%__kont243248243249%_))))
                      (_%__kont243248243249%_))
                  (_%__kont243248243249%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont243248243249%_))
                                              (_%__kont243248243249%_))
                                          (_%__kont243248243249%_))))
                                  (_%__kont243248243249%_))))
                          (_%__kont243248243249%_))))
                  (_%__kont243248243249%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self237745%_ _%stx237746%_)
        (letrec ((_%force-e237748%_
                  (lambda (_%target238800%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target238800%_ '()))
                                      '()))))))
          (let* ((_%__stx243732243733%_ _%stx237746%_)
                 (_%g237756237978%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx243732243733%_)))))
            (let ((_%__kont243734243735%_
                   (lambda (_%g237758238746%_
                            _%g237759238747%_
                            _%g237760238748%_
                            _%g237761238749%_)
                     (let ((_%$method238794%_
                            (let ((__tmp244395
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self237745%_ 'methods)))
                                  (__tmp244394
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g237759238747%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp244395 __tmp244394)))
                           (_%args238795%_
                            (map (lambda (_%g238782238784%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self237745%_
                                      _%g238782238784%_)))
                                 (let ((__tmp244396
                                        (lambda (_%g238786238789%_
                                                 _%g238787238791%_)
                                          (cons _%g238786238789%_
                                                _%g238787238791%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp244396
                                    '()
                                    _%g237758238746%_)))))
                       (let ((__tmp244397
                              (cons '%#call
                                    (cons (_%force-e237748%_ _%$method238794%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self237745%_
                                                               'receiver))
                                                            '()))
                                                _%args238795%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp244397 _%stx237746%_)))))
                  (_%__kont243738243739%_
                   (lambda (_%g237801238580%_
                            _%g237802238581%_
                            _%g237803238582%_
                            _%g237804238583%_
                            _%g237805238584%_)
                     (let ((_%$method238636%_
                            (let ((__tmp244399
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self237745%_ 'methods)))
                                  (__tmp244398
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g237802238581%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp244399 __tmp244398)))
                           (_%args238637%_
                            (map (lambda (_%g238624238626%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self237745%_
                                      _%g238624238626%_)))
                                 (let ((__tmp244400
                                        (lambda (_%g238628238631%_
                                                 _%g238629238633%_)
                                          (cons _%g238628238631%_
                                                _%g238629238633%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp244400
                                    '()
                                    _%g237801238580%_)))))
                       (let ((__tmp244401
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e237748%_
                                                 _%$method238636%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self237745%_ 'receiver))
                          '()))
              _%args238637%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp244401 _%stx237746%_)))))
                  (_%__kont243742243743%_
                   (lambda (_%g237854238413%_
                            _%g237855238414%_
                            _%g237856238415%_)
                     (let* ((_%$field238447%_
                             (let ((__tmp244403
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self237745%_ 'slots)))
                                   (__tmp244402
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%g237854238413%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp244403 __tmp244402)))
                            (__tmp244404
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self237745%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field238447%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self237745%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp244404 _%stx237746%_))))
                  (_%__kont243744243745%_
                   (lambda (_%g237887238287%_
                            _%g237888238288%_
                            _%g237889238289%_
                            _%g237890238290%_)
                     (let ((_%$field238325%_
                            (let ((__tmp244406
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self237745%_ 'slots)))
                                  (__tmp244405
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g237888238288%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp244406 __tmp244405)))
                           (_%expr238326%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self237745%_
                               _%g237887238287%_))))
                       (let ((__tmp244407
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self237745%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field238325%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self237745%_ 'receiver))
                          '()))
              (cons _%expr238326%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp244407 _%stx237746%_)))))
                  (_%__kont243746243747%_
                   (lambda (_%g237924238159%_ _%g237925238160%_)
                     (let* ((_%accessor238182%_
                             (let ((__tmp244408
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g237925238160%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp244408)))
                            (_%klass238184%_
                             (let ((__tmp244409
                                    (##structure-ref
                                     _%accessor238182%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx237746%_
                                __tmp244409)))
                            (_%slot238186%_
                             (##structure-ref
                              _%accessor238182%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (if (##structure-ref
                                _%accessor238182%_
                                '4
                                gxc#!accessor::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass238184%_
                                      _%slot238186%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass238184%_
                                      '8
                                      '#f
                                      '#f))))
                           _%stx237746%_
                           (let* ((_%$field238192%_
                                   (let ((__tmp244410
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self237745%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp244410 _%slot238186%_)))
                                  (__tmp244411
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self237745%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field238192%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self237745%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp244411
                              _%stx237746%_))))))
                  (_%__kont243748243749%_
                   (lambda (_%g237947238054%_
                            _%g237948238055%_
                            _%g237949238056%_)
                     (let* ((_%mutator238084%_
                             (let ((__tmp244412
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g237949238056%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp244412)))
                            (_%klass238086%_
                             (let ((__tmp244413
                                    (##structure-ref
                                     _%mutator238084%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx237746%_
                                __tmp244413)))
                            (_%slot238088%_
                             (##structure-ref
                              _%mutator238084%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr238090%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self237745%_
                                _%g237947238054%_))))
                       (if (if (##structure-ref
                                _%mutator238084%_
                                '4
                                gxc#!mutator::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass238086%_
                                      _%slot238088%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass238086%_
                                      '8
                                      '#f
                                      '#f))))
                           (let ((__tmp244414
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%g237949238056%_
                                                          '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%g237948238055%_
                                                                '()))
                                                    (cons _%expr238090%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp244414 _%stx237746%_))
                           (let* ((_%$field238096%_
                                   (let ((__tmp244415
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self237745%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp244415 _%slot238088%_)))
                                  (__tmp244416
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self237745%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field238096%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self237745%_ 'receiver))
                               '()))
                   (cons _%expr238090%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp244416
                              _%stx237746%_))))))
                  (_%__kont243750243751%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self237745%_ _%stx237746%_)))))
              (let* ((_%__match244231244232%_
                      (lambda (_%e237950237990%_
                               _%hd237951237993%_
                               _%tl237952237995%_
                               _%e237953237998%_
                               _%hd237954238001%_
                               _%tl237955238003%_
                               _%e237956238006%_
                               _%hd237957238009%_
                               _%tl237958238011%_
                               _%e237959238014%_
                               _%hd237960238017%_
                               _%tl237961238019%_
                               _%e237962238022%_
                               _%hd237963238025%_
                               _%tl237964238027%_
                               _%e237965238030%_
                               _%hd237966238033%_
                               _%tl237967238035%_
                               _%e237968238038%_
                               _%hd237969238041%_
                               _%tl237970238043%_
                               _%e237971238046%_
                               _%hd237972238049%_
                               _%tl237973238051%_)
                        (let ((_%g237947238054%_ _%hd237972238049%_)
                              (_%g237948238055%_ _%hd237969238041%_)
                              (_%g237949238056%_ _%hd237960238017%_))
                          (if (and (let ((__tmp244417
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self237745%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g237948238055%_
                                      __tmp244417))
                                   (let ((__tmp244418
                                          (let ((__tmp244419
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g237949238056%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp244419))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp244418
                                      'gxc#!mutator::t)))
                              (_%__kont243748243749%_
                               _%g237947238054%_
                               _%g237948238055%_
                               _%g237949238056%_)
                              (_%__kont243750243751%_)))))
                     (_%__match244229244230%_
                      (lambda (_%e237950237990%_
                               _%hd237951237993%_
                               _%tl237952237995%_
                               _%e237953237998%_
                               _%hd237954238001%_
                               _%tl237955238003%_
                               _%e237956238006%_
                               _%hd237957238009%_
                               _%tl237958238011%_
                               _%e237959238014%_
                               _%hd237960238017%_
                               _%tl237961238019%_
                               _%e237962238022%_
                               _%hd237963238025%_
                               _%tl237964238027%_
                               _%e237965238030%_
                               _%hd237966238033%_
                               _%tl237967238035%_
                               _%e237968238038%_
                               _%hd237969238041%_
                               _%tl237970238043%_
                               _%e237971238046%_
                               _%hd237972238049%_
                               _%tl237973238051%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl237973238051%_))
                            (_%__match244231244232%_
                             _%e237950237990%_
                             _%hd237951237993%_
                             _%tl237952237995%_
                             _%e237953237998%_
                             _%hd237954238001%_
                             _%tl237955238003%_
                             _%e237956238006%_
                             _%hd237957238009%_
                             _%tl237958238011%_
                             _%e237959238014%_
                             _%hd237960238017%_
                             _%tl237961238019%_
                             _%e237962238022%_
                             _%hd237963238025%_
                             _%tl237964238027%_
                             _%e237965238030%_
                             _%hd237966238033%_
                             _%tl237967238035%_
                             _%e237968238038%_
                             _%hd237969238041%_
                             _%tl237970238043%_
                             _%e237971238046%_
                             _%hd237972238049%_
                             _%tl237973238051%_)
                            (_%__kont243750243751%_))))
                     (_%__match244223244224%_
                      (lambda (_%e237950237990%_
                               _%hd237951237993%_
                               _%tl237952237995%_
                               _%e237953237998%_
                               _%hd237954238001%_
                               _%tl237955238003%_
                               _%e237956238006%_
                               _%hd237957238009%_
                               _%tl237958238011%_
                               _%e237959238014%_
                               _%hd237960238017%_
                               _%tl237961238019%_
                               _%e237962238022%_
                               _%hd237963238025%_
                               _%tl237964238027%_
                               _%e237965238030%_
                               _%hd237966238033%_
                               _%tl237967238035%_
                               _%e237968238038%_
                               _%hd237969238041%_
                               _%tl237970238043%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl237964238027%_))
                            (let ((_%e237971238046%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl237964238027%_))))
                              (let ((_%tl237973238051%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e237971238046%_)))
                                    (_%hd237972238049%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e237971238046%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl237973238051%_))
                                    (_%__match244231244232%_
                                     _%e237950237990%_
                                     _%hd237951237993%_
                                     _%tl237952237995%_
                                     _%e237953237998%_
                                     _%hd237954238001%_
                                     _%tl237955238003%_
                                     _%e237956238006%_
                                     _%hd237957238009%_
                                     _%tl237958238011%_
                                     _%e237959238014%_
                                     _%hd237960238017%_
                                     _%tl237961238019%_
                                     _%e237962238022%_
                                     _%hd237963238025%_
                                     _%tl237964238027%_
                                     _%e237965238030%_
                                     _%hd237966238033%_
                                     _%tl237967238035%_
                                     _%e237968238038%_
                                     _%hd237969238041%_
                                     _%tl237970238043%_
                                     _%e237971238046%_
                                     _%hd237972238049%_
                                     _%tl237973238051%_)
                                    (_%__kont243750243751%_))))
                            (_%__kont243750243751%_))))
                     (_%__match244169244170%_
                      (lambda (_%e237926238103%_
                               _%hd237927238106%_
                               _%tl237928238108%_
                               _%e237929238111%_
                               _%hd237930238114%_
                               _%tl237931238116%_
                               _%e237932238119%_
                               _%hd237933238122%_
                               _%tl237934238124%_
                               _%e237935238127%_
                               _%hd237936238130%_
                               _%tl237937238132%_
                               _%e237938238135%_
                               _%hd237939238138%_
                               _%tl237940238140%_
                               _%e237941238143%_
                               _%hd237942238146%_
                               _%tl237943238148%_
                               _%e237944238151%_
                               _%hd237945238154%_
                               _%tl237946238156%_)
                        (let ((_%g237924238159%_ _%hd237945238154%_)
                              (_%g237925238160%_ _%hd237936238130%_))
                          (if (and (let ((__tmp244420
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self237745%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g237924238159%_
                                      __tmp244420))
                                   (let ((__tmp244421
                                          (let ((__tmp244422
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g237925238160%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp244422))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp244421
                                      'gxc#!accessor::t)))
                              (_%__kont243746243747%_
                               _%g237924238159%_
                               _%g237925238160%_)
                              (_%__kont243750243751%_)))))
                     (_%__match244167244168%_
                      (lambda (_%e237926238103%_
                               _%hd237927238106%_
                               _%tl237928238108%_
                               _%e237929238111%_
                               _%hd237930238114%_
                               _%tl237931238116%_
                               _%e237932238119%_
                               _%hd237933238122%_
                               _%tl237934238124%_
                               _%e237935238127%_
                               _%hd237936238130%_
                               _%tl237937238132%_
                               _%e237938238135%_
                               _%hd237939238138%_
                               _%tl237940238140%_
                               _%e237941238143%_
                               _%hd237942238146%_
                               _%tl237943238148%_
                               _%e237944238151%_
                               _%hd237945238154%_
                               _%tl237946238156%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl237940238140%_))
                            (_%__match244169244170%_
                             _%e237926238103%_
                             _%hd237927238106%_
                             _%tl237928238108%_
                             _%e237929238111%_
                             _%hd237930238114%_
                             _%tl237931238116%_
                             _%e237932238119%_
                             _%hd237933238122%_
                             _%tl237934238124%_
                             _%e237935238127%_
                             _%hd237936238130%_
                             _%tl237937238132%_
                             _%e237938238135%_
                             _%hd237939238138%_
                             _%tl237940238140%_
                             _%e237941238143%_
                             _%hd237942238146%_
                             _%tl237943238148%_
                             _%e237944238151%_
                             _%hd237945238154%_
                             _%tl237946238156%_)
                            (_%__match244223244224%_
                             _%e237926238103%_
                             _%hd237927238106%_
                             _%tl237928238108%_
                             _%e237929238111%_
                             _%hd237930238114%_
                             _%tl237931238116%_
                             _%e237932238119%_
                             _%hd237933238122%_
                             _%tl237934238124%_
                             _%e237935238127%_
                             _%hd237936238130%_
                             _%tl237937238132%_
                             _%e237938238135%_
                             _%hd237939238138%_
                             _%tl237940238140%_
                             _%e237941238143%_
                             _%hd237942238146%_
                             _%tl237943238148%_
                             _%e237944238151%_
                             _%hd237945238154%_
                             _%tl237946238156%_))))
                     (_%__match244113244114%_
                      (lambda (_%e237891238199%_
                               _%hd237892238202%_
                               _%tl237893238204%_
                               _%e237894238207%_
                               _%hd237895238210%_
                               _%tl237896238212%_
                               _%e237897238215%_
                               _%hd237898238218%_
                               _%tl237899238220%_
                               _%e237900238223%_
                               _%hd237901238226%_
                               _%tl237902238228%_
                               _%e237903238231%_
                               _%hd237904238234%_
                               _%tl237905238236%_
                               _%e237906238239%_
                               _%hd237907238242%_
                               _%tl237908238244%_
                               _%e237909238247%_
                               _%hd237910238250%_
                               _%tl237911238252%_
                               _%e237912238255%_
                               _%hd237913238258%_
                               _%tl237914238260%_
                               _%e237915238263%_
                               _%hd237916238266%_
                               _%tl237917238268%_
                               _%e237918238271%_
                               _%hd237919238274%_
                               _%tl237920238276%_
                               _%e237921238279%_
                               _%hd237922238282%_
                               _%tl237923238284%_)
                        (let ((_%g237887238287%_ _%hd237922238282%_)
                              (_%g237888238288%_ _%hd237919238274%_)
                              (_%g237889238289%_ _%hd237910238250%_)
                              (_%g237890238290%_ _%hd237901238226%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g237890238290%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g237890238290%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp244423
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self237745%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g237889238289%_
                                      __tmp244423)))
                              (_%__kont243744243745%_
                               _%g237887238287%_
                               _%g237888238288%_
                               _%g237889238289%_
                               _%g237890238290%_)
                              (_%__kont243750243751%_)))))
                     (_%__match244105244106%_
                      (lambda (_%e237891238199%_
                               _%hd237892238202%_
                               _%tl237893238204%_
                               _%e237894238207%_
                               _%hd237895238210%_
                               _%tl237896238212%_
                               _%e237897238215%_
                               _%hd237898238218%_
                               _%tl237899238220%_
                               _%e237900238223%_
                               _%hd237901238226%_
                               _%tl237902238228%_
                               _%e237903238231%_
                               _%hd237904238234%_
                               _%tl237905238236%_
                               _%e237906238239%_
                               _%hd237907238242%_
                               _%tl237908238244%_
                               _%e237909238247%_
                               _%hd237910238250%_
                               _%tl237911238252%_
                               _%e237912238255%_
                               _%hd237913238258%_
                               _%tl237914238260%_
                               _%e237915238263%_
                               _%hd237916238266%_
                               _%tl237917238268%_
                               _%e237918238271%_
                               _%hd237919238274%_
                               _%tl237920238276%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl237914238260%_))
                            (let ((_%e237921238279%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl237914238260%_))))
                              (let ((_%tl237923238284%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e237921238279%_)))
                                    (_%hd237922238282%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e237921238279%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl237923238284%_))
                                    (_%__match244113244114%_
                                     _%e237891238199%_
                                     _%hd237892238202%_
                                     _%tl237893238204%_
                                     _%e237894238207%_
                                     _%hd237895238210%_
                                     _%tl237896238212%_
                                     _%e237897238215%_
                                     _%hd237898238218%_
                                     _%tl237899238220%_
                                     _%e237900238223%_
                                     _%hd237901238226%_
                                     _%tl237902238228%_
                                     _%e237903238231%_
                                     _%hd237904238234%_
                                     _%tl237905238236%_
                                     _%e237906238239%_
                                     _%hd237907238242%_
                                     _%tl237908238244%_
                                     _%e237909238247%_
                                     _%hd237910238250%_
                                     _%tl237911238252%_
                                     _%e237912238255%_
                                     _%hd237913238258%_
                                     _%tl237914238260%_
                                     _%e237915238263%_
                                     _%hd237916238266%_
                                     _%tl237917238268%_
                                     _%e237918238271%_
                                     _%hd237919238274%_
                                     _%tl237920238276%_
                                     _%e237921238279%_
                                     _%hd237922238282%_
                                     _%tl237923238284%_)
                                    (_%__kont243750243751%_))))
                            (_%__match244229244230%_
                             _%e237891238199%_
                             _%hd237892238202%_
                             _%tl237893238204%_
                             _%e237894238207%_
                             _%hd237895238210%_
                             _%tl237896238212%_
                             _%e237897238215%_
                             _%hd237898238218%_
                             _%tl237899238220%_
                             _%e237900238223%_
                             _%hd237901238226%_
                             _%tl237902238228%_
                             _%e237903238231%_
                             _%hd237904238234%_
                             _%tl237905238236%_
                             _%e237906238239%_
                             _%hd237907238242%_
                             _%tl237908238244%_
                             _%e237909238247%_
                             _%hd237910238250%_
                             _%tl237911238252%_
                             _%e237912238255%_
                             _%hd237913238258%_
                             _%tl237914238260%_))))
                     (_%__match244027244028%_
                      (lambda (_%e237857238333%_
                               _%hd237858238336%_
                               _%tl237859238338%_
                               _%e237860238341%_
                               _%hd237861238344%_
                               _%tl237862238346%_
                               _%e237863238349%_
                               _%hd237864238352%_
                               _%tl237865238354%_
                               _%e237866238357%_
                               _%hd237867238360%_
                               _%tl237868238362%_
                               _%e237869238365%_
                               _%hd237870238368%_
                               _%tl237871238370%_
                               _%e237872238373%_
                               _%hd237873238376%_
                               _%tl237874238378%_
                               _%e237875238381%_
                               _%hd237876238384%_
                               _%tl237877238386%_
                               _%e237878238389%_
                               _%hd237879238392%_
                               _%tl237880238394%_
                               _%e237881238397%_
                               _%hd237882238400%_
                               _%tl237883238402%_
                               _%e237884238405%_
                               _%hd237885238408%_
                               _%tl237886238410%_)
                        (let ((_%g237854238413%_ _%hd237885238408%_)
                              (_%g237855238414%_ _%hd237876238384%_)
                              (_%g237856238415%_ _%hd237867238360%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g237856238415%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g237856238415%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp244424
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self237745%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g237855238414%_
                                      __tmp244424)))
                              (_%__kont243742243743%_
                               _%g237854238413%_
                               _%g237855238414%_
                               _%g237856238415%_)
                              (_%__match244231244232%_
                               _%e237857238333%_
                               _%hd237858238336%_
                               _%tl237859238338%_
                               _%e237860238341%_
                               _%hd237861238344%_
                               _%tl237862238346%_
                               _%e237863238349%_
                               _%hd237864238352%_
                               _%tl237865238354%_
                               _%e237866238357%_
                               _%hd237867238360%_
                               _%tl237868238362%_
                               _%e237869238365%_
                               _%hd237870238368%_
                               _%tl237871238370%_
                               _%e237872238373%_
                               _%hd237873238376%_
                               _%tl237874238378%_
                               _%e237875238381%_
                               _%hd237876238384%_
                               _%tl237877238386%_
                               _%e237878238389%_
                               _%hd237879238392%_
                               _%tl237880238394%_)))))
                     (_%__match244025244026%_
                      (lambda (_%e237857238333%_
                               _%hd237858238336%_
                               _%tl237859238338%_
                               _%e237860238341%_
                               _%hd237861238344%_
                               _%tl237862238346%_
                               _%e237863238349%_
                               _%hd237864238352%_
                               _%tl237865238354%_
                               _%e237866238357%_
                               _%hd237867238360%_
                               _%tl237868238362%_
                               _%e237869238365%_
                               _%hd237870238368%_
                               _%tl237871238370%_
                               _%e237872238373%_
                               _%hd237873238376%_
                               _%tl237874238378%_
                               _%e237875238381%_
                               _%hd237876238384%_
                               _%tl237877238386%_
                               _%e237878238389%_
                               _%hd237879238392%_
                               _%tl237880238394%_
                               _%e237881238397%_
                               _%hd237882238400%_
                               _%tl237883238402%_
                               _%e237884238405%_
                               _%hd237885238408%_
                               _%tl237886238410%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl237880238394%_))
                            (_%__match244027244028%_
                             _%e237857238333%_
                             _%hd237858238336%_
                             _%tl237859238338%_
                             _%e237860238341%_
                             _%hd237861238344%_
                             _%tl237862238346%_
                             _%e237863238349%_
                             _%hd237864238352%_
                             _%tl237865238354%_
                             _%e237866238357%_
                             _%hd237867238360%_
                             _%tl237868238362%_
                             _%e237869238365%_
                             _%hd237870238368%_
                             _%tl237871238370%_
                             _%e237872238373%_
                             _%hd237873238376%_
                             _%tl237874238378%_
                             _%e237875238381%_
                             _%hd237876238384%_
                             _%tl237877238386%_
                             _%e237878238389%_
                             _%hd237879238392%_
                             _%tl237880238394%_
                             _%e237881238397%_
                             _%hd237882238400%_
                             _%tl237883238402%_
                             _%e237884238405%_
                             _%hd237885238408%_
                             _%tl237886238410%_)
                            (_%__match244105244106%_
                             _%e237857238333%_
                             _%hd237858238336%_
                             _%tl237859238338%_
                             _%e237860238341%_
                             _%hd237861238344%_
                             _%tl237862238346%_
                             _%e237863238349%_
                             _%hd237864238352%_
                             _%tl237865238354%_
                             _%e237866238357%_
                             _%hd237867238360%_
                             _%tl237868238362%_
                             _%e237869238365%_
                             _%hd237870238368%_
                             _%tl237871238370%_
                             _%e237872238373%_
                             _%hd237873238376%_
                             _%tl237874238378%_
                             _%e237875238381%_
                             _%hd237876238384%_
                             _%tl237877238386%_
                             _%e237878238389%_
                             _%hd237879238392%_
                             _%tl237880238394%_
                             _%e237881238397%_
                             _%hd237882238400%_
                             _%tl237883238402%_
                             _%e237884238405%_
                             _%hd237885238408%_
                             _%tl237886238410%_))))
                     (_%__match244015244016%_
                      (lambda (_%e237857238333%_
                               _%hd237858238336%_
                               _%tl237859238338%_
                               _%e237860238341%_
                               _%hd237861238344%_
                               _%tl237862238346%_
                               _%e237863238349%_
                               _%hd237864238352%_
                               _%tl237865238354%_
                               _%e237866238357%_
                               _%hd237867238360%_
                               _%tl237868238362%_
                               _%e237869238365%_
                               _%hd237870238368%_
                               _%tl237871238370%_
                               _%e237872238373%_
                               _%hd237873238376%_
                               _%tl237874238378%_
                               _%e237875238381%_
                               _%hd237876238384%_
                               _%tl237877238386%_
                               _%e237878238389%_
                               _%hd237879238392%_
                               _%tl237880238394%_
                               _%e237881238397%_
                               _%hd237882238400%_
                               _%tl237883238402%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd237882238400%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl237883238402%_))
                                (let ((_%e237884238405%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl237883238402%_))))
                                  (let ((_%tl237886238410%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e237884238405%_)))
                                        (_%hd237885238408%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e237884238405%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl237886238410%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl237880238394%_))
                                            (_%__match244027244028%_
                                             _%e237857238333%_
                                             _%hd237858238336%_
                                             _%tl237859238338%_
                                             _%e237860238341%_
                                             _%hd237861238344%_
                                             _%tl237862238346%_
                                             _%e237863238349%_
                                             _%hd237864238352%_
                                             _%tl237865238354%_
                                             _%e237866238357%_
                                             _%hd237867238360%_
                                             _%tl237868238362%_
                                             _%e237869238365%_
                                             _%hd237870238368%_
                                             _%tl237871238370%_
                                             _%e237872238373%_
                                             _%hd237873238376%_
                                             _%tl237874238378%_
                                             _%e237875238381%_
                                             _%hd237876238384%_
                                             _%tl237877238386%_
                                             _%e237878238389%_
                                             _%hd237879238392%_
                                             _%tl237880238394%_
                                             _%e237881238397%_
                                             _%hd237882238400%_
                                             _%tl237883238402%_
                                             _%e237884238405%_
                                             _%hd237885238408%_
                                             _%tl237886238410%_)
                                            (_%__match244105244106%_
                                             _%e237857238333%_
                                             _%hd237858238336%_
                                             _%tl237859238338%_
                                             _%e237860238341%_
                                             _%hd237861238344%_
                                             _%tl237862238346%_
                                             _%e237863238349%_
                                             _%hd237864238352%_
                                             _%tl237865238354%_
                                             _%e237866238357%_
                                             _%hd237867238360%_
                                             _%tl237868238362%_
                                             _%e237869238365%_
                                             _%hd237870238368%_
                                             _%tl237871238370%_
                                             _%e237872238373%_
                                             _%hd237873238376%_
                                             _%tl237874238378%_
                                             _%e237875238381%_
                                             _%hd237876238384%_
                                             _%tl237877238386%_
                                             _%e237878238389%_
                                             _%hd237879238392%_
                                             _%tl237880238394%_
                                             _%e237881238397%_
                                             _%hd237882238400%_
                                             _%tl237883238402%_
                                             _%e237884238405%_
                                             _%hd237885238408%_
                                             _%tl237886238410%_))
                                        (_%__match244229244230%_
                                         _%e237857238333%_
                                         _%hd237858238336%_
                                         _%tl237859238338%_
                                         _%e237860238341%_
                                         _%hd237861238344%_
                                         _%tl237862238346%_
                                         _%e237863238349%_
                                         _%hd237864238352%_
                                         _%tl237865238354%_
                                         _%e237866238357%_
                                         _%hd237867238360%_
                                         _%tl237868238362%_
                                         _%e237869238365%_
                                         _%hd237870238368%_
                                         _%tl237871238370%_
                                         _%e237872238373%_
                                         _%hd237873238376%_
                                         _%tl237874238378%_
                                         _%e237875238381%_
                                         _%hd237876238384%_
                                         _%tl237877238386%_
                                         _%e237878238389%_
                                         _%hd237879238392%_
                                         _%tl237880238394%_))))
                                (_%__match244229244230%_
                                 _%e237857238333%_
                                 _%hd237858238336%_
                                 _%tl237859238338%_
                                 _%e237860238341%_
                                 _%hd237861238344%_
                                 _%tl237862238346%_
                                 _%e237863238349%_
                                 _%hd237864238352%_
                                 _%tl237865238354%_
                                 _%e237866238357%_
                                 _%hd237867238360%_
                                 _%tl237868238362%_
                                 _%e237869238365%_
                                 _%hd237870238368%_
                                 _%tl237871238370%_
                                 _%e237872238373%_
                                 _%hd237873238376%_
                                 _%tl237874238378%_
                                 _%e237875238381%_
                                 _%hd237876238384%_
                                 _%tl237877238386%_
                                 _%e237878238389%_
                                 _%hd237879238392%_
                                 _%tl237880238394%_))
                            (_%__match244229244230%_
                             _%e237857238333%_
                             _%hd237858238336%_
                             _%tl237859238338%_
                             _%e237860238341%_
                             _%hd237861238344%_
                             _%tl237862238346%_
                             _%e237863238349%_
                             _%hd237864238352%_
                             _%tl237865238354%_
                             _%e237866238357%_
                             _%hd237867238360%_
                             _%tl237868238362%_
                             _%e237869238365%_
                             _%hd237870238368%_
                             _%tl237871238370%_
                             _%e237872238373%_
                             _%hd237873238376%_
                             _%tl237874238378%_
                             _%e237875238381%_
                             _%hd237876238384%_
                             _%tl237877238386%_
                             _%e237878238389%_
                             _%hd237879238392%_
                             _%tl237880238394%_))))
                     (_%__match243947243948%_
                      (lambda (_%e237806238454%_
                               _%hd237807238457%_
                               _%tl237808238459%_
                               _%e237809238462%_
                               _%hd237810238465%_
                               _%tl237811238467%_
                               _%e237812238470%_
                               _%hd237813238473%_
                               _%tl237814238475%_
                               _%e237815238478%_
                               _%hd237816238481%_
                               _%tl237817238483%_
                               _%e237818238486%_
                               _%hd237819238489%_
                               _%tl237820238491%_
                               _%e237821238494%_
                               _%hd237822238497%_
                               _%tl237823238499%_
                               _%e237824238502%_
                               _%hd237825238505%_
                               _%tl237826238507%_
                               _%e237827238510%_
                               _%hd237828238513%_
                               _%tl237829238515%_
                               _%e237830238518%_
                               _%hd237831238521%_
                               _%tl237832238523%_
                               _%e237833238526%_
                               _%hd237834238529%_
                               _%tl237835238531%_
                               _%e237836238534%_
                               _%hd237837238537%_
                               _%tl237838238539%_
                               _%e237839238542%_
                               _%hd237840238545%_
                               _%tl237841238547%_
                               _%e237842238550%_
                               _%hd237843238553%_
                               _%tl237844238555%_
                               _%__splice243740243741%_
                               _%target237845238558%_
                               _%tl237847238560%_)
                        (letrec ((_%loop237848238563%_
                                  (lambda (_%hd237846238566%_
                                           _%args237852238568%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd237846238566%_))
                                        (let ((_%e237849238570%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd237846238566%_))))
                                          (let ((_%lp-tl237851238575%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e237849238570%_)))
                                                (_%lp-hd237850238573%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e237849238570%_))))
                                            (_%loop237848238563%_
                                             _%lp-tl237851238575%_
                                             (cons _%lp-hd237850238573%_
                                                   _%args237852238568%_))))
                                        (let ((_%args237853238578%_
                                               (reverse _%args237852238568%_)))
                                          (let ((_%g237801238580%_
                                                 _%args237853238578%_)
                                                (_%g237802238581%_
                                                 _%hd237843238553%_)
                                                (_%g237803238582%_
                                                 _%hd237834238529%_)
                                                (_%g237804238583%_
                                                 _%hd237825238505%_)
                                                (_%g237805238584%_
                                                 _%hd237816238481%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g237805238584%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g237804238583%_
                                                        'call-method))
                                                     (let ((__tmp244425
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self237745%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%g237803238582%_
                                                        __tmp244425)))
                                                (_%__kont243738243739%_
                                                 _%g237801238580%_
                                                 _%g237802238581%_
                                                 _%g237803238582%_
                                                 _%g237804238583%_
                                                 _%g237805238584%_)
                                                (_%__kont243750243751%_))))))))
                          (_%loop237848238563%_ _%target237845238558%_ '()))))
                     (_%__match243905243906%_
                      (lambda (_%e237806238454%_
                               _%hd237807238457%_
                               _%tl237808238459%_
                               _%e237809238462%_
                               _%hd237810238465%_
                               _%tl237811238467%_
                               _%e237812238470%_
                               _%hd237813238473%_
                               _%tl237814238475%_
                               _%e237815238478%_
                               _%hd237816238481%_
                               _%tl237817238483%_
                               _%e237818238486%_
                               _%hd237819238489%_
                               _%tl237820238491%_
                               _%e237821238494%_
                               _%hd237822238497%_
                               _%tl237823238499%_
                               _%e237824238502%_
                               _%hd237825238505%_
                               _%tl237826238507%_
                               _%e237827238510%_
                               _%hd237828238513%_
                               _%tl237829238515%_
                               _%e237830238518%_
                               _%hd237831238521%_
                               _%tl237832238523%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd237831238521%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl237832238523%_))
                                (let ((_%e237833238526%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl237832238523%_))))
                                  (let ((_%tl237835238531%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e237833238526%_)))
                                        (_%hd237834238529%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e237833238526%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl237835238531%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl237829238515%_))
                                            (let ((_%e237836238534%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl237829238515%_))))
                                              (let ((_%tl237838238539%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e237836238534%_)))
                                                    (_%hd237837238537%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e237836238534%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd237837238537%_))
                                                    (let ((_%e237839238542%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd237837238537%_))))
                                                      (let ((_%tl237841238547%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e237839238542%_)))
                    (_%hd237840238545%_
                     (let () (declare (not safe)) (##car _%e237839238542%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd237840238545%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd237840238545%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl237841238547%_))
                            (let ((_%e237842238550%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl237841238547%_))))
                              (let ((_%tl237844238555%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e237842238550%_)))
                                    (_%hd237843238553%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e237842238550%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl237844238555%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl237838238539%_))
                                        (let ((_%__splice243740243741%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl237838238539%_
                                                  '0))))
                                          (let ((_%tl237847238560%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice243740243741%_
                                                    '1)))
                                                (_%target237845238558%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice243740243741%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl237847238560%_))
                                                (_%__match243947243948%_
                                                 _%e237806238454%_
                                                 _%hd237807238457%_
                                                 _%tl237808238459%_
                                                 _%e237809238462%_
                                                 _%hd237810238465%_
                                                 _%tl237811238467%_
                                                 _%e237812238470%_
                                                 _%hd237813238473%_
                                                 _%tl237814238475%_
                                                 _%e237815238478%_
                                                 _%hd237816238481%_
                                                 _%tl237817238483%_
                                                 _%e237818238486%_
                                                 _%hd237819238489%_
                                                 _%tl237820238491%_
                                                 _%e237821238494%_
                                                 _%hd237822238497%_
                                                 _%tl237823238499%_
                                                 _%e237824238502%_
                                                 _%hd237825238505%_
                                                 _%tl237826238507%_
                                                 _%e237827238510%_
                                                 _%hd237828238513%_
                                                 _%tl237829238515%_
                                                 _%e237830238518%_
                                                 _%hd237831238521%_
                                                 _%tl237832238523%_
                                                 _%e237833238526%_
                                                 _%hd237834238529%_
                                                 _%tl237835238531%_
                                                 _%e237836238534%_
                                                 _%hd237837238537%_
                                                 _%tl237838238539%_
                                                 _%e237839238542%_
                                                 _%hd237840238545%_
                                                 _%tl237841238547%_
                                                 _%e237842238550%_
                                                 _%hd237843238553%_
                                                 _%tl237844238555%_
                                                 _%__splice243740243741%_
                                                 _%target237845238558%_
                                                 _%tl237847238560%_)
                                                (_%__kont243750243751%_))))
                                        (_%__kont243750243751%_))
                                    (_%__kont243750243751%_))))
                            (_%__kont243750243751%_))
                        (_%__kont243750243751%_))
                    (_%__kont243750243751%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont243750243751%_))))
                                            (_%__match244229244230%_
                                             _%e237806238454%_
                                             _%hd237807238457%_
                                             _%tl237808238459%_
                                             _%e237809238462%_
                                             _%hd237810238465%_
                                             _%tl237811238467%_
                                             _%e237812238470%_
                                             _%hd237813238473%_
                                             _%tl237814238475%_
                                             _%e237815238478%_
                                             _%hd237816238481%_
                                             _%tl237817238483%_
                                             _%e237818238486%_
                                             _%hd237819238489%_
                                             _%tl237820238491%_
                                             _%e237821238494%_
                                             _%hd237822238497%_
                                             _%tl237823238499%_
                                             _%e237824238502%_
                                             _%hd237825238505%_
                                             _%tl237826238507%_
                                             _%e237827238510%_
                                             _%hd237828238513%_
                                             _%tl237829238515%_))
                                        (_%__match244229244230%_
                                         _%e237806238454%_
                                         _%hd237807238457%_
                                         _%tl237808238459%_
                                         _%e237809238462%_
                                         _%hd237810238465%_
                                         _%tl237811238467%_
                                         _%e237812238470%_
                                         _%hd237813238473%_
                                         _%tl237814238475%_
                                         _%e237815238478%_
                                         _%hd237816238481%_
                                         _%tl237817238483%_
                                         _%e237818238486%_
                                         _%hd237819238489%_
                                         _%tl237820238491%_
                                         _%e237821238494%_
                                         _%hd237822238497%_
                                         _%tl237823238499%_
                                         _%e237824238502%_
                                         _%hd237825238505%_
                                         _%tl237826238507%_
                                         _%e237827238510%_
                                         _%hd237828238513%_
                                         _%tl237829238515%_))))
                                (_%__match244229244230%_
                                 _%e237806238454%_
                                 _%hd237807238457%_
                                 _%tl237808238459%_
                                 _%e237809238462%_
                                 _%hd237810238465%_
                                 _%tl237811238467%_
                                 _%e237812238470%_
                                 _%hd237813238473%_
                                 _%tl237814238475%_
                                 _%e237815238478%_
                                 _%hd237816238481%_
                                 _%tl237817238483%_
                                 _%e237818238486%_
                                 _%hd237819238489%_
                                 _%tl237820238491%_
                                 _%e237821238494%_
                                 _%hd237822238497%_
                                 _%tl237823238499%_
                                 _%e237824238502%_
                                 _%hd237825238505%_
                                 _%tl237826238507%_
                                 _%e237827238510%_
                                 _%hd237828238513%_
                                 _%tl237829238515%_))
                            (_%__match244015244016%_
                             _%e237806238454%_
                             _%hd237807238457%_
                             _%tl237808238459%_
                             _%e237809238462%_
                             _%hd237810238465%_
                             _%tl237811238467%_
                             _%e237812238470%_
                             _%hd237813238473%_
                             _%tl237814238475%_
                             _%e237815238478%_
                             _%hd237816238481%_
                             _%tl237817238483%_
                             _%e237818238486%_
                             _%hd237819238489%_
                             _%tl237820238491%_
                             _%e237821238494%_
                             _%hd237822238497%_
                             _%tl237823238499%_
                             _%e237824238502%_
                             _%hd237825238505%_
                             _%tl237826238507%_
                             _%e237827238510%_
                             _%hd237828238513%_
                             _%tl237829238515%_
                             _%e237830238518%_
                             _%hd237831238521%_
                             _%tl237832238523%_))))
                     (_%__match243837243838%_
                      (lambda (_%e237762238644%_
                               _%hd237763238647%_
                               _%tl237764238649%_
                               _%e237765238652%_
                               _%hd237766238655%_
                               _%tl237767238657%_
                               _%e237768238660%_
                               _%hd237769238663%_
                               _%tl237770238665%_
                               _%e237771238668%_
                               _%hd237772238671%_
                               _%tl237773238673%_
                               _%e237774238676%_
                               _%hd237775238679%_
                               _%tl237776238681%_
                               _%e237777238684%_
                               _%hd237778238687%_
                               _%tl237779238689%_
                               _%e237780238692%_
                               _%hd237781238695%_
                               _%tl237782238697%_
                               _%e237783238700%_
                               _%hd237784238703%_
                               _%tl237785238705%_
                               _%e237786238708%_
                               _%hd237787238711%_
                               _%tl237788238713%_
                               _%e237789238716%_
                               _%hd237790238719%_
                               _%tl237791238721%_
                               _%__splice243736243737%_
                               _%target237792238724%_
                               _%tl237794238726%_)
                        (letrec ((_%loop237795238729%_
                                  (lambda (_%hd237793238732%_
                                           _%args237799238734%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd237793238732%_))
                                        (let ((_%e237796238736%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd237793238732%_))))
                                          (let ((_%lp-tl237798238741%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e237796238736%_)))
                                                (_%lp-hd237797238739%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e237796238736%_))))
                                            (_%loop237795238729%_
                                             _%lp-tl237798238741%_
                                             (cons _%lp-hd237797238739%_
                                                   _%args237799238734%_))))
                                        (let ((_%args237800238744%_
                                               (reverse _%args237799238734%_)))
                                          (let ((_%g237758238746%_
                                                 _%args237800238744%_)
                                                (_%g237759238747%_
                                                 _%hd237790238719%_)
                                                (_%g237760238748%_
                                                 _%hd237781238695%_)
                                                (_%g237761238749%_
                                                 _%hd237772238671%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g237761238749%_
                                                        'call-method))
                                                     (let ((__tmp244426
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self237745%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%g237760238748%_
                                                        __tmp244426)))
                                                (_%__kont243734243735%_
                                                 _%g237758238746%_
                                                 _%g237759238747%_
                                                 _%g237760238748%_
                                                 _%g237761238749%_)
                                                (_%__match244025244026%_
                                                 _%e237762238644%_
                                                 _%hd237763238647%_
                                                 _%tl237764238649%_
                                                 _%e237765238652%_
                                                 _%hd237766238655%_
                                                 _%tl237767238657%_
                                                 _%e237768238660%_
                                                 _%hd237769238663%_
                                                 _%tl237770238665%_
                                                 _%e237771238668%_
                                                 _%hd237772238671%_
                                                 _%tl237773238673%_
                                                 _%e237774238676%_
                                                 _%hd237775238679%_
                                                 _%tl237776238681%_
                                                 _%e237777238684%_
                                                 _%hd237778238687%_
                                                 _%tl237779238689%_
                                                 _%e237780238692%_
                                                 _%hd237781238695%_
                                                 _%tl237782238697%_
                                                 _%e237783238700%_
                                                 _%hd237784238703%_
                                                 _%tl237785238705%_
                                                 _%e237786238708%_
                                                 _%hd237787238711%_
                                                 _%tl237788238713%_
                                                 _%e237789238716%_
                                                 _%hd237790238719%_
                                                 _%tl237791238721%_))))))))
                          (_%loop237795238729%_ _%target237792238724%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx243732243733%_))
                    (let ((_%e237762238644%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx243732243733%_))))
                      (let ((_%tl237764238649%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e237762238644%_)))
                            (_%hd237763238647%_
                             (let ()
                               (declare (not safe))
                               (##car _%e237762238644%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl237764238649%_))
                            (let ((_%e237765238652%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl237764238649%_))))
                              (let ((_%tl237767238657%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e237765238652%_)))
                                    (_%hd237766238655%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e237765238652%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd237766238655%_))
                                    (let ((_%e237768238660%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd237766238655%_))))
                                      (let ((_%tl237770238665%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e237768238660%_)))
                                            (_%hd237769238663%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e237768238660%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd237769238663%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd237769238663%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl237770238665%_))
                                                    (let ((_%e237771238668%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl237770238665%_))))
                                                      (let ((_%tl237773238673%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e237771238668%_)))
                    (_%hd237772238671%_
                     (let () (declare (not safe)) (##car _%e237771238668%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl237773238673%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl237767238657%_))
                        (let ((_%e237774238676%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl237767238657%_))))
                          (let ((_%tl237776238681%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e237774238676%_)))
                                (_%hd237775238679%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e237774238676%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd237775238679%_))
                                (let ((_%e237777238684%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd237775238679%_))))
                                  (let ((_%tl237779238689%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e237777238684%_)))
                                        (_%hd237778238687%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e237777238684%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd237778238687%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd237778238687%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl237779238689%_))
                                                (let ((_%e237780238692%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl237779238689%_))))
                                                  (let ((_%tl237782238697%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e237780238692%_)))
                                                        (_%hd237781238695%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e237780238692%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl237782238697%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl237776238681%_))
                                                            (let ((_%e237783238700%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl237776238681%_))))
                      (let ((_%tl237785238705%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e237783238700%_)))
                            (_%hd237784238703%_
                             (let ()
                               (declare (not safe))
                               (##car _%e237783238700%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd237784238703%_))
                            (let ((_%e237786238708%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd237784238703%_))))
                              (let ((_%tl237788238713%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e237786238708%_)))
                                    (_%hd237787238711%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e237786238708%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd237787238711%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd237787238711%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl237788238713%_))
                                            (let ((_%e237789238716%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl237788238713%_))))
                                              (let ((_%tl237791238721%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e237789238716%_)))
                                                    (_%hd237790238719%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e237789238716%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl237791238721%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl237785238705%_))
                                                        (let ((_%__splice243736243737%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice->vector
                          _%tl237785238705%_
                          '0))))
                  (let ((_%tl237794238726%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice243736243737%_ '1)))
                        (_%target237792238724%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice243736243737%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl237794238726%_))
                        (_%__match243837243838%_
                         _%e237762238644%_
                         _%hd237763238647%_
                         _%tl237764238649%_
                         _%e237765238652%_
                         _%hd237766238655%_
                         _%tl237767238657%_
                         _%e237768238660%_
                         _%hd237769238663%_
                         _%tl237770238665%_
                         _%e237771238668%_
                         _%hd237772238671%_
                         _%tl237773238673%_
                         _%e237774238676%_
                         _%hd237775238679%_
                         _%tl237776238681%_
                         _%e237777238684%_
                         _%hd237778238687%_
                         _%tl237779238689%_
                         _%e237780238692%_
                         _%hd237781238695%_
                         _%tl237782238697%_
                         _%e237783238700%_
                         _%hd237784238703%_
                         _%tl237785238705%_
                         _%e237786238708%_
                         _%hd237787238711%_
                         _%tl237788238713%_
                         _%e237789238716%_
                         _%hd237790238719%_
                         _%tl237791238721%_
                         _%__splice243736243737%_
                         _%target237792238724%_
                         _%tl237794238726%_)
                        (_%__match244025244026%_
                         _%e237762238644%_
                         _%hd237763238647%_
                         _%tl237764238649%_
                         _%e237765238652%_
                         _%hd237766238655%_
                         _%tl237767238657%_
                         _%e237768238660%_
                         _%hd237769238663%_
                         _%tl237770238665%_
                         _%e237771238668%_
                         _%hd237772238671%_
                         _%tl237773238673%_
                         _%e237774238676%_
                         _%hd237775238679%_
                         _%tl237776238681%_
                         _%e237777238684%_
                         _%hd237778238687%_
                         _%tl237779238689%_
                         _%e237780238692%_
                         _%hd237781238695%_
                         _%tl237782238697%_
                         _%e237783238700%_
                         _%hd237784238703%_
                         _%tl237785238705%_
                         _%e237786238708%_
                         _%hd237787238711%_
                         _%tl237788238713%_
                         _%e237789238716%_
                         _%hd237790238719%_
                         _%tl237791238721%_))))
                (_%__match244025244026%_
                 _%e237762238644%_
                 _%hd237763238647%_
                 _%tl237764238649%_
                 _%e237765238652%_
                 _%hd237766238655%_
                 _%tl237767238657%_
                 _%e237768238660%_
                 _%hd237769238663%_
                 _%tl237770238665%_
                 _%e237771238668%_
                 _%hd237772238671%_
                 _%tl237773238673%_
                 _%e237774238676%_
                 _%hd237775238679%_
                 _%tl237776238681%_
                 _%e237777238684%_
                 _%hd237778238687%_
                 _%tl237779238689%_
                 _%e237780238692%_
                 _%hd237781238695%_
                 _%tl237782238697%_
                 _%e237783238700%_
                 _%hd237784238703%_
                 _%tl237785238705%_
                 _%e237786238708%_
                 _%hd237787238711%_
                 _%tl237788238713%_
                 _%e237789238716%_
                 _%hd237790238719%_
                 _%tl237791238721%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match244229244230%_
                                                     _%e237762238644%_
                                                     _%hd237763238647%_
                                                     _%tl237764238649%_
                                                     _%e237765238652%_
                                                     _%hd237766238655%_
                                                     _%tl237767238657%_
                                                     _%e237768238660%_
                                                     _%hd237769238663%_
                                                     _%tl237770238665%_
                                                     _%e237771238668%_
                                                     _%hd237772238671%_
                                                     _%tl237773238673%_
                                                     _%e237774238676%_
                                                     _%hd237775238679%_
                                                     _%tl237776238681%_
                                                     _%e237777238684%_
                                                     _%hd237778238687%_
                                                     _%tl237779238689%_
                                                     _%e237780238692%_
                                                     _%hd237781238695%_
                                                     _%tl237782238697%_
                                                     _%e237783238700%_
                                                     _%hd237784238703%_
                                                     _%tl237785238705%_))))
                                            (_%__match244229244230%_
                                             _%e237762238644%_
                                             _%hd237763238647%_
                                             _%tl237764238649%_
                                             _%e237765238652%_
                                             _%hd237766238655%_
                                             _%tl237767238657%_
                                             _%e237768238660%_
                                             _%hd237769238663%_
                                             _%tl237770238665%_
                                             _%e237771238668%_
                                             _%hd237772238671%_
                                             _%tl237773238673%_
                                             _%e237774238676%_
                                             _%hd237775238679%_
                                             _%tl237776238681%_
                                             _%e237777238684%_
                                             _%hd237778238687%_
                                             _%tl237779238689%_
                                             _%e237780238692%_
                                             _%hd237781238695%_
                                             _%tl237782238697%_
                                             _%e237783238700%_
                                             _%hd237784238703%_
                                             _%tl237785238705%_))
                                        (_%__match243905243906%_
                                         _%e237762238644%_
                                         _%hd237763238647%_
                                         _%tl237764238649%_
                                         _%e237765238652%_
                                         _%hd237766238655%_
                                         _%tl237767238657%_
                                         _%e237768238660%_
                                         _%hd237769238663%_
                                         _%tl237770238665%_
                                         _%e237771238668%_
                                         _%hd237772238671%_
                                         _%tl237773238673%_
                                         _%e237774238676%_
                                         _%hd237775238679%_
                                         _%tl237776238681%_
                                         _%e237777238684%_
                                         _%hd237778238687%_
                                         _%tl237779238689%_
                                         _%e237780238692%_
                                         _%hd237781238695%_
                                         _%tl237782238697%_
                                         _%e237783238700%_
                                         _%hd237784238703%_
                                         _%tl237785238705%_
                                         _%e237786238708%_
                                         _%hd237787238711%_
                                         _%tl237788238713%_))
                                    (_%__match244229244230%_
                                     _%e237762238644%_
                                     _%hd237763238647%_
                                     _%tl237764238649%_
                                     _%e237765238652%_
                                     _%hd237766238655%_
                                     _%tl237767238657%_
                                     _%e237768238660%_
                                     _%hd237769238663%_
                                     _%tl237770238665%_
                                     _%e237771238668%_
                                     _%hd237772238671%_
                                     _%tl237773238673%_
                                     _%e237774238676%_
                                     _%hd237775238679%_
                                     _%tl237776238681%_
                                     _%e237777238684%_
                                     _%hd237778238687%_
                                     _%tl237779238689%_
                                     _%e237780238692%_
                                     _%hd237781238695%_
                                     _%tl237782238697%_
                                     _%e237783238700%_
                                     _%hd237784238703%_
                                     _%tl237785238705%_))))
                            (_%__match244229244230%_
                             _%e237762238644%_
                             _%hd237763238647%_
                             _%tl237764238649%_
                             _%e237765238652%_
                             _%hd237766238655%_
                             _%tl237767238657%_
                             _%e237768238660%_
                             _%hd237769238663%_
                             _%tl237770238665%_
                             _%e237771238668%_
                             _%hd237772238671%_
                             _%tl237773238673%_
                             _%e237774238676%_
                             _%hd237775238679%_
                             _%tl237776238681%_
                             _%e237777238684%_
                             _%hd237778238687%_
                             _%tl237779238689%_
                             _%e237780238692%_
                             _%hd237781238695%_
                             _%tl237782238697%_
                             _%e237783238700%_
                             _%hd237784238703%_
                             _%tl237785238705%_))))
                    (_%__match244167244168%_
                     _%e237762238644%_
                     _%hd237763238647%_
                     _%tl237764238649%_
                     _%e237765238652%_
                     _%hd237766238655%_
                     _%tl237767238657%_
                     _%e237768238660%_
                     _%hd237769238663%_
                     _%tl237770238665%_
                     _%e237771238668%_
                     _%hd237772238671%_
                     _%tl237773238673%_
                     _%e237774238676%_
                     _%hd237775238679%_
                     _%tl237776238681%_
                     _%e237777238684%_
                     _%hd237778238687%_
                     _%tl237779238689%_
                     _%e237780238692%_
                     _%hd237781238695%_
                     _%tl237782238697%_))
                (_%__kont243750243751%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont243750243751%_))
                                            (_%__kont243750243751%_))
                                        (_%__kont243750243751%_))))
                                (_%__kont243750243751%_))))
                        (_%__kont243750243751%_))
                    (_%__kont243750243751%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont243750243751%_))
                                                (_%__kont243750243751%_))
                                            (_%__kont243750243751%_))))
                                    (_%__kont243750243751%_))))
                            (_%__kont243750243751%_))))
                    (_%__kont243750243751%_))))))))))
