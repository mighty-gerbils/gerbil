(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1771093453)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp235239 (list gxc#::identity::t))
            (__tmp235238 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp235239
         '()
         __tmp235238
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args234036%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args234036%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp235240
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
        (__make-atomic-promise __tmp235240)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx234028%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self234031%_
                (let ((__obj235231
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj235231))
               (__tmp235241
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self234031%_ _%stx234028%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp235241
           gxc#current-compile-method
           _%self234031%_))))
    (define gxc#::extract-receiver::t
      (let ((__tmp235243 (list gxc#::false::t))
            (__tmp235242 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::extract-receiver::t
         '::extract-receiver
         __tmp235243
         '()
         __tmp235242
         '#f)))
    (define gxc#::extract-receiver?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::extract-receiver::t)))
    (define gxc#make-::extract-receiver
      (lambda _%$args234025%_
        (apply make-instance gxc#::extract-receiver::t _%$args234025%_)))
    (define gxc#::extract-receiver-bind-methods!
      (let ((__tmp235244
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
        (__make-atomic-promise __tmp235244)))
    (define gxc#apply-extract-receiver
      (lambda (_%stx234017%_)
        (force gxc#::extract-receiver-bind-methods!)
        (let* ((_%self234020%_
                (let ((__obj235233
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::extract-receiver::t))))
                  __obj235233))
               (__tmp235245
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self234020%_ _%stx234017%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp235245
           gxc#current-compile-method
           _%self234020%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp235247 (list gxc#::void::t))
            (__tmp235246 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp235247
         '(receiver methods slots)
         __tmp235246
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args234014%_
        (apply make-instance gxc#::collect-object-refs::t _%$args234014%_)))
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
      (let ((__tmp235248
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
        (__make-atomic-promise __tmp235248)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords233983%_
               _%receiver233978233984%_
               _%methods233979233985%_
               _%slots233980233986%_
               _%stx233987%_)
        (let* ((_%receiver233990%_
                (if (eq? _%receiver233978233984%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver233978233984%_))
               (_%methods233992%_
                (if (eq? _%methods233979233985%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods233979233985%_))
               (_%slots233994%_
                (if (eq? _%slots233980233986%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots233980233986%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self233996%_
                  (let ((__obj235235
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
                       __obj235235
                       _%receiver233990%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj235235
                       _%methods233992%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj235235
                       _%slots233994%_
                       '3
                       '#f
                       '#f))
                    __obj235235))
                 (__tmp235249
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self233996%_ _%stx233987%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp235249
             gxc#current-compile-method
             _%self233996%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords234003%_ . _%args234004%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords234003%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords234003%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords234003%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords234003%_
                  'slots:
                  absent-value))
               _%args234004%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args233981234010%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args233981234010%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp235251 (list gxc#::basic-xform-expression::t))
            (__tmp235250 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp235251
         '(receiver klass methods slots)
         __tmp235250
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args233974%_
        (apply make-instance gxc#::subst-object-refs::t _%$args233974%_)))
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
      (let ((__tmp235252
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
        (__make-atomic-promise __tmp235252)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords233940%_
               _%receiver233934233941%_
               _%klass233935233942%_
               _%methods233936233943%_
               _%slots233937233944%_
               _%stx233945%_)
        (let* ((_%receiver233948%_
                (if (eq? _%receiver233934233941%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver233934233941%_))
               (_%klass233950%_
                (if (eq? _%klass233935233942%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass233935233942%_))
               (_%methods233952%_
                (if (eq? _%methods233936233943%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods233936233943%_))
               (_%slots233954%_
                (if (eq? _%slots233937233944%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots233937233944%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self233956%_
                  (let ((__obj235237
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
                       __obj235237
                       _%receiver233948%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj235237
                       _%klass233950%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj235237
                       _%methods233952%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj235237
                       _%slots233954%_
                       '4
                       '#f
                       '#f))
                    __obj235237))
                 (__tmp235253
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self233956%_ _%stx233945%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp235253
             gxc#current-compile-method
             _%self233956%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords233963%_ . _%args233964%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords233963%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords233963%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords233963%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords233963%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords233963%_
                  'slots:
                  absent-value))
               _%args233964%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args233938233970%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args233938233970%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self231065%_ _%stx231066%_)
        (letrec ((_%generate-method-bind231068%_
                  (lambda (_%$klass233926%_
                           _%$method-table233927%_
                           _%id233928%_
                           _%$id233929%_)
                    (let ((_%$tmp233931%_
                           (let ((__tmp235254
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp235254))))
                      (cons (cons _%$id233929%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp233931%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table233927%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id233928%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp233931%_ '()))
                    (cons (cons '%#ref (cons _%$tmp233931%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id233928%_
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
                 (_%generate-slot-bind231069%_
                  (lambda (_%$klass233920%_ _%id233921%_ _%$id233922%_)
                    (let ((_%$tmp233924%_
                           (let ((__tmp235255
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp235255))))
                      (cons (cons _%$id233922%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp233924%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass233920%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id233921%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp233924%_ '()))
                        (cons (cons '%#ref (cons _%$tmp233924%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id233921%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl231070%_
                  (lambda (_%$klass233914%_
                           _%$method-table233915%_
                           _%methods-bind233916%_
                           _%slots-bind233917%_
                           _%specializer-impl233918%_)
                    (let ((__tmp235256
                           (cons '%#lambda
                                 (cons (cons _%$klass233914%_
                                             (cons _%$method-table233915%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (foldr__0
                                                            cons
                                                            _%slots-bind233917%_
                                                            _%methods-bind233916%_))
                                                         (cons _%specializer-impl233918%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp235256 _%stx231066%_))))
                 (_%generate-specializer-def231071%_
                  (lambda (_%id233910%_
                           _%specializer-id233911%_
                           _%specializer-impl233912%_)
                    (let ((__tmp235257
                           (cons '%#begin
                                 (cons _%stx231066%_
                                       (cons (let ((__tmp235258
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id233911%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl233912%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp235258
                                                _%stx231066%_))
                                             (cons (let ((__tmp235259
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id233910%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id233911%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp235259
                                                      _%stx231066%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp235257 _%stx231066%_)))))
          (let* ((_%__stx234125234126%_ _%stx231066%_)
                 (_%g231074231094%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx234125234126%_)))))
            (let ((_%__kont234127234128%_
                   (lambda (_%g231076231138%_ _%g231077231139%_)
                     (let ((_%method-calls231158%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs231159%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty231160%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?231162%_
                                 (lambda ()
                                   (if (let ((__tmp235260
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%method-calls231158%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp235260))
                                       (let ((__tmp235261
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%slot-refs231159%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp235261))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%g231076231138%_))
                             (let* ((_%__stx234039234040%_ _%g231076231138%_)
                                    (_%g231546231564%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx234039234040%_)))))
                               (let ((_%__kont234041234042%_
                                      (lambda (_%g231548231600%_
                                               _%g231549231601%_
                                               _%g231550231602%_)
                                        (let ((_%receiver231622%_
                                               (let ((_%$e231619%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%g231548231600%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e231619%_
                                                     _%$e231619%_
                                                     _%g231550231602%_))))
                                          (for-each
                                           (lambda (_%g231623231625%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver231622%_
                                              _%method-calls231158%_
                                              _%slot-refs231159%_
                                              _%g231623231625%_))
                                           _%g231548231600%_)
                                          (if (_%no-specializer?231162%_)
                                              _%stx231066%_
                                              (let* ((_%specializer-id231634%_
                                                      (let* ((_%id231628%_
                                                              (let ((__tmp235262
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g231077231139%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp235262 '"::specialize")))
                     (_%specializer-id231631%_
                      (let ((__tmp235263
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx231066%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id231628%_ __tmp235263))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id231631%_))
                _%specializer-id231631%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass231636%_
                                                      (let ((__tmp235264
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp235264)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table231638%_
                                                      (let ((__tmp235265
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp235265)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods231640%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls231158%_)))
                                                     (_%$methods231644%_
                                                      (let ((__tmp235266
                                                             (lambda (_%id231642%_)
                                                               (let ((__tmp235267
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id231642%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp235267)))))
                (declare (not safe))
                (##map __tmp235266 _%methods231640%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_231653%_
                                                      (let ((__tmp235268
                                                             (lambda (_%g231645231648%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g231646231650%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls231158%_
                          _%g231645231648%_
                          _%g231646231650%_)))))
                (declare (not safe))
                (##for-each __tmp235268 _%methods231640%_ _%$methods231644%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind231663%_
                                                      (let ((__tmp235269
                                                             (lambda (_%g231655231658%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g231656231660%_)
                       (_%generate-method-bind231068%_
                        _%$klass231636%_
                        _%$method-table231638%_
                        _%g231655231658%_
                        _%g231656231660%_))))
                (declare (not safe))
                (##map __tmp235269 _%methods231640%_ _%$methods231644%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots231665%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs231159%_)))
                                                     (_%$slots231669%_
                                                      (let ((__tmp235270
                                                             (lambda (_%id231667%_)
                                                               (let ((__tmp235271
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id231667%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp235271)))))
                (declare (not safe))
                (##map __tmp235270 _%slots231665%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_231678%_
                                                      (let ((__tmp235272
                                                             (lambda (_%g231670231673%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g231671231675%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs231159%_
                          _%g231670231673%_
                          _%g231671231675%_)))))
                (declare (not safe))
                (##for-each __tmp235272 _%slots231665%_ _%$slots231669%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind231687%_
                                                      (let ((__tmp235273
                                                             (lambda (_%g231679231682%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g231680231684%_)
                       (_%generate-slot-bind231069%_
                        _%$klass231636%_
                        _%g231679231682%_
                        _%g231680231684%_))))
                (declare (not safe))
                (##map __tmp235273 _%slots231665%_ _%$slots231669%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body231693%_
                                                      (map (lambda (_%g231688231690%_)
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%receiver231622%_
                                                              _%$klass231636%_
                                                              _%method-calls231158%_
                                                              _%slot-refs231159%_
                                                              _%g231688231690%_))
                                                           _%g231548231600%_))
                                                     (_%specializer-impl231695%_
                                                      (let ((__tmp235274
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%g231550231602%_ _%g231549231601%_)
                                 _%specializer-body231693%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp235274 _%stx231066%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl231697%_
                                                      (_%generate-specializer-impl231070%_
                                                       _%$klass231636%_
                                                       _%$method-table231638%_
                                                       _%methods-bind231663%_
                                                       _%slots-bind231687%_
                                                       _%specializer-impl231695%_)))
                                                (let ((__tmp235276
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g231077231139%_)))
                                                      (__tmp235275
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id231634%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp235276
                                                   '" => "
                                                   __tmp235275))
                                                (_%generate-specializer-def231071%_
                                                 _%g231077231139%_
                                                 _%specializer-id231634%_
                                                 _%specializer-impl231697%_))))))
                                     (_%__kont234043234044%_
                                      (lambda () _%stx231066%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx234039234040%_))
                                     (let ((_%e231551231576%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx234039234040%_))))
                                       (let ((_%tl231553231581%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e231551231576%_)))
                                             (_%hd231552231579%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e231551231576%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl231553231581%_))
                                             (let ((_%e231554231584%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl231553231581%_))))
                                               (let ((_%tl231556231589%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e231554231584%_)))
                                                     (_%hd231555231587%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e231554231584%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%hd231555231587%_))
                                                     (let ((_%e231557231592%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd231555231587%_))))
                                                       (let ((_%tl231559231597%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e231557231592%_)))
                     (_%hd231558231595%_
                      (let () (declare (not safe)) (##car _%e231557231592%_))))
                 (_%__kont234041234042%_
                  _%tl231556231589%_
                  _%tl231559231597%_
                  _%hd231558231595%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont234043234044%_))))
                                             (_%__kont234043234044%_))))
                                     (_%__kont234043234044%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%g231076231138%_))
                                 (let* ((_%g231704231723%_
                                         (lambda (_%g231705231720%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g231705231720%_))))
                                        (_%g231703232019%_
                                         (lambda (_%g231705231726%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g231705231726%_))
                                               (let ((_%e231707231728%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g231705231726%_))))
                                                 (let ((_%hd231708231731%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e231707231728%_)))
                                                       (_%tl231709231733%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e231707231728%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%tl231709231733%_))
                                                       (let ((_g235277_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%tl231709231733%_ '0))))
                 (begin
                   (let ((_g235278_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g235277_)
                                (##values-length _g235277_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g235278_ 2)))
                         (error "Context expects 2 values" _g235278_)))
                   (let ((_%target231710231736%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g235277_ 0)))
                         (_%tl231712231738%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g235277_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl231712231738%_))
                         (letrec ((_%loop231713231741%_
                                   (lambda (_%hd231711231744%_
                                            _%clause231717231746%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd231711231744%_))
                                         (let ((_%e231714231748%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd231711231744%_))))
                                           (let ((_%lp-hd231715231751%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e231714231748%_)))
                                                 (_%lp-tl231716231753%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e231714231748%_))))
                                             (_%loop231713231741%_
                                              _%lp-tl231716231753%_
                                              (cons _%lp-hd231715231751%_
                                                    _%clause231717231746%_))))
                                         (let ((_%clause231718231756%_
                                                (reverse _%clause231717231746%_)))
                                           ((lambda (_%g231706231758%_)
                                              (for-each
                                               (lambda (_%clause231772%_)
                                                 (let* ((_%__stx234065234066%_
                                                         _%clause231772%_)
                                                        (_%g231775231790%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx234065234066%_)))))
                                                   (let ((_%__kont234067234068%_
                                                          (lambda (_%g231777231818%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g231778231819%_
                           _%g231779231820%_)
                    (let ((_%receiver231839%_
                           (let ((_%$e231836%_
                                  (gxc#apply-extract-receiver
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f '%#begin))
                                         _%g231777231818%_))))
                             (if _%$e231836%_
                                 _%$e231836%_
                                 _%g231779231820%_))))
                      (for-each
                       (lambda (_%g231840231842%_)
                         (gxc#apply-collect-object-refs__%
                          '#f
                          _%receiver231839%_
                          _%method-calls231158%_
                          _%slot-refs231159%_
                          _%g231840231842%_))
                       _%g231777231818%_))))
                 (_%__kont234069234070%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx234065234066%_))
                                                         (let ((_%e231780231802%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx234065234066%_))))
                   (let ((_%tl231782231807%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e231780231802%_)))
                         (_%hd231781231805%_
                          (let ()
                            (declare (not safe))
                            (##car _%e231780231802%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd231781231805%_))
                         (let ((_%e231783231810%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd231781231805%_))))
                           (let ((_%tl231785231815%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e231783231810%_)))
                                 (_%hd231784231813%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e231783231810%_))))
                             (_%__kont234067234068%_
                              _%tl231782231807%_
                              _%tl231785231815%_
                              _%hd231784231813%_)))
                         (_%__kont234069234070%_))))
                 (_%__kont234069234070%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp235279
                                                      (lambda (_%g231847231850%_
                                                               _%g231848231852%_)
                                                        (cons _%g231847231850%_
                                                              _%g231848231852%_))))
                                                 (declare (not safe))
                                                 (foldr__0
                                                  __tmp235279
                                                  '()
                                                  _%g231706231758%_)))
                                              (if (_%no-specializer?231162%_)
                                                  _%stx231066%_
                                                  (let* ((_%specializer-id231861%_
                                                          (let* ((_%id231855%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp235280
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g231077231139%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp235280 '"::specialize")))
                         (_%specializer-id231858%_
                          (let ((__tmp235281
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx231066%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id231855%_
                             __tmp235281))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id231858%_))
                    _%specializer-id231858%_))
                 (_%$klass231863%_
                  (let ((__tmp235282
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp235282)))
                 (_%$method-table231865%_
                  (let ((__tmp235283
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp235283)))
                 (_%methods231867%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls231158%_)))
                 (_%$methods231871%_
                  (let ((__tmp235284
                         (lambda (_%id231869%_)
                           (let ((__tmp235285 (gensym _%id231869%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp235285)))))
                    (declare (not safe))
                    (##map __tmp235284 _%methods231867%_)))
                 (_%_231880%_
                  (let ((__tmp235286
                         (lambda (_%g231872231875%_ _%g231873231877%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%method-calls231158%_
                              _%g231872231875%_
                              _%g231873231877%_)))))
                    (declare (not safe))
                    (##for-each
                     __tmp235286
                     _%methods231867%_
                     _%$methods231871%_)))
                 (_%methods-bind231890%_
                  (let ((__tmp235287
                         (lambda (_%g231882231885%_ _%g231883231887%_)
                           (_%generate-method-bind231068%_
                            _%$klass231863%_
                            _%$method-table231865%_
                            _%g231882231885%_
                            _%g231883231887%_))))
                    (declare (not safe))
                    (##map __tmp235287 _%methods231867%_ _%$methods231871%_)))
                 (_%slots231892%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs231159%_)))
                 (_%$slots231896%_
                  (let ((__tmp235288
                         (lambda (_%id231894%_)
                           (let ((__tmp235289 (gensym _%id231894%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp235289)))))
                    (declare (not safe))
                    (##map __tmp235288 _%slots231892%_)))
                 (_%_231905%_
                  (let ((__tmp235290
                         (lambda (_%g231897231900%_ _%g231898231902%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%slot-refs231159%_
                              _%g231897231900%_
                              _%g231898231902%_)))))
                    (declare (not safe))
                    (##for-each __tmp235290 _%slots231892%_ _%$slots231896%_)))
                 (_%slots-bind231914%_
                  (let ((__tmp235291
                         (lambda (_%g231906231909%_ _%g231907231911%_)
                           (_%generate-slot-bind231069%_
                            _%$klass231863%_
                            _%g231906231909%_
                            _%g231907231911%_))))
                    (declare (not safe))
                    (##map __tmp235291 _%slots231892%_ _%$slots231896%_)))
                 (_%specializer-clauses232012%_
                  (map (lambda (_%clause231916%_)
                         (let* ((_%__stx234085234086%_ _%clause231916%_)
                                (_%g231919231934%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx234085234086%_)))))
                           (let ((_%__kont234087234088%_
                                  (lambda (_%g231921231962%_
                                           _%g231922231963%_
                                           _%g231923231964%_)
                                    (let* ((_%receiver231993%_
                                            (let ((_%$e231990%_
                                                   (gxc#apply-extract-receiver
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#begin))
                                                          _%g231921231962%_))))
                                              (if _%$e231990%_
                                                  _%$e231990%_
                                                  _%g231923231964%_)))
                                           (_%body231999%_
                                            (map (lambda (_%g231994231996%_)
                                                   (gxc#apply-subst-object-refs__%
                                                    '#f
                                                    _%receiver231993%_
                                                    _%$klass231863%_
                                                    _%method-calls231158%_
                                                    _%slot-refs231159%_
                                                    _%g231994231996%_))
                                                 _%g231921231962%_)))
                                      (cons (cons _%g231923231964%_
                                                  _%g231922231963%_)
                                            _%body231999%_))))
                                 (_%__kont234089234090%_
                                  (lambda () _%clause231916%_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx234085234086%_))
                                 (let ((_%e231924231946%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx234085234086%_))))
                                   (let ((_%tl231926231951%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e231924231946%_)))
                                         (_%hd231925231949%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e231924231946%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd231925231949%_))
                                         (let ((_%e231927231954%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd231925231949%_))))
                                           (let ((_%tl231929231959%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e231927231954%_)))
                                                 (_%hd231928231957%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e231927231954%_))))
                                             (_%__kont234087234088%_
                                              _%tl231926231951%_
                                              _%tl231929231959%_
                                              _%hd231928231957%_)))
                                         (_%__kont234089234090%_))))
                                 (_%__kont234089234090%_)))))
                       (let ((__tmp235292
                              (lambda (_%g232004232007%_ _%g232005232009%_)
                                (cons _%g232004232007%_ _%g232005232009%_))))
                         (declare (not safe))
                         (foldr__0 __tmp235292 '() _%g231706231758%_))))
                 (_%specializer-impl232014%_
                  (let ((__tmp235293
                         (cons '%#case-lambda _%specializer-clauses232012%_)))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp235293 _%stx231066%_)))
                 (_%specializer-impl232016%_
                  (_%generate-specializer-impl231070%_
                   _%$klass231863%_
                   _%$method-table231865%_
                   _%methods-bind231890%_
                   _%slots-bind231914%_
                   _%specializer-impl232014%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp235295
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%g231077231139%_)))
                                                          (__tmp235294
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id231861%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp235295
                                                       '" => "
                                                       __tmp235294))
                                                    (_%generate-specializer-def231071%_
                                                     _%g231077231139%_
                                                     _%specializer-id231861%_
                                                     _%specializer-impl232016%_))))
                                            _%clause231718231756%_))))))
                           (_%loop231713231741%_ _%target231710231736%_ '()))
                         (_%g231704231723%_ _%g231705231726%_)))))
               (_%g231704231723%_ _%g231705231726%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g231704231723%_
                                                _%g231705231726%_)))))
                                   (_%g231703232019%_ _%g231076231138%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr?
                                        _%g231076231138%_))
                                     (let* ((_%g232023232053%_
                                             (lambda (_%g232024232050%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g232024232050%_))))
                                            (_%g232022232680%_
                                             (lambda (_%g232024232056%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g232024232056%_))
                                                   (let ((_%e232028232058%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g232024232056%_))))
                                                     (let ((_%hd232029232061%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e232028232058%_)))
                                                           (_%tl232030232063%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e232028232058%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl232030232063%_))
                                                           (let ((_%e232031232066%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl232030232063%_))))
                     (let ((_%hd232032232069%_
                            (let ()
                              (declare (not safe))
                              (##car _%e232031232066%_)))
                           (_%tl232033232071%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e232031232066%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd232032232069%_))
                           (let ((_%e232034232074%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd232032232069%_))))
                             (let ((_%hd232035232077%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e232034232074%_)))
                                   (_%tl232036232079%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e232034232074%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd232035232077%_))
                                   (let ((_%e232037232082%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd232035232077%_))))
                                     (let ((_%hd232038232085%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e232037232082%_)))
                                           (_%tl232039232087%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e232037232082%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd232038232085%_))
                                           (let ((_%e232040232090%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd232038232085%_))))
                                             (let ((_%hd232041232093%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e232040232090%_)))
                                                   (_%tl232042232095%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e232040232090%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl232042232095%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl232039232087%_))
                                                       (let ((_%e232043232098%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl232039232087%_))))
                 (let ((_%hd232044232101%_
                        (let ()
                          (declare (not safe))
                          (##car _%e232043232098%_)))
                       (_%tl232045232103%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e232043232098%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl232045232103%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl232036232079%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl232033232071%_))
                               (let ((_%e232046232106%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl232033232071%_))))
                                 (let ((_%hd232047232109%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e232046232106%_)))
                                       (_%tl232048232111%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e232046232106%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl232048232111%_))
                                       ((lambda (_%g232025232114%_
                                                 _%g232026232115%_
                                                 _%g232027232116%_)
                                          (let* ((_%g232140232158%_
                                                  (lambda (_%g232141232155%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g232141232155%_))))
                                                 (_%g232139232214%_
                                                  (lambda (_%g232141232161%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g232141232161%_))
                                                        (let ((_%e232145232163%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g232141232161%_))))
                  (let ((_%hd232146232166%_
                         (let ()
                           (declare (not safe))
                           (##car _%e232145232163%_)))
                        (_%tl232147232168%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e232145232163%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl232147232168%_))
                        (let ((_%e232148232171%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl232147232168%_))))
                          (let ((_%hd232149232174%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e232148232171%_)))
                                (_%tl232150232176%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e232148232171%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd232149232174%_))
                                (let ((_%e232151232179%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd232149232174%_))))
                                  (let ((_%hd232152232182%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e232151232179%_)))
                                        (_%tl232153232184%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e232151232179%_))))
                                    ((lambda (_%g232142232187%_
                                              _%g232143232188%_
                                              _%g232144232189%_)
                                       (let ((_%receiver232208%_
                                              (let ((_%$e232205%_
                                                     (gxc#apply-extract-receiver
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))
                                                            _%g232142232187%_))))
                                                (if _%$e232205%_
                                                    _%$e232205%_
                                                    _%g232144232189%_))))
                                         (for-each
                                          (lambda (_%g232209232211%_)
                                            (gxc#apply-collect-object-refs__%
                                             '#f
                                             _%receiver232208%_
                                             _%method-calls231158%_
                                             _%slot-refs231159%_
                                             _%g232209232211%_))
                                          _%g232142232187%_)))
                                     _%tl232150232176%_
                                     _%tl232153232184%_
                                     _%hd232152232182%_)))
                                (_%g232140232158%_ _%g232141232161%_))))
                        (_%g232140232158%_ _%g232141232161%_))))
                (_%g232140232158%_ _%g232141232161%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g232139232214%_
                                             _%g232026232115%_))
                                          (let* ((_%g232217232236%_
                                                  (lambda (_%g232218232233%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g232218232233%_))))
                                                 (_%g232216232358%_
                                                  (lambda (_%g232218232239%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g232218232239%_))
                                                        (let ((_%e232220232241%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g232218232239%_))))
                  (let ((_%hd232221232244%_
                         (let ()
                           (declare (not safe))
                           (##car _%e232220232241%_)))
                        (_%tl232222232246%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e232220232241%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl232222232246%_))
                        (let ((_g235296_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%tl232222232246%_
                                  '0))))
                          (begin
                            (let ((_g235297_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g235296_)
                                         (##values-length _g235296_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g235297_ 2)))
                                  (error "Context expects 2 values"
                                         _g235297_)))
                            (let ((_%target232223232249%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g235296_ 0)))
                                  (_%tl232225232251%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g235296_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl232225232251%_))
                                  (letrec ((_%loop232226232254%_
                                            (lambda (_%hd232224232257%_
                                                     _%clause232230232259%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd232224232257%_))
                                                  (let ((_%e232227232261%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd232224232257%_))))
                                                    (let ((_%lp-hd232228232264%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e232227232261%_)))
                                                          (_%lp-tl232229232266%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e232227232261%_))))
                                                      (_%loop232226232254%_
                                                       _%lp-tl232229232266%_
                                                       (cons _%lp-hd232228232264%_
                                                             _%clause232230232259%_))))
                                                  (let ((_%clause232231232269%_
                                                         (reverse _%clause232230232259%_)))
                                                    ((lambda (_%g232219232271%_)
                                                       (for-each
                                                        (lambda (_%clause232284%_)
                                                          (let* ((_%g232286232301%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g232287232298%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g232287232298%_))))
                         (_%g232285232348%_
                          (lambda (_%g232287232304%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g232287232304%_))
                                (let ((_%e232291232306%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g232287232304%_))))
                                  (let ((_%hd232292232309%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e232291232306%_)))
                                        (_%tl232293232311%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e232291232306%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd232292232309%_))
                                        (let ((_%e232294232314%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd232292232309%_))))
                                          (let ((_%hd232295232317%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e232294232314%_)))
                                                (_%tl232296232319%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e232294232314%_))))
                                            ((lambda (_%g232288232322%_
                                                      _%g232289232323%_
                                                      _%g232290232324%_)
                                               (let ((_%receiver232342%_
                                                      (let ((_%$e232339%_
                                                             (gxc#apply-extract-receiver
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '%#begin))
                            _%g232288232322%_))))
                (if _%$e232339%_ _%$e232339%_ _%g232290232324%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (for-each
                                                  (lambda (_%g232343232345%_)
                                                    (gxc#apply-collect-object-refs__%
                                                     '#f
                                                     _%receiver232342%_
                                                     _%method-calls231158%_
                                                     _%slot-refs231159%_
                                                     _%g232343232345%_))
                                                  _%g232288232322%_)))
                                             _%tl232293232311%_
                                             _%tl232296232319%_
                                             _%hd232295232317%_)))
                                        (_%g232286232301%_
                                         _%g232287232304%_))))
                                (_%g232286232301%_ _%g232287232304%_)))))
                    (_%g232285232348%_ _%clause232284%_)))
                (let ((__tmp235298
                       (lambda (_%g232350232353%_ _%g232351232355%_)
                         (cons _%g232350232353%_ _%g232351232355%_))))
                  (declare (not safe))
                  (foldr__0 __tmp235298 '() _%g232219232271%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%clause232231232269%_))))))
                                    (_%loop232226232254%_
                                     _%target232223232249%_
                                     '()))
                                  (_%g232217232236%_ _%g232218232239%_)))))
                        (_%g232217232236%_ _%g232218232239%_))))
                (_%g232217232236%_ _%g232218232239%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g232216232358%_
                                             _%g232025232114%_))
                                          (if (_%no-specializer?231162%_)
                                              _%stx231066%_
                                              (let* ((_%specializer-id232367%_
                                                      (let* ((_%id232361%_
                                                              (let ((__tmp235299
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g231077231139%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp235299 '"::specialize")))
                     (_%specializer-id232364%_
                      (let ((__tmp235300
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx231066%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id232361%_ __tmp235300))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id232364%_))
                _%specializer-id232364%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass232369%_
                                                      (let ((__tmp235301
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp235301)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table232371%_
                                                      (let ((__tmp235302
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp235302)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods232373%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls231158%_)))
                                                     (_%$methods232377%_
                                                      (let ((__tmp235303
                                                             (lambda (_%id232375%_)
                                                               (let ((__tmp235304
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id232375%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp235304)))))
                (declare (not safe))
                (##map __tmp235303 _%methods232373%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_232386%_
                                                      (let ((__tmp235305
                                                             (lambda (_%g232378232381%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g232379232383%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls231158%_
                          _%g232378232381%_
                          _%g232379232383%_)))))
                (declare (not safe))
                (##for-each __tmp235305 _%methods232373%_ _%$methods232377%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind232396%_
                                                      (let ((__tmp235306
                                                             (lambda (_%g232388232391%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g232389232393%_)
                       (_%generate-method-bind231068%_
                        _%$klass232369%_
                        _%$method-table232371%_
                        _%g232388232391%_
                        _%g232389232393%_))))
                (declare (not safe))
                (##map __tmp235306 _%methods232373%_ _%$methods232377%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots232398%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs231159%_)))
                                                     (_%$slots232402%_
                                                      (let ((__tmp235307
                                                             (lambda (_%id232400%_)
                                                               (let ((__tmp235308
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id232400%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp235308)))))
                (declare (not safe))
                (##map __tmp235307 _%slots232398%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_232411%_
                                                      (let ((__tmp235309
                                                             (lambda (_%g232403232406%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g232404232408%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs231159%_
                          _%g232403232406%_
                          _%g232404232408%_)))))
                (declare (not safe))
                (##for-each __tmp235309 _%slots232398%_ _%$slots232402%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind232420%_
                                                      (let ((__tmp235310
                                                             (lambda (_%g232412232415%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g232413232417%_)
                       (_%generate-slot-bind231069%_
                        _%$klass232369%_
                        _%g232412232415%_
                        _%g232413232417%_))))
                (declare (not safe))
                (##map __tmp235310 _%slots232398%_ _%$slots232402%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-lambda-expr232512%_
                                                      (let* ((_%g232422232440%_
                                                              (lambda (_%g232423232437%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g232423232437%_))))
                     (_%g232421232509%_
                      (lambda (_%g232423232443%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g232423232443%_))
                            (let ((_%e232427232445%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g232423232443%_))))
                              (let ((_%hd232428232448%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e232427232445%_)))
                                    (_%tl232429232450%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e232427232445%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl232429232450%_))
                                    (let ((_%e232430232453%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl232429232450%_))))
                                      (let ((_%hd232431232456%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e232430232453%_)))
                                            (_%tl232432232458%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e232430232453%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd232431232456%_))
                                            (let ((_%e232433232461%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd232431232456%_))))
                                              (let ((_%hd232434232464%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e232433232461%_)))
                                                    (_%tl232435232466%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e232433232461%_))))
                                                ((lambda (_%g232424232469%_
                                                          _%g232425232470%_
                                                          _%g232426232471%_)
                                                   (let* ((_%receiver232500%_
                                                           (let ((_%$e232497%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#apply-extract-receiver
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#begin))
                                 _%g232424232469%_))))
                     (if _%$e232497%_ _%$e232497%_ _%g232426232471%_)))
                  (_%body232506%_
                   (map (lambda (_%g232501232503%_)
                          (gxc#apply-subst-object-refs__%
                           '#f
                           _%receiver232500%_
                           _%$klass232369%_
                           _%method-calls231158%_
                           _%slot-refs231159%_
                           _%g232501232503%_))
                        _%g232424232469%_))
                  (__tmp235311
                   (cons '%#lambda
                         (cons (cons _%g232426232471%_ _%g232425232470%_)
                               _%body232506%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp235311
                                                      _%g232026232115%_)))
                                                 _%tl232432232458%_
                                                 _%tl232435232466%_
                                                 _%hd232434232464%_)))
                                            (_%g232422232440%_
                                             _%g232423232443%_))))
                                    (_%g232422232440%_ _%g232423232443%_))))
                            (_%g232422232440%_ _%g232423232443%_)))))
                (_%g232421232509%_ _%g232026232115%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-case-lambda-expr232673%_
                                                      (let* ((_%g232514232533%_
                                                              (lambda (_%g232515232530%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g232515232530%_))))
                     (_%g232513232670%_
                      (lambda (_%g232515232536%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g232515232536%_))
                            (let ((_%e232517232538%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g232515232536%_))))
                              (let ((_%hd232518232541%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e232517232538%_)))
                                    (_%tl232519232543%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e232517232538%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl232519232543%_))
                                    (let ((_g235312_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl232519232543%_
                                              '0))))
                                      (begin
                                        (let ((_g235313_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g235312_)
                                                     (##values-length
                                                      _g235312_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g235313_ 2)))
                                              (error "Context expects 2 values"
                                                     _g235313_)))
                                        (let ((_%target232520232546%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g235312_ 0)))
                                              (_%tl232522232548%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g235312_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl232522232548%_))
                                              (letrec ((_%loop232523232551%_
                                                        (lambda (_%hd232521232554%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%clause232527232556%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd232521232554%_))
                      (let ((_%e232524232558%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd232521232554%_))))
                        (let ((_%lp-hd232525232561%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e232524232558%_)))
                              (_%lp-tl232526232563%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e232524232558%_))))
                          (_%loop232523232551%_
                           _%lp-tl232526232563%_
                           (cons _%lp-hd232525232561%_
                                 _%clause232527232556%_))))
                      (let ((_%clause232528232566%_
                             (reverse _%clause232527232556%_)))
                        ((lambda (_%g232516232568%_)
                           (let* ((_%clauses232668%_
                                   (map (lambda (_%clause232582%_)
                                          (let* ((_%__stx234105234106%_
                                                  _%clause232582%_)
                                                 (_%g232585232600%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx234105234106%_)))))
                                            (let ((_%__kont234107234108%_
                                                   (lambda (_%g232587232628%_
                                                            _%g232588232629%_
                                                            _%g232589232630%_)
                                                     (let* ((_%receiver232649%_
                                                             (let ((_%$e232646%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#apply-extract-receiver
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#begin))
                                   _%g232587232628%_))))
                       (if _%$e232646%_ _%$e232646%_ _%g232589232630%_)))
                    (_%body232655%_
                     (map (lambda (_%g232650232652%_)
                            (gxc#apply-subst-object-refs__%
                             '#f
                             _%receiver232649%_
                             _%$klass232369%_
                             _%method-calls231158%_
                             _%slot-refs231159%_
                             _%g232650232652%_))
                          _%g232587232628%_)))
               (cons (cons _%g232589232630%_ _%g232588232629%_)
                     _%body232655%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont234109234110%_
                                                   (lambda ()
                                                     _%clause232582%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx234105234106%_))
                                                  (let ((_%e232590232612%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%__stx234105234106%_))))
                                                    (let ((_%tl232592232617%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e232590232612%_)))
                                                          (_%hd232591232615%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e232590232612%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd232591232615%_))
                                                          (let ((_%e232593232620%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd232591232615%_))))
                    (let ((_%tl232595232625%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e232593232620%_)))
                          (_%hd232594232623%_
                           (let ()
                             (declare (not safe))
                             (##car _%e232593232620%_))))
                      (_%__kont234107234108%_
                       _%tl232592232617%_
                       _%tl232595232625%_
                       _%hd232594232623%_)))
                  (_%__kont234109234110%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont234109234110%_)))))
                                        (let ((__tmp235314
                                               (lambda (_%g232660232663%_
                                                        _%g232661232665%_)
                                                 (cons _%g232660232663%_
                                                       _%g232661232665%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp235314
                                           '()
                                           _%g232516232568%_))))
                                  (__tmp235315
                                   (cons '%#case-lambda _%clauses232668%_)))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp235315
                              _%g232025232114%_)))
                         _%clause232528232566%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop232523232551%_
                                                 _%target232520232546%_
                                                 '()))
                                              (_%g232514232533%_
                                               _%g232515232536%_)))))
                                    (_%g232514232533%_ _%g232515232536%_))))
                            (_%g232514232533%_ _%g232515232536%_)))))
                (_%g232513232670%_ _%g232025232114%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl232675%_
                                                      (let ((__tmp235316
                                                             (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons (cons _%g232027232116%_ '())
                                             (cons _%specializer-lambda-expr232512%_
                                                   '()))
                                       '())
                                 (cons _%specializer-case-lambda-expr232673%_
                                       '())))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp235316 _%stx231066%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl232677%_
                                                      (_%generate-specializer-impl231070%_
                                                       _%$klass232369%_
                                                       _%$method-table232371%_
                                                       _%methods-bind232396%_
                                                       _%slots-bind232420%_
                                                       _%specializer-impl232675%_)))
                                                (let ((__tmp235318
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g231077231139%_)))
                                                      (__tmp235317
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id232367%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp235318
                                                   '" => "
                                                   __tmp235317))
                                                (_%generate-specializer-def231071%_
                                                 _%g231077231139%_
                                                 _%specializer-id232367%_
                                                 _%specializer-impl232677%_))))
                                        _%hd232047232109%_
                                        _%hd232044232101%_
                                        _%hd232041232093%_)
                                       (_%g232023232053%_ _%g232024232056%_))))
                               (_%g232023232053%_ _%g232024232056%_))
                           (_%g232023232053%_ _%g232024232056%_))
                       (_%g232023232053%_ _%g232024232056%_))))
               (_%g232023232053%_ _%g232024232056%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g232023232053%_
                                                    _%g232024232056%_))))
                                           (_%g232023232053%_
                                            _%g232024232056%_))))
                                   (_%g232023232053%_ _%g232024232056%_))))
                           (_%g232023232053%_ _%g232024232056%_))))
                   (_%g232023232053%_ _%g232024232056%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g232023232053%_
                                                    _%g232024232056%_)))))
                                       (_%g232022232680%_ _%g231076231138%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr?
                                            _%g231076231138%_))
                                         (let* ((_%g232684232737%_
                                                 (lambda (_%g232685232734%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g232685232734%_))))
                                                (_%g232683233902%_
                                                 (lambda (_%g232685232740%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g232685232740%_))
                                                       (let ((_%e232691232742%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g232685232740%_))))
                 (let ((_%hd232692232745%_
                        (let ()
                          (declare (not safe))
                          (##car _%e232691232742%_)))
                       (_%tl232693232747%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e232691232742%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%hd232692232745%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%hd232692232745%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl232693232747%_))
                               (let ((_%e232694232750%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl232693232747%_))))
                                 (let ((_%hd232695232753%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e232694232750%_)))
                                       (_%tl232696232755%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e232694232750%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd232695232753%_))
                                       (let ((_%e232697232758%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd232695232753%_))))
                                         (let ((_%hd232698232761%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e232697232758%_)))
                                               (_%tl232699232763%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e232697232758%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd232698232761%_))
                                               (let ((_%e232700232766%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd232698232761%_))))
                                                 (let ((_%hd232701232769%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e232700232766%_)))
                                                       (_%tl232702232771%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e232700232766%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd232701232769%_))
                                                       (let ((_%e232703232774%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd232701232769%_))))
                 (let ((_%hd232704232777%_
                        (let ()
                          (declare (not safe))
                          (##car _%e232703232774%_)))
                       (_%tl232705232779%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e232703232774%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl232705232779%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl232702232771%_))
                           (let ((_%e232706232782%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl232702232771%_))))
                             (let ((_%hd232707232785%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e232706232782%_)))
                                   (_%tl232708232787%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e232706232782%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd232707232785%_))
                                   (let ((_%e232709232790%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd232707232785%_))))
                                     (let ((_%hd232710232793%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e232709232790%_)))
                                           (_%tl232711232795%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e232709232790%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd232710232793%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%hd232710232793%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl232711232795%_))
                                                   (let ((_%e232712232798%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl232711232795%_))))
                                                     (let ((_%hd232713232801%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e232712232798%_)))
                                                           (_%tl232714232803%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e232712232798%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd232713232801%_))
                                                           (let ((_%e232715232806%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%hd232713232801%_))))
                     (let ((_%hd232716232809%_
                            (let ()
                              (declare (not safe))
                              (##car _%e232715232806%_)))
                           (_%tl232717232811%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e232715232806%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd232716232809%_))
                           (let ((_%e232718232814%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd232716232809%_))))
                             (let ((_%hd232719232817%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e232718232814%_)))
                                   (_%tl232720232819%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e232718232814%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd232719232817%_))
                                   (let ((_%e232721232822%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd232719232817%_))))
                                     (let ((_%hd232722232825%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e232721232822%_)))
                                           (_%tl232723232827%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e232721232822%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl232723232827%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl232720232819%_))
                                               (let ((_%e232724232830%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl232720232819%_))))
                                                 (let ((_%hd232725232833%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e232724232830%_)))
                                                       (_%tl232726232835%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e232724232830%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl232726232835%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl232717232811%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl232714232803%_))
                       (let ((_%e232727232838%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl232714232803%_))))
                         (let ((_%hd232728232841%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e232727232838%_)))
                               (_%tl232729232843%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e232727232838%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl232729232843%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl232708232787%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl232699232763%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl232696232755%_))
                                           (let ((_%e232730232846%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl232696232755%_))))
                                             (let ((_%hd232731232849%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e232730232846%_)))
                                                   (_%tl232732232851%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e232730232846%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl232732232851%_))
                                                   ((lambda (_%g232686232854%_
                                                             _%g232687232855%_
                                                             _%g232688232856%_
                                                             _%g232689232857%_
                                                             _%g232690232858%_)
                                                      (let* ((_%g232898232960%_
                                                              (lambda (_%g232899232957%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g232899232957%_))))
                     (_%g232897233899%_
                      (lambda (_%g232899232963%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g232899232963%_))
                            (let ((_%e232905232965%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g232899232963%_))))
                              (let ((_%hd232906232968%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e232905232965%_)))
                                    (_%tl232907232970%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e232905232965%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd232906232968%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd232906232968%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl232907232970%_))
                                            (let ((_%e232908232973%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl232907232970%_))))
                                              (let ((_%hd232909232976%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e232908232973%_)))
                                                    (_%tl232910232978%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e232908232973%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl232910232978%_))
                                                    (let ((_%e232911232981%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl232910232978%_))))
                                                      (let ((_%hd232912232984%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e232911232981%_)))
                    (_%tl232913232986%_
                     (let () (declare (not safe)) (##cdr _%e232911232981%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd232912232984%_))
                    (let ((_%e232914232989%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd232912232984%_))))
                      (let ((_%hd232915232992%_
                             (let ()
                               (declare (not safe))
                               (##car _%e232914232989%_)))
                            (_%tl232916232994%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e232914232989%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd232915232992%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _%hd232915232992%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl232916232994%_))
                                    (let ((_%e232917232997%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl232916232994%_))))
                                      (let ((_%hd232918233000%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e232917232997%_)))
                                            (_%tl232919233002%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e232917232997%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd232918233000%_))
                                            (let ((_%e232920233005%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd232918233000%_))))
                                              (let ((_%hd232921233008%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e232920233005%_)))
                                                    (_%tl232922233010%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e232920233005%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd232921233008%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd232921233008%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl232922233010%_))
                                                            (let ((_%e232923233013%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl232922233010%_))))
                      (let ((_%hd232924233016%_
                             (let ()
                               (declare (not safe))
                               (##car _%e232923233013%_)))
                            (_%tl232925233018%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e232923233013%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl232925233018%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl232919233002%_))
                                (let ((_%e232926233021%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl232919233002%_))))
                                  (let ((_%hd232927233024%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e232926233021%_)))
                                        (_%tl232928233026%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e232926233021%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd232927233024%_))
                                        (let ((_%e232929233029%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd232927233024%_))))
                                          (let ((_%hd232930233032%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e232929233029%_)))
                                                (_%tl232931233034%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e232929233029%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd232930233032%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%hd232930233032%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl232931233034%_))
                                                        (let ((_%e232932233037%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl232931233034%_))))
                  (let ((_%hd232933233040%_
                         (let ()
                           (declare (not safe))
                           (##car _%e232932233037%_)))
                        (_%tl232934233042%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e232932233037%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl232934233042%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl232928233026%_))
                            (let ((_%e232935233045%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl232928233026%_))))
                              (let ((_%hd232936233048%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e232935233045%_)))
                                    (_%tl232937233050%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e232935233045%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd232936233048%_))
                                    (let ((_%e232938233053%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd232936233048%_))))
                                      (let ((_%hd232939233056%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e232938233053%_)))
                                            (_%tl232940233058%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e232938233053%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd232939233056%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd232939233056%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl232940233058%_))
                                                    (let ((_%e232941233061%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl232940233058%_))))
                                                      (let ((_%hd232942233064%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e232941233061%_)))
                    (_%tl232943233066%_
                     (let () (declare (not safe)) (##cdr _%e232941233061%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl232943233066%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl232937233050%_))
                        (if (let ((__tmp235319
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-length _%tl232937233050%_))))
                              (declare (not safe))
                              (##fx>= __tmp235319 '1))
                            (let ((_g235320_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl232937233050%_
                                      '1))))
                              (begin
                                (let ((_g235321_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g235320_)
                                             (##values-length _g235320_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g235321_ 2)))
                                      (error "Context expects 2 values"
                                             _g235321_)))
                                (let ((_%target232944233069%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g235320_ 0)))
                                      (_%tl232946233071%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g235320_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl232946233071%_))
                                      (let ((_%e232953233074%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl232946233071%_))))
                                        (let ((_%hd232954233077%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e232953233074%_)))
                                              (_%tl232955233079%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e232953233074%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl232955233079%_))
                                              (letrec ((_%loop232947233082%_
                                                        (lambda (_%hd232945233085%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%kw-ref232951233087%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd232945233085%_))
                      (let ((_%e232948233089%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd232945233085%_))))
                        (let ((_%lp-hd232949233092%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e232948233089%_)))
                              (_%lp-tl232950233094%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e232948233089%_))))
                          (_%loop232947233082%_
                           _%lp-tl232950233094%_
                           (cons _%lp-hd232949233092%_
                                 _%kw-ref232951233087%_))))
                      (let ((_%kw-ref232952233097%_
                             (reverse _%kw-ref232951233087%_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl232913232986%_))
                            ((lambda (_%g232900233099%_
                                      _%g232901233100%_
                                      _%g232902233101%_
                                      _%g232903233102%_
                                      _%g232904233103%_)
                               (let* ((_%kw-count233154%_
                                       (length (let ((__tmp235322
                                                      (lambda (_%g233146233149%_
                                                               _%g233147233151%_)
                                                        (cons _%g233146233149%_
                                                              _%g233147233151%_))))
                                                 (declare (not safe))
                                                 (foldr__0
                                                  __tmp235322
                                                  '()
                                                  _%g232901233100%_))))
                                      (_%self-index233156%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%kw-count233154%_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _%g232688232856%_))
                                     (let* ((_%g233160233174%_
                                             (lambda (_%g233161233171%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g233161233171%_))))
                                            (_%g233159233297%_
                                             (lambda (_%g233161233177%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g233161233177%_))
                                                   (let ((_%e233164233179%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g233161233177%_))))
                                                     (let ((_%hd233165233182%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e233164233179%_)))
                                                           (_%tl233166233184%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e233164233179%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl233166233184%_))
                                                           (let ((_%e233167233187%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl233166233184%_))))
                     (let ((_%hd233168233190%_
                            (let ()
                              (declare (not safe))
                              (##car _%e233167233187%_)))
                           (_%tl233169233192%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e233167233187%_))))
                       ((lambda (_%g233162233195%_ _%g233163233196%_)
                          (let* ((_%self233213%_
                                  (list-ref
                                   _%g233163233196%_
                                   _%self-index233156%_))
                                 (_%receiver233218%_
                                  (let ((_%$e233215%_
                                         (gxc#apply-extract-receiver
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   '%#begin))
                                                _%g233162233195%_))))
                                    (if _%$e233215%_
                                        _%$e233215%_
                                        _%self233213%_))))
                            (for-each
                             (lambda (_%g233220233222%_)
                               (gxc#apply-collect-object-refs__%
                                '#f
                                _%receiver233218%_
                                _%method-calls231158%_
                                _%slot-refs231159%_
                                _%g233220233222%_))
                             _%g233162233195%_)
                            (if (_%no-specializer?231162%_)
                                _%stx231066%_
                                (let* ((_%specializer-id233231%_
                                        (let* ((_%id233225%_
                                                (let ((__tmp235323
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g231077231139%_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp235323
                                                   '"::specialize")))
                                               (_%specializer-id233228%_
                                                (let ((__tmp235324
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _%stx231066%_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _%id233225%_
                                                   __tmp235324))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _%specializer-id233228%_))
                                          _%specializer-id233228%_))
                                       (_%$klass233233%_
                                        (let ((__tmp235325
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__klass))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp235325)))
                                       (_%$method-table233235%_
                                        (let ((__tmp235326
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__method-table))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp235326)))
                                       (_%methods233237%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys
                                           _%method-calls231158%_)))
                                       (_%$methods233241%_
                                        (let ((__tmp235327
                                               (lambda (_%id233239%_)
                                                 (let ((__tmp235328
                                                        (gensym _%id233239%_)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    '"__"
                                                    __tmp235328)))))
                                          (declare (not safe))
                                          (##map __tmp235327
                                                 _%methods233237%_)))
                                       (_%_233250%_
                                        (let ((__tmp235329
                                               (lambda (_%g233242233245%_
                                                        _%g233243233247%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%method-calls231158%_
                                                    _%g233242233245%_
                                                    _%g233243233247%_)))))
                                          (declare (not safe))
                                          (##for-each
                                           __tmp235329
                                           _%methods233237%_
                                           _%$methods233241%_)))
                                       (_%methods-bind233260%_
                                        (let ((__tmp235330
                                               (lambda (_%g233252233255%_
                                                        _%g233253233257%_)
                                                 (_%generate-method-bind231068%_
                                                  _%$klass233233%_
                                                  _%$method-table233235%_
                                                  _%g233252233255%_
                                                  _%g233253233257%_))))
                                          (declare (not safe))
                                          (##map __tmp235330
                                                 _%methods233237%_
                                                 _%$methods233241%_)))
                                       (_%slots233262%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys _%slot-refs231159%_)))
                                       (_%$slots233266%_
                                        (let ((__tmp235331
                                               (lambda (_%id233264%_)
                                                 (let ((__tmp235332
                                                        (gensym _%id233264%_)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    '"__"
                                                    __tmp235332)))))
                                          (declare (not safe))
                                          (##map __tmp235331 _%slots233262%_)))
                                       (_%_233275%_
                                        (let ((__tmp235333
                                               (lambda (_%g233267233270%_
                                                        _%g233268233272%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%slot-refs231159%_
                                                    _%g233267233270%_
                                                    _%g233268233272%_)))))
                                          (declare (not safe))
                                          (##for-each
                                           __tmp235333
                                           _%slots233262%_
                                           _%$slots233266%_)))
                                       (_%slots-bind233284%_
                                        (let ((__tmp235334
                                               (lambda (_%g233276233279%_
                                                        _%g233277233281%_)
                                                 (_%generate-slot-bind231069%_
                                                  _%$klass233233%_
                                                  _%g233276233279%_
                                                  _%g233277233281%_))))
                                          (declare (not safe))
                                          (##map __tmp235334
                                                 _%slots233262%_
                                                 _%$slots233266%_)))
                                       (_%specializer-impl233292%_
                                        (let* ((_%specializer-body233290%_
                                                (map (lambda (_%g233285233287%_)
                                                       (gxc#apply-subst-object-refs__%
                                                        '#f
                                                        _%receiver233218%_
                                                        _%$klass233233%_
                                                        _%method-calls231158%_
                                                        _%slot-refs231159%_
                                                        _%g233285233287%_))
                                                     _%g233162233195%_))
                                               (__tmp235335
                                                (cons '%#let-values
                                                      (cons (cons (cons (cons _%g232690232858%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (cons '%#let-values
                                            (cons (cons (cons (cons _%g232689232857%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (let ((__tmp235336
                                   (cons '%#lambda
                                         (cons _%g233163233196%_
                                               _%specializer-body233290%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp235336
                               _%g232688232856%_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%g232687232855%_
                                                        '())))
                                      '()))
                          '())
                    (cons _%g232686232854%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp235335
                                           _%stx231066%_)))
                                       (_%specializer-impl233294%_
                                        (_%generate-specializer-impl231070%_
                                         _%$klass233233%_
                                         _%$method-table233235%_
                                         _%methods-bind233260%_
                                         _%slots-bind233284%_
                                         _%specializer-impl233292%_)))
                                  (let ((__tmp235338
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g231077231139%_)))
                                        (__tmp235337
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e
                                            _%specializer-id233231%_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp235338
                                     '" => "
                                     __tmp235337))
                                  (_%generate-specializer-def231071%_
                                   _%g231077231139%_
                                   _%specializer-id233231%_
                                   _%specializer-impl233294%_)))))
                        _%tl233169233192%_
                        _%hd233168233190%_)))
                   (_%g233160233174%_ _%g233161233177%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g233160233174%_
                                                    _%g233161233177%_)))))
                                       (_%g233159233297%_ _%g232688232856%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr?
                                            _%g232688232856%_))
                                         (let* ((_%g233301233331%_
                                                 (lambda (_%g233302233328%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g233302233328%_))))
                                                (_%g233300233895%_
                                                 (lambda (_%g233302233334%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g233302233334%_))
                                                       (let ((_%e233306233336%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g233302233334%_))))
                 (let ((_%hd233307233339%_
                        (let ()
                          (declare (not safe))
                          (##car _%e233306233336%_)))
                       (_%tl233308233341%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e233306233336%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl233308233341%_))
                       (let ((_%e233309233344%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl233308233341%_))))
                         (let ((_%hd233310233347%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e233309233344%_)))
                               (_%tl233311233349%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e233309233344%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd233310233347%_))
                               (let ((_%e233312233352%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd233310233347%_))))
                                 (let ((_%hd233313233355%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e233312233352%_)))
                                       (_%tl233314233357%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e233312233352%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd233313233355%_))
                                       (let ((_%e233315233360%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd233313233355%_))))
                                         (let ((_%hd233316233363%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e233315233360%_)))
                                               (_%tl233317233365%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e233315233360%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd233316233363%_))
                                               (let ((_%e233318233368%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd233316233363%_))))
                                                 (let ((_%hd233319233371%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e233318233368%_)))
                                                       (_%tl233320233373%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e233318233368%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl233320233373%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl233317233365%_))
                                                           (let ((_%e233321233376%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl233317233365%_))))
                     (let ((_%hd233322233379%_
                            (let ()
                              (declare (not safe))
                              (##car _%e233321233376%_)))
                           (_%tl233323233381%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e233321233376%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl233323233381%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl233314233357%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl233311233349%_))
                                   (let ((_%e233324233384%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl233311233349%_))))
                                     (let ((_%hd233325233387%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e233324233384%_)))
                                           (_%tl233326233389%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e233324233384%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl233326233389%_))
                                           ((lambda (_%g233303233392%_
                                                     _%g233304233393%_
                                                     _%g233305233394%_)
                                              (let* ((_%g233418233432%_
                                                      (lambda (_%g233419233429%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g233419233429%_))))
                                                     (_%g233417233479%_
                                                      (lambda (_%g233419233435%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g233419233435%_))
                                                            (let ((_%e233422233437%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g233419233435%_))))
                      (let ((_%hd233423233440%_
                             (let ()
                               (declare (not safe))
                               (##car _%e233422233437%_)))
                            (_%tl233424233442%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e233422233437%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl233424233442%_))
                            (let ((_%e233425233445%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl233424233442%_))))
                              (let ((_%hd233426233448%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e233425233445%_)))
                                    (_%tl233427233450%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e233425233445%_))))
                                ((lambda (_%g233420233453%_ _%g233421233454%_)
                                   (let* ((_%self233467%_
                                           (list-ref
                                            _%g233421233454%_
                                            _%self-index233156%_))
                                          (_%receiver233472%_
                                           (let ((_%$e233469%_
                                                  (gxc#apply-extract-receiver
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '%#begin))
                                                         _%g233420233453%_))))
                                             (if _%$e233469%_
                                                 _%$e233469%_
                                                 _%self233467%_))))
                                     (for-each
                                      (lambda (_%g233474233476%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%receiver233472%_
                                         _%method-calls231158%_
                                         _%slot-refs231159%_
                                         _%g233474233476%_))
                                      _%g233420233453%_)))
                                 _%tl233427233450%_
                                 _%hd233426233448%_)))
                            (_%g233418233432%_ _%g233419233435%_))))
                    (_%g233418233432%_ _%g233419233435%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g233417233479%_
                                                 _%g233304233393%_))
                                              (let* ((_%g233482233501%_
                                                      (lambda (_%g233483233498%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g233483233498%_))))
                                                     (_%g233481233610%_
                                                      (lambda (_%g233483233504%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g233483233504%_))
                                                            (let ((_%e233485233506%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g233483233504%_))))
                      (let ((_%hd233486233509%_
                             (let ()
                               (declare (not safe))
                               (##car _%e233485233506%_)))
                            (_%tl233487233511%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e233485233506%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _%tl233487233511%_))
                            (let ((_g235339_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl233487233511%_
                                      '0))))
                              (begin
                                (let ((_g235340_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g235339_)
                                             (##values-length _g235339_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g235340_ 2)))
                                      (error "Context expects 2 values"
                                             _g235340_)))
                                (let ((_%target233488233514%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g235339_ 0)))
                                      (_%tl233490233516%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g235339_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl233490233516%_))
                                      (letrec ((_%loop233491233519%_
                                                (lambda (_%hd233489233522%_
                                                         _%clause233495233524%_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd233489233522%_))
                                                      (let ((_%e233492233526%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd233489233522%_))))
                (let ((_%lp-hd233493233529%_
                       (let () (declare (not safe)) (##car _%e233492233526%_)))
                      (_%lp-tl233494233531%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e233492233526%_))))
                  (_%loop233491233519%_
                   _%lp-tl233494233531%_
                   (cons _%lp-hd233493233529%_ _%clause233495233524%_))))
              (let ((_%clause233496233534%_ (reverse _%clause233495233524%_)))
                ((lambda (_%g233484233536%_)
                   (for-each
                    (lambda (_%clause233549%_)
                      (let* ((_%g233551233562%_
                              (lambda (_%g233552233559%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g233552233559%_))))
                             (_%g233550233600%_
                              (lambda (_%g233552233565%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g233552233565%_))
                                    (let ((_%e233555233567%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g233552233565%_))))
                                      (let ((_%hd233556233570%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e233555233567%_)))
                                            (_%tl233557233572%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e233555233567%_))))
                                        ((lambda (_%g233553233575%_
                                                  _%g233554233576%_)
                                           (let* ((_%self233588%_
                                                   (list-ref
                                                    _%g233554233576%_
                                                    _%self-index233156%_))
                                                  (_%receiver233593%_
                                                   (let ((_%$e233590%_
                                                          (gxc#apply-extract-receiver
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#begin))
                         _%g233553233575%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e233590%_
                                                         _%$e233590%_
                                                         _%self233588%_))))
                                             (for-each
                                              (lambda (_%g233595233597%_)
                                                (gxc#apply-collect-object-refs__%
                                                 '#f
                                                 _%receiver233593%_
                                                 _%method-calls231158%_
                                                 _%slot-refs231159%_
                                                 _%g233595233597%_))
                                              _%g233553233575%_)))
                                         _%tl233557233572%_
                                         _%hd233556233570%_)))
                                    (_%g233551233562%_ _%g233552233565%_)))))
                        (_%g233550233600%_ _%clause233549%_)))
                    (let ((__tmp235341
                           (lambda (_%g233602233605%_ _%g233603233607%_)
                             (cons _%g233602233605%_ _%g233603233607%_))))
                      (declare (not safe))
                      (foldr__0 __tmp235341 '() _%g233484233536%_))))
                 _%clause233496233534%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop233491233519%_
                                         _%target233488233514%_
                                         '()))
                                      (_%g233482233501%_ _%g233483233504%_)))))
                            (_%g233482233501%_ _%g233483233504%_))))
                    (_%g233482233501%_ _%g233483233504%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g233481233610%_
                                                 _%g233303233392%_))
                                              (if (_%no-specializer?231162%_)
                                                  _%stx231066%_
                                                  (let* ((_%specializer-id233619%_
                                                          (let* ((_%id233613%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp235342
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g231077231139%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp235342 '"::specialize")))
                         (_%specializer-id233616%_
                          (let ((__tmp235343
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx231066%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id233613%_
                             __tmp235343))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id233616%_))
                    _%specializer-id233616%_))
                 (_%$klass233621%_
                  (let ((__tmp235344
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp235344)))
                 (_%$method-table233623%_
                  (let ((__tmp235345
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp235345)))
                 (_%methods233625%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls231158%_)))
                 (_%$methods233629%_
                  (let ((__tmp235346
                         (lambda (_%id233627%_)
                           (let ((__tmp235347 (gensym _%id233627%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp235347)))))
                    (declare (not safe))
                    (##map __tmp235346 _%methods233625%_)))
                 (_%_233638%_
                  (let ((__tmp235348
                         (lambda (_%g233630233633%_ _%g233631233635%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%method-calls231158%_
                              _%g233630233633%_
                              _%g233631233635%_)))))
                    (declare (not safe))
                    (##for-each
                     __tmp235348
                     _%methods233625%_
                     _%$methods233629%_)))
                 (_%methods-bind233648%_
                  (let ((__tmp235349
                         (lambda (_%g233640233643%_ _%g233641233645%_)
                           (_%generate-method-bind231068%_
                            _%$klass233621%_
                            _%$method-table233623%_
                            _%g233640233643%_
                            _%g233641233645%_))))
                    (declare (not safe))
                    (##map __tmp235349 _%methods233625%_ _%$methods233629%_)))
                 (_%slots233650%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs231159%_)))
                 (_%$slots233654%_
                  (let ((__tmp235350
                         (lambda (_%id233652%_)
                           (let ((__tmp235351 (gensym _%id233652%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp235351)))))
                    (declare (not safe))
                    (##map __tmp235350 _%slots233650%_)))
                 (_%_233663%_
                  (let ((__tmp235352
                         (lambda (_%g233655233658%_ _%g233656233660%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%slot-refs231159%_
                              _%g233655233658%_
                              _%g233656233660%_)))))
                    (declare (not safe))
                    (##for-each __tmp235352 _%slots233650%_ _%$slots233654%_)))
                 (_%slots-bind233672%_
                  (let ((__tmp235353
                         (lambda (_%g233664233667%_ _%g233665233669%_)
                           (_%generate-slot-bind231069%_
                            _%$klass233621%_
                            _%g233664233667%_
                            _%g233665233669%_))))
                    (declare (not safe))
                    (##map __tmp235353 _%slots233650%_ _%$slots233654%_)))
                 (_%specializer-lambda-expr233750%_
                  (let* ((_%g233674233688%_
                          (lambda (_%g233675233685%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g233675233685%_))))
                         (_%g233673233747%_
                          (lambda (_%g233675233691%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g233675233691%_))
                                (let ((_%e233678233693%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g233675233691%_))))
                                  (let ((_%hd233679233696%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e233678233693%_)))
                                        (_%tl233680233698%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e233678233693%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl233680233698%_))
                                        (let ((_%e233681233701%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl233680233698%_))))
                                          (let ((_%hd233682233704%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e233681233701%_)))
                                                (_%tl233683233706%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e233681233701%_))))
                                            ((lambda (_%g233676233709%_
                                                      _%g233677233710%_)
                                               (let* ((_%self233733%_
                                                       (list-ref
                                                        _%g233677233710%_
                                                        _%self-index233156%_))
                                                      (_%receiver233738%_
                                                       (let ((_%$e233735%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%g233676233709%_))))
                 (if _%$e233735%_ _%$e233735%_ _%self233733%_)))
              (_%body233744%_
               (map (lambda (_%g233739233741%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver233738%_
                       _%$klass233621%_
                       _%method-calls231158%_
                       _%slot-refs231159%_
                       _%g233739233741%_))
                    _%g233676233709%_))
              (__tmp235354
               (cons '%#lambda (cons _%g233677233710%_ _%body233744%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp235354
                                                  _%g233304233393%_)))
                                             _%tl233683233706%_
                                             _%hd233682233704%_)))
                                        (_%g233674233688%_
                                         _%g233675233691%_))))
                                (_%g233674233688%_ _%g233675233691%_)))))
                    (_%g233673233747%_ _%g233304233393%_)))
                 (_%specializer-case-lambda-expr233888%_
                  (let* ((_%g233752233771%_
                          (lambda (_%g233753233768%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g233753233768%_))))
                         (_%g233751233885%_
                          (lambda (_%g233753233774%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g233753233774%_))
                                (let ((_%e233755233776%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g233753233774%_))))
                                  (let ((_%hd233756233779%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e233755233776%_)))
                                        (_%tl233757233781%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e233755233776%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl233757233781%_))
                                        (let ((_g235355_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl233757233781%_
                                                  '0))))
                                          (begin
                                            (let ((_g235356_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g235355_)
                                                         (##values-length
                                                          _g235355_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g235356_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g235356_)))
                                            (let ((_%target233758233784%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g235355_
                                                      0)))
                                                  (_%tl233760233786%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g235355_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl233760233786%_))
                                                  (letrec ((_%loop233761233789%_
                                                            (lambda (_%hd233759233792%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause233765233794%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd233759233792%_))
                          (let ((_%e233762233796%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd233759233792%_))))
                            (let ((_%lp-hd233763233799%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e233762233796%_)))
                                  (_%lp-tl233764233801%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e233762233796%_))))
                              (_%loop233761233789%_
                               _%lp-tl233764233801%_
                               (cons _%lp-hd233763233799%_
                                     _%clause233765233794%_))))
                          (let ((_%clause233766233804%_
                                 (reverse _%clause233765233794%_)))
                            ((lambda (_%g233754233806%_)
                               (let* ((_%clauses233883%_
                                       (map (lambda (_%clause233820%_)
                                              (let* ((_%g233822233833%_
                                                      (lambda (_%g233823233830%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g233823233830%_))))
                                                     (_%g233821233873%_
                                                      (lambda (_%g233823233836%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g233823233836%_))
                                                            (let ((_%e233826233838%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g233823233836%_))))
                      (let ((_%hd233827233841%_
                             (let ()
                               (declare (not safe))
                               (##car _%e233826233838%_)))
                            (_%tl233828233843%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e233826233838%_))))
                        ((lambda (_%g233824233846%_ _%g233825233847%_)
                           (let* ((_%self233859%_
                                   (list-ref
                                    _%g233825233847%_
                                    _%self-index233156%_))
                                  (_%receiver233864%_
                                   (let ((_%$e233861%_
                                          (gxc#apply-extract-receiver
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '%#begin))
                                                 _%g233824233846%_))))
                                     (if _%$e233861%_
                                         _%$e233861%_
                                         _%self233859%_)))
                                  (_%body233870%_
                                   (map (lambda (_%g233865233867%_)
                                          (gxc#apply-subst-object-refs__%
                                           '#f
                                           _%receiver233864%_
                                           _%$klass233621%_
                                           _%method-calls231158%_
                                           _%slot-refs231159%_
                                           _%g233865233867%_))
                                        _%g233824233846%_)))
                             (cons _%g233825233847%_ _%body233870%_)))
                         _%tl233828233843%_
                         _%hd233827233841%_)))
                    (_%g233822233833%_ _%g233823233836%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g233821233873%_
                                                 _%clause233820%_)))
                                            (let ((__tmp235357
                                                   (lambda (_%g233875233878%_
                                                            _%g233876233880%_)
                                                     (cons _%g233875233878%_
                                                           _%g233876233880%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp235357
                                               '()
                                               _%g233754233806%_))))
                                      (__tmp235358
                                       (cons '%#case-lambda
                                             _%clauses233883%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp235358
                                  _%g233303233392%_)))
                             _%clause233766233804%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop233761233789%_
                                                     _%target233758233784%_
                                                     '()))
                                                  (_%g233752233771%_
                                                   _%g233753233774%_)))))
                                        (_%g233752233771%_
                                         _%g233753233774%_))))
                                (_%g233752233771%_ _%g233753233774%_)))))
                    (_%g233751233885%_ _%g233303233392%_)))
                 (_%specializer-impl233890%_
                  (let ((__tmp235359
                         (cons '%#let-values
                               (cons (cons (cons (cons _%g232690232858%_ '())
                                                 (cons (cons '%#let-values
                                                             (cons (cons (cons (cons _%g232689232857%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             '())
                                       (cons (let ((__tmp235360
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%g233305233394%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons _%specializer-lambda-expr233750%_
                                          '()))
                              '())
                        (cons _%specializer-case-lambda-expr233888%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp235360
                                                _%stx231066%_))
                                             '()))
                                 '())
                           (cons _%g232687232855%_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons _%g232686232854%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp235359 _%stx231066%_)))
                 (_%specializer-impl233892%_
                  (_%generate-specializer-impl231070%_
                   _%$klass233621%_
                   _%$method-table233623%_
                   _%methods-bind233648%_
                   _%slots-bind233672%_
                   _%specializer-impl233890%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp235362
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%g231077231139%_)))
                                                          (__tmp235361
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id233619%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp235362
                                                       '" => "
                                                       __tmp235361))
                                                    (_%generate-specializer-def231071%_
                                                     _%g231077231139%_
                                                     _%specializer-id233619%_
                                                     _%specializer-impl233892%_))))
                                            _%hd233325233387%_
                                            _%hd233322233379%_
                                            _%hd233319233371%_)
                                           (_%g233301233331%_
                                            _%g233302233334%_))))
                                   (_%g233301233331%_ _%g233302233334%_))
                               (_%g233301233331%_ _%g233302233334%_))
                           (_%g233301233331%_ _%g233302233334%_))))
                   (_%g233301233331%_ _%g233302233334%_))
               (_%g233301233331%_ _%g233302233334%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g233301233331%_
                                                _%g233302233334%_))))
                                       (_%g233301233331%_ _%g233302233334%_))))
                               (_%g233301233331%_ _%g233302233334%_))))
                       (_%g233301233331%_ _%g233302233334%_))))
               (_%g233301233331%_ _%g233302233334%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g233300233895%_
                                            _%g232688232856%_))
                                         _%stx231066%_))))
                             _%hd232954233077%_
                             _%kw-ref232952233097%_
                             _%hd232942233064%_
                             _%hd232933233040%_
                             _%hd232924233016%_)
                            (_%g232898232960%_ _%g232899232963%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop232947233082%_
                                                 _%target232944233069%_
                                                 '()))
                                              (_%g232898232960%_
                                               _%g232899232963%_))))
                                      (_%g232898232960%_ _%g232899232963%_)))))
                            (_%g232898232960%_ _%g232899232963%_))
                        (_%g232898232960%_ _%g232899232963%_))
                    (_%g232898232960%_ _%g232899232963%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g232898232960%_
                                                     _%g232899232963%_))
                                                (_%g232898232960%_
                                                 _%g232899232963%_))
                                            (_%g232898232960%_
                                             _%g232899232963%_))))
                                    (_%g232898232960%_ _%g232899232963%_))))
                            (_%g232898232960%_ _%g232899232963%_))
                        (_%g232898232960%_ _%g232899232963%_))))
                (_%g232898232960%_ _%g232899232963%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g232898232960%_
                                                     _%g232899232963%_))
                                                (_%g232898232960%_
                                                 _%g232899232963%_))))
                                        (_%g232898232960%_
                                         _%g232899232963%_))))
                                (_%g232898232960%_ _%g232899232963%_))
                            (_%g232898232960%_ _%g232899232963%_))))
                    (_%g232898232960%_ _%g232899232963%_))
                (_%g232898232960%_ _%g232899232963%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g232898232960%_
                                                     _%g232899232963%_))))
                                            (_%g232898232960%_
                                             _%g232899232963%_))))
                                    (_%g232898232960%_ _%g232899232963%_))
                                (_%g232898232960%_ _%g232899232963%_))
                            (_%g232898232960%_ _%g232899232963%_))))
                    (_%g232898232960%_ _%g232899232963%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g232898232960%_
                                                     _%g232899232963%_))))
                                            (_%g232898232960%_
                                             _%g232899232963%_))
                                        (_%g232898232960%_ _%g232899232963%_))
                                    (_%g232898232960%_ _%g232899232963%_))))
                            (_%g232898232960%_ _%g232899232963%_)))))
                (_%g232897233899%_ _%g232687232855%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd232731232849%_
                                                    _%hd232728232841%_
                                                    _%hd232725232833%_
                                                    _%hd232722232825%_
                                                    _%hd232704232777%_)
                                                   (_%g232684232737%_
                                                    _%g232685232740%_))))
                                           (_%g232684232737%_
                                            _%g232685232740%_))
                                       (_%g232684232737%_ _%g232685232740%_))
                                   (_%g232684232737%_ _%g232685232740%_))
                               (_%g232684232737%_ _%g232685232740%_))))
                       (_%g232684232737%_ _%g232685232740%_))
                   (_%g232684232737%_ _%g232685232740%_))
               (_%g232684232737%_ _%g232685232740%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g232684232737%_
                                                _%g232685232740%_))
                                           (_%g232684232737%_
                                            _%g232685232740%_))))
                                   (_%g232684232737%_ _%g232685232740%_))))
                           (_%g232684232737%_ _%g232685232740%_))))
                   (_%g232684232737%_ _%g232685232740%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g232684232737%_
                                                    _%g232685232740%_))
                                               (_%g232684232737%_
                                                _%g232685232740%_))
                                           (_%g232684232737%_
                                            _%g232685232740%_))))
                                   (_%g232684232737%_ _%g232685232740%_))))
                           (_%g232684232737%_ _%g232685232740%_))
                       (_%g232684232737%_ _%g232685232740%_))))
               (_%g232684232737%_ _%g232685232740%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g232684232737%_
                                                _%g232685232740%_))))
                                       (_%g232684232737%_ _%g232685232740%_))))
                               (_%g232684232737%_ _%g232685232740%_))
                           (_%g232684232737%_ _%g232685232740%_))
                       (_%g232684232737%_ _%g232685232740%_))))
               (_%g232684232737%_ _%g232685232740%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g232683233902%_
                                            _%g231076231138%_))
                                         _%stx231066%_))))))))
                  (_%__kont234129234130%_ (lambda () _%stx231066%_)))
              (let ((_%__match234158234159%_
                     (lambda (_%e231078231106%_
                              _%hd231079231109%_
                              _%tl231080231111%_
                              _%e231081231114%_
                              _%hd231082231117%_
                              _%tl231083231119%_
                              _%e231084231122%_
                              _%hd231085231125%_
                              _%tl231086231127%_
                              _%e231087231130%_
                              _%hd231088231133%_
                              _%tl231089231135%_)
                       (let ((_%g231076231138%_ _%hd231088231133%_)
                             (_%g231077231139%_ _%hd231085231125%_))
                         (if (let ((__tmp235363
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g231077231139%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp235363))
                             (_%__kont234127234128%_
                              _%g231076231138%_
                              _%g231077231139%_)
                             (_%__kont234129234130%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx234125234126%_))
                    (let ((_%e231078231106%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx234125234126%_))))
                      (let ((_%tl231080231111%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e231078231106%_)))
                            (_%hd231079231109%_
                             (let ()
                               (declare (not safe))
                               (##car _%e231078231106%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl231080231111%_))
                            (let ((_%e231081231114%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl231080231111%_))))
                              (let ((_%tl231083231119%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e231081231114%_)))
                                    (_%hd231082231117%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e231081231114%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd231082231117%_))
                                    (let ((_%e231084231122%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd231082231117%_))))
                                      (let ((_%tl231086231127%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e231084231122%_)))
                                            (_%hd231085231125%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e231084231122%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl231086231127%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl231083231119%_))
                                                (let ((_%e231087231130%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl231083231119%_))))
                                                  (let ((_%tl231089231135%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e231087231130%_)))
                                                        (_%hd231088231133%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e231087231130%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl231089231135%_))
                                                        (_%__match234158234159%_
                                                         _%e231078231106%_
                                                         _%hd231079231109%_
                                                         _%tl231080231111%_
                                                         _%e231081231114%_
                                                         _%hd231082231117%_
                                                         _%tl231083231119%_
                                                         _%e231084231122%_
                                                         _%hd231085231125%_
                                                         _%tl231086231127%_
                                                         _%e231087231130%_
                                                         _%hd231088231133%_
                                                         _%tl231089231135%_)
                                                        (_%__kont234129234130%_))))
                                                (_%__kont234129234130%_))
                                            (_%__kont234129234130%_))))
                                    (_%__kont234129234130%_))))
                            (_%__kont234129234130%_))))
                    (_%__kont234129234130%_))))))))
    (define gxc#extract-receiver-begin-annotation%
      (lambda (_%self230918%_ _%stx230919%_)
        (let* ((_%__stx234161234162%_ _%stx230919%_)
               (_%g230922230955%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx234161234162%_)))))
          (let ((_%__kont234163234164%_
                 (lambda (_%g230924231045%_) _%g230924231045%_))
                (_%__kont234165234166%_
                 (lambda (_%g230940230984%_ _%g230941230985%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self230918%_ _%g230940230984%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx234161234162%_))
                (let ((_%e230925231005%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx234161234162%_))))
                  (let ((_%tl230927231010%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e230925231005%_)))
                        (_%hd230926231008%_
                         (let ()
                           (declare (not safe))
                           (##car _%e230925231005%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl230927231010%_))
                        (let ((_%e230928231013%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl230927231010%_))))
                          (let ((_%tl230930231018%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e230928231013%_)))
                                (_%hd230929231016%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e230928231013%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd230929231016%_))
                                (let ((_%e230931231021%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd230929231016%_))))
                                  (let ((_%tl230933231026%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e230931231021%_)))
                                        (_%hd230932231024%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e230931231021%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd230932231024%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@receiver
                                               _%hd230932231024%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl230933231026%_))
                                                (let ((_%e230934231029%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl230933231026%_))))
                                                  (let ((_%tl230936231034%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e230934231029%_)))
                                                        (_%hd230935231032%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e230934231029%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl230936231034%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl230930231018%_))
                                                            (let ((_%e230937231037%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl230930231018%_))))
                      (let ((_%tl230939231042%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e230937231037%_)))
                            (_%hd230938231040%_
                             (let ()
                               (declare (not safe))
                               (##car _%e230937231037%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl230939231042%_))
                            (_%__kont234163234164%_ _%hd230935231032%_)
                            (let ()
                              (declare (not safe))
                              (_%g230922230955%_)))))
                    (let () (declare (not safe)) (_%g230922230955%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl230930231018%_))
                    (let ((_%e230948230976%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl230930231018%_))))
                      (let ((_%tl230950230981%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e230948230976%_)))
                            (_%hd230949230979%_
                             (let ()
                               (declare (not safe))
                               (##car _%e230948230976%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl230950230981%_))
                            (_%__kont234165234166%_
                             _%hd230949230979%_
                             _%hd230929231016%_)
                            (let ()
                              (declare (not safe))
                              (_%g230922230955%_)))))
                    (let () (declare (not safe)) (_%g230922230955%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl230930231018%_))
                                                    (let ((_%e230948230976%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl230930231018%_))))
                                                      (let ((_%tl230950230981%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e230948230976%_)))
                    (_%hd230949230979%_
                     (let () (declare (not safe)) (##car _%e230948230976%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl230950230981%_))
                    (_%__kont234165234166%_
                     _%hd230949230979%_
                     _%hd230929231016%_)
                    (let () (declare (not safe)) (_%g230922230955%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g230922230955%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl230930231018%_))
                                                (let ((_%e230948230976%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl230930231018%_))))
                                                  (let ((_%tl230950230981%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e230948230976%_)))
                                                        (_%hd230949230979%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e230948230976%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl230950230981%_))
                                                        (_%__kont234165234166%_
                                                         _%hd230949230979%_
                                                         _%hd230929231016%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g230922230955%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g230922230955%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl230930231018%_))
                                            (let ((_%e230948230976%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl230930231018%_))))
                                              (let ((_%tl230950230981%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e230948230976%_)))
                                                    (_%hd230949230979%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e230948230976%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl230950230981%_))
                                                    (_%__kont234165234166%_
                                                     _%hd230949230979%_
                                                     _%hd230929231016%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g230922230955%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g230922230955%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl230930231018%_))
                                    (let ((_%e230948230976%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl230930231018%_))))
                                      (let ((_%tl230950230981%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e230948230976%_)))
                                            (_%hd230949230979%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e230948230976%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl230950230981%_))
                                            (_%__kont234165234166%_
                                             _%hd230949230979%_
                                             _%hd230929231016%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g230922230955%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g230922230955%_))))))
                        (let () (declare (not safe)) (_%g230922230955%_)))))
                (let () (declare (not safe)) (_%g230922230955%_)))))))
    (define gxc#extract-receiver-if%
      (lambda (_%self230834%_ _%stx230835%_)
        (let* ((_%g230837230858%_
                (lambda (_%g230838230855%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g230838230855%_))))
               (_%g230836230915%_
                (lambda (_%g230838230861%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g230838230861%_))
                      (let ((_%e230842230863%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g230838230861%_))))
                        (let ((_%hd230843230866%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e230842230863%_)))
                              (_%tl230844230868%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e230842230863%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl230844230868%_))
                              (let ((_%e230845230871%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl230844230868%_))))
                                (let ((_%hd230846230874%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e230845230871%_)))
                                      (_%tl230847230876%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e230845230871%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl230847230876%_))
                                      (let ((_%e230848230879%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl230847230876%_))))
                                        (let ((_%hd230849230882%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e230848230879%_)))
                                              (_%tl230850230884%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e230848230879%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl230850230884%_))
                                              (let ((_%e230851230887%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl230850230884%_))))
                                                (let ((_%hd230852230890%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e230851230887%_)))
                                                      (_%tl230853230892%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e230851230887%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl230853230892%_))
                                                      ((lambda (_%g230839230895%_
                                                                _%g230840230896%_
                                                                _%g230841230897%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self230834%_
                                                            _%g230840230896%_)))
                                                       _%hd230852230890%_
                                                       _%hd230849230882%_
                                                       _%hd230846230874%_)
                                                      (_%g230837230858%_
                                                       _%g230838230861%_))))
                                              (_%g230837230858%_
                                               _%g230838230861%_))))
                                      (_%g230837230858%_ _%g230838230861%_))))
                              (_%g230837230858%_ _%g230838230861%_))))
                      (_%g230837230858%_ _%g230838230861%_)))))
          (_%g230836230915%_ _%stx230835%_))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self229799%_ _%stx229800%_)
        (let* ((_%__stx234227234228%_ _%stx229800%_)
               (_%g229808230030%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx234227234228%_)))))
          (let ((_%__kont234229234230%_
                 (lambda (_%g229810230783%_
                          _%g229811230784%_
                          _%g229812230785%_
                          _%g229813230786%_)
                   (let ((__tmp235365
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self229799%_ 'methods)))
                         (__tmp235364
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g229811230784%_))))
                     (declare (not safe))
                     (hash-put! __tmp235365 __tmp235364 '#t))
                   (for-each
                    (lambda (_%g230819230821%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self229799%_ _%g230819230821%_)))
                    (let ((__tmp235366
                           (lambda (_%g230823230826%_ _%g230824230828%_)
                             (cons _%g230823230826%_ _%g230824230828%_))))
                      (declare (not safe))
                      (foldr__0 __tmp235366 '() _%g229810230783%_)))))
                (_%__kont234233234234%_
                 (lambda (_%g229853230620%_
                          _%g229854230621%_
                          _%g229855230622%_
                          _%g229856230623%_
                          _%g229857230624%_)
                   (let ((__tmp235368
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self229799%_ 'methods)))
                         (__tmp235367
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g229854230621%_))))
                     (declare (not safe))
                     (hash-put! __tmp235368 __tmp235367 '#t))
                   (for-each
                    (lambda (_%g230664230666%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self229799%_ _%g230664230666%_)))
                    (let ((__tmp235369
                           (lambda (_%g230668230671%_ _%g230669230673%_)
                             (cons _%g230668230671%_ _%g230669230673%_))))
                      (declare (not safe))
                      (foldr__0 __tmp235369 '() _%g229853230620%_)))))
                (_%__kont234237234238%_
                 (lambda (_%g229906230455%_
                          _%g229907230456%_
                          _%g229908230457%_)
                   (let ((__tmp235371
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self229799%_ 'slots)))
                         (__tmp235370
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g229906230455%_))))
                     (declare (not safe))
                     (hash-put! __tmp235371 __tmp235370 '#t))))
                (_%__kont234239234240%_
                 (lambda (_%g229939230332%_
                          _%g229940230333%_
                          _%g229941230334%_
                          _%g229942230335%_)
                   (let ((__tmp235373
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self229799%_ 'slots)))
                         (__tmp235372
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g229940230333%_))))
                     (declare (not safe))
                     (hash-put! __tmp235373 __tmp235372 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self229799%_ _%g229939230332%_))))
                (_%__kont234241234242%_
                 (lambda (_%g229976230206%_ _%g229977230207%_)
                   (let* ((_%accessor230229%_
                           (let ((__tmp235374
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%g229977230207%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp235374)))
                          (_%klass230231%_
                           (let ((__tmp235375
                                  (##structure-ref
                                   _%accessor230229%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx229800%_
                              __tmp235375)))
                          (_%slot230233%_
                           (##structure-ref
                            _%accessor230229%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (if (##structure-ref
                              _%accessor230229%_
                              '4
                              gxc#!accessor::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass230231%_
                                    _%slot230233%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass230231%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp235377
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self229799%_ 'slots)))
                               (__tmp235376
                                (##structure-ref
                                 _%accessor230229%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp235377 __tmp235376 '#t))))))
                (_%__kont234243234244%_
                 (lambda (_%g229999230106%_
                          _%g230000230107%_
                          _%g230001230108%_)
                   (let* ((_%mutator230135%_
                           (let ((__tmp235378
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%g230001230108%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp235378)))
                          (_%klass230137%_
                           (let ((__tmp235379
                                  (##structure-ref
                                   _%mutator230135%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx229800%_
                              __tmp235379)))
                          (_%slot230139%_
                           (##structure-ref
                            _%mutator230135%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (if (##structure-ref
                              _%mutator230135%_
                              '4
                              gxc#!mutator::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass230137%_
                                    _%slot230139%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass230137%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp235380
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self229799%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp235380 _%slot230139%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self229799%_ _%g229999230106%_)))))
                (_%__kont234245234246%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self229799%_ _%stx229800%_)))))
            (let* ((_%__match234726234727%_
                    (lambda (_%e230002230042%_
                             _%hd230003230045%_
                             _%tl230004230047%_
                             _%e230005230050%_
                             _%hd230006230053%_
                             _%tl230007230055%_
                             _%e230008230058%_
                             _%hd230009230061%_
                             _%tl230010230063%_
                             _%e230011230066%_
                             _%hd230012230069%_
                             _%tl230013230071%_
                             _%e230014230074%_
                             _%hd230015230077%_
                             _%tl230016230079%_
                             _%e230017230082%_
                             _%hd230018230085%_
                             _%tl230019230087%_
                             _%e230020230090%_
                             _%hd230021230093%_
                             _%tl230022230095%_
                             _%e230023230098%_
                             _%hd230024230101%_
                             _%tl230025230103%_)
                      (let ((_%g229999230106%_ _%hd230024230101%_)
                            (_%g230000230107%_ _%hd230021230093%_)
                            (_%g230001230108%_ _%hd230012230069%_))
                        (if (and (let ((__tmp235381
                                        (let ((__tmp235382
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%g230001230108%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp235382))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp235381
                                    'gxc#!mutator::t))
                                 (let ((__tmp235383
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self229799%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g230000230107%_
                                    __tmp235383)))
                            (_%__kont234243234244%_
                             _%g229999230106%_
                             _%g230000230107%_
                             _%g230001230108%_)
                            (_%__kont234245234246%_)))))
                   (_%__match234724234725%_
                    (lambda (_%e230002230042%_
                             _%hd230003230045%_
                             _%tl230004230047%_
                             _%e230005230050%_
                             _%hd230006230053%_
                             _%tl230007230055%_
                             _%e230008230058%_
                             _%hd230009230061%_
                             _%tl230010230063%_
                             _%e230011230066%_
                             _%hd230012230069%_
                             _%tl230013230071%_
                             _%e230014230074%_
                             _%hd230015230077%_
                             _%tl230016230079%_
                             _%e230017230082%_
                             _%hd230018230085%_
                             _%tl230019230087%_
                             _%e230020230090%_
                             _%hd230021230093%_
                             _%tl230022230095%_
                             _%e230023230098%_
                             _%hd230024230101%_
                             _%tl230025230103%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl230025230103%_))
                          (_%__match234726234727%_
                           _%e230002230042%_
                           _%hd230003230045%_
                           _%tl230004230047%_
                           _%e230005230050%_
                           _%hd230006230053%_
                           _%tl230007230055%_
                           _%e230008230058%_
                           _%hd230009230061%_
                           _%tl230010230063%_
                           _%e230011230066%_
                           _%hd230012230069%_
                           _%tl230013230071%_
                           _%e230014230074%_
                           _%hd230015230077%_
                           _%tl230016230079%_
                           _%e230017230082%_
                           _%hd230018230085%_
                           _%tl230019230087%_
                           _%e230020230090%_
                           _%hd230021230093%_
                           _%tl230022230095%_
                           _%e230023230098%_
                           _%hd230024230101%_
                           _%tl230025230103%_)
                          (_%__kont234245234246%_))))
                   (_%__match234718234719%_
                    (lambda (_%e230002230042%_
                             _%hd230003230045%_
                             _%tl230004230047%_
                             _%e230005230050%_
                             _%hd230006230053%_
                             _%tl230007230055%_
                             _%e230008230058%_
                             _%hd230009230061%_
                             _%tl230010230063%_
                             _%e230011230066%_
                             _%hd230012230069%_
                             _%tl230013230071%_
                             _%e230014230074%_
                             _%hd230015230077%_
                             _%tl230016230079%_
                             _%e230017230082%_
                             _%hd230018230085%_
                             _%tl230019230087%_
                             _%e230020230090%_
                             _%hd230021230093%_
                             _%tl230022230095%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl230016230079%_))
                          (let ((_%e230023230098%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl230016230079%_))))
                            (let ((_%tl230025230103%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e230023230098%_)))
                                  (_%hd230024230101%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e230023230098%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl230025230103%_))
                                  (_%__match234726234727%_
                                   _%e230002230042%_
                                   _%hd230003230045%_
                                   _%tl230004230047%_
                                   _%e230005230050%_
                                   _%hd230006230053%_
                                   _%tl230007230055%_
                                   _%e230008230058%_
                                   _%hd230009230061%_
                                   _%tl230010230063%_
                                   _%e230011230066%_
                                   _%hd230012230069%_
                                   _%tl230013230071%_
                                   _%e230014230074%_
                                   _%hd230015230077%_
                                   _%tl230016230079%_
                                   _%e230017230082%_
                                   _%hd230018230085%_
                                   _%tl230019230087%_
                                   _%e230020230090%_
                                   _%hd230021230093%_
                                   _%tl230022230095%_
                                   _%e230023230098%_
                                   _%hd230024230101%_
                                   _%tl230025230103%_)
                                  (_%__kont234245234246%_))))
                          (_%__kont234245234246%_))))
                   (_%__match234664234665%_
                    (lambda (_%e229978230150%_
                             _%hd229979230153%_
                             _%tl229980230155%_
                             _%e229981230158%_
                             _%hd229982230161%_
                             _%tl229983230163%_
                             _%e229984230166%_
                             _%hd229985230169%_
                             _%tl229986230171%_
                             _%e229987230174%_
                             _%hd229988230177%_
                             _%tl229989230179%_
                             _%e229990230182%_
                             _%hd229991230185%_
                             _%tl229992230187%_
                             _%e229993230190%_
                             _%hd229994230193%_
                             _%tl229995230195%_
                             _%e229996230198%_
                             _%hd229997230201%_
                             _%tl229998230203%_)
                      (let ((_%g229976230206%_ _%hd229997230201%_)
                            (_%g229977230207%_ _%hd229988230177%_))
                        (if (and (let ((__tmp235384
                                        (let ((__tmp235385
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%g229977230207%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp235385))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp235384
                                    'gxc#!accessor::t))
                                 (let ((__tmp235386
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self229799%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g229976230206%_
                                    __tmp235386)))
                            (_%__kont234241234242%_
                             _%g229976230206%_
                             _%g229977230207%_)
                            (_%__kont234245234246%_)))))
                   (_%__match234662234663%_
                    (lambda (_%e229978230150%_
                             _%hd229979230153%_
                             _%tl229980230155%_
                             _%e229981230158%_
                             _%hd229982230161%_
                             _%tl229983230163%_
                             _%e229984230166%_
                             _%hd229985230169%_
                             _%tl229986230171%_
                             _%e229987230174%_
                             _%hd229988230177%_
                             _%tl229989230179%_
                             _%e229990230182%_
                             _%hd229991230185%_
                             _%tl229992230187%_
                             _%e229993230190%_
                             _%hd229994230193%_
                             _%tl229995230195%_
                             _%e229996230198%_
                             _%hd229997230201%_
                             _%tl229998230203%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl229992230187%_))
                          (_%__match234664234665%_
                           _%e229978230150%_
                           _%hd229979230153%_
                           _%tl229980230155%_
                           _%e229981230158%_
                           _%hd229982230161%_
                           _%tl229983230163%_
                           _%e229984230166%_
                           _%hd229985230169%_
                           _%tl229986230171%_
                           _%e229987230174%_
                           _%hd229988230177%_
                           _%tl229989230179%_
                           _%e229990230182%_
                           _%hd229991230185%_
                           _%tl229992230187%_
                           _%e229993230190%_
                           _%hd229994230193%_
                           _%tl229995230195%_
                           _%e229996230198%_
                           _%hd229997230201%_
                           _%tl229998230203%_)
                          (_%__match234718234719%_
                           _%e229978230150%_
                           _%hd229979230153%_
                           _%tl229980230155%_
                           _%e229981230158%_
                           _%hd229982230161%_
                           _%tl229983230163%_
                           _%e229984230166%_
                           _%hd229985230169%_
                           _%tl229986230171%_
                           _%e229987230174%_
                           _%hd229988230177%_
                           _%tl229989230179%_
                           _%e229990230182%_
                           _%hd229991230185%_
                           _%tl229992230187%_
                           _%e229993230190%_
                           _%hd229994230193%_
                           _%tl229995230195%_
                           _%e229996230198%_
                           _%hd229997230201%_
                           _%tl229998230203%_))))
                   (_%__match234608234609%_
                    (lambda (_%e229943230244%_
                             _%hd229944230247%_
                             _%tl229945230249%_
                             _%e229946230252%_
                             _%hd229947230255%_
                             _%tl229948230257%_
                             _%e229949230260%_
                             _%hd229950230263%_
                             _%tl229951230265%_
                             _%e229952230268%_
                             _%hd229953230271%_
                             _%tl229954230273%_
                             _%e229955230276%_
                             _%hd229956230279%_
                             _%tl229957230281%_
                             _%e229958230284%_
                             _%hd229959230287%_
                             _%tl229960230289%_
                             _%e229961230292%_
                             _%hd229962230295%_
                             _%tl229963230297%_
                             _%e229964230300%_
                             _%hd229965230303%_
                             _%tl229966230305%_
                             _%e229967230308%_
                             _%hd229968230311%_
                             _%tl229969230313%_
                             _%e229970230316%_
                             _%hd229971230319%_
                             _%tl229972230321%_
                             _%e229973230324%_
                             _%hd229974230327%_
                             _%tl229975230329%_)
                      (let ((_%g229939230332%_ _%hd229974230327%_)
                            (_%g229940230333%_ _%hd229971230319%_)
                            (_%g229941230334%_ _%hd229962230295%_)
                            (_%g229942230335%_ _%hd229953230271%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g229942230335%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g229942230335%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp235387
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self229799%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g229941230334%_
                                    __tmp235387)))
                            (_%__kont234239234240%_
                             _%g229939230332%_
                             _%g229940230333%_
                             _%g229941230334%_
                             _%g229942230335%_)
                            (_%__kont234245234246%_)))))
                   (_%__match234600234601%_
                    (lambda (_%e229943230244%_
                             _%hd229944230247%_
                             _%tl229945230249%_
                             _%e229946230252%_
                             _%hd229947230255%_
                             _%tl229948230257%_
                             _%e229949230260%_
                             _%hd229950230263%_
                             _%tl229951230265%_
                             _%e229952230268%_
                             _%hd229953230271%_
                             _%tl229954230273%_
                             _%e229955230276%_
                             _%hd229956230279%_
                             _%tl229957230281%_
                             _%e229958230284%_
                             _%hd229959230287%_
                             _%tl229960230289%_
                             _%e229961230292%_
                             _%hd229962230295%_
                             _%tl229963230297%_
                             _%e229964230300%_
                             _%hd229965230303%_
                             _%tl229966230305%_
                             _%e229967230308%_
                             _%hd229968230311%_
                             _%tl229969230313%_
                             _%e229970230316%_
                             _%hd229971230319%_
                             _%tl229972230321%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl229966230305%_))
                          (let ((_%e229973230324%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl229966230305%_))))
                            (let ((_%tl229975230329%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e229973230324%_)))
                                  (_%hd229974230327%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e229973230324%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl229975230329%_))
                                  (_%__match234608234609%_
                                   _%e229943230244%_
                                   _%hd229944230247%_
                                   _%tl229945230249%_
                                   _%e229946230252%_
                                   _%hd229947230255%_
                                   _%tl229948230257%_
                                   _%e229949230260%_
                                   _%hd229950230263%_
                                   _%tl229951230265%_
                                   _%e229952230268%_
                                   _%hd229953230271%_
                                   _%tl229954230273%_
                                   _%e229955230276%_
                                   _%hd229956230279%_
                                   _%tl229957230281%_
                                   _%e229958230284%_
                                   _%hd229959230287%_
                                   _%tl229960230289%_
                                   _%e229961230292%_
                                   _%hd229962230295%_
                                   _%tl229963230297%_
                                   _%e229964230300%_
                                   _%hd229965230303%_
                                   _%tl229966230305%_
                                   _%e229967230308%_
                                   _%hd229968230311%_
                                   _%tl229969230313%_
                                   _%e229970230316%_
                                   _%hd229971230319%_
                                   _%tl229972230321%_
                                   _%e229973230324%_
                                   _%hd229974230327%_
                                   _%tl229975230329%_)
                                  (_%__kont234245234246%_))))
                          (_%__match234724234725%_
                           _%e229943230244%_
                           _%hd229944230247%_
                           _%tl229945230249%_
                           _%e229946230252%_
                           _%hd229947230255%_
                           _%tl229948230257%_
                           _%e229949230260%_
                           _%hd229950230263%_
                           _%tl229951230265%_
                           _%e229952230268%_
                           _%hd229953230271%_
                           _%tl229954230273%_
                           _%e229955230276%_
                           _%hd229956230279%_
                           _%tl229957230281%_
                           _%e229958230284%_
                           _%hd229959230287%_
                           _%tl229960230289%_
                           _%e229961230292%_
                           _%hd229962230295%_
                           _%tl229963230297%_
                           _%e229964230300%_
                           _%hd229965230303%_
                           _%tl229966230305%_))))
                   (_%__match234522234523%_
                    (lambda (_%e229909230375%_
                             _%hd229910230378%_
                             _%tl229911230380%_
                             _%e229912230383%_
                             _%hd229913230386%_
                             _%tl229914230388%_
                             _%e229915230391%_
                             _%hd229916230394%_
                             _%tl229917230396%_
                             _%e229918230399%_
                             _%hd229919230402%_
                             _%tl229920230404%_
                             _%e229921230407%_
                             _%hd229922230410%_
                             _%tl229923230412%_
                             _%e229924230415%_
                             _%hd229925230418%_
                             _%tl229926230420%_
                             _%e229927230423%_
                             _%hd229928230426%_
                             _%tl229929230428%_
                             _%e229930230431%_
                             _%hd229931230434%_
                             _%tl229932230436%_
                             _%e229933230439%_
                             _%hd229934230442%_
                             _%tl229935230444%_
                             _%e229936230447%_
                             _%hd229937230450%_
                             _%tl229938230452%_)
                      (let ((_%g229906230455%_ _%hd229937230450%_)
                            (_%g229907230456%_ _%hd229928230426%_)
                            (_%g229908230457%_ _%hd229919230402%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g229908230457%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g229908230457%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp235388
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self229799%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g229907230456%_
                                    __tmp235388)))
                            (_%__kont234237234238%_
                             _%g229906230455%_
                             _%g229907230456%_
                             _%g229908230457%_)
                            (_%__match234726234727%_
                             _%e229909230375%_
                             _%hd229910230378%_
                             _%tl229911230380%_
                             _%e229912230383%_
                             _%hd229913230386%_
                             _%tl229914230388%_
                             _%e229915230391%_
                             _%hd229916230394%_
                             _%tl229917230396%_
                             _%e229918230399%_
                             _%hd229919230402%_
                             _%tl229920230404%_
                             _%e229921230407%_
                             _%hd229922230410%_
                             _%tl229923230412%_
                             _%e229924230415%_
                             _%hd229925230418%_
                             _%tl229926230420%_
                             _%e229927230423%_
                             _%hd229928230426%_
                             _%tl229929230428%_
                             _%e229930230431%_
                             _%hd229931230434%_
                             _%tl229932230436%_)))))
                   (_%__match234520234521%_
                    (lambda (_%e229909230375%_
                             _%hd229910230378%_
                             _%tl229911230380%_
                             _%e229912230383%_
                             _%hd229913230386%_
                             _%tl229914230388%_
                             _%e229915230391%_
                             _%hd229916230394%_
                             _%tl229917230396%_
                             _%e229918230399%_
                             _%hd229919230402%_
                             _%tl229920230404%_
                             _%e229921230407%_
                             _%hd229922230410%_
                             _%tl229923230412%_
                             _%e229924230415%_
                             _%hd229925230418%_
                             _%tl229926230420%_
                             _%e229927230423%_
                             _%hd229928230426%_
                             _%tl229929230428%_
                             _%e229930230431%_
                             _%hd229931230434%_
                             _%tl229932230436%_
                             _%e229933230439%_
                             _%hd229934230442%_
                             _%tl229935230444%_
                             _%e229936230447%_
                             _%hd229937230450%_
                             _%tl229938230452%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl229932230436%_))
                          (_%__match234522234523%_
                           _%e229909230375%_
                           _%hd229910230378%_
                           _%tl229911230380%_
                           _%e229912230383%_
                           _%hd229913230386%_
                           _%tl229914230388%_
                           _%e229915230391%_
                           _%hd229916230394%_
                           _%tl229917230396%_
                           _%e229918230399%_
                           _%hd229919230402%_
                           _%tl229920230404%_
                           _%e229921230407%_
                           _%hd229922230410%_
                           _%tl229923230412%_
                           _%e229924230415%_
                           _%hd229925230418%_
                           _%tl229926230420%_
                           _%e229927230423%_
                           _%hd229928230426%_
                           _%tl229929230428%_
                           _%e229930230431%_
                           _%hd229931230434%_
                           _%tl229932230436%_
                           _%e229933230439%_
                           _%hd229934230442%_
                           _%tl229935230444%_
                           _%e229936230447%_
                           _%hd229937230450%_
                           _%tl229938230452%_)
                          (_%__match234600234601%_
                           _%e229909230375%_
                           _%hd229910230378%_
                           _%tl229911230380%_
                           _%e229912230383%_
                           _%hd229913230386%_
                           _%tl229914230388%_
                           _%e229915230391%_
                           _%hd229916230394%_
                           _%tl229917230396%_
                           _%e229918230399%_
                           _%hd229919230402%_
                           _%tl229920230404%_
                           _%e229921230407%_
                           _%hd229922230410%_
                           _%tl229923230412%_
                           _%e229924230415%_
                           _%hd229925230418%_
                           _%tl229926230420%_
                           _%e229927230423%_
                           _%hd229928230426%_
                           _%tl229929230428%_
                           _%e229930230431%_
                           _%hd229931230434%_
                           _%tl229932230436%_
                           _%e229933230439%_
                           _%hd229934230442%_
                           _%tl229935230444%_
                           _%e229936230447%_
                           _%hd229937230450%_
                           _%tl229938230452%_))))
                   (_%__match234510234511%_
                    (lambda (_%e229909230375%_
                             _%hd229910230378%_
                             _%tl229911230380%_
                             _%e229912230383%_
                             _%hd229913230386%_
                             _%tl229914230388%_
                             _%e229915230391%_
                             _%hd229916230394%_
                             _%tl229917230396%_
                             _%e229918230399%_
                             _%hd229919230402%_
                             _%tl229920230404%_
                             _%e229921230407%_
                             _%hd229922230410%_
                             _%tl229923230412%_
                             _%e229924230415%_
                             _%hd229925230418%_
                             _%tl229926230420%_
                             _%e229927230423%_
                             _%hd229928230426%_
                             _%tl229929230428%_
                             _%e229930230431%_
                             _%hd229931230434%_
                             _%tl229932230436%_
                             _%e229933230439%_
                             _%hd229934230442%_
                             _%tl229935230444%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd229934230442%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl229935230444%_))
                              (let ((_%e229936230447%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl229935230444%_))))
                                (let ((_%tl229938230452%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e229936230447%_)))
                                      (_%hd229937230450%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e229936230447%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl229938230452%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl229932230436%_))
                                          (_%__match234522234523%_
                                           _%e229909230375%_
                                           _%hd229910230378%_
                                           _%tl229911230380%_
                                           _%e229912230383%_
                                           _%hd229913230386%_
                                           _%tl229914230388%_
                                           _%e229915230391%_
                                           _%hd229916230394%_
                                           _%tl229917230396%_
                                           _%e229918230399%_
                                           _%hd229919230402%_
                                           _%tl229920230404%_
                                           _%e229921230407%_
                                           _%hd229922230410%_
                                           _%tl229923230412%_
                                           _%e229924230415%_
                                           _%hd229925230418%_
                                           _%tl229926230420%_
                                           _%e229927230423%_
                                           _%hd229928230426%_
                                           _%tl229929230428%_
                                           _%e229930230431%_
                                           _%hd229931230434%_
                                           _%tl229932230436%_
                                           _%e229933230439%_
                                           _%hd229934230442%_
                                           _%tl229935230444%_
                                           _%e229936230447%_
                                           _%hd229937230450%_
                                           _%tl229938230452%_)
                                          (_%__match234600234601%_
                                           _%e229909230375%_
                                           _%hd229910230378%_
                                           _%tl229911230380%_
                                           _%e229912230383%_
                                           _%hd229913230386%_
                                           _%tl229914230388%_
                                           _%e229915230391%_
                                           _%hd229916230394%_
                                           _%tl229917230396%_
                                           _%e229918230399%_
                                           _%hd229919230402%_
                                           _%tl229920230404%_
                                           _%e229921230407%_
                                           _%hd229922230410%_
                                           _%tl229923230412%_
                                           _%e229924230415%_
                                           _%hd229925230418%_
                                           _%tl229926230420%_
                                           _%e229927230423%_
                                           _%hd229928230426%_
                                           _%tl229929230428%_
                                           _%e229930230431%_
                                           _%hd229931230434%_
                                           _%tl229932230436%_
                                           _%e229933230439%_
                                           _%hd229934230442%_
                                           _%tl229935230444%_
                                           _%e229936230447%_
                                           _%hd229937230450%_
                                           _%tl229938230452%_))
                                      (_%__match234724234725%_
                                       _%e229909230375%_
                                       _%hd229910230378%_
                                       _%tl229911230380%_
                                       _%e229912230383%_
                                       _%hd229913230386%_
                                       _%tl229914230388%_
                                       _%e229915230391%_
                                       _%hd229916230394%_
                                       _%tl229917230396%_
                                       _%e229918230399%_
                                       _%hd229919230402%_
                                       _%tl229920230404%_
                                       _%e229921230407%_
                                       _%hd229922230410%_
                                       _%tl229923230412%_
                                       _%e229924230415%_
                                       _%hd229925230418%_
                                       _%tl229926230420%_
                                       _%e229927230423%_
                                       _%hd229928230426%_
                                       _%tl229929230428%_
                                       _%e229930230431%_
                                       _%hd229931230434%_
                                       _%tl229932230436%_))))
                              (_%__match234724234725%_
                               _%e229909230375%_
                               _%hd229910230378%_
                               _%tl229911230380%_
                               _%e229912230383%_
                               _%hd229913230386%_
                               _%tl229914230388%_
                               _%e229915230391%_
                               _%hd229916230394%_
                               _%tl229917230396%_
                               _%e229918230399%_
                               _%hd229919230402%_
                               _%tl229920230404%_
                               _%e229921230407%_
                               _%hd229922230410%_
                               _%tl229923230412%_
                               _%e229924230415%_
                               _%hd229925230418%_
                               _%tl229926230420%_
                               _%e229927230423%_
                               _%hd229928230426%_
                               _%tl229929230428%_
                               _%e229930230431%_
                               _%hd229931230434%_
                               _%tl229932230436%_))
                          (_%__match234724234725%_
                           _%e229909230375%_
                           _%hd229910230378%_
                           _%tl229911230380%_
                           _%e229912230383%_
                           _%hd229913230386%_
                           _%tl229914230388%_
                           _%e229915230391%_
                           _%hd229916230394%_
                           _%tl229917230396%_
                           _%e229918230399%_
                           _%hd229919230402%_
                           _%tl229920230404%_
                           _%e229921230407%_
                           _%hd229922230410%_
                           _%tl229923230412%_
                           _%e229924230415%_
                           _%hd229925230418%_
                           _%tl229926230420%_
                           _%e229927230423%_
                           _%hd229928230426%_
                           _%tl229929230428%_
                           _%e229930230431%_
                           _%hd229931230434%_
                           _%tl229932230436%_))))
                   (_%__match234442234443%_
                    (lambda (_%e229858230494%_
                             _%hd229859230497%_
                             _%tl229860230499%_
                             _%e229861230502%_
                             _%hd229862230505%_
                             _%tl229863230507%_
                             _%e229864230510%_
                             _%hd229865230513%_
                             _%tl229866230515%_
                             _%e229867230518%_
                             _%hd229868230521%_
                             _%tl229869230523%_
                             _%e229870230526%_
                             _%hd229871230529%_
                             _%tl229872230531%_
                             _%e229873230534%_
                             _%hd229874230537%_
                             _%tl229875230539%_
                             _%e229876230542%_
                             _%hd229877230545%_
                             _%tl229878230547%_
                             _%e229879230550%_
                             _%hd229880230553%_
                             _%tl229881230555%_
                             _%e229882230558%_
                             _%hd229883230561%_
                             _%tl229884230563%_
                             _%e229885230566%_
                             _%hd229886230569%_
                             _%tl229887230571%_
                             _%e229888230574%_
                             _%hd229889230577%_
                             _%tl229890230579%_
                             _%e229891230582%_
                             _%hd229892230585%_
                             _%tl229893230587%_
                             _%e229894230590%_
                             _%hd229895230593%_
                             _%tl229896230595%_
                             _%__splice234235234236%_
                             _%target229897230598%_
                             _%tl229899230600%_)
                      (letrec ((_%loop229900230603%_
                                (lambda (_%hd229898230606%_
                                         _%args229904230608%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd229898230606%_))
                                      (let ((_%e229901230610%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd229898230606%_))))
                                        (let ((_%lp-tl229903230615%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e229901230610%_)))
                                              (_%lp-hd229902230613%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e229901230610%_))))
                                          (_%loop229900230603%_
                                           _%lp-tl229903230615%_
                                           (cons _%lp-hd229902230613%_
                                                 _%args229904230608%_))))
                                      (let ((_%args229905230618%_
                                             (reverse _%args229904230608%_)))
                                        (let ((_%g229853230620%_
                                               _%args229905230618%_)
                                              (_%g229854230621%_
                                               _%hd229895230593%_)
                                              (_%g229855230622%_
                                               _%hd229886230569%_)
                                              (_%g229856230623%_
                                               _%hd229877230545%_)
                                              (_%g229857230624%_
                                               _%hd229868230521%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g229857230624%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g229856230623%_
                                                      'call-method))
                                                   (let ((__tmp235389
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self229799%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g229855230622%_
                                                      __tmp235389)))
                                              (_%__kont234233234234%_
                                               _%g229853230620%_
                                               _%g229854230621%_
                                               _%g229855230622%_
                                               _%g229856230623%_
                                               _%g229857230624%_)
                                              (_%__kont234245234246%_))))))))
                        (_%loop229900230603%_ _%target229897230598%_ '()))))
                   (_%__match234400234401%_
                    (lambda (_%e229858230494%_
                             _%hd229859230497%_
                             _%tl229860230499%_
                             _%e229861230502%_
                             _%hd229862230505%_
                             _%tl229863230507%_
                             _%e229864230510%_
                             _%hd229865230513%_
                             _%tl229866230515%_
                             _%e229867230518%_
                             _%hd229868230521%_
                             _%tl229869230523%_
                             _%e229870230526%_
                             _%hd229871230529%_
                             _%tl229872230531%_
                             _%e229873230534%_
                             _%hd229874230537%_
                             _%tl229875230539%_
                             _%e229876230542%_
                             _%hd229877230545%_
                             _%tl229878230547%_
                             _%e229879230550%_
                             _%hd229880230553%_
                             _%tl229881230555%_
                             _%e229882230558%_
                             _%hd229883230561%_
                             _%tl229884230563%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd229883230561%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl229884230563%_))
                              (let ((_%e229885230566%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl229884230563%_))))
                                (let ((_%tl229887230571%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e229885230566%_)))
                                      (_%hd229886230569%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e229885230566%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl229887230571%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl229881230555%_))
                                          (let ((_%e229888230574%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl229881230555%_))))
                                            (let ((_%tl229890230579%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e229888230574%_)))
                                                  (_%hd229889230577%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e229888230574%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd229889230577%_))
                                                  (let ((_%e229891230582%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd229889230577%_))))
                                                    (let ((_%tl229893230587%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e229891230582%_)))
                                                          (_%hd229892230585%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e229891230582%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd229892230585%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd229892230585%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl229893230587%_))
                          (let ((_%e229894230590%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl229893230587%_))))
                            (let ((_%tl229896230595%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e229894230590%_)))
                                  (_%hd229895230593%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e229894230590%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl229896230595%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl229890230579%_))
                                      (let ((_%__splice234235234236%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl229890230579%_
                                                '0))))
                                        (let ((_%tl229899230600%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice234235234236%_
                                                  '1)))
                                              (_%target229897230598%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice234235234236%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl229899230600%_))
                                              (_%__match234442234443%_
                                               _%e229858230494%_
                                               _%hd229859230497%_
                                               _%tl229860230499%_
                                               _%e229861230502%_
                                               _%hd229862230505%_
                                               _%tl229863230507%_
                                               _%e229864230510%_
                                               _%hd229865230513%_
                                               _%tl229866230515%_
                                               _%e229867230518%_
                                               _%hd229868230521%_
                                               _%tl229869230523%_
                                               _%e229870230526%_
                                               _%hd229871230529%_
                                               _%tl229872230531%_
                                               _%e229873230534%_
                                               _%hd229874230537%_
                                               _%tl229875230539%_
                                               _%e229876230542%_
                                               _%hd229877230545%_
                                               _%tl229878230547%_
                                               _%e229879230550%_
                                               _%hd229880230553%_
                                               _%tl229881230555%_
                                               _%e229882230558%_
                                               _%hd229883230561%_
                                               _%tl229884230563%_
                                               _%e229885230566%_
                                               _%hd229886230569%_
                                               _%tl229887230571%_
                                               _%e229888230574%_
                                               _%hd229889230577%_
                                               _%tl229890230579%_
                                               _%e229891230582%_
                                               _%hd229892230585%_
                                               _%tl229893230587%_
                                               _%e229894230590%_
                                               _%hd229895230593%_
                                               _%tl229896230595%_
                                               _%__splice234235234236%_
                                               _%target229897230598%_
                                               _%tl229899230600%_)
                                              (_%__kont234245234246%_))))
                                      (_%__kont234245234246%_))
                                  (_%__kont234245234246%_))))
                          (_%__kont234245234246%_))
                      (_%__kont234245234246%_))
                  (_%__kont234245234246%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont234245234246%_))))
                                          (_%__match234724234725%_
                                           _%e229858230494%_
                                           _%hd229859230497%_
                                           _%tl229860230499%_
                                           _%e229861230502%_
                                           _%hd229862230505%_
                                           _%tl229863230507%_
                                           _%e229864230510%_
                                           _%hd229865230513%_
                                           _%tl229866230515%_
                                           _%e229867230518%_
                                           _%hd229868230521%_
                                           _%tl229869230523%_
                                           _%e229870230526%_
                                           _%hd229871230529%_
                                           _%tl229872230531%_
                                           _%e229873230534%_
                                           _%hd229874230537%_
                                           _%tl229875230539%_
                                           _%e229876230542%_
                                           _%hd229877230545%_
                                           _%tl229878230547%_
                                           _%e229879230550%_
                                           _%hd229880230553%_
                                           _%tl229881230555%_))
                                      (_%__match234724234725%_
                                       _%e229858230494%_
                                       _%hd229859230497%_
                                       _%tl229860230499%_
                                       _%e229861230502%_
                                       _%hd229862230505%_
                                       _%tl229863230507%_
                                       _%e229864230510%_
                                       _%hd229865230513%_
                                       _%tl229866230515%_
                                       _%e229867230518%_
                                       _%hd229868230521%_
                                       _%tl229869230523%_
                                       _%e229870230526%_
                                       _%hd229871230529%_
                                       _%tl229872230531%_
                                       _%e229873230534%_
                                       _%hd229874230537%_
                                       _%tl229875230539%_
                                       _%e229876230542%_
                                       _%hd229877230545%_
                                       _%tl229878230547%_
                                       _%e229879230550%_
                                       _%hd229880230553%_
                                       _%tl229881230555%_))))
                              (_%__match234724234725%_
                               _%e229858230494%_
                               _%hd229859230497%_
                               _%tl229860230499%_
                               _%e229861230502%_
                               _%hd229862230505%_
                               _%tl229863230507%_
                               _%e229864230510%_
                               _%hd229865230513%_
                               _%tl229866230515%_
                               _%e229867230518%_
                               _%hd229868230521%_
                               _%tl229869230523%_
                               _%e229870230526%_
                               _%hd229871230529%_
                               _%tl229872230531%_
                               _%e229873230534%_
                               _%hd229874230537%_
                               _%tl229875230539%_
                               _%e229876230542%_
                               _%hd229877230545%_
                               _%tl229878230547%_
                               _%e229879230550%_
                               _%hd229880230553%_
                               _%tl229881230555%_))
                          (_%__match234510234511%_
                           _%e229858230494%_
                           _%hd229859230497%_
                           _%tl229860230499%_
                           _%e229861230502%_
                           _%hd229862230505%_
                           _%tl229863230507%_
                           _%e229864230510%_
                           _%hd229865230513%_
                           _%tl229866230515%_
                           _%e229867230518%_
                           _%hd229868230521%_
                           _%tl229869230523%_
                           _%e229870230526%_
                           _%hd229871230529%_
                           _%tl229872230531%_
                           _%e229873230534%_
                           _%hd229874230537%_
                           _%tl229875230539%_
                           _%e229876230542%_
                           _%hd229877230545%_
                           _%tl229878230547%_
                           _%e229879230550%_
                           _%hd229880230553%_
                           _%tl229881230555%_
                           _%e229882230558%_
                           _%hd229883230561%_
                           _%tl229884230563%_))))
                   (_%__match234332234333%_
                    (lambda (_%e229814230681%_
                             _%hd229815230684%_
                             _%tl229816230686%_
                             _%e229817230689%_
                             _%hd229818230692%_
                             _%tl229819230694%_
                             _%e229820230697%_
                             _%hd229821230700%_
                             _%tl229822230702%_
                             _%e229823230705%_
                             _%hd229824230708%_
                             _%tl229825230710%_
                             _%e229826230713%_
                             _%hd229827230716%_
                             _%tl229828230718%_
                             _%e229829230721%_
                             _%hd229830230724%_
                             _%tl229831230726%_
                             _%e229832230729%_
                             _%hd229833230732%_
                             _%tl229834230734%_
                             _%e229835230737%_
                             _%hd229836230740%_
                             _%tl229837230742%_
                             _%e229838230745%_
                             _%hd229839230748%_
                             _%tl229840230750%_
                             _%e229841230753%_
                             _%hd229842230756%_
                             _%tl229843230758%_
                             _%__splice234231234232%_
                             _%target229844230761%_
                             _%tl229846230763%_)
                      (letrec ((_%loop229847230766%_
                                (lambda (_%hd229845230769%_
                                         _%args229851230771%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd229845230769%_))
                                      (let ((_%e229848230773%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd229845230769%_))))
                                        (let ((_%lp-tl229850230778%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e229848230773%_)))
                                              (_%lp-hd229849230776%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e229848230773%_))))
                                          (_%loop229847230766%_
                                           _%lp-tl229850230778%_
                                           (cons _%lp-hd229849230776%_
                                                 _%args229851230771%_))))
                                      (let ((_%args229852230781%_
                                             (reverse _%args229851230771%_)))
                                        (let ((_%g229810230783%_
                                               _%args229852230781%_)
                                              (_%g229811230784%_
                                               _%hd229842230756%_)
                                              (_%g229812230785%_
                                               _%hd229833230732%_)
                                              (_%g229813230786%_
                                               _%hd229824230708%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g229813230786%_
                                                      'call-method))
                                                   (let ((__tmp235390
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self229799%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g229812230785%_
                                                      __tmp235390)))
                                              (_%__kont234229234230%_
                                               _%g229810230783%_
                                               _%g229811230784%_
                                               _%g229812230785%_
                                               _%g229813230786%_)
                                              (_%__match234520234521%_
                                               _%e229814230681%_
                                               _%hd229815230684%_
                                               _%tl229816230686%_
                                               _%e229817230689%_
                                               _%hd229818230692%_
                                               _%tl229819230694%_
                                               _%e229820230697%_
                                               _%hd229821230700%_
                                               _%tl229822230702%_
                                               _%e229823230705%_
                                               _%hd229824230708%_
                                               _%tl229825230710%_
                                               _%e229826230713%_
                                               _%hd229827230716%_
                                               _%tl229828230718%_
                                               _%e229829230721%_
                                               _%hd229830230724%_
                                               _%tl229831230726%_
                                               _%e229832230729%_
                                               _%hd229833230732%_
                                               _%tl229834230734%_
                                               _%e229835230737%_
                                               _%hd229836230740%_
                                               _%tl229837230742%_
                                               _%e229838230745%_
                                               _%hd229839230748%_
                                               _%tl229840230750%_
                                               _%e229841230753%_
                                               _%hd229842230756%_
                                               _%tl229843230758%_))))))))
                        (_%loop229847230766%_ _%target229844230761%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx234227234228%_))
                  (let ((_%e229814230681%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx234227234228%_))))
                    (let ((_%tl229816230686%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e229814230681%_)))
                          (_%hd229815230684%_
                           (let ()
                             (declare (not safe))
                             (##car _%e229814230681%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl229816230686%_))
                          (let ((_%e229817230689%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl229816230686%_))))
                            (let ((_%tl229819230694%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e229817230689%_)))
                                  (_%hd229818230692%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e229817230689%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd229818230692%_))
                                  (let ((_%e229820230697%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd229818230692%_))))
                                    (let ((_%tl229822230702%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e229820230697%_)))
                                          (_%hd229821230700%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e229820230697%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd229821230700%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd229821230700%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl229822230702%_))
                                                  (let ((_%e229823230705%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl229822230702%_))))
                                                    (let ((_%tl229825230710%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e229823230705%_)))
                                                          (_%hd229824230708%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e229823230705%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl229825230710%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl229819230694%_))
                      (let ((_%e229826230713%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl229819230694%_))))
                        (let ((_%tl229828230718%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e229826230713%_)))
                              (_%hd229827230716%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e229826230713%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd229827230716%_))
                              (let ((_%e229829230721%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd229827230716%_))))
                                (let ((_%tl229831230726%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e229829230721%_)))
                                      (_%hd229830230724%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e229829230721%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd229830230724%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd229830230724%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl229831230726%_))
                                              (let ((_%e229832230729%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl229831230726%_))))
                                                (let ((_%tl229834230734%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e229832230729%_)))
                                                      (_%hd229833230732%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e229832230729%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl229834230734%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl229828230718%_))
                                                          (let ((_%e229835230737%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl229828230718%_))))
                    (let ((_%tl229837230742%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e229835230737%_)))
                          (_%hd229836230740%_
                           (let ()
                             (declare (not safe))
                             (##car _%e229835230737%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd229836230740%_))
                          (let ((_%e229838230745%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd229836230740%_))))
                            (let ((_%tl229840230750%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e229838230745%_)))
                                  (_%hd229839230748%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e229838230745%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd229839230748%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd229839230748%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl229840230750%_))
                                          (let ((_%e229841230753%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl229840230750%_))))
                                            (let ((_%tl229843230758%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e229841230753%_)))
                                                  (_%hd229842230756%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e229841230753%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl229843230758%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl229837230742%_))
                                                      (let ((_%__splice234231234232%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl229837230742%_
                        '0))))
                (let ((_%tl229846230763%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice234231234232%_ '1)))
                      (_%target229844230761%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice234231234232%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl229846230763%_))
                      (_%__match234332234333%_
                       _%e229814230681%_
                       _%hd229815230684%_
                       _%tl229816230686%_
                       _%e229817230689%_
                       _%hd229818230692%_
                       _%tl229819230694%_
                       _%e229820230697%_
                       _%hd229821230700%_
                       _%tl229822230702%_
                       _%e229823230705%_
                       _%hd229824230708%_
                       _%tl229825230710%_
                       _%e229826230713%_
                       _%hd229827230716%_
                       _%tl229828230718%_
                       _%e229829230721%_
                       _%hd229830230724%_
                       _%tl229831230726%_
                       _%e229832230729%_
                       _%hd229833230732%_
                       _%tl229834230734%_
                       _%e229835230737%_
                       _%hd229836230740%_
                       _%tl229837230742%_
                       _%e229838230745%_
                       _%hd229839230748%_
                       _%tl229840230750%_
                       _%e229841230753%_
                       _%hd229842230756%_
                       _%tl229843230758%_
                       _%__splice234231234232%_
                       _%target229844230761%_
                       _%tl229846230763%_)
                      (_%__match234520234521%_
                       _%e229814230681%_
                       _%hd229815230684%_
                       _%tl229816230686%_
                       _%e229817230689%_
                       _%hd229818230692%_
                       _%tl229819230694%_
                       _%e229820230697%_
                       _%hd229821230700%_
                       _%tl229822230702%_
                       _%e229823230705%_
                       _%hd229824230708%_
                       _%tl229825230710%_
                       _%e229826230713%_
                       _%hd229827230716%_
                       _%tl229828230718%_
                       _%e229829230721%_
                       _%hd229830230724%_
                       _%tl229831230726%_
                       _%e229832230729%_
                       _%hd229833230732%_
                       _%tl229834230734%_
                       _%e229835230737%_
                       _%hd229836230740%_
                       _%tl229837230742%_
                       _%e229838230745%_
                       _%hd229839230748%_
                       _%tl229840230750%_
                       _%e229841230753%_
                       _%hd229842230756%_
                       _%tl229843230758%_))))
              (_%__match234520234521%_
               _%e229814230681%_
               _%hd229815230684%_
               _%tl229816230686%_
               _%e229817230689%_
               _%hd229818230692%_
               _%tl229819230694%_
               _%e229820230697%_
               _%hd229821230700%_
               _%tl229822230702%_
               _%e229823230705%_
               _%hd229824230708%_
               _%tl229825230710%_
               _%e229826230713%_
               _%hd229827230716%_
               _%tl229828230718%_
               _%e229829230721%_
               _%hd229830230724%_
               _%tl229831230726%_
               _%e229832230729%_
               _%hd229833230732%_
               _%tl229834230734%_
               _%e229835230737%_
               _%hd229836230740%_
               _%tl229837230742%_
               _%e229838230745%_
               _%hd229839230748%_
               _%tl229840230750%_
               _%e229841230753%_
               _%hd229842230756%_
               _%tl229843230758%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match234724234725%_
                                                   _%e229814230681%_
                                                   _%hd229815230684%_
                                                   _%tl229816230686%_
                                                   _%e229817230689%_
                                                   _%hd229818230692%_
                                                   _%tl229819230694%_
                                                   _%e229820230697%_
                                                   _%hd229821230700%_
                                                   _%tl229822230702%_
                                                   _%e229823230705%_
                                                   _%hd229824230708%_
                                                   _%tl229825230710%_
                                                   _%e229826230713%_
                                                   _%hd229827230716%_
                                                   _%tl229828230718%_
                                                   _%e229829230721%_
                                                   _%hd229830230724%_
                                                   _%tl229831230726%_
                                                   _%e229832230729%_
                                                   _%hd229833230732%_
                                                   _%tl229834230734%_
                                                   _%e229835230737%_
                                                   _%hd229836230740%_
                                                   _%tl229837230742%_))))
                                          (_%__match234724234725%_
                                           _%e229814230681%_
                                           _%hd229815230684%_
                                           _%tl229816230686%_
                                           _%e229817230689%_
                                           _%hd229818230692%_
                                           _%tl229819230694%_
                                           _%e229820230697%_
                                           _%hd229821230700%_
                                           _%tl229822230702%_
                                           _%e229823230705%_
                                           _%hd229824230708%_
                                           _%tl229825230710%_
                                           _%e229826230713%_
                                           _%hd229827230716%_
                                           _%tl229828230718%_
                                           _%e229829230721%_
                                           _%hd229830230724%_
                                           _%tl229831230726%_
                                           _%e229832230729%_
                                           _%hd229833230732%_
                                           _%tl229834230734%_
                                           _%e229835230737%_
                                           _%hd229836230740%_
                                           _%tl229837230742%_))
                                      (_%__match234400234401%_
                                       _%e229814230681%_
                                       _%hd229815230684%_
                                       _%tl229816230686%_
                                       _%e229817230689%_
                                       _%hd229818230692%_
                                       _%tl229819230694%_
                                       _%e229820230697%_
                                       _%hd229821230700%_
                                       _%tl229822230702%_
                                       _%e229823230705%_
                                       _%hd229824230708%_
                                       _%tl229825230710%_
                                       _%e229826230713%_
                                       _%hd229827230716%_
                                       _%tl229828230718%_
                                       _%e229829230721%_
                                       _%hd229830230724%_
                                       _%tl229831230726%_
                                       _%e229832230729%_
                                       _%hd229833230732%_
                                       _%tl229834230734%_
                                       _%e229835230737%_
                                       _%hd229836230740%_
                                       _%tl229837230742%_
                                       _%e229838230745%_
                                       _%hd229839230748%_
                                       _%tl229840230750%_))
                                  (_%__match234724234725%_
                                   _%e229814230681%_
                                   _%hd229815230684%_
                                   _%tl229816230686%_
                                   _%e229817230689%_
                                   _%hd229818230692%_
                                   _%tl229819230694%_
                                   _%e229820230697%_
                                   _%hd229821230700%_
                                   _%tl229822230702%_
                                   _%e229823230705%_
                                   _%hd229824230708%_
                                   _%tl229825230710%_
                                   _%e229826230713%_
                                   _%hd229827230716%_
                                   _%tl229828230718%_
                                   _%e229829230721%_
                                   _%hd229830230724%_
                                   _%tl229831230726%_
                                   _%e229832230729%_
                                   _%hd229833230732%_
                                   _%tl229834230734%_
                                   _%e229835230737%_
                                   _%hd229836230740%_
                                   _%tl229837230742%_))))
                          (_%__match234724234725%_
                           _%e229814230681%_
                           _%hd229815230684%_
                           _%tl229816230686%_
                           _%e229817230689%_
                           _%hd229818230692%_
                           _%tl229819230694%_
                           _%e229820230697%_
                           _%hd229821230700%_
                           _%tl229822230702%_
                           _%e229823230705%_
                           _%hd229824230708%_
                           _%tl229825230710%_
                           _%e229826230713%_
                           _%hd229827230716%_
                           _%tl229828230718%_
                           _%e229829230721%_
                           _%hd229830230724%_
                           _%tl229831230726%_
                           _%e229832230729%_
                           _%hd229833230732%_
                           _%tl229834230734%_
                           _%e229835230737%_
                           _%hd229836230740%_
                           _%tl229837230742%_))))
                  (_%__match234662234663%_
                   _%e229814230681%_
                   _%hd229815230684%_
                   _%tl229816230686%_
                   _%e229817230689%_
                   _%hd229818230692%_
                   _%tl229819230694%_
                   _%e229820230697%_
                   _%hd229821230700%_
                   _%tl229822230702%_
                   _%e229823230705%_
                   _%hd229824230708%_
                   _%tl229825230710%_
                   _%e229826230713%_
                   _%hd229827230716%_
                   _%tl229828230718%_
                   _%e229829230721%_
                   _%hd229830230724%_
                   _%tl229831230726%_
                   _%e229832230729%_
                   _%hd229833230732%_
                   _%tl229834230734%_))
              (_%__kont234245234246%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont234245234246%_))
                                          (_%__kont234245234246%_))
                                      (_%__kont234245234246%_))))
                              (_%__kont234245234246%_))))
                      (_%__kont234245234246%_))
                  (_%__kont234245234246%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont234245234246%_))
                                              (_%__kont234245234246%_))
                                          (_%__kont234245234246%_))))
                                  (_%__kont234245234246%_))))
                          (_%__kont234245234246%_))))
                  (_%__kont234245234246%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self228742%_ _%stx228743%_)
        (letrec ((_%force-e228745%_
                  (lambda (_%target229797%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target229797%_ '()))
                                      '()))))))
          (let* ((_%__stx234729234730%_ _%stx228743%_)
                 (_%g228753228975%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx234729234730%_)))))
            (let ((_%__kont234731234732%_
                   (lambda (_%g228755229743%_
                            _%g228756229744%_
                            _%g228757229745%_
                            _%g228758229746%_)
                     (let ((_%$method229791%_
                            (let ((__tmp235392
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self228742%_ 'methods)))
                                  (__tmp235391
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g228756229744%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp235392 __tmp235391)))
                           (_%args229792%_
                            (map (lambda (_%g229779229781%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self228742%_
                                      _%g229779229781%_)))
                                 (let ((__tmp235393
                                        (lambda (_%g229783229786%_
                                                 _%g229784229788%_)
                                          (cons _%g229783229786%_
                                                _%g229784229788%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp235393
                                    '()
                                    _%g228755229743%_)))))
                       (let ((__tmp235394
                              (cons '%#call
                                    (cons (_%force-e228745%_ _%$method229791%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self228742%_
                                                               'receiver))
                                                            '()))
                                                _%args229792%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp235394 _%stx228743%_)))))
                  (_%__kont234735234736%_
                   (lambda (_%g228798229577%_
                            _%g228799229578%_
                            _%g228800229579%_
                            _%g228801229580%_
                            _%g228802229581%_)
                     (let ((_%$method229633%_
                            (let ((__tmp235396
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self228742%_ 'methods)))
                                  (__tmp235395
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g228799229578%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp235396 __tmp235395)))
                           (_%args229634%_
                            (map (lambda (_%g229621229623%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self228742%_
                                      _%g229621229623%_)))
                                 (let ((__tmp235397
                                        (lambda (_%g229625229628%_
                                                 _%g229626229630%_)
                                          (cons _%g229625229628%_
                                                _%g229626229630%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp235397
                                    '()
                                    _%g228798229577%_)))))
                       (let ((__tmp235398
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e228745%_
                                                 _%$method229633%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self228742%_ 'receiver))
                          '()))
              _%args229634%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp235398 _%stx228743%_)))))
                  (_%__kont234739234740%_
                   (lambda (_%g228851229410%_
                            _%g228852229411%_
                            _%g228853229412%_)
                     (let* ((_%$field229444%_
                             (let ((__tmp235400
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self228742%_ 'slots)))
                                   (__tmp235399
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%g228851229410%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp235400 __tmp235399)))
                            (__tmp235401
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self228742%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field229444%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self228742%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp235401 _%stx228743%_))))
                  (_%__kont234741234742%_
                   (lambda (_%g228884229284%_
                            _%g228885229285%_
                            _%g228886229286%_
                            _%g228887229287%_)
                     (let ((_%$field229322%_
                            (let ((__tmp235403
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self228742%_ 'slots)))
                                  (__tmp235402
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g228885229285%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp235403 __tmp235402)))
                           (_%expr229323%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self228742%_
                               _%g228884229284%_))))
                       (let ((__tmp235404
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self228742%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field229322%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self228742%_ 'receiver))
                          '()))
              (cons _%expr229323%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp235404 _%stx228743%_)))))
                  (_%__kont234743234744%_
                   (lambda (_%g228921229156%_ _%g228922229157%_)
                     (let* ((_%accessor229179%_
                             (let ((__tmp235405
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g228922229157%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp235405)))
                            (_%klass229181%_
                             (let ((__tmp235406
                                    (##structure-ref
                                     _%accessor229179%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx228743%_
                                __tmp235406)))
                            (_%slot229183%_
                             (##structure-ref
                              _%accessor229179%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (if (##structure-ref
                                _%accessor229179%_
                                '4
                                gxc#!accessor::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass229181%_
                                      _%slot229183%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass229181%_
                                      '8
                                      '#f
                                      '#f))))
                           _%stx228743%_
                           (let* ((_%$field229189%_
                                   (let ((__tmp235407
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self228742%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp235407 _%slot229183%_)))
                                  (__tmp235408
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self228742%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field229189%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self228742%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp235408
                              _%stx228743%_))))))
                  (_%__kont234745234746%_
                   (lambda (_%g228944229051%_
                            _%g228945229052%_
                            _%g228946229053%_)
                     (let* ((_%mutator229081%_
                             (let ((__tmp235409
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g228946229053%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp235409)))
                            (_%klass229083%_
                             (let ((__tmp235410
                                    (##structure-ref
                                     _%mutator229081%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx228743%_
                                __tmp235410)))
                            (_%slot229085%_
                             (##structure-ref
                              _%mutator229081%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr229087%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self228742%_
                                _%g228944229051%_))))
                       (if (if (##structure-ref
                                _%mutator229081%_
                                '4
                                gxc#!mutator::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass229083%_
                                      _%slot229085%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass229083%_
                                      '8
                                      '#f
                                      '#f))))
                           (let ((__tmp235411
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%g228946229053%_
                                                          '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%g228945229052%_
                                                                '()))
                                                    (cons _%expr229087%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp235411 _%stx228743%_))
                           (let* ((_%$field229093%_
                                   (let ((__tmp235412
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self228742%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp235412 _%slot229085%_)))
                                  (__tmp235413
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self228742%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field229093%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self228742%_ 'receiver))
                               '()))
                   (cons _%expr229087%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp235413
                              _%stx228743%_))))))
                  (_%__kont234747234748%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self228742%_ _%stx228743%_)))))
              (let* ((_%__match235228235229%_
                      (lambda (_%e228947228987%_
                               _%hd228948228990%_
                               _%tl228949228992%_
                               _%e228950228995%_
                               _%hd228951228998%_
                               _%tl228952229000%_
                               _%e228953229003%_
                               _%hd228954229006%_
                               _%tl228955229008%_
                               _%e228956229011%_
                               _%hd228957229014%_
                               _%tl228958229016%_
                               _%e228959229019%_
                               _%hd228960229022%_
                               _%tl228961229024%_
                               _%e228962229027%_
                               _%hd228963229030%_
                               _%tl228964229032%_
                               _%e228965229035%_
                               _%hd228966229038%_
                               _%tl228967229040%_
                               _%e228968229043%_
                               _%hd228969229046%_
                               _%tl228970229048%_)
                        (let ((_%g228944229051%_ _%hd228969229046%_)
                              (_%g228945229052%_ _%hd228966229038%_)
                              (_%g228946229053%_ _%hd228957229014%_))
                          (if (and (let ((__tmp235414
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self228742%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g228945229052%_
                                      __tmp235414))
                                   (let ((__tmp235415
                                          (let ((__tmp235416
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g228946229053%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp235416))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp235415
                                      'gxc#!mutator::t)))
                              (_%__kont234745234746%_
                               _%g228944229051%_
                               _%g228945229052%_
                               _%g228946229053%_)
                              (_%__kont234747234748%_)))))
                     (_%__match235226235227%_
                      (lambda (_%e228947228987%_
                               _%hd228948228990%_
                               _%tl228949228992%_
                               _%e228950228995%_
                               _%hd228951228998%_
                               _%tl228952229000%_
                               _%e228953229003%_
                               _%hd228954229006%_
                               _%tl228955229008%_
                               _%e228956229011%_
                               _%hd228957229014%_
                               _%tl228958229016%_
                               _%e228959229019%_
                               _%hd228960229022%_
                               _%tl228961229024%_
                               _%e228962229027%_
                               _%hd228963229030%_
                               _%tl228964229032%_
                               _%e228965229035%_
                               _%hd228966229038%_
                               _%tl228967229040%_
                               _%e228968229043%_
                               _%hd228969229046%_
                               _%tl228970229048%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl228970229048%_))
                            (_%__match235228235229%_
                             _%e228947228987%_
                             _%hd228948228990%_
                             _%tl228949228992%_
                             _%e228950228995%_
                             _%hd228951228998%_
                             _%tl228952229000%_
                             _%e228953229003%_
                             _%hd228954229006%_
                             _%tl228955229008%_
                             _%e228956229011%_
                             _%hd228957229014%_
                             _%tl228958229016%_
                             _%e228959229019%_
                             _%hd228960229022%_
                             _%tl228961229024%_
                             _%e228962229027%_
                             _%hd228963229030%_
                             _%tl228964229032%_
                             _%e228965229035%_
                             _%hd228966229038%_
                             _%tl228967229040%_
                             _%e228968229043%_
                             _%hd228969229046%_
                             _%tl228970229048%_)
                            (_%__kont234747234748%_))))
                     (_%__match235220235221%_
                      (lambda (_%e228947228987%_
                               _%hd228948228990%_
                               _%tl228949228992%_
                               _%e228950228995%_
                               _%hd228951228998%_
                               _%tl228952229000%_
                               _%e228953229003%_
                               _%hd228954229006%_
                               _%tl228955229008%_
                               _%e228956229011%_
                               _%hd228957229014%_
                               _%tl228958229016%_
                               _%e228959229019%_
                               _%hd228960229022%_
                               _%tl228961229024%_
                               _%e228962229027%_
                               _%hd228963229030%_
                               _%tl228964229032%_
                               _%e228965229035%_
                               _%hd228966229038%_
                               _%tl228967229040%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl228961229024%_))
                            (let ((_%e228968229043%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl228961229024%_))))
                              (let ((_%tl228970229048%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e228968229043%_)))
                                    (_%hd228969229046%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e228968229043%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl228970229048%_))
                                    (_%__match235228235229%_
                                     _%e228947228987%_
                                     _%hd228948228990%_
                                     _%tl228949228992%_
                                     _%e228950228995%_
                                     _%hd228951228998%_
                                     _%tl228952229000%_
                                     _%e228953229003%_
                                     _%hd228954229006%_
                                     _%tl228955229008%_
                                     _%e228956229011%_
                                     _%hd228957229014%_
                                     _%tl228958229016%_
                                     _%e228959229019%_
                                     _%hd228960229022%_
                                     _%tl228961229024%_
                                     _%e228962229027%_
                                     _%hd228963229030%_
                                     _%tl228964229032%_
                                     _%e228965229035%_
                                     _%hd228966229038%_
                                     _%tl228967229040%_
                                     _%e228968229043%_
                                     _%hd228969229046%_
                                     _%tl228970229048%_)
                                    (_%__kont234747234748%_))))
                            (_%__kont234747234748%_))))
                     (_%__match235166235167%_
                      (lambda (_%e228923229100%_
                               _%hd228924229103%_
                               _%tl228925229105%_
                               _%e228926229108%_
                               _%hd228927229111%_
                               _%tl228928229113%_
                               _%e228929229116%_
                               _%hd228930229119%_
                               _%tl228931229121%_
                               _%e228932229124%_
                               _%hd228933229127%_
                               _%tl228934229129%_
                               _%e228935229132%_
                               _%hd228936229135%_
                               _%tl228937229137%_
                               _%e228938229140%_
                               _%hd228939229143%_
                               _%tl228940229145%_
                               _%e228941229148%_
                               _%hd228942229151%_
                               _%tl228943229153%_)
                        (let ((_%g228921229156%_ _%hd228942229151%_)
                              (_%g228922229157%_ _%hd228933229127%_))
                          (if (and (let ((__tmp235417
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self228742%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g228921229156%_
                                      __tmp235417))
                                   (let ((__tmp235418
                                          (let ((__tmp235419
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g228922229157%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp235419))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp235418
                                      'gxc#!accessor::t)))
                              (_%__kont234743234744%_
                               _%g228921229156%_
                               _%g228922229157%_)
                              (_%__kont234747234748%_)))))
                     (_%__match235164235165%_
                      (lambda (_%e228923229100%_
                               _%hd228924229103%_
                               _%tl228925229105%_
                               _%e228926229108%_
                               _%hd228927229111%_
                               _%tl228928229113%_
                               _%e228929229116%_
                               _%hd228930229119%_
                               _%tl228931229121%_
                               _%e228932229124%_
                               _%hd228933229127%_
                               _%tl228934229129%_
                               _%e228935229132%_
                               _%hd228936229135%_
                               _%tl228937229137%_
                               _%e228938229140%_
                               _%hd228939229143%_
                               _%tl228940229145%_
                               _%e228941229148%_
                               _%hd228942229151%_
                               _%tl228943229153%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl228937229137%_))
                            (_%__match235166235167%_
                             _%e228923229100%_
                             _%hd228924229103%_
                             _%tl228925229105%_
                             _%e228926229108%_
                             _%hd228927229111%_
                             _%tl228928229113%_
                             _%e228929229116%_
                             _%hd228930229119%_
                             _%tl228931229121%_
                             _%e228932229124%_
                             _%hd228933229127%_
                             _%tl228934229129%_
                             _%e228935229132%_
                             _%hd228936229135%_
                             _%tl228937229137%_
                             _%e228938229140%_
                             _%hd228939229143%_
                             _%tl228940229145%_
                             _%e228941229148%_
                             _%hd228942229151%_
                             _%tl228943229153%_)
                            (_%__match235220235221%_
                             _%e228923229100%_
                             _%hd228924229103%_
                             _%tl228925229105%_
                             _%e228926229108%_
                             _%hd228927229111%_
                             _%tl228928229113%_
                             _%e228929229116%_
                             _%hd228930229119%_
                             _%tl228931229121%_
                             _%e228932229124%_
                             _%hd228933229127%_
                             _%tl228934229129%_
                             _%e228935229132%_
                             _%hd228936229135%_
                             _%tl228937229137%_
                             _%e228938229140%_
                             _%hd228939229143%_
                             _%tl228940229145%_
                             _%e228941229148%_
                             _%hd228942229151%_
                             _%tl228943229153%_))))
                     (_%__match235110235111%_
                      (lambda (_%e228888229196%_
                               _%hd228889229199%_
                               _%tl228890229201%_
                               _%e228891229204%_
                               _%hd228892229207%_
                               _%tl228893229209%_
                               _%e228894229212%_
                               _%hd228895229215%_
                               _%tl228896229217%_
                               _%e228897229220%_
                               _%hd228898229223%_
                               _%tl228899229225%_
                               _%e228900229228%_
                               _%hd228901229231%_
                               _%tl228902229233%_
                               _%e228903229236%_
                               _%hd228904229239%_
                               _%tl228905229241%_
                               _%e228906229244%_
                               _%hd228907229247%_
                               _%tl228908229249%_
                               _%e228909229252%_
                               _%hd228910229255%_
                               _%tl228911229257%_
                               _%e228912229260%_
                               _%hd228913229263%_
                               _%tl228914229265%_
                               _%e228915229268%_
                               _%hd228916229271%_
                               _%tl228917229273%_
                               _%e228918229276%_
                               _%hd228919229279%_
                               _%tl228920229281%_)
                        (let ((_%g228884229284%_ _%hd228919229279%_)
                              (_%g228885229285%_ _%hd228916229271%_)
                              (_%g228886229286%_ _%hd228907229247%_)
                              (_%g228887229287%_ _%hd228898229223%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g228887229287%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g228887229287%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp235420
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self228742%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g228886229286%_
                                      __tmp235420)))
                              (_%__kont234741234742%_
                               _%g228884229284%_
                               _%g228885229285%_
                               _%g228886229286%_
                               _%g228887229287%_)
                              (_%__kont234747234748%_)))))
                     (_%__match235102235103%_
                      (lambda (_%e228888229196%_
                               _%hd228889229199%_
                               _%tl228890229201%_
                               _%e228891229204%_
                               _%hd228892229207%_
                               _%tl228893229209%_
                               _%e228894229212%_
                               _%hd228895229215%_
                               _%tl228896229217%_
                               _%e228897229220%_
                               _%hd228898229223%_
                               _%tl228899229225%_
                               _%e228900229228%_
                               _%hd228901229231%_
                               _%tl228902229233%_
                               _%e228903229236%_
                               _%hd228904229239%_
                               _%tl228905229241%_
                               _%e228906229244%_
                               _%hd228907229247%_
                               _%tl228908229249%_
                               _%e228909229252%_
                               _%hd228910229255%_
                               _%tl228911229257%_
                               _%e228912229260%_
                               _%hd228913229263%_
                               _%tl228914229265%_
                               _%e228915229268%_
                               _%hd228916229271%_
                               _%tl228917229273%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl228911229257%_))
                            (let ((_%e228918229276%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl228911229257%_))))
                              (let ((_%tl228920229281%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e228918229276%_)))
                                    (_%hd228919229279%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e228918229276%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl228920229281%_))
                                    (_%__match235110235111%_
                                     _%e228888229196%_
                                     _%hd228889229199%_
                                     _%tl228890229201%_
                                     _%e228891229204%_
                                     _%hd228892229207%_
                                     _%tl228893229209%_
                                     _%e228894229212%_
                                     _%hd228895229215%_
                                     _%tl228896229217%_
                                     _%e228897229220%_
                                     _%hd228898229223%_
                                     _%tl228899229225%_
                                     _%e228900229228%_
                                     _%hd228901229231%_
                                     _%tl228902229233%_
                                     _%e228903229236%_
                                     _%hd228904229239%_
                                     _%tl228905229241%_
                                     _%e228906229244%_
                                     _%hd228907229247%_
                                     _%tl228908229249%_
                                     _%e228909229252%_
                                     _%hd228910229255%_
                                     _%tl228911229257%_
                                     _%e228912229260%_
                                     _%hd228913229263%_
                                     _%tl228914229265%_
                                     _%e228915229268%_
                                     _%hd228916229271%_
                                     _%tl228917229273%_
                                     _%e228918229276%_
                                     _%hd228919229279%_
                                     _%tl228920229281%_)
                                    (_%__kont234747234748%_))))
                            (_%__match235226235227%_
                             _%e228888229196%_
                             _%hd228889229199%_
                             _%tl228890229201%_
                             _%e228891229204%_
                             _%hd228892229207%_
                             _%tl228893229209%_
                             _%e228894229212%_
                             _%hd228895229215%_
                             _%tl228896229217%_
                             _%e228897229220%_
                             _%hd228898229223%_
                             _%tl228899229225%_
                             _%e228900229228%_
                             _%hd228901229231%_
                             _%tl228902229233%_
                             _%e228903229236%_
                             _%hd228904229239%_
                             _%tl228905229241%_
                             _%e228906229244%_
                             _%hd228907229247%_
                             _%tl228908229249%_
                             _%e228909229252%_
                             _%hd228910229255%_
                             _%tl228911229257%_))))
                     (_%__match235024235025%_
                      (lambda (_%e228854229330%_
                               _%hd228855229333%_
                               _%tl228856229335%_
                               _%e228857229338%_
                               _%hd228858229341%_
                               _%tl228859229343%_
                               _%e228860229346%_
                               _%hd228861229349%_
                               _%tl228862229351%_
                               _%e228863229354%_
                               _%hd228864229357%_
                               _%tl228865229359%_
                               _%e228866229362%_
                               _%hd228867229365%_
                               _%tl228868229367%_
                               _%e228869229370%_
                               _%hd228870229373%_
                               _%tl228871229375%_
                               _%e228872229378%_
                               _%hd228873229381%_
                               _%tl228874229383%_
                               _%e228875229386%_
                               _%hd228876229389%_
                               _%tl228877229391%_
                               _%e228878229394%_
                               _%hd228879229397%_
                               _%tl228880229399%_
                               _%e228881229402%_
                               _%hd228882229405%_
                               _%tl228883229407%_)
                        (let ((_%g228851229410%_ _%hd228882229405%_)
                              (_%g228852229411%_ _%hd228873229381%_)
                              (_%g228853229412%_ _%hd228864229357%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g228853229412%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g228853229412%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp235421
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self228742%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g228852229411%_
                                      __tmp235421)))
                              (_%__kont234739234740%_
                               _%g228851229410%_
                               _%g228852229411%_
                               _%g228853229412%_)
                              (_%__match235228235229%_
                               _%e228854229330%_
                               _%hd228855229333%_
                               _%tl228856229335%_
                               _%e228857229338%_
                               _%hd228858229341%_
                               _%tl228859229343%_
                               _%e228860229346%_
                               _%hd228861229349%_
                               _%tl228862229351%_
                               _%e228863229354%_
                               _%hd228864229357%_
                               _%tl228865229359%_
                               _%e228866229362%_
                               _%hd228867229365%_
                               _%tl228868229367%_
                               _%e228869229370%_
                               _%hd228870229373%_
                               _%tl228871229375%_
                               _%e228872229378%_
                               _%hd228873229381%_
                               _%tl228874229383%_
                               _%e228875229386%_
                               _%hd228876229389%_
                               _%tl228877229391%_)))))
                     (_%__match235022235023%_
                      (lambda (_%e228854229330%_
                               _%hd228855229333%_
                               _%tl228856229335%_
                               _%e228857229338%_
                               _%hd228858229341%_
                               _%tl228859229343%_
                               _%e228860229346%_
                               _%hd228861229349%_
                               _%tl228862229351%_
                               _%e228863229354%_
                               _%hd228864229357%_
                               _%tl228865229359%_
                               _%e228866229362%_
                               _%hd228867229365%_
                               _%tl228868229367%_
                               _%e228869229370%_
                               _%hd228870229373%_
                               _%tl228871229375%_
                               _%e228872229378%_
                               _%hd228873229381%_
                               _%tl228874229383%_
                               _%e228875229386%_
                               _%hd228876229389%_
                               _%tl228877229391%_
                               _%e228878229394%_
                               _%hd228879229397%_
                               _%tl228880229399%_
                               _%e228881229402%_
                               _%hd228882229405%_
                               _%tl228883229407%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl228877229391%_))
                            (_%__match235024235025%_
                             _%e228854229330%_
                             _%hd228855229333%_
                             _%tl228856229335%_
                             _%e228857229338%_
                             _%hd228858229341%_
                             _%tl228859229343%_
                             _%e228860229346%_
                             _%hd228861229349%_
                             _%tl228862229351%_
                             _%e228863229354%_
                             _%hd228864229357%_
                             _%tl228865229359%_
                             _%e228866229362%_
                             _%hd228867229365%_
                             _%tl228868229367%_
                             _%e228869229370%_
                             _%hd228870229373%_
                             _%tl228871229375%_
                             _%e228872229378%_
                             _%hd228873229381%_
                             _%tl228874229383%_
                             _%e228875229386%_
                             _%hd228876229389%_
                             _%tl228877229391%_
                             _%e228878229394%_
                             _%hd228879229397%_
                             _%tl228880229399%_
                             _%e228881229402%_
                             _%hd228882229405%_
                             _%tl228883229407%_)
                            (_%__match235102235103%_
                             _%e228854229330%_
                             _%hd228855229333%_
                             _%tl228856229335%_
                             _%e228857229338%_
                             _%hd228858229341%_
                             _%tl228859229343%_
                             _%e228860229346%_
                             _%hd228861229349%_
                             _%tl228862229351%_
                             _%e228863229354%_
                             _%hd228864229357%_
                             _%tl228865229359%_
                             _%e228866229362%_
                             _%hd228867229365%_
                             _%tl228868229367%_
                             _%e228869229370%_
                             _%hd228870229373%_
                             _%tl228871229375%_
                             _%e228872229378%_
                             _%hd228873229381%_
                             _%tl228874229383%_
                             _%e228875229386%_
                             _%hd228876229389%_
                             _%tl228877229391%_
                             _%e228878229394%_
                             _%hd228879229397%_
                             _%tl228880229399%_
                             _%e228881229402%_
                             _%hd228882229405%_
                             _%tl228883229407%_))))
                     (_%__match235012235013%_
                      (lambda (_%e228854229330%_
                               _%hd228855229333%_
                               _%tl228856229335%_
                               _%e228857229338%_
                               _%hd228858229341%_
                               _%tl228859229343%_
                               _%e228860229346%_
                               _%hd228861229349%_
                               _%tl228862229351%_
                               _%e228863229354%_
                               _%hd228864229357%_
                               _%tl228865229359%_
                               _%e228866229362%_
                               _%hd228867229365%_
                               _%tl228868229367%_
                               _%e228869229370%_
                               _%hd228870229373%_
                               _%tl228871229375%_
                               _%e228872229378%_
                               _%hd228873229381%_
                               _%tl228874229383%_
                               _%e228875229386%_
                               _%hd228876229389%_
                               _%tl228877229391%_
                               _%e228878229394%_
                               _%hd228879229397%_
                               _%tl228880229399%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd228879229397%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl228880229399%_))
                                (let ((_%e228881229402%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl228880229399%_))))
                                  (let ((_%tl228883229407%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e228881229402%_)))
                                        (_%hd228882229405%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e228881229402%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl228883229407%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl228877229391%_))
                                            (_%__match235024235025%_
                                             _%e228854229330%_
                                             _%hd228855229333%_
                                             _%tl228856229335%_
                                             _%e228857229338%_
                                             _%hd228858229341%_
                                             _%tl228859229343%_
                                             _%e228860229346%_
                                             _%hd228861229349%_
                                             _%tl228862229351%_
                                             _%e228863229354%_
                                             _%hd228864229357%_
                                             _%tl228865229359%_
                                             _%e228866229362%_
                                             _%hd228867229365%_
                                             _%tl228868229367%_
                                             _%e228869229370%_
                                             _%hd228870229373%_
                                             _%tl228871229375%_
                                             _%e228872229378%_
                                             _%hd228873229381%_
                                             _%tl228874229383%_
                                             _%e228875229386%_
                                             _%hd228876229389%_
                                             _%tl228877229391%_
                                             _%e228878229394%_
                                             _%hd228879229397%_
                                             _%tl228880229399%_
                                             _%e228881229402%_
                                             _%hd228882229405%_
                                             _%tl228883229407%_)
                                            (_%__match235102235103%_
                                             _%e228854229330%_
                                             _%hd228855229333%_
                                             _%tl228856229335%_
                                             _%e228857229338%_
                                             _%hd228858229341%_
                                             _%tl228859229343%_
                                             _%e228860229346%_
                                             _%hd228861229349%_
                                             _%tl228862229351%_
                                             _%e228863229354%_
                                             _%hd228864229357%_
                                             _%tl228865229359%_
                                             _%e228866229362%_
                                             _%hd228867229365%_
                                             _%tl228868229367%_
                                             _%e228869229370%_
                                             _%hd228870229373%_
                                             _%tl228871229375%_
                                             _%e228872229378%_
                                             _%hd228873229381%_
                                             _%tl228874229383%_
                                             _%e228875229386%_
                                             _%hd228876229389%_
                                             _%tl228877229391%_
                                             _%e228878229394%_
                                             _%hd228879229397%_
                                             _%tl228880229399%_
                                             _%e228881229402%_
                                             _%hd228882229405%_
                                             _%tl228883229407%_))
                                        (_%__match235226235227%_
                                         _%e228854229330%_
                                         _%hd228855229333%_
                                         _%tl228856229335%_
                                         _%e228857229338%_
                                         _%hd228858229341%_
                                         _%tl228859229343%_
                                         _%e228860229346%_
                                         _%hd228861229349%_
                                         _%tl228862229351%_
                                         _%e228863229354%_
                                         _%hd228864229357%_
                                         _%tl228865229359%_
                                         _%e228866229362%_
                                         _%hd228867229365%_
                                         _%tl228868229367%_
                                         _%e228869229370%_
                                         _%hd228870229373%_
                                         _%tl228871229375%_
                                         _%e228872229378%_
                                         _%hd228873229381%_
                                         _%tl228874229383%_
                                         _%e228875229386%_
                                         _%hd228876229389%_
                                         _%tl228877229391%_))))
                                (_%__match235226235227%_
                                 _%e228854229330%_
                                 _%hd228855229333%_
                                 _%tl228856229335%_
                                 _%e228857229338%_
                                 _%hd228858229341%_
                                 _%tl228859229343%_
                                 _%e228860229346%_
                                 _%hd228861229349%_
                                 _%tl228862229351%_
                                 _%e228863229354%_
                                 _%hd228864229357%_
                                 _%tl228865229359%_
                                 _%e228866229362%_
                                 _%hd228867229365%_
                                 _%tl228868229367%_
                                 _%e228869229370%_
                                 _%hd228870229373%_
                                 _%tl228871229375%_
                                 _%e228872229378%_
                                 _%hd228873229381%_
                                 _%tl228874229383%_
                                 _%e228875229386%_
                                 _%hd228876229389%_
                                 _%tl228877229391%_))
                            (_%__match235226235227%_
                             _%e228854229330%_
                             _%hd228855229333%_
                             _%tl228856229335%_
                             _%e228857229338%_
                             _%hd228858229341%_
                             _%tl228859229343%_
                             _%e228860229346%_
                             _%hd228861229349%_
                             _%tl228862229351%_
                             _%e228863229354%_
                             _%hd228864229357%_
                             _%tl228865229359%_
                             _%e228866229362%_
                             _%hd228867229365%_
                             _%tl228868229367%_
                             _%e228869229370%_
                             _%hd228870229373%_
                             _%tl228871229375%_
                             _%e228872229378%_
                             _%hd228873229381%_
                             _%tl228874229383%_
                             _%e228875229386%_
                             _%hd228876229389%_
                             _%tl228877229391%_))))
                     (_%__match234944234945%_
                      (lambda (_%e228803229451%_
                               _%hd228804229454%_
                               _%tl228805229456%_
                               _%e228806229459%_
                               _%hd228807229462%_
                               _%tl228808229464%_
                               _%e228809229467%_
                               _%hd228810229470%_
                               _%tl228811229472%_
                               _%e228812229475%_
                               _%hd228813229478%_
                               _%tl228814229480%_
                               _%e228815229483%_
                               _%hd228816229486%_
                               _%tl228817229488%_
                               _%e228818229491%_
                               _%hd228819229494%_
                               _%tl228820229496%_
                               _%e228821229499%_
                               _%hd228822229502%_
                               _%tl228823229504%_
                               _%e228824229507%_
                               _%hd228825229510%_
                               _%tl228826229512%_
                               _%e228827229515%_
                               _%hd228828229518%_
                               _%tl228829229520%_
                               _%e228830229523%_
                               _%hd228831229526%_
                               _%tl228832229528%_
                               _%e228833229531%_
                               _%hd228834229534%_
                               _%tl228835229536%_
                               _%e228836229539%_
                               _%hd228837229542%_
                               _%tl228838229544%_
                               _%e228839229547%_
                               _%hd228840229550%_
                               _%tl228841229552%_
                               _%__splice234737234738%_
                               _%target228842229555%_
                               _%tl228844229557%_)
                        (letrec ((_%loop228845229560%_
                                  (lambda (_%hd228843229563%_
                                           _%args228849229565%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd228843229563%_))
                                        (let ((_%e228846229567%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd228843229563%_))))
                                          (let ((_%lp-tl228848229572%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e228846229567%_)))
                                                (_%lp-hd228847229570%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e228846229567%_))))
                                            (_%loop228845229560%_
                                             _%lp-tl228848229572%_
                                             (cons _%lp-hd228847229570%_
                                                   _%args228849229565%_))))
                                        (let ((_%args228850229575%_
                                               (reverse _%args228849229565%_)))
                                          (let ((_%g228798229577%_
                                                 _%args228850229575%_)
                                                (_%g228799229578%_
                                                 _%hd228840229550%_)
                                                (_%g228800229579%_
                                                 _%hd228831229526%_)
                                                (_%g228801229580%_
                                                 _%hd228822229502%_)
                                                (_%g228802229581%_
                                                 _%hd228813229478%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g228802229581%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g228801229580%_
                                                        'call-method))
                                                     (let ((__tmp235422
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self228742%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%g228800229579%_
                                                        __tmp235422)))
                                                (_%__kont234735234736%_
                                                 _%g228798229577%_
                                                 _%g228799229578%_
                                                 _%g228800229579%_
                                                 _%g228801229580%_
                                                 _%g228802229581%_)
                                                (_%__kont234747234748%_))))))))
                          (_%loop228845229560%_ _%target228842229555%_ '()))))
                     (_%__match234902234903%_
                      (lambda (_%e228803229451%_
                               _%hd228804229454%_
                               _%tl228805229456%_
                               _%e228806229459%_
                               _%hd228807229462%_
                               _%tl228808229464%_
                               _%e228809229467%_
                               _%hd228810229470%_
                               _%tl228811229472%_
                               _%e228812229475%_
                               _%hd228813229478%_
                               _%tl228814229480%_
                               _%e228815229483%_
                               _%hd228816229486%_
                               _%tl228817229488%_
                               _%e228818229491%_
                               _%hd228819229494%_
                               _%tl228820229496%_
                               _%e228821229499%_
                               _%hd228822229502%_
                               _%tl228823229504%_
                               _%e228824229507%_
                               _%hd228825229510%_
                               _%tl228826229512%_
                               _%e228827229515%_
                               _%hd228828229518%_
                               _%tl228829229520%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd228828229518%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl228829229520%_))
                                (let ((_%e228830229523%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl228829229520%_))))
                                  (let ((_%tl228832229528%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e228830229523%_)))
                                        (_%hd228831229526%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e228830229523%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl228832229528%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl228826229512%_))
                                            (let ((_%e228833229531%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl228826229512%_))))
                                              (let ((_%tl228835229536%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e228833229531%_)))
                                                    (_%hd228834229534%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e228833229531%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd228834229534%_))
                                                    (let ((_%e228836229539%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd228834229534%_))))
                                                      (let ((_%tl228838229544%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e228836229539%_)))
                    (_%hd228837229542%_
                     (let () (declare (not safe)) (##car _%e228836229539%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd228837229542%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd228837229542%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl228838229544%_))
                            (let ((_%e228839229547%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl228838229544%_))))
                              (let ((_%tl228841229552%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e228839229547%_)))
                                    (_%hd228840229550%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e228839229547%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl228841229552%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl228835229536%_))
                                        (let ((_%__splice234737234738%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl228835229536%_
                                                  '0))))
                                          (let ((_%tl228844229557%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice234737234738%_
                                                    '1)))
                                                (_%target228842229555%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice234737234738%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl228844229557%_))
                                                (_%__match234944234945%_
                                                 _%e228803229451%_
                                                 _%hd228804229454%_
                                                 _%tl228805229456%_
                                                 _%e228806229459%_
                                                 _%hd228807229462%_
                                                 _%tl228808229464%_
                                                 _%e228809229467%_
                                                 _%hd228810229470%_
                                                 _%tl228811229472%_
                                                 _%e228812229475%_
                                                 _%hd228813229478%_
                                                 _%tl228814229480%_
                                                 _%e228815229483%_
                                                 _%hd228816229486%_
                                                 _%tl228817229488%_
                                                 _%e228818229491%_
                                                 _%hd228819229494%_
                                                 _%tl228820229496%_
                                                 _%e228821229499%_
                                                 _%hd228822229502%_
                                                 _%tl228823229504%_
                                                 _%e228824229507%_
                                                 _%hd228825229510%_
                                                 _%tl228826229512%_
                                                 _%e228827229515%_
                                                 _%hd228828229518%_
                                                 _%tl228829229520%_
                                                 _%e228830229523%_
                                                 _%hd228831229526%_
                                                 _%tl228832229528%_
                                                 _%e228833229531%_
                                                 _%hd228834229534%_
                                                 _%tl228835229536%_
                                                 _%e228836229539%_
                                                 _%hd228837229542%_
                                                 _%tl228838229544%_
                                                 _%e228839229547%_
                                                 _%hd228840229550%_
                                                 _%tl228841229552%_
                                                 _%__splice234737234738%_
                                                 _%target228842229555%_
                                                 _%tl228844229557%_)
                                                (_%__kont234747234748%_))))
                                        (_%__kont234747234748%_))
                                    (_%__kont234747234748%_))))
                            (_%__kont234747234748%_))
                        (_%__kont234747234748%_))
                    (_%__kont234747234748%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont234747234748%_))))
                                            (_%__match235226235227%_
                                             _%e228803229451%_
                                             _%hd228804229454%_
                                             _%tl228805229456%_
                                             _%e228806229459%_
                                             _%hd228807229462%_
                                             _%tl228808229464%_
                                             _%e228809229467%_
                                             _%hd228810229470%_
                                             _%tl228811229472%_
                                             _%e228812229475%_
                                             _%hd228813229478%_
                                             _%tl228814229480%_
                                             _%e228815229483%_
                                             _%hd228816229486%_
                                             _%tl228817229488%_
                                             _%e228818229491%_
                                             _%hd228819229494%_
                                             _%tl228820229496%_
                                             _%e228821229499%_
                                             _%hd228822229502%_
                                             _%tl228823229504%_
                                             _%e228824229507%_
                                             _%hd228825229510%_
                                             _%tl228826229512%_))
                                        (_%__match235226235227%_
                                         _%e228803229451%_
                                         _%hd228804229454%_
                                         _%tl228805229456%_
                                         _%e228806229459%_
                                         _%hd228807229462%_
                                         _%tl228808229464%_
                                         _%e228809229467%_
                                         _%hd228810229470%_
                                         _%tl228811229472%_
                                         _%e228812229475%_
                                         _%hd228813229478%_
                                         _%tl228814229480%_
                                         _%e228815229483%_
                                         _%hd228816229486%_
                                         _%tl228817229488%_
                                         _%e228818229491%_
                                         _%hd228819229494%_
                                         _%tl228820229496%_
                                         _%e228821229499%_
                                         _%hd228822229502%_
                                         _%tl228823229504%_
                                         _%e228824229507%_
                                         _%hd228825229510%_
                                         _%tl228826229512%_))))
                                (_%__match235226235227%_
                                 _%e228803229451%_
                                 _%hd228804229454%_
                                 _%tl228805229456%_
                                 _%e228806229459%_
                                 _%hd228807229462%_
                                 _%tl228808229464%_
                                 _%e228809229467%_
                                 _%hd228810229470%_
                                 _%tl228811229472%_
                                 _%e228812229475%_
                                 _%hd228813229478%_
                                 _%tl228814229480%_
                                 _%e228815229483%_
                                 _%hd228816229486%_
                                 _%tl228817229488%_
                                 _%e228818229491%_
                                 _%hd228819229494%_
                                 _%tl228820229496%_
                                 _%e228821229499%_
                                 _%hd228822229502%_
                                 _%tl228823229504%_
                                 _%e228824229507%_
                                 _%hd228825229510%_
                                 _%tl228826229512%_))
                            (_%__match235012235013%_
                             _%e228803229451%_
                             _%hd228804229454%_
                             _%tl228805229456%_
                             _%e228806229459%_
                             _%hd228807229462%_
                             _%tl228808229464%_
                             _%e228809229467%_
                             _%hd228810229470%_
                             _%tl228811229472%_
                             _%e228812229475%_
                             _%hd228813229478%_
                             _%tl228814229480%_
                             _%e228815229483%_
                             _%hd228816229486%_
                             _%tl228817229488%_
                             _%e228818229491%_
                             _%hd228819229494%_
                             _%tl228820229496%_
                             _%e228821229499%_
                             _%hd228822229502%_
                             _%tl228823229504%_
                             _%e228824229507%_
                             _%hd228825229510%_
                             _%tl228826229512%_
                             _%e228827229515%_
                             _%hd228828229518%_
                             _%tl228829229520%_))))
                     (_%__match234834234835%_
                      (lambda (_%e228759229641%_
                               _%hd228760229644%_
                               _%tl228761229646%_
                               _%e228762229649%_
                               _%hd228763229652%_
                               _%tl228764229654%_
                               _%e228765229657%_
                               _%hd228766229660%_
                               _%tl228767229662%_
                               _%e228768229665%_
                               _%hd228769229668%_
                               _%tl228770229670%_
                               _%e228771229673%_
                               _%hd228772229676%_
                               _%tl228773229678%_
                               _%e228774229681%_
                               _%hd228775229684%_
                               _%tl228776229686%_
                               _%e228777229689%_
                               _%hd228778229692%_
                               _%tl228779229694%_
                               _%e228780229697%_
                               _%hd228781229700%_
                               _%tl228782229702%_
                               _%e228783229705%_
                               _%hd228784229708%_
                               _%tl228785229710%_
                               _%e228786229713%_
                               _%hd228787229716%_
                               _%tl228788229718%_
                               _%__splice234733234734%_
                               _%target228789229721%_
                               _%tl228791229723%_)
                        (letrec ((_%loop228792229726%_
                                  (lambda (_%hd228790229729%_
                                           _%args228796229731%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd228790229729%_))
                                        (let ((_%e228793229733%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd228790229729%_))))
                                          (let ((_%lp-tl228795229738%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e228793229733%_)))
                                                (_%lp-hd228794229736%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e228793229733%_))))
                                            (_%loop228792229726%_
                                             _%lp-tl228795229738%_
                                             (cons _%lp-hd228794229736%_
                                                   _%args228796229731%_))))
                                        (let ((_%args228797229741%_
                                               (reverse _%args228796229731%_)))
                                          (let ((_%g228755229743%_
                                                 _%args228797229741%_)
                                                (_%g228756229744%_
                                                 _%hd228787229716%_)
                                                (_%g228757229745%_
                                                 _%hd228778229692%_)
                                                (_%g228758229746%_
                                                 _%hd228769229668%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g228758229746%_
                                                        'call-method))
                                                     (let ((__tmp235423
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self228742%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%g228757229745%_
                                                        __tmp235423)))
                                                (_%__kont234731234732%_
                                                 _%g228755229743%_
                                                 _%g228756229744%_
                                                 _%g228757229745%_
                                                 _%g228758229746%_)
                                                (_%__match235022235023%_
                                                 _%e228759229641%_
                                                 _%hd228760229644%_
                                                 _%tl228761229646%_
                                                 _%e228762229649%_
                                                 _%hd228763229652%_
                                                 _%tl228764229654%_
                                                 _%e228765229657%_
                                                 _%hd228766229660%_
                                                 _%tl228767229662%_
                                                 _%e228768229665%_
                                                 _%hd228769229668%_
                                                 _%tl228770229670%_
                                                 _%e228771229673%_
                                                 _%hd228772229676%_
                                                 _%tl228773229678%_
                                                 _%e228774229681%_
                                                 _%hd228775229684%_
                                                 _%tl228776229686%_
                                                 _%e228777229689%_
                                                 _%hd228778229692%_
                                                 _%tl228779229694%_
                                                 _%e228780229697%_
                                                 _%hd228781229700%_
                                                 _%tl228782229702%_
                                                 _%e228783229705%_
                                                 _%hd228784229708%_
                                                 _%tl228785229710%_
                                                 _%e228786229713%_
                                                 _%hd228787229716%_
                                                 _%tl228788229718%_))))))))
                          (_%loop228792229726%_ _%target228789229721%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx234729234730%_))
                    (let ((_%e228759229641%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx234729234730%_))))
                      (let ((_%tl228761229646%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e228759229641%_)))
                            (_%hd228760229644%_
                             (let ()
                               (declare (not safe))
                               (##car _%e228759229641%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl228761229646%_))
                            (let ((_%e228762229649%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl228761229646%_))))
                              (let ((_%tl228764229654%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e228762229649%_)))
                                    (_%hd228763229652%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e228762229649%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd228763229652%_))
                                    (let ((_%e228765229657%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd228763229652%_))))
                                      (let ((_%tl228767229662%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e228765229657%_)))
                                            (_%hd228766229660%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e228765229657%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd228766229660%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd228766229660%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl228767229662%_))
                                                    (let ((_%e228768229665%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl228767229662%_))))
                                                      (let ((_%tl228770229670%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e228768229665%_)))
                    (_%hd228769229668%_
                     (let () (declare (not safe)) (##car _%e228768229665%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl228770229670%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl228764229654%_))
                        (let ((_%e228771229673%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl228764229654%_))))
                          (let ((_%tl228773229678%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e228771229673%_)))
                                (_%hd228772229676%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e228771229673%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd228772229676%_))
                                (let ((_%e228774229681%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd228772229676%_))))
                                  (let ((_%tl228776229686%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e228774229681%_)))
                                        (_%hd228775229684%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e228774229681%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd228775229684%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd228775229684%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl228776229686%_))
                                                (let ((_%e228777229689%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl228776229686%_))))
                                                  (let ((_%tl228779229694%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e228777229689%_)))
                                                        (_%hd228778229692%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e228777229689%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl228779229694%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl228773229678%_))
                                                            (let ((_%e228780229697%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl228773229678%_))))
                      (let ((_%tl228782229702%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e228780229697%_)))
                            (_%hd228781229700%_
                             (let ()
                               (declare (not safe))
                               (##car _%e228780229697%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd228781229700%_))
                            (let ((_%e228783229705%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd228781229700%_))))
                              (let ((_%tl228785229710%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e228783229705%_)))
                                    (_%hd228784229708%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e228783229705%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd228784229708%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd228784229708%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl228785229710%_))
                                            (let ((_%e228786229713%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl228785229710%_))))
                                              (let ((_%tl228788229718%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e228786229713%_)))
                                                    (_%hd228787229716%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e228786229713%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl228788229718%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl228782229702%_))
                                                        (let ((_%__splice234733234734%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice->vector
                          _%tl228782229702%_
                          '0))))
                  (let ((_%tl228791229723%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice234733234734%_ '1)))
                        (_%target228789229721%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice234733234734%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl228791229723%_))
                        (_%__match234834234835%_
                         _%e228759229641%_
                         _%hd228760229644%_
                         _%tl228761229646%_
                         _%e228762229649%_
                         _%hd228763229652%_
                         _%tl228764229654%_
                         _%e228765229657%_
                         _%hd228766229660%_
                         _%tl228767229662%_
                         _%e228768229665%_
                         _%hd228769229668%_
                         _%tl228770229670%_
                         _%e228771229673%_
                         _%hd228772229676%_
                         _%tl228773229678%_
                         _%e228774229681%_
                         _%hd228775229684%_
                         _%tl228776229686%_
                         _%e228777229689%_
                         _%hd228778229692%_
                         _%tl228779229694%_
                         _%e228780229697%_
                         _%hd228781229700%_
                         _%tl228782229702%_
                         _%e228783229705%_
                         _%hd228784229708%_
                         _%tl228785229710%_
                         _%e228786229713%_
                         _%hd228787229716%_
                         _%tl228788229718%_
                         _%__splice234733234734%_
                         _%target228789229721%_
                         _%tl228791229723%_)
                        (_%__match235022235023%_
                         _%e228759229641%_
                         _%hd228760229644%_
                         _%tl228761229646%_
                         _%e228762229649%_
                         _%hd228763229652%_
                         _%tl228764229654%_
                         _%e228765229657%_
                         _%hd228766229660%_
                         _%tl228767229662%_
                         _%e228768229665%_
                         _%hd228769229668%_
                         _%tl228770229670%_
                         _%e228771229673%_
                         _%hd228772229676%_
                         _%tl228773229678%_
                         _%e228774229681%_
                         _%hd228775229684%_
                         _%tl228776229686%_
                         _%e228777229689%_
                         _%hd228778229692%_
                         _%tl228779229694%_
                         _%e228780229697%_
                         _%hd228781229700%_
                         _%tl228782229702%_
                         _%e228783229705%_
                         _%hd228784229708%_
                         _%tl228785229710%_
                         _%e228786229713%_
                         _%hd228787229716%_
                         _%tl228788229718%_))))
                (_%__match235022235023%_
                 _%e228759229641%_
                 _%hd228760229644%_
                 _%tl228761229646%_
                 _%e228762229649%_
                 _%hd228763229652%_
                 _%tl228764229654%_
                 _%e228765229657%_
                 _%hd228766229660%_
                 _%tl228767229662%_
                 _%e228768229665%_
                 _%hd228769229668%_
                 _%tl228770229670%_
                 _%e228771229673%_
                 _%hd228772229676%_
                 _%tl228773229678%_
                 _%e228774229681%_
                 _%hd228775229684%_
                 _%tl228776229686%_
                 _%e228777229689%_
                 _%hd228778229692%_
                 _%tl228779229694%_
                 _%e228780229697%_
                 _%hd228781229700%_
                 _%tl228782229702%_
                 _%e228783229705%_
                 _%hd228784229708%_
                 _%tl228785229710%_
                 _%e228786229713%_
                 _%hd228787229716%_
                 _%tl228788229718%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match235226235227%_
                                                     _%e228759229641%_
                                                     _%hd228760229644%_
                                                     _%tl228761229646%_
                                                     _%e228762229649%_
                                                     _%hd228763229652%_
                                                     _%tl228764229654%_
                                                     _%e228765229657%_
                                                     _%hd228766229660%_
                                                     _%tl228767229662%_
                                                     _%e228768229665%_
                                                     _%hd228769229668%_
                                                     _%tl228770229670%_
                                                     _%e228771229673%_
                                                     _%hd228772229676%_
                                                     _%tl228773229678%_
                                                     _%e228774229681%_
                                                     _%hd228775229684%_
                                                     _%tl228776229686%_
                                                     _%e228777229689%_
                                                     _%hd228778229692%_
                                                     _%tl228779229694%_
                                                     _%e228780229697%_
                                                     _%hd228781229700%_
                                                     _%tl228782229702%_))))
                                            (_%__match235226235227%_
                                             _%e228759229641%_
                                             _%hd228760229644%_
                                             _%tl228761229646%_
                                             _%e228762229649%_
                                             _%hd228763229652%_
                                             _%tl228764229654%_
                                             _%e228765229657%_
                                             _%hd228766229660%_
                                             _%tl228767229662%_
                                             _%e228768229665%_
                                             _%hd228769229668%_
                                             _%tl228770229670%_
                                             _%e228771229673%_
                                             _%hd228772229676%_
                                             _%tl228773229678%_
                                             _%e228774229681%_
                                             _%hd228775229684%_
                                             _%tl228776229686%_
                                             _%e228777229689%_
                                             _%hd228778229692%_
                                             _%tl228779229694%_
                                             _%e228780229697%_
                                             _%hd228781229700%_
                                             _%tl228782229702%_))
                                        (_%__match234902234903%_
                                         _%e228759229641%_
                                         _%hd228760229644%_
                                         _%tl228761229646%_
                                         _%e228762229649%_
                                         _%hd228763229652%_
                                         _%tl228764229654%_
                                         _%e228765229657%_
                                         _%hd228766229660%_
                                         _%tl228767229662%_
                                         _%e228768229665%_
                                         _%hd228769229668%_
                                         _%tl228770229670%_
                                         _%e228771229673%_
                                         _%hd228772229676%_
                                         _%tl228773229678%_
                                         _%e228774229681%_
                                         _%hd228775229684%_
                                         _%tl228776229686%_
                                         _%e228777229689%_
                                         _%hd228778229692%_
                                         _%tl228779229694%_
                                         _%e228780229697%_
                                         _%hd228781229700%_
                                         _%tl228782229702%_
                                         _%e228783229705%_
                                         _%hd228784229708%_
                                         _%tl228785229710%_))
                                    (_%__match235226235227%_
                                     _%e228759229641%_
                                     _%hd228760229644%_
                                     _%tl228761229646%_
                                     _%e228762229649%_
                                     _%hd228763229652%_
                                     _%tl228764229654%_
                                     _%e228765229657%_
                                     _%hd228766229660%_
                                     _%tl228767229662%_
                                     _%e228768229665%_
                                     _%hd228769229668%_
                                     _%tl228770229670%_
                                     _%e228771229673%_
                                     _%hd228772229676%_
                                     _%tl228773229678%_
                                     _%e228774229681%_
                                     _%hd228775229684%_
                                     _%tl228776229686%_
                                     _%e228777229689%_
                                     _%hd228778229692%_
                                     _%tl228779229694%_
                                     _%e228780229697%_
                                     _%hd228781229700%_
                                     _%tl228782229702%_))))
                            (_%__match235226235227%_
                             _%e228759229641%_
                             _%hd228760229644%_
                             _%tl228761229646%_
                             _%e228762229649%_
                             _%hd228763229652%_
                             _%tl228764229654%_
                             _%e228765229657%_
                             _%hd228766229660%_
                             _%tl228767229662%_
                             _%e228768229665%_
                             _%hd228769229668%_
                             _%tl228770229670%_
                             _%e228771229673%_
                             _%hd228772229676%_
                             _%tl228773229678%_
                             _%e228774229681%_
                             _%hd228775229684%_
                             _%tl228776229686%_
                             _%e228777229689%_
                             _%hd228778229692%_
                             _%tl228779229694%_
                             _%e228780229697%_
                             _%hd228781229700%_
                             _%tl228782229702%_))))
                    (_%__match235164235165%_
                     _%e228759229641%_
                     _%hd228760229644%_
                     _%tl228761229646%_
                     _%e228762229649%_
                     _%hd228763229652%_
                     _%tl228764229654%_
                     _%e228765229657%_
                     _%hd228766229660%_
                     _%tl228767229662%_
                     _%e228768229665%_
                     _%hd228769229668%_
                     _%tl228770229670%_
                     _%e228771229673%_
                     _%hd228772229676%_
                     _%tl228773229678%_
                     _%e228774229681%_
                     _%hd228775229684%_
                     _%tl228776229686%_
                     _%e228777229689%_
                     _%hd228778229692%_
                     _%tl228779229694%_))
                (_%__kont234747234748%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont234747234748%_))
                                            (_%__kont234747234748%_))
                                        (_%__kont234747234748%_))))
                                (_%__kont234747234748%_))))
                        (_%__kont234747234748%_))
                    (_%__kont234747234748%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont234747234748%_))
                                                (_%__kont234747234748%_))
                                            (_%__kont234747234748%_))))
                                    (_%__kont234747234748%_))))
                            (_%__kont234747234748%_))))
                    (_%__kont234747234748%_))))))))))
