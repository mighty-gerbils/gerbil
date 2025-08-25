(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1756142923)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp185179 (list gxc#::identity::t))
            (__tmp185178 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp185179
         '()
         __tmp185178
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args183976%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args183976%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp185180
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
        (__make-promise __tmp185180)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx183968%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self183971%_
                (let ((__obj185171
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj185171))
               (__tmp185181
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self183971%_ _%stx183968%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp185181
           gxc#current-compile-method
           _%self183971%_))))
    (define gxc#::extract-receiver::t
      (let ((__tmp185183 (list gxc#::false::t))
            (__tmp185182 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::extract-receiver::t
         '::extract-receiver
         __tmp185183
         '()
         __tmp185182
         '#f)))
    (define gxc#::extract-receiver?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::extract-receiver::t)))
    (define gxc#make-::extract-receiver
      (lambda _%$args183965%_
        (apply make-instance gxc#::extract-receiver::t _%$args183965%_)))
    (define gxc#::extract-receiver-bind-methods!
      (let ((__tmp185184
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
        (__make-promise __tmp185184)))
    (define gxc#apply-extract-receiver
      (lambda (_%stx183957%_)
        (force gxc#::extract-receiver-bind-methods!)
        (let* ((_%self183960%_
                (let ((__obj185173
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::extract-receiver::t))))
                  __obj185173))
               (__tmp185185
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self183960%_ _%stx183957%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp185185
           gxc#current-compile-method
           _%self183960%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp185187 (list gxc#::void::t))
            (__tmp185186 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp185187
         '(receiver methods slots)
         __tmp185186
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args183954%_
        (apply make-instance gxc#::collect-object-refs::t _%$args183954%_)))
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
      (let ((__tmp185188
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
        (__make-promise __tmp185188)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords183920%_
               _%receiver183915183921%_
               _%methods183916183923%_
               _%slots183917183925%_
               _%stx183927%_)
        (let* ((_%receiver183930%_
                (if (eq? _%receiver183915183921%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver183915183921%_))
               (_%methods183932%_
                (if (eq? _%methods183916183923%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods183916183923%_))
               (_%slots183934%_
                (if (eq? _%slots183917183925%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots183917183925%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self183936%_
                  (let ((__obj185175
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
                       __obj185175
                       _%receiver183930%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj185175
                       _%methods183932%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj185175
                       _%slots183934%_
                       '3
                       '#f
                       '#f))
                    __obj185175))
                 (__tmp185189
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self183936%_ _%stx183927%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp185189
             gxc#current-compile-method
             _%self183936%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords183943%_ . _%args183944%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords183943%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords183943%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords183943%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords183943%_
                  'slots:
                  absent-value))
               _%args183944%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args183918183950%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args183918183950%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp185191 (list gxc#::basic-xform-expression::t))
            (__tmp185190 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp185191
         '(receiver klass methods slots)
         __tmp185190
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args183911%_
        (apply make-instance gxc#::subst-object-refs::t _%$args183911%_)))
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
      (let ((__tmp185192
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
        (__make-promise __tmp185192)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords183873%_
               _%receiver183867183874%_
               _%klass183868183876%_
               _%methods183869183878%_
               _%slots183870183880%_
               _%stx183882%_)
        (let* ((_%receiver183885%_
                (if (eq? _%receiver183867183874%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver183867183874%_))
               (_%klass183887%_
                (if (eq? _%klass183868183876%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass183868183876%_))
               (_%methods183889%_
                (if (eq? _%methods183869183878%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods183869183878%_))
               (_%slots183891%_
                (if (eq? _%slots183870183880%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots183870183880%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self183893%_
                  (let ((__obj185177
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
                       __obj185177
                       _%receiver183885%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj185177
                       _%klass183887%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj185177
                       _%methods183889%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj185177
                       _%slots183891%_
                       '4
                       '#f
                       '#f))
                    __obj185177))
                 (__tmp185193
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self183893%_ _%stx183882%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp185193
             gxc#current-compile-method
             _%self183893%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords183900%_ . _%args183901%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords183900%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords183900%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords183900%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords183900%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords183900%_
                  'slots:
                  absent-value))
               _%args183901%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args183871183907%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args183871183907%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self180982%_ _%stx180983%_)
        (letrec ((_%generate-method-bind180985%_
                  (lambda (_%$klass183859%_
                           _%$method-table183860%_
                           _%id183861%_
                           _%$id183862%_)
                    (let ((_%$tmp183864%_
                           (let ((__tmp185194
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp185194))))
                      (cons (cons _%$id183862%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp183864%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table183860%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id183861%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp183864%_ '()))
                    (cons (cons '%#ref (cons _%$tmp183864%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id183861%_
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
                 (_%generate-slot-bind180986%_
                  (lambda (_%$klass183853%_ _%id183854%_ _%$id183855%_)
                    (let ((_%$tmp183857%_
                           (let ((__tmp185195
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp185195))))
                      (cons (cons _%$id183855%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp183857%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass183853%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id183854%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp183857%_ '()))
                        (cons (cons '%#ref (cons _%$tmp183857%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id183854%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl180987%_
                  (lambda (_%$klass183847%_
                           _%$method-table183848%_
                           _%methods-bind183849%_
                           _%slots-bind183850%_
                           _%specializer-impl183851%_)
                    (let ((__tmp185196
                           (cons '%#lambda
                                 (cons (cons _%$klass183847%_
                                             (cons _%$method-table183848%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__foldr1
                                                            cons
                                                            _%slots-bind183850%_
                                                            _%methods-bind183849%_))
                                                         (cons _%specializer-impl183851%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp185196 _%stx180983%_))))
                 (_%generate-specializer-def180988%_
                  (lambda (_%id183843%_
                           _%specializer-id183844%_
                           _%specializer-impl183845%_)
                    (let ((__tmp185197
                           (cons '%#begin
                                 (cons _%stx180983%_
                                       (cons (let ((__tmp185198
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id183844%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl183845%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp185198
                                                _%stx180983%_))
                                             (cons (let ((__tmp185199
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id183843%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id183844%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp185199
                                                      _%stx180983%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp185197 _%stx180983%_)))))
          (let* ((_%__stx184065184066%_ _%stx180983%_)
                 (_%g180991181011%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx184065184066%_)))))
            (let ((_%__kont184067184068%_
                   (lambda (_%L181055%_ _%L181056%_)
                     (let ((_%method-calls181075%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs181076%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty181077%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?181079%_
                                 (lambda ()
                                   (if (fxzero? (let ()
                                                  (declare (not safe))
                                                  (__hash-length
                                                   _%method-calls181075%_)))
                                       (fxzero? (let ()
                                                  (declare (not safe))
                                                  (__hash-length
                                                   _%slot-refs181076%_)))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%L181055%_))
                             (let* ((_%__stx183979183980%_ _%L181055%_)
                                    (_%g181467181485%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx183979183980%_)))))
                               (let ((_%__kont183981183982%_
                                      (lambda (_%L181521%_
                                               _%L181522%_
                                               _%L181523%_)
                                        (let ((_%receiver181543%_
                                               (let ((_%$e181540%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%L181521%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e181540%_
                                                     _%$e181540%_
                                                     _%L181523%_))))
                                          (for-each
                                           (lambda (_%g181544181546%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver181543%_
                                              _%method-calls181075%_
                                              _%slot-refs181076%_
                                              _%g181544181546%_))
                                           _%L181521%_)
                                          (if (_%no-specializer?181079%_)
                                              _%stx180983%_
                                              (let* ((_%specializer-id181555%_
                                                      (let* ((_%id181549%_
                                                              (let ((__tmp185200
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L181056%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp185200 '"::specialize")))
                     (_%specializer-id181552%_
                      (let ((__tmp185201
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx180983%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id181549%_ __tmp185201))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id181552%_))
                _%specializer-id181552%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass181557%_
                                                      (let ((__tmp185202
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp185202)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table181559%_
                                                      (let ((__tmp185203
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp185203)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods181561%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls181075%_)))
                                                     (_%$methods181565%_
                                                      (map (lambda (_%id181563%_)
                                                             (let ((__tmp185204
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id181563%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp185204)))
                   _%methods181561%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_181574%_
                                                      (for-each
                                                       (lambda (_%g181566181569%_
                                                                _%g181567181571%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%method-calls181075%_
                                                            _%g181566181569%_
                                                            _%g181567181571%_)))
                                                       _%methods181561%_
                                                       _%$methods181565%_))
                                                     (_%methods-bind181584%_
                                                      (map (lambda (_%g181576181579%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g181577181581%_)
                     (_%generate-method-bind180985%_
                      _%$klass181557%_
                      _%$method-table181559%_
                      _%g181576181579%_
                      _%g181577181581%_))
                   _%methods181561%_
                   _%$methods181565%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots181586%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs181076%_)))
                                                     (_%$slots181590%_
                                                      (map (lambda (_%id181588%_)
                                                             (let ((__tmp185205
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id181588%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp185205)))
                   _%slots181586%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_181599%_
                                                      (for-each
                                                       (lambda (_%g181591181594%_
                                                                _%g181592181596%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%slot-refs181076%_
                                                            _%g181591181594%_
                                                            _%g181592181596%_)))
                                                       _%slots181586%_
                                                       _%$slots181590%_))
                                                     (_%slots-bind181608%_
                                                      (map (lambda (_%g181600181603%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g181601181605%_)
                     (_%generate-slot-bind180986%_
                      _%$klass181557%_
                      _%g181600181603%_
                      _%g181601181605%_))
                   _%slots181586%_
                   _%$slots181590%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body181614%_
                                                      (map (lambda (_%g181609181611%_)
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%receiver181543%_
                                                              _%$klass181557%_
                                                              _%method-calls181075%_
                                                              _%slot-refs181076%_
                                                              _%g181609181611%_))
                                                           _%L181521%_))
                                                     (_%specializer-impl181616%_
                                                      (let ((__tmp185206
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%L181523%_ _%L181522%_)
                                 _%specializer-body181614%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp185206 _%stx180983%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl181618%_
                                                      (_%generate-specializer-impl180987%_
                                                       _%$klass181557%_
                                                       _%$method-table181559%_
                                                       _%methods-bind181584%_
                                                       _%slots-bind181608%_
                                                       _%specializer-impl181616%_)))
                                                (let ((__tmp185208
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L181056%_)))
                                                      (__tmp185207
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id181555%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp185208
                                                   '" => "
                                                   __tmp185207))
                                                (_%generate-specializer-def180988%_
                                                 _%L181056%_
                                                 _%specializer-id181555%_
                                                 _%specializer-impl181618%_))))))
                                     (_%__kont183983183984%_
                                      (lambda () _%stx180983%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx183979183980%_))
                                     (let ((_%e181472181497%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx183979183980%_))))
                                       (let ((_%tl181474181502%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e181472181497%_)))
                                             (_%hd181473181500%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e181472181497%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl181474181502%_))
                                             (let ((_%e181475181505%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl181474181502%_))))
                                               (let ((_%tl181477181510%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e181475181505%_)))
                                                     (_%hd181476181508%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e181475181505%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%hd181476181508%_))
                                                     (let ((_%e181478181513%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd181476181508%_))))
                                                       (let ((_%tl181480181518%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e181478181513%_)))
                     (_%hd181479181516%_
                      (let () (declare (not safe)) (##car _%e181478181513%_))))
                 (_%__kont183981183982%_
                  _%tl181477181510%_
                  _%tl181480181518%_
                  _%hd181479181516%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont183983183984%_))))
                                             (_%__kont183983183984%_))))
                                     (_%__kont183983183984%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%L181055%_))
                                 (let* ((_%g181625181644%_
                                         (lambda (_%g181626181641%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g181626181641%_))))
                                        (_%g181624181942%_
                                         (lambda (_%g181626181647%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g181626181647%_))
                                               (let ((_%e181628181649%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g181626181647%_))))
                                                 (let ((_%hd181629181652%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e181628181649%_)))
                                                       (_%tl181630181654%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e181628181649%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%tl181630181654%_))
                                                       (let ((_g185209_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%tl181630181654%_ '0))))
                 (begin
                   (let ((_g185210_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g185209_)
                                (##values-length _g185209_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g185210_ 2)))
                         (error "Context expects 2 values" _g185210_)))
                   (let ((_%target181631181657%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g185209_ 0)))
                         (_%tl181633181659%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g185209_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl181633181659%_))
                         (letrec ((_%loop181634181662%_
                                   (lambda (_%hd181632181665%_
                                            _%clause181638181667%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd181632181665%_))
                                         (let ((_%e181635181670%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd181632181665%_))))
                                           (let ((_%lp-hd181636181673%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e181635181670%_)))
                                                 (_%lp-tl181637181675%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e181635181670%_))))
                                             (_%loop181634181662%_
                                              _%lp-tl181637181675%_
                                              (cons _%lp-hd181636181673%_
                                                    _%clause181638181667%_))))
                                         (let ((_%clause181639181678%_
                                                (reverse _%clause181638181667%_)))
                                           ((lambda (_%L181681%_)
                                              (for-each
                                               (lambda (_%clause181695%_)
                                                 (let* ((_%__stx184005184006%_
                                                         _%clause181695%_)
                                                        (_%g181698181713%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx184005184006%_)))))
                                                   (let ((_%__kont184007184008%_
                                                          (lambda (_%L181741%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L181742%_
                           _%L181743%_)
                    (let ((_%receiver181762%_
                           (let ((_%$e181759%_
                                  (gxc#apply-extract-receiver
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f '%#begin))
                                         _%L181741%_))))
                             (if _%$e181759%_ _%$e181759%_ _%L181743%_))))
                      (for-each
                       (lambda (_%g181763181765%_)
                         (gxc#apply-collect-object-refs__%
                          '#f
                          _%receiver181762%_
                          _%method-calls181075%_
                          _%slot-refs181076%_
                          _%g181763181765%_))
                       _%L181741%_))))
                 (_%__kont184009184010%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx184005184006%_))
                                                         (let ((_%e181703181725%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx184005184006%_))))
                   (let ((_%tl181705181730%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e181703181725%_)))
                         (_%hd181704181728%_
                          (let ()
                            (declare (not safe))
                            (##car _%e181703181725%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd181704181728%_))
                         (let ((_%e181706181733%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd181704181728%_))))
                           (let ((_%tl181708181738%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e181706181733%_)))
                                 (_%hd181707181736%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e181706181733%_))))
                             (_%__kont184007184008%_
                              _%tl181705181730%_
                              _%tl181708181738%_
                              _%hd181707181736%_)))
                         (_%__kont184009184010%_))))
                 (_%__kont184009184010%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp185211
                                                      (lambda (_%g181770181773%_
                                                               _%g181771181775%_)
                                                        (cons _%g181770181773%_
                                                              _%g181771181775%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp185211
                                                  '()
                                                  _%L181681%_)))
                                              (if (_%no-specializer?181079%_)
                                                  _%stx180983%_
                                                  (let* ((_%specializer-id181784%_
                                                          (let* ((_%id181778%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp185212
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L181056%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp185212 '"::specialize")))
                         (_%specializer-id181781%_
                          (let ((__tmp185213
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx180983%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id181778%_
                             __tmp185213))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id181781%_))
                    _%specializer-id181781%_))
                 (_%$klass181786%_
                  (let ((__tmp185214
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp185214)))
                 (_%$method-table181788%_
                  (let ((__tmp185215
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp185215)))
                 (_%methods181790%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls181075%_)))
                 (_%$methods181794%_
                  (map (lambda (_%id181792%_)
                         (let ((__tmp185216 (gensym _%id181792%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp185216)))
                       _%methods181790%_))
                 (_%_181803%_
                  (for-each
                   (lambda (_%g181795181798%_ _%g181796181800%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%method-calls181075%_
                        _%g181795181798%_
                        _%g181796181800%_)))
                   _%methods181790%_
                   _%$methods181794%_))
                 (_%methods-bind181813%_
                  (map (lambda (_%g181805181808%_ _%g181806181810%_)
                         (_%generate-method-bind180985%_
                          _%$klass181786%_
                          _%$method-table181788%_
                          _%g181805181808%_
                          _%g181806181810%_))
                       _%methods181790%_
                       _%$methods181794%_))
                 (_%slots181815%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs181076%_)))
                 (_%$slots181819%_
                  (map (lambda (_%id181817%_)
                         (let ((__tmp185217 (gensym _%id181817%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp185217)))
                       _%slots181815%_))
                 (_%_181828%_
                  (for-each
                   (lambda (_%g181820181823%_ _%g181821181825%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%slot-refs181076%_
                        _%g181820181823%_
                        _%g181821181825%_)))
                   _%slots181815%_
                   _%$slots181819%_))
                 (_%slots-bind181837%_
                  (map (lambda (_%g181829181832%_ _%g181830181834%_)
                         (_%generate-slot-bind180986%_
                          _%$klass181786%_
                          _%g181829181832%_
                          _%g181830181834%_))
                       _%slots181815%_
                       _%$slots181819%_))
                 (_%specializer-clauses181935%_
                  (map (lambda (_%clause181839%_)
                         (let* ((_%__stx184025184026%_ _%clause181839%_)
                                (_%g181842181857%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx184025184026%_)))))
                           (let ((_%__kont184027184028%_
                                  (lambda (_%L181885%_ _%L181886%_ _%L181887%_)
                                    (let* ((_%receiver181916%_
                                            (let ((_%$e181913%_
                                                   (gxc#apply-extract-receiver
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#begin))
                                                          _%L181885%_))))
                                              (if _%$e181913%_
                                                  _%$e181913%_
                                                  _%L181887%_)))
                                           (_%body181922%_
                                            (map (lambda (_%g181917181919%_)
                                                   (gxc#apply-subst-object-refs__%
                                                    '#f
                                                    _%receiver181916%_
                                                    _%$klass181786%_
                                                    _%method-calls181075%_
                                                    _%slot-refs181076%_
                                                    _%g181917181919%_))
                                                 _%L181885%_)))
                                      (cons (cons _%L181887%_ _%L181886%_)
                                            _%body181922%_))))
                                 (_%__kont184029184030%_
                                  (lambda () _%clause181839%_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx184025184026%_))
                                 (let ((_%e181847181869%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx184025184026%_))))
                                   (let ((_%tl181849181874%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e181847181869%_)))
                                         (_%hd181848181872%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e181847181869%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd181848181872%_))
                                         (let ((_%e181850181877%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd181848181872%_))))
                                           (let ((_%tl181852181882%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e181850181877%_)))
                                                 (_%hd181851181880%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e181850181877%_))))
                                             (_%__kont184027184028%_
                                              _%tl181849181874%_
                                              _%tl181852181882%_
                                              _%hd181851181880%_)))
                                         (_%__kont184029184030%_))))
                                 (_%__kont184029184030%_)))))
                       (let ((__tmp185218
                              (lambda (_%g181927181930%_ _%g181928181932%_)
                                (cons _%g181927181930%_ _%g181928181932%_))))
                         (declare (not safe))
                         (__foldr1 __tmp185218 '() _%L181681%_))))
                 (_%specializer-impl181937%_
                  (let ((__tmp185219
                         (cons '%#case-lambda _%specializer-clauses181935%_)))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp185219 _%stx180983%_)))
                 (_%specializer-impl181939%_
                  (_%generate-specializer-impl180987%_
                   _%$klass181786%_
                   _%$method-table181788%_
                   _%methods-bind181813%_
                   _%slots-bind181837%_
                   _%specializer-impl181937%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp185221
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L181056%_)))
                                                          (__tmp185220
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id181784%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp185221
                                                       '" => "
                                                       __tmp185220))
                                                    (_%generate-specializer-def180988%_
                                                     _%L181056%_
                                                     _%specializer-id181784%_
                                                     _%specializer-impl181939%_))))
                                            _%clause181639181678%_))))))
                           (_%loop181634181662%_ _%target181631181657%_ '()))
                         (_%g181625181644%_ _%g181626181647%_)))))
               (_%g181625181644%_ _%g181626181647%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g181625181644%_
                                                _%g181626181647%_)))))
                                   (_%g181624181942%_ _%L181055%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _%L181055%_))
                                     (let* ((_%g181946181976%_
                                             (lambda (_%g181947181973%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g181947181973%_))))
                                            (_%g181945182607%_
                                             (lambda (_%g181947181979%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g181947181979%_))
                                                   (let ((_%e181951181981%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g181947181979%_))))
                                                     (let ((_%hd181952181984%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e181951181981%_)))
                                                           (_%tl181953181986%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e181951181981%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl181953181986%_))
                                                           (let ((_%e181954181989%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl181953181986%_))))
                     (let ((_%hd181955181992%_
                            (let ()
                              (declare (not safe))
                              (##car _%e181954181989%_)))
                           (_%tl181956181994%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e181954181989%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd181955181992%_))
                           (let ((_%e181957181997%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd181955181992%_))))
                             (let ((_%hd181958182000%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e181957181997%_)))
                                   (_%tl181959182002%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e181957181997%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd181958182000%_))
                                   (let ((_%e181960182005%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd181958182000%_))))
                                     (let ((_%hd181961182008%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e181960182005%_)))
                                           (_%tl181962182010%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e181960182005%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd181961182008%_))
                                           (let ((_%e181963182013%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd181961182008%_))))
                                             (let ((_%hd181964182016%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e181963182013%_)))
                                                   (_%tl181965182018%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e181963182013%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl181965182018%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl181962182010%_))
                                                       (let ((_%e181966182021%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl181962182010%_))))
                 (let ((_%hd181967182024%_
                        (let ()
                          (declare (not safe))
                          (##car _%e181966182021%_)))
                       (_%tl181968182026%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e181966182021%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl181968182026%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl181959182002%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl181956181994%_))
                               (let ((_%e181969182029%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl181956181994%_))))
                                 (let ((_%hd181970182032%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e181969182029%_)))
                                       (_%tl181971182034%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e181969182029%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl181971182034%_))
                                       ((lambda (_%L182037%_
                                                 _%L182038%_
                                                 _%L182039%_)
                                          (let* ((_%g182063182081%_
                                                  (lambda (_%g182064182078%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g182064182078%_))))
                                                 (_%g182062182137%_
                                                  (lambda (_%g182064182084%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g182064182084%_))
                                                        (let ((_%e182068182086%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g182064182084%_))))
                  (let ((_%hd182069182089%_
                         (let ()
                           (declare (not safe))
                           (##car _%e182068182086%_)))
                        (_%tl182070182091%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e182068182086%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl182070182091%_))
                        (let ((_%e182071182094%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl182070182091%_))))
                          (let ((_%hd182072182097%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e182071182094%_)))
                                (_%tl182073182099%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e182071182094%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd182072182097%_))
                                (let ((_%e182074182102%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd182072182097%_))))
                                  (let ((_%hd182075182105%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e182074182102%_)))
                                        (_%tl182076182107%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e182074182102%_))))
                                    ((lambda (_%L182110%_
                                              _%L182111%_
                                              _%L182112%_)
                                       (let ((_%receiver182131%_
                                              (let ((_%$e182128%_
                                                     (gxc#apply-extract-receiver
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))
                                                            _%L182110%_))))
                                                (if _%$e182128%_
                                                    _%$e182128%_
                                                    _%L182112%_))))
                                         (for-each
                                          (lambda (_%g182132182134%_)
                                            (gxc#apply-collect-object-refs__%
                                             '#f
                                             _%receiver182131%_
                                             _%method-calls181075%_
                                             _%slot-refs181076%_
                                             _%g182132182134%_))
                                          _%L182110%_)))
                                     _%tl182073182099%_
                                     _%tl182076182107%_
                                     _%hd182075182105%_)))
                                (_%g182063182081%_ _%g182064182084%_))))
                        (_%g182063182081%_ _%g182064182084%_))))
                (_%g182063182081%_ _%g182064182084%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g182062182137%_ _%L182038%_))
                                          (let* ((_%g182140182159%_
                                                  (lambda (_%g182141182156%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g182141182156%_))))
                                                 (_%g182139182283%_
                                                  (lambda (_%g182141182162%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g182141182162%_))
                                                        (let ((_%e182143182164%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g182141182162%_))))
                  (let ((_%hd182144182167%_
                         (let ()
                           (declare (not safe))
                           (##car _%e182143182164%_)))
                        (_%tl182145182169%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e182143182164%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl182145182169%_))
                        (let ((_g185222_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%tl182145182169%_
                                  '0))))
                          (begin
                            (let ((_g185223_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g185222_)
                                         (##values-length _g185222_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g185223_ 2)))
                                  (error "Context expects 2 values"
                                         _g185223_)))
                            (let ((_%target182146182172%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g185222_ 0)))
                                  (_%tl182148182174%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g185222_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl182148182174%_))
                                  (letrec ((_%loop182149182177%_
                                            (lambda (_%hd182147182180%_
                                                     _%clause182153182182%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd182147182180%_))
                                                  (let ((_%e182150182185%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd182147182180%_))))
                                                    (let ((_%lp-hd182151182188%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e182150182185%_)))
                                                          (_%lp-tl182152182190%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e182150182185%_))))
                                                      (_%loop182149182177%_
                                                       _%lp-tl182152182190%_
                                                       (cons _%lp-hd182151182188%_
                                                             _%clause182153182182%_))))
                                                  (let ((_%clause182154182193%_
                                                         (reverse _%clause182153182182%_)))
                                                    ((lambda (_%L182196%_)
                                                       (for-each
                                                        (lambda (_%clause182209%_)
                                                          (let* ((_%g182211182226%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g182212182223%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g182212182223%_))))
                         (_%g182210182273%_
                          (lambda (_%g182212182229%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g182212182229%_))
                                (let ((_%e182216182231%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g182212182229%_))))
                                  (let ((_%hd182217182234%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e182216182231%_)))
                                        (_%tl182218182236%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e182216182231%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd182217182234%_))
                                        (let ((_%e182219182239%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd182217182234%_))))
                                          (let ((_%hd182220182242%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e182219182239%_)))
                                                (_%tl182221182244%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e182219182239%_))))
                                            ((lambda (_%L182247%_
                                                      _%L182248%_
                                                      _%L182249%_)
                                               (let ((_%receiver182267%_
                                                      (let ((_%$e182264%_
                                                             (gxc#apply-extract-receiver
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '%#begin))
                            _%L182247%_))))
                (if _%$e182264%_ _%$e182264%_ _%L182249%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (for-each
                                                  (lambda (_%g182268182270%_)
                                                    (gxc#apply-collect-object-refs__%
                                                     '#f
                                                     _%receiver182267%_
                                                     _%method-calls181075%_
                                                     _%slot-refs181076%_
                                                     _%g182268182270%_))
                                                  _%L182247%_)))
                                             _%tl182218182236%_
                                             _%tl182221182244%_
                                             _%hd182220182242%_)))
                                        (_%g182211182226%_
                                         _%g182212182229%_))))
                                (_%g182211182226%_ _%g182212182229%_)))))
                    (_%g182210182273%_ _%clause182209%_)))
                (let ((__tmp185224
                       (lambda (_%g182275182278%_ _%g182276182280%_)
                         (cons _%g182275182278%_ _%g182276182280%_))))
                  (declare (not safe))
                  (__foldr1 __tmp185224 '() _%L182196%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%clause182154182193%_))))))
                                    (_%loop182149182177%_
                                     _%target182146182172%_
                                     '()))
                                  (_%g182140182159%_ _%g182141182162%_)))))
                        (_%g182140182159%_ _%g182141182162%_))))
                (_%g182140182159%_ _%g182141182162%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g182139182283%_ _%L182037%_))
                                          (if (_%no-specializer?181079%_)
                                              _%stx180983%_
                                              (let* ((_%specializer-id182292%_
                                                      (let* ((_%id182286%_
                                                              (let ((__tmp185225
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L181056%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp185225 '"::specialize")))
                     (_%specializer-id182289%_
                      (let ((__tmp185226
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx180983%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id182286%_ __tmp185226))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id182289%_))
                _%specializer-id182289%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass182294%_
                                                      (let ((__tmp185227
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp185227)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table182296%_
                                                      (let ((__tmp185228
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp185228)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods182298%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls181075%_)))
                                                     (_%$methods182302%_
                                                      (map (lambda (_%id182300%_)
                                                             (let ((__tmp185229
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id182300%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp185229)))
                   _%methods182298%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_182311%_
                                                      (for-each
                                                       (lambda (_%g182303182306%_
                                                                _%g182304182308%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%method-calls181075%_
                                                            _%g182303182306%_
                                                            _%g182304182308%_)))
                                                       _%methods182298%_
                                                       _%$methods182302%_))
                                                     (_%methods-bind182321%_
                                                      (map (lambda (_%g182313182316%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g182314182318%_)
                     (_%generate-method-bind180985%_
                      _%$klass182294%_
                      _%$method-table182296%_
                      _%g182313182316%_
                      _%g182314182318%_))
                   _%methods182298%_
                   _%$methods182302%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots182323%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs181076%_)))
                                                     (_%$slots182327%_
                                                      (map (lambda (_%id182325%_)
                                                             (let ((__tmp185230
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id182325%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp185230)))
                   _%slots182323%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_182336%_
                                                      (for-each
                                                       (lambda (_%g182328182331%_
                                                                _%g182329182333%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%slot-refs181076%_
                                                            _%g182328182331%_
                                                            _%g182329182333%_)))
                                                       _%slots182323%_
                                                       _%$slots182327%_))
                                                     (_%slots-bind182345%_
                                                      (map (lambda (_%g182337182340%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g182338182342%_)
                     (_%generate-slot-bind180986%_
                      _%$klass182294%_
                      _%g182337182340%_
                      _%g182338182342%_))
                   _%slots182323%_
                   _%$slots182327%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-lambda-expr182437%_
                                                      (let* ((_%g182347182365%_
                                                              (lambda (_%g182348182362%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g182348182362%_))))
                     (_%g182346182434%_
                      (lambda (_%g182348182368%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g182348182368%_))
                            (let ((_%e182352182370%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g182348182368%_))))
                              (let ((_%hd182353182373%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e182352182370%_)))
                                    (_%tl182354182375%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e182352182370%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl182354182375%_))
                                    (let ((_%e182355182378%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl182354182375%_))))
                                      (let ((_%hd182356182381%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e182355182378%_)))
                                            (_%tl182357182383%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e182355182378%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd182356182381%_))
                                            (let ((_%e182358182386%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd182356182381%_))))
                                              (let ((_%hd182359182389%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e182358182386%_)))
                                                    (_%tl182360182391%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e182358182386%_))))
                                                ((lambda (_%L182394%_
                                                          _%L182395%_
                                                          _%L182396%_)
                                                   (let* ((_%receiver182425%_
                                                           (let ((_%$e182422%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#apply-extract-receiver
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#begin))
                                 _%L182394%_))))
                     (if _%$e182422%_ _%$e182422%_ _%L182396%_)))
                  (_%body182431%_
                   (map (lambda (_%g182426182428%_)
                          (gxc#apply-subst-object-refs__%
                           '#f
                           _%receiver182425%_
                           _%$klass182294%_
                           _%method-calls181075%_
                           _%slot-refs181076%_
                           _%g182426182428%_))
                        _%L182394%_))
                  (__tmp185231
                   (cons '%#lambda
                         (cons (cons _%L182396%_ _%L182395%_)
                               _%body182431%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp185231
                                                      _%L182038%_)))
                                                 _%tl182357182383%_
                                                 _%tl182360182391%_
                                                 _%hd182359182389%_)))
                                            (_%g182347182365%_
                                             _%g182348182368%_))))
                                    (_%g182347182365%_ _%g182348182368%_))))
                            (_%g182347182365%_ _%g182348182368%_)))))
                (_%g182346182434%_ _%L182038%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-case-lambda-expr182600%_
                                                      (let* ((_%g182439182458%_
                                                              (lambda (_%g182440182455%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g182440182455%_))))
                     (_%g182438182597%_
                      (lambda (_%g182440182461%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g182440182461%_))
                            (let ((_%e182442182463%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g182440182461%_))))
                              (let ((_%hd182443182466%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e182442182463%_)))
                                    (_%tl182444182468%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e182442182463%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl182444182468%_))
                                    (let ((_g185232_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl182444182468%_
                                              '0))))
                                      (begin
                                        (let ((_g185233_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g185232_)
                                                     (##values-length
                                                      _g185232_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g185233_ 2)))
                                              (error "Context expects 2 values"
                                                     _g185233_)))
                                        (let ((_%target182445182471%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g185232_ 0)))
                                              (_%tl182447182473%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g185232_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl182447182473%_))
                                              (letrec ((_%loop182448182476%_
                                                        (lambda (_%hd182446182479%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%clause182452182481%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd182446182479%_))
                      (let ((_%e182449182484%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd182446182479%_))))
                        (let ((_%lp-hd182450182487%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e182449182484%_)))
                              (_%lp-tl182451182489%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e182449182484%_))))
                          (_%loop182448182476%_
                           _%lp-tl182451182489%_
                           (cons _%lp-hd182450182487%_
                                 _%clause182452182481%_))))
                      (let ((_%clause182453182492%_
                             (reverse _%clause182452182481%_)))
                        ((lambda (_%L182495%_)
                           (let* ((_%clauses182595%_
                                   (map (lambda (_%clause182509%_)
                                          (let* ((_%__stx184045184046%_
                                                  _%clause182509%_)
                                                 (_%g182512182527%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx184045184046%_)))))
                                            (let ((_%__kont184047184048%_
                                                   (lambda (_%L182555%_
                                                            _%L182556%_
                                                            _%L182557%_)
                                                     (let* ((_%receiver182576%_
                                                             (let ((_%$e182573%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#apply-extract-receiver
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#begin))
                                   _%L182555%_))))
                       (if _%$e182573%_ _%$e182573%_ _%L182557%_)))
                    (_%body182582%_
                     (map (lambda (_%g182577182579%_)
                            (gxc#apply-subst-object-refs__%
                             '#f
                             _%receiver182576%_
                             _%$klass182294%_
                             _%method-calls181075%_
                             _%slot-refs181076%_
                             _%g182577182579%_))
                          _%L182555%_)))
               (cons (cons _%L182557%_ _%L182556%_) _%body182582%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont184049184050%_
                                                   (lambda ()
                                                     _%clause182509%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx184045184046%_))
                                                  (let ((_%e182517182539%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%__stx184045184046%_))))
                                                    (let ((_%tl182519182544%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e182517182539%_)))
                                                          (_%hd182518182542%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e182517182539%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd182518182542%_))
                                                          (let ((_%e182520182547%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd182518182542%_))))
                    (let ((_%tl182522182552%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e182520182547%_)))
                          (_%hd182521182550%_
                           (let ()
                             (declare (not safe))
                             (##car _%e182520182547%_))))
                      (_%__kont184047184048%_
                       _%tl182519182544%_
                       _%tl182522182552%_
                       _%hd182521182550%_)))
                  (_%__kont184049184050%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont184049184050%_)))))
                                        (let ((__tmp185234
                                               (lambda (_%g182587182590%_
                                                        _%g182588182592%_)
                                                 (cons _%g182587182590%_
                                                       _%g182588182592%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp185234
                                           '()
                                           _%L182495%_))))
                                  (__tmp185235
                                   (cons '%#case-lambda _%clauses182595%_)))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp185235 _%L182037%_)))
                         _%clause182453182492%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop182448182476%_
                                                 _%target182445182471%_
                                                 '()))
                                              (_%g182439182458%_
                                               _%g182440182461%_)))))
                                    (_%g182439182458%_ _%g182440182461%_))))
                            (_%g182439182458%_ _%g182440182461%_)))))
                (_%g182438182597%_ _%L182037%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl182602%_
                                                      (let ((__tmp185236
                                                             (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons (cons _%L182039%_ '())
                                             (cons _%specializer-lambda-expr182437%_
                                                   '()))
                                       '())
                                 (cons _%specializer-case-lambda-expr182600%_
                                       '())))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp185236 _%stx180983%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl182604%_
                                                      (_%generate-specializer-impl180987%_
                                                       _%$klass182294%_
                                                       _%$method-table182296%_
                                                       _%methods-bind182321%_
                                                       _%slots-bind182345%_
                                                       _%specializer-impl182602%_)))
                                                (let ((__tmp185238
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L181056%_)))
                                                      (__tmp185237
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id182292%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp185238
                                                   '" => "
                                                   __tmp185237))
                                                (_%generate-specializer-def180988%_
                                                 _%L181056%_
                                                 _%specializer-id182292%_
                                                 _%specializer-impl182604%_))))
                                        _%hd181970182032%_
                                        _%hd181967182024%_
                                        _%hd181964182016%_)
                                       (_%g181946181976%_ _%g181947181979%_))))
                               (_%g181946181976%_ _%g181947181979%_))
                           (_%g181946181976%_ _%g181947181979%_))
                       (_%g181946181976%_ _%g181947181979%_))))
               (_%g181946181976%_ _%g181947181979%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g181946181976%_
                                                    _%g181947181979%_))))
                                           (_%g181946181976%_
                                            _%g181947181979%_))))
                                   (_%g181946181976%_ _%g181947181979%_))))
                           (_%g181946181976%_ _%g181947181979%_))))
                   (_%g181946181976%_ _%g181947181979%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g181946181976%_
                                                    _%g181947181979%_)))))
                                       (_%g181945182607%_ _%L181055%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _%L181055%_))
                                         (let* ((_%g182611182664%_
                                                 (lambda (_%g182612182661%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g182612182661%_))))
                                                (_%g182610183835%_
                                                 (lambda (_%g182612182667%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g182612182667%_))
                                                       (let ((_%e182618182669%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g182612182667%_))))
                 (let ((_%hd182619182672%_
                        (let ()
                          (declare (not safe))
                          (##car _%e182618182669%_)))
                       (_%tl182620182674%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e182618182669%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%hd182619182672%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%hd182619182672%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl182620182674%_))
                               (let ((_%e182621182677%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl182620182674%_))))
                                 (let ((_%hd182622182680%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e182621182677%_)))
                                       (_%tl182623182682%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e182621182677%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd182622182680%_))
                                       (let ((_%e182624182685%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd182622182680%_))))
                                         (let ((_%hd182625182688%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e182624182685%_)))
                                               (_%tl182626182690%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e182624182685%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd182625182688%_))
                                               (let ((_%e182627182693%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd182625182688%_))))
                                                 (let ((_%hd182628182696%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e182627182693%_)))
                                                       (_%tl182629182698%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e182627182693%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd182628182696%_))
                                                       (let ((_%e182630182701%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd182628182696%_))))
                 (let ((_%hd182631182704%_
                        (let ()
                          (declare (not safe))
                          (##car _%e182630182701%_)))
                       (_%tl182632182706%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e182630182701%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl182632182706%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl182629182698%_))
                           (let ((_%e182633182709%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl182629182698%_))))
                             (let ((_%hd182634182712%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e182633182709%_)))
                                   (_%tl182635182714%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e182633182709%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd182634182712%_))
                                   (let ((_%e182636182717%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd182634182712%_))))
                                     (let ((_%hd182637182720%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e182636182717%_)))
                                           (_%tl182638182722%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e182636182717%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd182637182720%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%hd182637182720%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl182638182722%_))
                                                   (let ((_%e182639182725%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl182638182722%_))))
                                                     (let ((_%hd182640182728%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e182639182725%_)))
                                                           (_%tl182641182730%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e182639182725%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd182640182728%_))
                                                           (let ((_%e182642182733%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%hd182640182728%_))))
                     (let ((_%hd182643182736%_
                            (let ()
                              (declare (not safe))
                              (##car _%e182642182733%_)))
                           (_%tl182644182738%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e182642182733%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd182643182736%_))
                           (let ((_%e182645182741%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd182643182736%_))))
                             (let ((_%hd182646182744%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e182645182741%_)))
                                   (_%tl182647182746%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e182645182741%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd182646182744%_))
                                   (let ((_%e182648182749%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd182646182744%_))))
                                     (let ((_%hd182649182752%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e182648182749%_)))
                                           (_%tl182650182754%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e182648182749%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl182650182754%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl182647182746%_))
                                               (let ((_%e182651182757%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl182647182746%_))))
                                                 (let ((_%hd182652182760%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e182651182757%_)))
                                                       (_%tl182653182762%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e182651182757%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl182653182762%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl182644182738%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl182641182730%_))
                       (let ((_%e182654182765%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl182641182730%_))))
                         (let ((_%hd182655182768%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e182654182765%_)))
                               (_%tl182656182770%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e182654182765%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl182656182770%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl182635182714%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl182626182690%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl182623182682%_))
                                           (let ((_%e182657182773%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl182623182682%_))))
                                             (let ((_%hd182658182776%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e182657182773%_)))
                                                   (_%tl182659182778%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e182657182773%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl182659182778%_))
                                                   ((lambda (_%L182781%_
                                                             _%L182782%_
                                                             _%L182783%_
                                                             _%L182784%_
                                                             _%L182785%_)
                                                      (let* ((_%g182825182887%_
                                                              (lambda (_%g182826182884%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g182826182884%_))))
                     (_%g182824183832%_
                      (lambda (_%g182826182890%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g182826182890%_))
                            (let ((_%e182832182892%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g182826182890%_))))
                              (let ((_%hd182833182895%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e182832182892%_)))
                                    (_%tl182834182897%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e182832182892%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd182833182895%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd182833182895%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl182834182897%_))
                                            (let ((_%e182835182900%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl182834182897%_))))
                                              (let ((_%hd182836182903%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e182835182900%_)))
                                                    (_%tl182837182905%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e182835182900%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl182837182905%_))
                                                    (let ((_%e182838182908%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl182837182905%_))))
                                                      (let ((_%hd182839182911%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e182838182908%_)))
                    (_%tl182840182913%_
                     (let () (declare (not safe)) (##cdr _%e182838182908%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd182839182911%_))
                    (let ((_%e182841182916%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd182839182911%_))))
                      (let ((_%hd182842182919%_
                             (let ()
                               (declare (not safe))
                               (##car _%e182841182916%_)))
                            (_%tl182843182921%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e182841182916%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd182842182919%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _%hd182842182919%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl182843182921%_))
                                    (let ((_%e182844182924%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl182843182921%_))))
                                      (let ((_%hd182845182927%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e182844182924%_)))
                                            (_%tl182846182929%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e182844182924%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd182845182927%_))
                                            (let ((_%e182847182932%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd182845182927%_))))
                                              (let ((_%hd182848182935%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e182847182932%_)))
                                                    (_%tl182849182937%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e182847182932%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd182848182935%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd182848182935%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl182849182937%_))
                                                            (let ((_%e182850182940%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl182849182937%_))))
                      (let ((_%hd182851182943%_
                             (let ()
                               (declare (not safe))
                               (##car _%e182850182940%_)))
                            (_%tl182852182945%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e182850182940%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl182852182945%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl182846182929%_))
                                (let ((_%e182853182948%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl182846182929%_))))
                                  (let ((_%hd182854182951%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e182853182948%_)))
                                        (_%tl182855182953%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e182853182948%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd182854182951%_))
                                        (let ((_%e182856182956%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd182854182951%_))))
                                          (let ((_%hd182857182959%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e182856182956%_)))
                                                (_%tl182858182961%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e182856182956%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd182857182959%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%hd182857182959%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl182858182961%_))
                                                        (let ((_%e182859182964%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl182858182961%_))))
                  (let ((_%hd182860182967%_
                         (let ()
                           (declare (not safe))
                           (##car _%e182859182964%_)))
                        (_%tl182861182969%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e182859182964%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl182861182969%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl182855182953%_))
                            (let ((_%e182862182972%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl182855182953%_))))
                              (let ((_%hd182863182975%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e182862182972%_)))
                                    (_%tl182864182977%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e182862182972%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd182863182975%_))
                                    (let ((_%e182865182980%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd182863182975%_))))
                                      (let ((_%hd182866182983%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e182865182980%_)))
                                            (_%tl182867182985%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e182865182980%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd182866182983%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd182866182983%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl182867182985%_))
                                                    (let ((_%e182868182988%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl182867182985%_))))
                                                      (let ((_%hd182869182991%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e182868182988%_)))
                    (_%tl182870182993%_
                     (let () (declare (not safe)) (##cdr _%e182868182988%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl182870182993%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl182864182977%_))
                        (if (let ((__tmp185239
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-length _%tl182864182977%_))))
                              (declare (not safe))
                              (##fx>= __tmp185239 '1))
                            (let ((_g185240_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl182864182977%_
                                      '1))))
                              (begin
                                (let ((_g185241_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g185240_)
                                             (##values-length _g185240_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g185241_ 2)))
                                      (error "Context expects 2 values"
                                             _g185241_)))
                                (let ((_%target182871182996%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g185240_ 0)))
                                      (_%tl182873182998%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g185240_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl182873182998%_))
                                      (let ((_%e182880183001%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl182873182998%_))))
                                        (let ((_%hd182881183004%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e182880183001%_)))
                                              (_%tl182882183006%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e182880183001%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl182882183006%_))
                                              (letrec ((_%loop182874183009%_
                                                        (lambda (_%hd182872183012%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%kw-ref182878183014%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd182872183012%_))
                      (let ((_%e182875183017%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd182872183012%_))))
                        (let ((_%lp-hd182876183020%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e182875183017%_)))
                              (_%lp-tl182877183022%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e182875183017%_))))
                          (_%loop182874183009%_
                           _%lp-tl182877183022%_
                           (cons _%lp-hd182876183020%_
                                 _%kw-ref182878183014%_))))
                      (let ((_%kw-ref182879183025%_
                             (reverse _%kw-ref182878183014%_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl182840182913%_))
                            ((lambda (_%L183028%_
                                      _%L183029%_
                                      _%L183030%_
                                      _%L183031%_
                                      _%L183032%_)
                               (let* ((_%kw-count183083%_
                                       (length (let ((__tmp185242
                                                      (lambda (_%g183075183078%_
                                                               _%g183076183080%_)
                                                        (cons _%g183075183078%_
                                                              _%g183076183080%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp185242
                                                  '()
                                                  _%L183029%_))))
                                      (_%self-index183085%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%kw-count183083%_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _%L182783%_))
                                     (let* ((_%g183089183103%_
                                             (lambda (_%g183090183100%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g183090183100%_))))
                                            (_%g183088183226%_
                                             (lambda (_%g183090183106%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g183090183106%_))
                                                   (let ((_%e183093183108%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g183090183106%_))))
                                                     (let ((_%hd183094183111%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e183093183108%_)))
                                                           (_%tl183095183113%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e183093183108%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl183095183113%_))
                                                           (let ((_%e183096183116%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl183095183113%_))))
                     (let ((_%hd183097183119%_
                            (let ()
                              (declare (not safe))
                              (##car _%e183096183116%_)))
                           (_%tl183098183121%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e183096183116%_))))
                       ((lambda (_%L183124%_ _%L183125%_)
                          (let* ((_%self183142%_
                                  (list-ref _%L183125%_ _%self-index183085%_))
                                 (_%receiver183147%_
                                  (let ((_%$e183144%_
                                         (gxc#apply-extract-receiver
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   '%#begin))
                                                _%L183124%_))))
                                    (if _%$e183144%_
                                        _%$e183144%_
                                        _%self183142%_))))
                            (for-each
                             (lambda (_%g183149183151%_)
                               (gxc#apply-collect-object-refs__%
                                '#f
                                _%receiver183147%_
                                _%method-calls181075%_
                                _%slot-refs181076%_
                                _%g183149183151%_))
                             _%L183124%_)
                            (if (_%no-specializer?181079%_)
                                _%stx180983%_
                                (let* ((_%specializer-id183160%_
                                        (let* ((_%id183154%_
                                                (let ((__tmp185243
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L181056%_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp185243
                                                   '"::specialize")))
                                               (_%specializer-id183157%_
                                                (let ((__tmp185244
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _%stx180983%_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _%id183154%_
                                                   __tmp185244))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _%specializer-id183157%_))
                                          _%specializer-id183157%_))
                                       (_%$klass183162%_
                                        (let ((__tmp185245
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__klass))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp185245)))
                                       (_%$method-table183164%_
                                        (let ((__tmp185246
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__method-table))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp185246)))
                                       (_%methods183166%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys
                                           _%method-calls181075%_)))
                                       (_%$methods183170%_
                                        (map (lambda (_%id183168%_)
                                               (let ((__tmp185247
                                                      (gensym _%id183168%_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp185247)))
                                             _%methods183166%_))
                                       (_%_183179%_
                                        (for-each
                                         (lambda (_%g183171183174%_
                                                  _%g183172183176%_)
                                           (let ()
                                             (declare (not safe))
                                             (__hash-put!
                                              _%method-calls181075%_
                                              _%g183171183174%_
                                              _%g183172183176%_)))
                                         _%methods183166%_
                                         _%$methods183170%_))
                                       (_%methods-bind183189%_
                                        (map (lambda (_%g183181183184%_
                                                      _%g183182183186%_)
                                               (_%generate-method-bind180985%_
                                                _%$klass183162%_
                                                _%$method-table183164%_
                                                _%g183181183184%_
                                                _%g183182183186%_))
                                             _%methods183166%_
                                             _%$methods183170%_))
                                       (_%slots183191%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys _%slot-refs181076%_)))
                                       (_%$slots183195%_
                                        (map (lambda (_%id183193%_)
                                               (let ((__tmp185248
                                                      (gensym _%id183193%_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp185248)))
                                             _%slots183191%_))
                                       (_%_183204%_
                                        (for-each
                                         (lambda (_%g183196183199%_
                                                  _%g183197183201%_)
                                           (let ()
                                             (declare (not safe))
                                             (__hash-put!
                                              _%slot-refs181076%_
                                              _%g183196183199%_
                                              _%g183197183201%_)))
                                         _%slots183191%_
                                         _%$slots183195%_))
                                       (_%slots-bind183213%_
                                        (map (lambda (_%g183205183208%_
                                                      _%g183206183210%_)
                                               (_%generate-slot-bind180986%_
                                                _%$klass183162%_
                                                _%g183205183208%_
                                                _%g183206183210%_))
                                             _%slots183191%_
                                             _%$slots183195%_))
                                       (_%specializer-impl183221%_
                                        (let* ((_%specializer-body183219%_
                                                (map (lambda (_%g183214183216%_)
                                                       (gxc#apply-subst-object-refs__%
                                                        '#f
                                                        _%receiver183147%_
                                                        _%$klass183162%_
                                                        _%method-calls181075%_
                                                        _%slot-refs181076%_
                                                        _%g183214183216%_))
                                                     _%L183124%_))
                                               (__tmp185249
                                                (cons '%#let-values
                                                      (cons (cons (cons (cons _%L182785%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (cons '%#let-values
                                            (cons (cons (cons (cons _%L182784%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (let ((__tmp185250
                                   (cons '%#lambda
                                         (cons _%L183125%_
                                               _%specializer-body183219%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-source __tmp185250 _%L182783%_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%L182782%_ '())))
                                      '()))
                          '())
                    (cons _%L182781%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp185249
                                           _%stx180983%_)))
                                       (_%specializer-impl183223%_
                                        (_%generate-specializer-impl180987%_
                                         _%$klass183162%_
                                         _%$method-table183164%_
                                         _%methods-bind183189%_
                                         _%slots-bind183213%_
                                         _%specializer-impl183221%_)))
                                  (let ((__tmp185252
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%L181056%_)))
                                        (__tmp185251
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e
                                            _%specializer-id183160%_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp185252
                                     '" => "
                                     __tmp185251))
                                  (_%generate-specializer-def180988%_
                                   _%L181056%_
                                   _%specializer-id183160%_
                                   _%specializer-impl183223%_)))))
                        _%tl183098183121%_
                        _%hd183097183119%_)))
                   (_%g183089183103%_ _%g183090183106%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g183089183103%_
                                                    _%g183090183106%_)))))
                                       (_%g183088183226%_ _%L182783%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _%L182783%_))
                                         (let* ((_%g183230183260%_
                                                 (lambda (_%g183231183257%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g183231183257%_))))
                                                (_%g183229183828%_
                                                 (lambda (_%g183231183263%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g183231183263%_))
                                                       (let ((_%e183235183265%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g183231183263%_))))
                 (let ((_%hd183236183268%_
                        (let ()
                          (declare (not safe))
                          (##car _%e183235183265%_)))
                       (_%tl183237183270%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e183235183265%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl183237183270%_))
                       (let ((_%e183238183273%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl183237183270%_))))
                         (let ((_%hd183239183276%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e183238183273%_)))
                               (_%tl183240183278%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e183238183273%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd183239183276%_))
                               (let ((_%e183241183281%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd183239183276%_))))
                                 (let ((_%hd183242183284%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e183241183281%_)))
                                       (_%tl183243183286%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e183241183281%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd183242183284%_))
                                       (let ((_%e183244183289%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd183242183284%_))))
                                         (let ((_%hd183245183292%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e183244183289%_)))
                                               (_%tl183246183294%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e183244183289%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd183245183292%_))
                                               (let ((_%e183247183297%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd183245183292%_))))
                                                 (let ((_%hd183248183300%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e183247183297%_)))
                                                       (_%tl183249183302%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e183247183297%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl183249183302%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl183246183294%_))
                                                           (let ((_%e183250183305%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl183246183294%_))))
                     (let ((_%hd183251183308%_
                            (let ()
                              (declare (not safe))
                              (##car _%e183250183305%_)))
                           (_%tl183252183310%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e183250183305%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl183252183310%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl183243183286%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl183240183278%_))
                                   (let ((_%e183253183313%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl183240183278%_))))
                                     (let ((_%hd183254183316%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e183253183313%_)))
                                           (_%tl183255183318%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e183253183313%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl183255183318%_))
                                           ((lambda (_%L183321%_
                                                     _%L183322%_
                                                     _%L183323%_)
                                              (let* ((_%g183347183361%_
                                                      (lambda (_%g183348183358%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g183348183358%_))))
                                                     (_%g183346183408%_
                                                      (lambda (_%g183348183364%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g183348183364%_))
                                                            (let ((_%e183351183366%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g183348183364%_))))
                      (let ((_%hd183352183369%_
                             (let ()
                               (declare (not safe))
                               (##car _%e183351183366%_)))
                            (_%tl183353183371%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e183351183366%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl183353183371%_))
                            (let ((_%e183354183374%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl183353183371%_))))
                              (let ((_%hd183355183377%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e183354183374%_)))
                                    (_%tl183356183379%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e183354183374%_))))
                                ((lambda (_%L183382%_ _%L183383%_)
                                   (let* ((_%self183396%_
                                           (list-ref
                                            _%L183383%_
                                            _%self-index183085%_))
                                          (_%receiver183401%_
                                           (let ((_%$e183398%_
                                                  (gxc#apply-extract-receiver
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '%#begin))
                                                         _%L183382%_))))
                                             (if _%$e183398%_
                                                 _%$e183398%_
                                                 _%self183396%_))))
                                     (for-each
                                      (lambda (_%g183403183405%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%receiver183401%_
                                         _%method-calls181075%_
                                         _%slot-refs181076%_
                                         _%g183403183405%_))
                                      _%L183382%_)))
                                 _%tl183356183379%_
                                 _%hd183355183377%_)))
                            (_%g183347183361%_ _%g183348183364%_))))
                    (_%g183347183361%_ _%g183348183364%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g183346183408%_
                                                 _%L183322%_))
                                              (let* ((_%g183411183430%_
                                                      (lambda (_%g183412183427%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g183412183427%_))))
                                                     (_%g183410183541%_
                                                      (lambda (_%g183412183433%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g183412183433%_))
                                                            (let ((_%e183414183435%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g183412183433%_))))
                      (let ((_%hd183415183438%_
                             (let ()
                               (declare (not safe))
                               (##car _%e183414183435%_)))
                            (_%tl183416183440%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e183414183435%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _%tl183416183440%_))
                            (let ((_g185253_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl183416183440%_
                                      '0))))
                              (begin
                                (let ((_g185254_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g185253_)
                                             (##values-length _g185253_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g185254_ 2)))
                                      (error "Context expects 2 values"
                                             _g185254_)))
                                (let ((_%target183417183443%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g185253_ 0)))
                                      (_%tl183419183445%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g185253_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl183419183445%_))
                                      (letrec ((_%loop183420183448%_
                                                (lambda (_%hd183418183451%_
                                                         _%clause183424183453%_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd183418183451%_))
                                                      (let ((_%e183421183456%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd183418183451%_))))
                (let ((_%lp-hd183422183459%_
                       (let () (declare (not safe)) (##car _%e183421183456%_)))
                      (_%lp-tl183423183461%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e183421183456%_))))
                  (_%loop183420183448%_
                   _%lp-tl183423183461%_
                   (cons _%lp-hd183422183459%_ _%clause183424183453%_))))
              (let ((_%clause183425183464%_ (reverse _%clause183424183453%_)))
                ((lambda (_%L183467%_)
                   (for-each
                    (lambda (_%clause183480%_)
                      (let* ((_%g183482183493%_
                              (lambda (_%g183483183490%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g183483183490%_))))
                             (_%g183481183531%_
                              (lambda (_%g183483183496%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g183483183496%_))
                                    (let ((_%e183486183498%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g183483183496%_))))
                                      (let ((_%hd183487183501%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e183486183498%_)))
                                            (_%tl183488183503%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e183486183498%_))))
                                        ((lambda (_%L183506%_ _%L183507%_)
                                           (let* ((_%self183519%_
                                                   (list-ref
                                                    _%L183507%_
                                                    _%self-index183085%_))
                                                  (_%receiver183524%_
                                                   (let ((_%$e183521%_
                                                          (gxc#apply-extract-receiver
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#begin))
                         _%L183506%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e183521%_
                                                         _%$e183521%_
                                                         _%self183519%_))))
                                             (for-each
                                              (lambda (_%g183526183528%_)
                                                (gxc#apply-collect-object-refs__%
                                                 '#f
                                                 _%receiver183524%_
                                                 _%method-calls181075%_
                                                 _%slot-refs181076%_
                                                 _%g183526183528%_))
                                              _%L183506%_)))
                                         _%tl183488183503%_
                                         _%hd183487183501%_)))
                                    (_%g183482183493%_ _%g183483183496%_)))))
                        (_%g183481183531%_ _%clause183480%_)))
                    (let ((__tmp185255
                           (lambda (_%g183533183536%_ _%g183534183538%_)
                             (cons _%g183533183536%_ _%g183534183538%_))))
                      (declare (not safe))
                      (__foldr1 __tmp185255 '() _%L183467%_))))
                 _%clause183425183464%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop183420183448%_
                                         _%target183417183443%_
                                         '()))
                                      (_%g183411183430%_ _%g183412183433%_)))))
                            (_%g183411183430%_ _%g183412183433%_))))
                    (_%g183411183430%_ _%g183412183433%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g183410183541%_
                                                 _%L183321%_))
                                              (if (_%no-specializer?181079%_)
                                                  _%stx180983%_
                                                  (let* ((_%specializer-id183550%_
                                                          (let* ((_%id183544%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp185256
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L181056%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp185256 '"::specialize")))
                         (_%specializer-id183547%_
                          (let ((__tmp185257
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx180983%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id183544%_
                             __tmp185257))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id183547%_))
                    _%specializer-id183547%_))
                 (_%$klass183552%_
                  (let ((__tmp185258
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp185258)))
                 (_%$method-table183554%_
                  (let ((__tmp185259
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp185259)))
                 (_%methods183556%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls181075%_)))
                 (_%$methods183560%_
                  (map (lambda (_%id183558%_)
                         (let ((__tmp185260 (gensym _%id183558%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp185260)))
                       _%methods183556%_))
                 (_%_183569%_
                  (for-each
                   (lambda (_%g183561183564%_ _%g183562183566%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%method-calls181075%_
                        _%g183561183564%_
                        _%g183562183566%_)))
                   _%methods183556%_
                   _%$methods183560%_))
                 (_%methods-bind183579%_
                  (map (lambda (_%g183571183574%_ _%g183572183576%_)
                         (_%generate-method-bind180985%_
                          _%$klass183552%_
                          _%$method-table183554%_
                          _%g183571183574%_
                          _%g183572183576%_))
                       _%methods183556%_
                       _%$methods183560%_))
                 (_%slots183581%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs181076%_)))
                 (_%$slots183585%_
                  (map (lambda (_%id183583%_)
                         (let ((__tmp185261 (gensym _%id183583%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp185261)))
                       _%slots183581%_))
                 (_%_183594%_
                  (for-each
                   (lambda (_%g183586183589%_ _%g183587183591%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%slot-refs181076%_
                        _%g183586183589%_
                        _%g183587183591%_)))
                   _%slots183581%_
                   _%$slots183585%_))
                 (_%slots-bind183603%_
                  (map (lambda (_%g183595183598%_ _%g183596183600%_)
                         (_%generate-slot-bind180986%_
                          _%$klass183552%_
                          _%g183595183598%_
                          _%g183596183600%_))
                       _%slots183581%_
                       _%$slots183585%_))
                 (_%specializer-lambda-expr183681%_
                  (let* ((_%g183605183619%_
                          (lambda (_%g183606183616%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g183606183616%_))))
                         (_%g183604183678%_
                          (lambda (_%g183606183622%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g183606183622%_))
                                (let ((_%e183609183624%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g183606183622%_))))
                                  (let ((_%hd183610183627%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e183609183624%_)))
                                        (_%tl183611183629%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e183609183624%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl183611183629%_))
                                        (let ((_%e183612183632%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl183611183629%_))))
                                          (let ((_%hd183613183635%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e183612183632%_)))
                                                (_%tl183614183637%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e183612183632%_))))
                                            ((lambda (_%L183640%_ _%L183641%_)
                                               (let* ((_%self183664%_
                                                       (list-ref
                                                        _%L183641%_
                                                        _%self-index183085%_))
                                                      (_%receiver183669%_
                                                       (let ((_%$e183666%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%L183640%_))))
                 (if _%$e183666%_ _%$e183666%_ _%self183664%_)))
              (_%body183675%_
               (map (lambda (_%g183670183672%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver183669%_
                       _%$klass183552%_
                       _%method-calls181075%_
                       _%slot-refs181076%_
                       _%g183670183672%_))
                    _%L183640%_))
              (__tmp185262 (cons '%#lambda (cons _%L183641%_ _%body183675%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp185262
                                                  _%L183322%_)))
                                             _%tl183614183637%_
                                             _%hd183613183635%_)))
                                        (_%g183605183619%_
                                         _%g183606183622%_))))
                                (_%g183605183619%_ _%g183606183622%_)))))
                    (_%g183604183678%_ _%L183322%_)))
                 (_%specializer-case-lambda-expr183821%_
                  (let* ((_%g183683183702%_
                          (lambda (_%g183684183699%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g183684183699%_))))
                         (_%g183682183818%_
                          (lambda (_%g183684183705%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g183684183705%_))
                                (let ((_%e183686183707%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g183684183705%_))))
                                  (let ((_%hd183687183710%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e183686183707%_)))
                                        (_%tl183688183712%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e183686183707%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl183688183712%_))
                                        (let ((_g185263_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl183688183712%_
                                                  '0))))
                                          (begin
                                            (let ((_g185264_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g185263_)
                                                         (##values-length
                                                          _g185263_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g185264_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g185264_)))
                                            (let ((_%target183689183715%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g185263_
                                                      0)))
                                                  (_%tl183691183717%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g185263_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl183691183717%_))
                                                  (letrec ((_%loop183692183720%_
                                                            (lambda (_%hd183690183723%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause183696183725%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd183690183723%_))
                          (let ((_%e183693183728%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd183690183723%_))))
                            (let ((_%lp-hd183694183731%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e183693183728%_)))
                                  (_%lp-tl183695183733%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e183693183728%_))))
                              (_%loop183692183720%_
                               _%lp-tl183695183733%_
                               (cons _%lp-hd183694183731%_
                                     _%clause183696183725%_))))
                          (let ((_%clause183697183736%_
                                 (reverse _%clause183696183725%_)))
                            ((lambda (_%L183739%_)
                               (let* ((_%clauses183816%_
                                       (map (lambda (_%clause183753%_)
                                              (let* ((_%g183755183766%_
                                                      (lambda (_%g183756183763%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g183756183763%_))))
                                                     (_%g183754183806%_
                                                      (lambda (_%g183756183769%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g183756183769%_))
                                                            (let ((_%e183759183771%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g183756183769%_))))
                      (let ((_%hd183760183774%_
                             (let ()
                               (declare (not safe))
                               (##car _%e183759183771%_)))
                            (_%tl183761183776%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e183759183771%_))))
                        ((lambda (_%L183779%_ _%L183780%_)
                           (let* ((_%self183792%_
                                   (list-ref _%L183780%_ _%self-index183085%_))
                                  (_%receiver183797%_
                                   (let ((_%$e183794%_
                                          (gxc#apply-extract-receiver
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '%#begin))
                                                 _%L183779%_))))
                                     (if _%$e183794%_
                                         _%$e183794%_
                                         _%self183792%_)))
                                  (_%body183803%_
                                   (map (lambda (_%g183798183800%_)
                                          (gxc#apply-subst-object-refs__%
                                           '#f
                                           _%receiver183797%_
                                           _%$klass183552%_
                                           _%method-calls181075%_
                                           _%slot-refs181076%_
                                           _%g183798183800%_))
                                        _%L183779%_)))
                             (cons _%L183780%_ _%body183803%_)))
                         _%tl183761183776%_
                         _%hd183760183774%_)))
                    (_%g183755183766%_ _%g183756183769%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g183754183806%_
                                                 _%clause183753%_)))
                                            (let ((__tmp185265
                                                   (lambda (_%g183808183811%_
                                                            _%g183809183813%_)
                                                     (cons _%g183808183811%_
                                                           _%g183809183813%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp185265
                                               '()
                                               _%L183739%_))))
                                      (__tmp185266
                                       (cons '%#case-lambda
                                             _%clauses183816%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp185266
                                  _%L183321%_)))
                             _%clause183697183736%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop183692183720%_
                                                     _%target183689183715%_
                                                     '()))
                                                  (_%g183683183702%_
                                                   _%g183684183705%_)))))
                                        (_%g183683183702%_
                                         _%g183684183705%_))))
                                (_%g183683183702%_ _%g183684183705%_)))))
                    (_%g183682183818%_ _%L183321%_)))
                 (_%specializer-impl183823%_
                  (let ((__tmp185267
                         (cons '%#let-values
                               (cons (cons (cons (cons _%L182785%_ '())
                                                 (cons (cons '%#let-values
                                                             (cons (cons (cons (cons _%L182784%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             '())
                                       (cons (let ((__tmp185268
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%L183323%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons _%specializer-lambda-expr183681%_
                                          '()))
                              '())
                        (cons _%specializer-case-lambda-expr183821%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp185268
                                                _%stx180983%_))
                                             '()))
                                 '())
                           (cons _%L182782%_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons _%L182781%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp185267 _%stx180983%_)))
                 (_%specializer-impl183825%_
                  (_%generate-specializer-impl180987%_
                   _%$klass183552%_
                   _%$method-table183554%_
                   _%methods-bind183579%_
                   _%slots-bind183603%_
                   _%specializer-impl183823%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp185270
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L181056%_)))
                                                          (__tmp185269
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id183550%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp185270
                                                       '" => "
                                                       __tmp185269))
                                                    (_%generate-specializer-def180988%_
                                                     _%L181056%_
                                                     _%specializer-id183550%_
                                                     _%specializer-impl183825%_))))
                                            _%hd183254183316%_
                                            _%hd183251183308%_
                                            _%hd183248183300%_)
                                           (_%g183230183260%_
                                            _%g183231183263%_))))
                                   (_%g183230183260%_ _%g183231183263%_))
                               (_%g183230183260%_ _%g183231183263%_))
                           (_%g183230183260%_ _%g183231183263%_))))
                   (_%g183230183260%_ _%g183231183263%_))
               (_%g183230183260%_ _%g183231183263%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g183230183260%_
                                                _%g183231183263%_))))
                                       (_%g183230183260%_ _%g183231183263%_))))
                               (_%g183230183260%_ _%g183231183263%_))))
                       (_%g183230183260%_ _%g183231183263%_))))
               (_%g183230183260%_ _%g183231183263%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g183229183828%_ _%L182783%_))
                                         _%stx180983%_))))
                             _%hd182881183004%_
                             _%kw-ref182879183025%_
                             _%hd182869182991%_
                             _%hd182860182967%_
                             _%hd182851182943%_)
                            (_%g182825182887%_ _%g182826182890%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop182874183009%_
                                                 _%target182871182996%_
                                                 '()))
                                              (_%g182825182887%_
                                               _%g182826182890%_))))
                                      (_%g182825182887%_ _%g182826182890%_)))))
                            (_%g182825182887%_ _%g182826182890%_))
                        (_%g182825182887%_ _%g182826182890%_))
                    (_%g182825182887%_ _%g182826182890%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g182825182887%_
                                                     _%g182826182890%_))
                                                (_%g182825182887%_
                                                 _%g182826182890%_))
                                            (_%g182825182887%_
                                             _%g182826182890%_))))
                                    (_%g182825182887%_ _%g182826182890%_))))
                            (_%g182825182887%_ _%g182826182890%_))
                        (_%g182825182887%_ _%g182826182890%_))))
                (_%g182825182887%_ _%g182826182890%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g182825182887%_
                                                     _%g182826182890%_))
                                                (_%g182825182887%_
                                                 _%g182826182890%_))))
                                        (_%g182825182887%_
                                         _%g182826182890%_))))
                                (_%g182825182887%_ _%g182826182890%_))
                            (_%g182825182887%_ _%g182826182890%_))))
                    (_%g182825182887%_ _%g182826182890%_))
                (_%g182825182887%_ _%g182826182890%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g182825182887%_
                                                     _%g182826182890%_))))
                                            (_%g182825182887%_
                                             _%g182826182890%_))))
                                    (_%g182825182887%_ _%g182826182890%_))
                                (_%g182825182887%_ _%g182826182890%_))
                            (_%g182825182887%_ _%g182826182890%_))))
                    (_%g182825182887%_ _%g182826182890%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g182825182887%_
                                                     _%g182826182890%_))))
                                            (_%g182825182887%_
                                             _%g182826182890%_))
                                        (_%g182825182887%_ _%g182826182890%_))
                                    (_%g182825182887%_ _%g182826182890%_))))
                            (_%g182825182887%_ _%g182826182890%_)))))
                (_%g182824183832%_ _%L182782%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd182658182776%_
                                                    _%hd182655182768%_
                                                    _%hd182652182760%_
                                                    _%hd182649182752%_
                                                    _%hd182631182704%_)
                                                   (_%g182611182664%_
                                                    _%g182612182667%_))))
                                           (_%g182611182664%_
                                            _%g182612182667%_))
                                       (_%g182611182664%_ _%g182612182667%_))
                                   (_%g182611182664%_ _%g182612182667%_))
                               (_%g182611182664%_ _%g182612182667%_))))
                       (_%g182611182664%_ _%g182612182667%_))
                   (_%g182611182664%_ _%g182612182667%_))
               (_%g182611182664%_ _%g182612182667%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g182611182664%_
                                                _%g182612182667%_))
                                           (_%g182611182664%_
                                            _%g182612182667%_))))
                                   (_%g182611182664%_ _%g182612182667%_))))
                           (_%g182611182664%_ _%g182612182667%_))))
                   (_%g182611182664%_ _%g182612182667%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g182611182664%_
                                                    _%g182612182667%_))
                                               (_%g182611182664%_
                                                _%g182612182667%_))
                                           (_%g182611182664%_
                                            _%g182612182667%_))))
                                   (_%g182611182664%_ _%g182612182667%_))))
                           (_%g182611182664%_ _%g182612182667%_))
                       (_%g182611182664%_ _%g182612182667%_))))
               (_%g182611182664%_ _%g182612182667%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g182611182664%_
                                                _%g182612182667%_))))
                                       (_%g182611182664%_ _%g182612182667%_))))
                               (_%g182611182664%_ _%g182612182667%_))
                           (_%g182611182664%_ _%g182612182667%_))
                       (_%g182611182664%_ _%g182612182667%_))))
               (_%g182611182664%_ _%g182612182667%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g182610183835%_ _%L181055%_))
                                         _%stx180983%_))))))))
                  (_%__kont184069184070%_ (lambda () _%stx180983%_)))
              (let ((_%__match184098184099%_
                     (lambda (_%e180995181023%_
                              _%hd180996181026%_
                              _%tl180997181028%_
                              _%e180998181031%_
                              _%hd180999181034%_
                              _%tl181000181036%_
                              _%e181001181039%_
                              _%hd181002181042%_
                              _%tl181003181044%_
                              _%e181004181047%_
                              _%hd181005181050%_
                              _%tl181006181052%_)
                       (let ((_%L181055%_ _%hd181005181050%_)
                             (_%L181056%_ _%hd181002181042%_))
                         (if (let ((__tmp185271
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L181056%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp185271))
                             (_%__kont184067184068%_ _%L181055%_ _%L181056%_)
                             (_%__kont184069184070%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx184065184066%_))
                    (let ((_%e180995181023%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx184065184066%_))))
                      (let ((_%tl180997181028%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e180995181023%_)))
                            (_%hd180996181026%_
                             (let ()
                               (declare (not safe))
                               (##car _%e180995181023%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl180997181028%_))
                            (let ((_%e180998181031%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl180997181028%_))))
                              (let ((_%tl181000181036%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e180998181031%_)))
                                    (_%hd180999181034%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e180998181031%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd180999181034%_))
                                    (let ((_%e181001181039%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd180999181034%_))))
                                      (let ((_%tl181003181044%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e181001181039%_)))
                                            (_%hd181002181042%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e181001181039%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl181003181044%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl181000181036%_))
                                                (let ((_%e181004181047%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl181000181036%_))))
                                                  (let ((_%tl181006181052%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e181004181047%_)))
                                                        (_%hd181005181050%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e181004181047%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl181006181052%_))
                                                        (_%__match184098184099%_
                                                         _%e180995181023%_
                                                         _%hd180996181026%_
                                                         _%tl180997181028%_
                                                         _%e180998181031%_
                                                         _%hd180999181034%_
                                                         _%tl181000181036%_
                                                         _%e181001181039%_
                                                         _%hd181002181042%_
                                                         _%tl181003181044%_
                                                         _%e181004181047%_
                                                         _%hd181005181050%_
                                                         _%tl181006181052%_)
                                                        (_%__kont184069184070%_))))
                                                (_%__kont184069184070%_))
                                            (_%__kont184069184070%_))))
                                    (_%__kont184069184070%_))))
                            (_%__kont184069184070%_))))
                    (_%__kont184069184070%_))))))))
    (define gxc#extract-receiver-begin-annotation%
      (lambda (_%self180835%_ _%stx180836%_)
        (let* ((_%__stx184101184102%_ _%stx180836%_)
               (_%g180839180872%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx184101184102%_)))))
          (let ((_%__kont184103184104%_ (lambda (_%L180962%_) _%L180962%_))
                (_%__kont184105184106%_
                 (lambda (_%L180901%_ _%L180902%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self180835%_ _%L180901%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx184101184102%_))
                (let ((_%e180842180922%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx184101184102%_))))
                  (let ((_%tl180844180927%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e180842180922%_)))
                        (_%hd180843180925%_
                         (let ()
                           (declare (not safe))
                           (##car _%e180842180922%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl180844180927%_))
                        (let ((_%e180845180930%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl180844180927%_))))
                          (let ((_%tl180847180935%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e180845180930%_)))
                                (_%hd180846180933%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e180845180930%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd180846180933%_))
                                (let ((_%e180848180938%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd180846180933%_))))
                                  (let ((_%tl180850180943%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e180848180938%_)))
                                        (_%hd180849180941%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e180848180938%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd180849180941%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@receiver
                                               _%hd180849180941%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl180850180943%_))
                                                (let ((_%e180851180946%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl180850180943%_))))
                                                  (let ((_%tl180853180951%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e180851180946%_)))
                                                        (_%hd180852180949%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e180851180946%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl180853180951%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl180847180935%_))
                                                            (let ((_%e180854180954%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl180847180935%_))))
                      (let ((_%tl180856180959%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e180854180954%_)))
                            (_%hd180855180957%_
                             (let ()
                               (declare (not safe))
                               (##car _%e180854180954%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl180856180959%_))
                            (_%__kont184103184104%_ _%hd180852180949%_)
                            (let ()
                              (declare (not safe))
                              (_%g180839180872%_)))))
                    (let () (declare (not safe)) (_%g180839180872%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl180847180935%_))
                    (let ((_%e180865180893%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl180847180935%_))))
                      (let ((_%tl180867180898%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e180865180893%_)))
                            (_%hd180866180896%_
                             (let ()
                               (declare (not safe))
                               (##car _%e180865180893%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl180867180898%_))
                            (_%__kont184105184106%_
                             _%hd180866180896%_
                             _%hd180846180933%_)
                            (let ()
                              (declare (not safe))
                              (_%g180839180872%_)))))
                    (let () (declare (not safe)) (_%g180839180872%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl180847180935%_))
                                                    (let ((_%e180865180893%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl180847180935%_))))
                                                      (let ((_%tl180867180898%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e180865180893%_)))
                    (_%hd180866180896%_
                     (let () (declare (not safe)) (##car _%e180865180893%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl180867180898%_))
                    (_%__kont184105184106%_
                     _%hd180866180896%_
                     _%hd180846180933%_)
                    (let () (declare (not safe)) (_%g180839180872%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g180839180872%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl180847180935%_))
                                                (let ((_%e180865180893%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl180847180935%_))))
                                                  (let ((_%tl180867180898%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e180865180893%_)))
                                                        (_%hd180866180896%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e180865180893%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl180867180898%_))
                                                        (_%__kont184105184106%_
                                                         _%hd180866180896%_
                                                         _%hd180846180933%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g180839180872%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g180839180872%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl180847180935%_))
                                            (let ((_%e180865180893%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl180847180935%_))))
                                              (let ((_%tl180867180898%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e180865180893%_)))
                                                    (_%hd180866180896%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e180865180893%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl180867180898%_))
                                                    (_%__kont184105184106%_
                                                     _%hd180866180896%_
                                                     _%hd180846180933%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g180839180872%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g180839180872%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl180847180935%_))
                                    (let ((_%e180865180893%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl180847180935%_))))
                                      (let ((_%tl180867180898%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e180865180893%_)))
                                            (_%hd180866180896%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e180865180893%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl180867180898%_))
                                            (_%__kont184105184106%_
                                             _%hd180866180896%_
                                             _%hd180846180933%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g180839180872%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g180839180872%_))))))
                        (let () (declare (not safe)) (_%g180839180872%_)))))
                (let () (declare (not safe)) (_%g180839180872%_)))))))
    (define gxc#extract-receiver-if%
      (lambda (_%self180751%_ _%stx180752%_)
        (let* ((_%g180754180775%_
                (lambda (_%g180755180772%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g180755180772%_))))
               (_%g180753180832%_
                (lambda (_%g180755180778%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g180755180778%_))
                      (let ((_%e180759180780%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g180755180778%_))))
                        (let ((_%hd180760180783%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e180759180780%_)))
                              (_%tl180761180785%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e180759180780%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl180761180785%_))
                              (let ((_%e180762180788%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl180761180785%_))))
                                (let ((_%hd180763180791%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e180762180788%_)))
                                      (_%tl180764180793%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e180762180788%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl180764180793%_))
                                      (let ((_%e180765180796%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl180764180793%_))))
                                        (let ((_%hd180766180799%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e180765180796%_)))
                                              (_%tl180767180801%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e180765180796%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl180767180801%_))
                                              (let ((_%e180768180804%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl180767180801%_))))
                                                (let ((_%hd180769180807%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e180768180804%_)))
                                                      (_%tl180770180809%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e180768180804%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl180770180809%_))
                                                      ((lambda (_%L180812%_
                                                                _%L180813%_
                                                                _%L180814%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self180751%_
                                                            _%L180813%_)))
                                                       _%hd180769180807%_
                                                       _%hd180766180799%_
                                                       _%hd180763180791%_)
                                                      (_%g180754180775%_
                                                       _%g180755180778%_))))
                                              (_%g180754180775%_
                                               _%g180755180778%_))))
                                      (_%g180754180775%_ _%g180755180778%_))))
                              (_%g180754180775%_ _%g180755180778%_))))
                      (_%g180754180775%_ _%g180755180778%_)))))
          (_%g180753180832%_ _%stx180752%_))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self179712%_ _%stx179713%_)
        (let* ((_%__stx184167184168%_ _%stx179713%_)
               (_%g179721179943%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx184167184168%_)))))
          (let ((_%__kont184169184170%_
                 (lambda (_%L180700%_ _%L180701%_ _%L180702%_ _%L180703%_)
                   (let ((__tmp185273
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self179712%_ 'methods)))
                         (__tmp185272
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L180701%_))))
                     (declare (not safe))
                     (hash-put! __tmp185273 __tmp185272 '#t))
                   (for-each
                    (lambda (_%g180736180738%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self179712%_ _%g180736180738%_)))
                    (let ((__tmp185274
                           (lambda (_%g180740180743%_ _%g180741180745%_)
                             (cons _%g180740180743%_ _%g180741180745%_))))
                      (declare (not safe))
                      (__foldr1 __tmp185274 '() _%L180700%_)))))
                (_%__kont184173184174%_
                 (lambda (_%L180535%_
                          _%L180536%_
                          _%L180537%_
                          _%L180538%_
                          _%L180539%_)
                   (let ((__tmp185276
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self179712%_ 'methods)))
                         (__tmp185275
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L180536%_))))
                     (declare (not safe))
                     (hash-put! __tmp185276 __tmp185275 '#t))
                   (for-each
                    (lambda (_%g180579180581%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self179712%_ _%g180579180581%_)))
                    (let ((__tmp185277
                           (lambda (_%g180583180586%_ _%g180584180588%_)
                             (cons _%g180583180586%_ _%g180584180588%_))))
                      (declare (not safe))
                      (__foldr1 __tmp185277 '() _%L180535%_)))))
                (_%__kont184177184178%_
                 (lambda (_%L180368%_ _%L180369%_ _%L180370%_)
                   (let ((__tmp185279
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self179712%_ 'slots)))
                         (__tmp185278
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L180368%_))))
                     (declare (not safe))
                     (hash-put! __tmp185279 __tmp185278 '#t))))
                (_%__kont184179184180%_
                 (lambda (_%L180245%_ _%L180246%_ _%L180247%_ _%L180248%_)
                   (let ((__tmp185281
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self179712%_ 'slots)))
                         (__tmp185280
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L180246%_))))
                     (declare (not safe))
                     (hash-put! __tmp185281 __tmp185280 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self179712%_ _%L180245%_))))
                (_%__kont184181184182%_
                 (lambda (_%L180119%_ _%L180120%_)
                   (let* ((_%accessor180142%_
                           (let ((__tmp185282
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L180120%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp185282)))
                          (_%klass180144%_
                           (let ((__tmp185283
                                  (##structure-ref
                                   _%accessor180142%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx179713%_
                              __tmp185283)))
                          (_%slot180146%_
                           (##structure-ref
                            _%accessor180142%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (if (##structure-ref
                              _%accessor180142%_
                              '4
                              gxc#!accessor::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass180144%_
                                    _%slot180146%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass180144%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp185285
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self179712%_ 'slots)))
                               (__tmp185284
                                (##structure-ref
                                 _%accessor180142%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp185285 __tmp185284 '#t))))))
                (_%__kont184183184184%_
                 (lambda (_%L180019%_ _%L180020%_ _%L180021%_)
                   (let* ((_%mutator180048%_
                           (let ((__tmp185286
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L180021%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp185286)))
                          (_%klass180050%_
                           (let ((__tmp185287
                                  (##structure-ref
                                   _%mutator180048%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx179713%_
                              __tmp185287)))
                          (_%slot180052%_
                           (##structure-ref
                            _%mutator180048%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (if (##structure-ref
                              _%mutator180048%_
                              '4
                              gxc#!mutator::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass180050%_
                                    _%slot180052%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass180050%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp185288
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self179712%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp185288 _%slot180052%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self179712%_ _%L180019%_)))))
                (_%__kont184185184186%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self179712%_ _%stx179713%_)))))
            (let* ((_%__match184666184667%_
                    (lambda (_%e179915179955%_
                             _%hd179916179958%_
                             _%tl179917179960%_
                             _%e179918179963%_
                             _%hd179919179966%_
                             _%tl179920179968%_
                             _%e179921179971%_
                             _%hd179922179974%_
                             _%tl179923179976%_
                             _%e179924179979%_
                             _%hd179925179982%_
                             _%tl179926179984%_
                             _%e179927179987%_
                             _%hd179928179990%_
                             _%tl179929179992%_
                             _%e179930179995%_
                             _%hd179931179998%_
                             _%tl179932180000%_
                             _%e179933180003%_
                             _%hd179934180006%_
                             _%tl179935180008%_
                             _%e179936180011%_
                             _%hd179937180014%_
                             _%tl179938180016%_)
                      (let ((_%L180019%_ _%hd179937180014%_)
                            (_%L180020%_ _%hd179934180006%_)
                            (_%L180021%_ _%hd179925179982%_))
                        (if (and (let ((__tmp185289
                                        (let ((__tmp185290
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L180021%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp185290))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp185289
                                    'gxc#!mutator::t))
                                 (let ((__tmp185291
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self179712%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L180020%_
                                    __tmp185291)))
                            (_%__kont184183184184%_
                             _%L180019%_
                             _%L180020%_
                             _%L180021%_)
                            (_%__kont184185184186%_)))))
                   (_%__match184664184665%_
                    (lambda (_%e179915179955%_
                             _%hd179916179958%_
                             _%tl179917179960%_
                             _%e179918179963%_
                             _%hd179919179966%_
                             _%tl179920179968%_
                             _%e179921179971%_
                             _%hd179922179974%_
                             _%tl179923179976%_
                             _%e179924179979%_
                             _%hd179925179982%_
                             _%tl179926179984%_
                             _%e179927179987%_
                             _%hd179928179990%_
                             _%tl179929179992%_
                             _%e179930179995%_
                             _%hd179931179998%_
                             _%tl179932180000%_
                             _%e179933180003%_
                             _%hd179934180006%_
                             _%tl179935180008%_
                             _%e179936180011%_
                             _%hd179937180014%_
                             _%tl179938180016%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl179938180016%_))
                          (_%__match184666184667%_
                           _%e179915179955%_
                           _%hd179916179958%_
                           _%tl179917179960%_
                           _%e179918179963%_
                           _%hd179919179966%_
                           _%tl179920179968%_
                           _%e179921179971%_
                           _%hd179922179974%_
                           _%tl179923179976%_
                           _%e179924179979%_
                           _%hd179925179982%_
                           _%tl179926179984%_
                           _%e179927179987%_
                           _%hd179928179990%_
                           _%tl179929179992%_
                           _%e179930179995%_
                           _%hd179931179998%_
                           _%tl179932180000%_
                           _%e179933180003%_
                           _%hd179934180006%_
                           _%tl179935180008%_
                           _%e179936180011%_
                           _%hd179937180014%_
                           _%tl179938180016%_)
                          (_%__kont184185184186%_))))
                   (_%__match184658184659%_
                    (lambda (_%e179915179955%_
                             _%hd179916179958%_
                             _%tl179917179960%_
                             _%e179918179963%_
                             _%hd179919179966%_
                             _%tl179920179968%_
                             _%e179921179971%_
                             _%hd179922179974%_
                             _%tl179923179976%_
                             _%e179924179979%_
                             _%hd179925179982%_
                             _%tl179926179984%_
                             _%e179927179987%_
                             _%hd179928179990%_
                             _%tl179929179992%_
                             _%e179930179995%_
                             _%hd179931179998%_
                             _%tl179932180000%_
                             _%e179933180003%_
                             _%hd179934180006%_
                             _%tl179935180008%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl179929179992%_))
                          (let ((_%e179936180011%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl179929179992%_))))
                            (let ((_%tl179938180016%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e179936180011%_)))
                                  (_%hd179937180014%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e179936180011%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl179938180016%_))
                                  (_%__match184666184667%_
                                   _%e179915179955%_
                                   _%hd179916179958%_
                                   _%tl179917179960%_
                                   _%e179918179963%_
                                   _%hd179919179966%_
                                   _%tl179920179968%_
                                   _%e179921179971%_
                                   _%hd179922179974%_
                                   _%tl179923179976%_
                                   _%e179924179979%_
                                   _%hd179925179982%_
                                   _%tl179926179984%_
                                   _%e179927179987%_
                                   _%hd179928179990%_
                                   _%tl179929179992%_
                                   _%e179930179995%_
                                   _%hd179931179998%_
                                   _%tl179932180000%_
                                   _%e179933180003%_
                                   _%hd179934180006%_
                                   _%tl179935180008%_
                                   _%e179936180011%_
                                   _%hd179937180014%_
                                   _%tl179938180016%_)
                                  (_%__kont184185184186%_))))
                          (_%__kont184185184186%_))))
                   (_%__match184604184605%_
                    (lambda (_%e179891180063%_
                             _%hd179892180066%_
                             _%tl179893180068%_
                             _%e179894180071%_
                             _%hd179895180074%_
                             _%tl179896180076%_
                             _%e179897180079%_
                             _%hd179898180082%_
                             _%tl179899180084%_
                             _%e179900180087%_
                             _%hd179901180090%_
                             _%tl179902180092%_
                             _%e179903180095%_
                             _%hd179904180098%_
                             _%tl179905180100%_
                             _%e179906180103%_
                             _%hd179907180106%_
                             _%tl179908180108%_
                             _%e179909180111%_
                             _%hd179910180114%_
                             _%tl179911180116%_)
                      (let ((_%L180119%_ _%hd179910180114%_)
                            (_%L180120%_ _%hd179901180090%_))
                        (if (and (let ((__tmp185292
                                        (let ((__tmp185293
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L180120%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp185293))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp185292
                                    'gxc#!accessor::t))
                                 (let ((__tmp185294
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self179712%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L180119%_
                                    __tmp185294)))
                            (_%__kont184181184182%_ _%L180119%_ _%L180120%_)
                            (_%__kont184185184186%_)))))
                   (_%__match184602184603%_
                    (lambda (_%e179891180063%_
                             _%hd179892180066%_
                             _%tl179893180068%_
                             _%e179894180071%_
                             _%hd179895180074%_
                             _%tl179896180076%_
                             _%e179897180079%_
                             _%hd179898180082%_
                             _%tl179899180084%_
                             _%e179900180087%_
                             _%hd179901180090%_
                             _%tl179902180092%_
                             _%e179903180095%_
                             _%hd179904180098%_
                             _%tl179905180100%_
                             _%e179906180103%_
                             _%hd179907180106%_
                             _%tl179908180108%_
                             _%e179909180111%_
                             _%hd179910180114%_
                             _%tl179911180116%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl179905180100%_))
                          (_%__match184604184605%_
                           _%e179891180063%_
                           _%hd179892180066%_
                           _%tl179893180068%_
                           _%e179894180071%_
                           _%hd179895180074%_
                           _%tl179896180076%_
                           _%e179897180079%_
                           _%hd179898180082%_
                           _%tl179899180084%_
                           _%e179900180087%_
                           _%hd179901180090%_
                           _%tl179902180092%_
                           _%e179903180095%_
                           _%hd179904180098%_
                           _%tl179905180100%_
                           _%e179906180103%_
                           _%hd179907180106%_
                           _%tl179908180108%_
                           _%e179909180111%_
                           _%hd179910180114%_
                           _%tl179911180116%_)
                          (_%__match184658184659%_
                           _%e179891180063%_
                           _%hd179892180066%_
                           _%tl179893180068%_
                           _%e179894180071%_
                           _%hd179895180074%_
                           _%tl179896180076%_
                           _%e179897180079%_
                           _%hd179898180082%_
                           _%tl179899180084%_
                           _%e179900180087%_
                           _%hd179901180090%_
                           _%tl179902180092%_
                           _%e179903180095%_
                           _%hd179904180098%_
                           _%tl179905180100%_
                           _%e179906180103%_
                           _%hd179907180106%_
                           _%tl179908180108%_
                           _%e179909180111%_
                           _%hd179910180114%_
                           _%tl179911180116%_))))
                   (_%__match184548184549%_
                    (lambda (_%e179856180157%_
                             _%hd179857180160%_
                             _%tl179858180162%_
                             _%e179859180165%_
                             _%hd179860180168%_
                             _%tl179861180170%_
                             _%e179862180173%_
                             _%hd179863180176%_
                             _%tl179864180178%_
                             _%e179865180181%_
                             _%hd179866180184%_
                             _%tl179867180186%_
                             _%e179868180189%_
                             _%hd179869180192%_
                             _%tl179870180194%_
                             _%e179871180197%_
                             _%hd179872180200%_
                             _%tl179873180202%_
                             _%e179874180205%_
                             _%hd179875180208%_
                             _%tl179876180210%_
                             _%e179877180213%_
                             _%hd179878180216%_
                             _%tl179879180218%_
                             _%e179880180221%_
                             _%hd179881180224%_
                             _%tl179882180226%_
                             _%e179883180229%_
                             _%hd179884180232%_
                             _%tl179885180234%_
                             _%e179886180237%_
                             _%hd179887180240%_
                             _%tl179888180242%_)
                      (let ((_%L180245%_ _%hd179887180240%_)
                            (_%L180246%_ _%hd179884180232%_)
                            (_%L180247%_ _%hd179875180208%_)
                            (_%L180248%_ _%hd179866180184%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L180248%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L180248%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp185295
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self179712%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L180247%_
                                    __tmp185295)))
                            (_%__kont184179184180%_
                             _%L180245%_
                             _%L180246%_
                             _%L180247%_
                             _%L180248%_)
                            (_%__kont184185184186%_)))))
                   (_%__match184540184541%_
                    (lambda (_%e179856180157%_
                             _%hd179857180160%_
                             _%tl179858180162%_
                             _%e179859180165%_
                             _%hd179860180168%_
                             _%tl179861180170%_
                             _%e179862180173%_
                             _%hd179863180176%_
                             _%tl179864180178%_
                             _%e179865180181%_
                             _%hd179866180184%_
                             _%tl179867180186%_
                             _%e179868180189%_
                             _%hd179869180192%_
                             _%tl179870180194%_
                             _%e179871180197%_
                             _%hd179872180200%_
                             _%tl179873180202%_
                             _%e179874180205%_
                             _%hd179875180208%_
                             _%tl179876180210%_
                             _%e179877180213%_
                             _%hd179878180216%_
                             _%tl179879180218%_
                             _%e179880180221%_
                             _%hd179881180224%_
                             _%tl179882180226%_
                             _%e179883180229%_
                             _%hd179884180232%_
                             _%tl179885180234%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl179879180218%_))
                          (let ((_%e179886180237%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl179879180218%_))))
                            (let ((_%tl179888180242%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e179886180237%_)))
                                  (_%hd179887180240%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e179886180237%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl179888180242%_))
                                  (_%__match184548184549%_
                                   _%e179856180157%_
                                   _%hd179857180160%_
                                   _%tl179858180162%_
                                   _%e179859180165%_
                                   _%hd179860180168%_
                                   _%tl179861180170%_
                                   _%e179862180173%_
                                   _%hd179863180176%_
                                   _%tl179864180178%_
                                   _%e179865180181%_
                                   _%hd179866180184%_
                                   _%tl179867180186%_
                                   _%e179868180189%_
                                   _%hd179869180192%_
                                   _%tl179870180194%_
                                   _%e179871180197%_
                                   _%hd179872180200%_
                                   _%tl179873180202%_
                                   _%e179874180205%_
                                   _%hd179875180208%_
                                   _%tl179876180210%_
                                   _%e179877180213%_
                                   _%hd179878180216%_
                                   _%tl179879180218%_
                                   _%e179880180221%_
                                   _%hd179881180224%_
                                   _%tl179882180226%_
                                   _%e179883180229%_
                                   _%hd179884180232%_
                                   _%tl179885180234%_
                                   _%e179886180237%_
                                   _%hd179887180240%_
                                   _%tl179888180242%_)
                                  (_%__kont184185184186%_))))
                          (_%__match184664184665%_
                           _%e179856180157%_
                           _%hd179857180160%_
                           _%tl179858180162%_
                           _%e179859180165%_
                           _%hd179860180168%_
                           _%tl179861180170%_
                           _%e179862180173%_
                           _%hd179863180176%_
                           _%tl179864180178%_
                           _%e179865180181%_
                           _%hd179866180184%_
                           _%tl179867180186%_
                           _%e179868180189%_
                           _%hd179869180192%_
                           _%tl179870180194%_
                           _%e179871180197%_
                           _%hd179872180200%_
                           _%tl179873180202%_
                           _%e179874180205%_
                           _%hd179875180208%_
                           _%tl179876180210%_
                           _%e179877180213%_
                           _%hd179878180216%_
                           _%tl179879180218%_))))
                   (_%__match184462184463%_
                    (lambda (_%e179822180288%_
                             _%hd179823180291%_
                             _%tl179824180293%_
                             _%e179825180296%_
                             _%hd179826180299%_
                             _%tl179827180301%_
                             _%e179828180304%_
                             _%hd179829180307%_
                             _%tl179830180309%_
                             _%e179831180312%_
                             _%hd179832180315%_
                             _%tl179833180317%_
                             _%e179834180320%_
                             _%hd179835180323%_
                             _%tl179836180325%_
                             _%e179837180328%_
                             _%hd179838180331%_
                             _%tl179839180333%_
                             _%e179840180336%_
                             _%hd179841180339%_
                             _%tl179842180341%_
                             _%e179843180344%_
                             _%hd179844180347%_
                             _%tl179845180349%_
                             _%e179846180352%_
                             _%hd179847180355%_
                             _%tl179848180357%_
                             _%e179849180360%_
                             _%hd179850180363%_
                             _%tl179851180365%_)
                      (let ((_%L180368%_ _%hd179850180363%_)
                            (_%L180369%_ _%hd179841180339%_)
                            (_%L180370%_ _%hd179832180315%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L180370%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L180370%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp185296
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self179712%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L180369%_
                                    __tmp185296)))
                            (_%__kont184177184178%_
                             _%L180368%_
                             _%L180369%_
                             _%L180370%_)
                            (_%__match184666184667%_
                             _%e179822180288%_
                             _%hd179823180291%_
                             _%tl179824180293%_
                             _%e179825180296%_
                             _%hd179826180299%_
                             _%tl179827180301%_
                             _%e179828180304%_
                             _%hd179829180307%_
                             _%tl179830180309%_
                             _%e179831180312%_
                             _%hd179832180315%_
                             _%tl179833180317%_
                             _%e179834180320%_
                             _%hd179835180323%_
                             _%tl179836180325%_
                             _%e179837180328%_
                             _%hd179838180331%_
                             _%tl179839180333%_
                             _%e179840180336%_
                             _%hd179841180339%_
                             _%tl179842180341%_
                             _%e179843180344%_
                             _%hd179844180347%_
                             _%tl179845180349%_)))))
                   (_%__match184460184461%_
                    (lambda (_%e179822180288%_
                             _%hd179823180291%_
                             _%tl179824180293%_
                             _%e179825180296%_
                             _%hd179826180299%_
                             _%tl179827180301%_
                             _%e179828180304%_
                             _%hd179829180307%_
                             _%tl179830180309%_
                             _%e179831180312%_
                             _%hd179832180315%_
                             _%tl179833180317%_
                             _%e179834180320%_
                             _%hd179835180323%_
                             _%tl179836180325%_
                             _%e179837180328%_
                             _%hd179838180331%_
                             _%tl179839180333%_
                             _%e179840180336%_
                             _%hd179841180339%_
                             _%tl179842180341%_
                             _%e179843180344%_
                             _%hd179844180347%_
                             _%tl179845180349%_
                             _%e179846180352%_
                             _%hd179847180355%_
                             _%tl179848180357%_
                             _%e179849180360%_
                             _%hd179850180363%_
                             _%tl179851180365%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl179845180349%_))
                          (_%__match184462184463%_
                           _%e179822180288%_
                           _%hd179823180291%_
                           _%tl179824180293%_
                           _%e179825180296%_
                           _%hd179826180299%_
                           _%tl179827180301%_
                           _%e179828180304%_
                           _%hd179829180307%_
                           _%tl179830180309%_
                           _%e179831180312%_
                           _%hd179832180315%_
                           _%tl179833180317%_
                           _%e179834180320%_
                           _%hd179835180323%_
                           _%tl179836180325%_
                           _%e179837180328%_
                           _%hd179838180331%_
                           _%tl179839180333%_
                           _%e179840180336%_
                           _%hd179841180339%_
                           _%tl179842180341%_
                           _%e179843180344%_
                           _%hd179844180347%_
                           _%tl179845180349%_
                           _%e179846180352%_
                           _%hd179847180355%_
                           _%tl179848180357%_
                           _%e179849180360%_
                           _%hd179850180363%_
                           _%tl179851180365%_)
                          (_%__match184540184541%_
                           _%e179822180288%_
                           _%hd179823180291%_
                           _%tl179824180293%_
                           _%e179825180296%_
                           _%hd179826180299%_
                           _%tl179827180301%_
                           _%e179828180304%_
                           _%hd179829180307%_
                           _%tl179830180309%_
                           _%e179831180312%_
                           _%hd179832180315%_
                           _%tl179833180317%_
                           _%e179834180320%_
                           _%hd179835180323%_
                           _%tl179836180325%_
                           _%e179837180328%_
                           _%hd179838180331%_
                           _%tl179839180333%_
                           _%e179840180336%_
                           _%hd179841180339%_
                           _%tl179842180341%_
                           _%e179843180344%_
                           _%hd179844180347%_
                           _%tl179845180349%_
                           _%e179846180352%_
                           _%hd179847180355%_
                           _%tl179848180357%_
                           _%e179849180360%_
                           _%hd179850180363%_
                           _%tl179851180365%_))))
                   (_%__match184450184451%_
                    (lambda (_%e179822180288%_
                             _%hd179823180291%_
                             _%tl179824180293%_
                             _%e179825180296%_
                             _%hd179826180299%_
                             _%tl179827180301%_
                             _%e179828180304%_
                             _%hd179829180307%_
                             _%tl179830180309%_
                             _%e179831180312%_
                             _%hd179832180315%_
                             _%tl179833180317%_
                             _%e179834180320%_
                             _%hd179835180323%_
                             _%tl179836180325%_
                             _%e179837180328%_
                             _%hd179838180331%_
                             _%tl179839180333%_
                             _%e179840180336%_
                             _%hd179841180339%_
                             _%tl179842180341%_
                             _%e179843180344%_
                             _%hd179844180347%_
                             _%tl179845180349%_
                             _%e179846180352%_
                             _%hd179847180355%_
                             _%tl179848180357%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd179847180355%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl179848180357%_))
                              (let ((_%e179849180360%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl179848180357%_))))
                                (let ((_%tl179851180365%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e179849180360%_)))
                                      (_%hd179850180363%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e179849180360%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl179851180365%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl179845180349%_))
                                          (_%__match184462184463%_
                                           _%e179822180288%_
                                           _%hd179823180291%_
                                           _%tl179824180293%_
                                           _%e179825180296%_
                                           _%hd179826180299%_
                                           _%tl179827180301%_
                                           _%e179828180304%_
                                           _%hd179829180307%_
                                           _%tl179830180309%_
                                           _%e179831180312%_
                                           _%hd179832180315%_
                                           _%tl179833180317%_
                                           _%e179834180320%_
                                           _%hd179835180323%_
                                           _%tl179836180325%_
                                           _%e179837180328%_
                                           _%hd179838180331%_
                                           _%tl179839180333%_
                                           _%e179840180336%_
                                           _%hd179841180339%_
                                           _%tl179842180341%_
                                           _%e179843180344%_
                                           _%hd179844180347%_
                                           _%tl179845180349%_
                                           _%e179846180352%_
                                           _%hd179847180355%_
                                           _%tl179848180357%_
                                           _%e179849180360%_
                                           _%hd179850180363%_
                                           _%tl179851180365%_)
                                          (_%__match184540184541%_
                                           _%e179822180288%_
                                           _%hd179823180291%_
                                           _%tl179824180293%_
                                           _%e179825180296%_
                                           _%hd179826180299%_
                                           _%tl179827180301%_
                                           _%e179828180304%_
                                           _%hd179829180307%_
                                           _%tl179830180309%_
                                           _%e179831180312%_
                                           _%hd179832180315%_
                                           _%tl179833180317%_
                                           _%e179834180320%_
                                           _%hd179835180323%_
                                           _%tl179836180325%_
                                           _%e179837180328%_
                                           _%hd179838180331%_
                                           _%tl179839180333%_
                                           _%e179840180336%_
                                           _%hd179841180339%_
                                           _%tl179842180341%_
                                           _%e179843180344%_
                                           _%hd179844180347%_
                                           _%tl179845180349%_
                                           _%e179846180352%_
                                           _%hd179847180355%_
                                           _%tl179848180357%_
                                           _%e179849180360%_
                                           _%hd179850180363%_
                                           _%tl179851180365%_))
                                      (_%__match184664184665%_
                                       _%e179822180288%_
                                       _%hd179823180291%_
                                       _%tl179824180293%_
                                       _%e179825180296%_
                                       _%hd179826180299%_
                                       _%tl179827180301%_
                                       _%e179828180304%_
                                       _%hd179829180307%_
                                       _%tl179830180309%_
                                       _%e179831180312%_
                                       _%hd179832180315%_
                                       _%tl179833180317%_
                                       _%e179834180320%_
                                       _%hd179835180323%_
                                       _%tl179836180325%_
                                       _%e179837180328%_
                                       _%hd179838180331%_
                                       _%tl179839180333%_
                                       _%e179840180336%_
                                       _%hd179841180339%_
                                       _%tl179842180341%_
                                       _%e179843180344%_
                                       _%hd179844180347%_
                                       _%tl179845180349%_))))
                              (_%__match184664184665%_
                               _%e179822180288%_
                               _%hd179823180291%_
                               _%tl179824180293%_
                               _%e179825180296%_
                               _%hd179826180299%_
                               _%tl179827180301%_
                               _%e179828180304%_
                               _%hd179829180307%_
                               _%tl179830180309%_
                               _%e179831180312%_
                               _%hd179832180315%_
                               _%tl179833180317%_
                               _%e179834180320%_
                               _%hd179835180323%_
                               _%tl179836180325%_
                               _%e179837180328%_
                               _%hd179838180331%_
                               _%tl179839180333%_
                               _%e179840180336%_
                               _%hd179841180339%_
                               _%tl179842180341%_
                               _%e179843180344%_
                               _%hd179844180347%_
                               _%tl179845180349%_))
                          (_%__match184664184665%_
                           _%e179822180288%_
                           _%hd179823180291%_
                           _%tl179824180293%_
                           _%e179825180296%_
                           _%hd179826180299%_
                           _%tl179827180301%_
                           _%e179828180304%_
                           _%hd179829180307%_
                           _%tl179830180309%_
                           _%e179831180312%_
                           _%hd179832180315%_
                           _%tl179833180317%_
                           _%e179834180320%_
                           _%hd179835180323%_
                           _%tl179836180325%_
                           _%e179837180328%_
                           _%hd179838180331%_
                           _%tl179839180333%_
                           _%e179840180336%_
                           _%hd179841180339%_
                           _%tl179842180341%_
                           _%e179843180344%_
                           _%hd179844180347%_
                           _%tl179845180349%_))))
                   (_%__match184382184383%_
                    (lambda (_%e179771180407%_
                             _%hd179772180410%_
                             _%tl179773180412%_
                             _%e179774180415%_
                             _%hd179775180418%_
                             _%tl179776180420%_
                             _%e179777180423%_
                             _%hd179778180426%_
                             _%tl179779180428%_
                             _%e179780180431%_
                             _%hd179781180434%_
                             _%tl179782180436%_
                             _%e179783180439%_
                             _%hd179784180442%_
                             _%tl179785180444%_
                             _%e179786180447%_
                             _%hd179787180450%_
                             _%tl179788180452%_
                             _%e179789180455%_
                             _%hd179790180458%_
                             _%tl179791180460%_
                             _%e179792180463%_
                             _%hd179793180466%_
                             _%tl179794180468%_
                             _%e179795180471%_
                             _%hd179796180474%_
                             _%tl179797180476%_
                             _%e179798180479%_
                             _%hd179799180482%_
                             _%tl179800180484%_
                             _%e179801180487%_
                             _%hd179802180490%_
                             _%tl179803180492%_
                             _%e179804180495%_
                             _%hd179805180498%_
                             _%tl179806180500%_
                             _%e179807180503%_
                             _%hd179808180506%_
                             _%tl179809180508%_
                             _%__splice184175184176%_
                             _%target179810180511%_
                             _%tl179812180513%_)
                      (letrec ((_%loop179813180516%_
                                (lambda (_%hd179811180519%_
                                         _%args179817180521%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd179811180519%_))
                                      (let ((_%e179814180524%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd179811180519%_))))
                                        (let ((_%lp-tl179816180529%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e179814180524%_)))
                                              (_%lp-hd179815180527%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e179814180524%_))))
                                          (_%loop179813180516%_
                                           _%lp-tl179816180529%_
                                           (cons _%lp-hd179815180527%_
                                                 _%args179817180521%_))))
                                      (let ((_%args179818180532%_
                                             (reverse _%args179817180521%_)))
                                        (let ((_%L180535%_
                                               _%args179818180532%_)
                                              (_%L180536%_ _%hd179808180506%_)
                                              (_%L180537%_ _%hd179799180482%_)
                                              (_%L180538%_ _%hd179790180458%_)
                                              (_%L180539%_ _%hd179781180434%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L180539%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L180538%_
                                                      'call-method))
                                                   (let ((__tmp185297
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self179712%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L180537%_
                                                      __tmp185297)))
                                              (_%__kont184173184174%_
                                               _%L180535%_
                                               _%L180536%_
                                               _%L180537%_
                                               _%L180538%_
                                               _%L180539%_)
                                              (_%__kont184185184186%_))))))))
                        (_%loop179813180516%_ _%target179810180511%_ '()))))
                   (_%__match184340184341%_
                    (lambda (_%e179771180407%_
                             _%hd179772180410%_
                             _%tl179773180412%_
                             _%e179774180415%_
                             _%hd179775180418%_
                             _%tl179776180420%_
                             _%e179777180423%_
                             _%hd179778180426%_
                             _%tl179779180428%_
                             _%e179780180431%_
                             _%hd179781180434%_
                             _%tl179782180436%_
                             _%e179783180439%_
                             _%hd179784180442%_
                             _%tl179785180444%_
                             _%e179786180447%_
                             _%hd179787180450%_
                             _%tl179788180452%_
                             _%e179789180455%_
                             _%hd179790180458%_
                             _%tl179791180460%_
                             _%e179792180463%_
                             _%hd179793180466%_
                             _%tl179794180468%_
                             _%e179795180471%_
                             _%hd179796180474%_
                             _%tl179797180476%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd179796180474%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl179797180476%_))
                              (let ((_%e179798180479%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl179797180476%_))))
                                (let ((_%tl179800180484%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e179798180479%_)))
                                      (_%hd179799180482%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e179798180479%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl179800180484%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl179794180468%_))
                                          (let ((_%e179801180487%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl179794180468%_))))
                                            (let ((_%tl179803180492%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e179801180487%_)))
                                                  (_%hd179802180490%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e179801180487%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd179802180490%_))
                                                  (let ((_%e179804180495%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd179802180490%_))))
                                                    (let ((_%tl179806180500%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e179804180495%_)))
                                                          (_%hd179805180498%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e179804180495%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd179805180498%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd179805180498%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl179806180500%_))
                          (let ((_%e179807180503%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl179806180500%_))))
                            (let ((_%tl179809180508%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e179807180503%_)))
                                  (_%hd179808180506%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e179807180503%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl179809180508%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl179803180492%_))
                                      (let ((_%__splice184175184176%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl179803180492%_
                                                '0))))
                                        (let ((_%tl179812180513%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice184175184176%_
                                                  '1)))
                                              (_%target179810180511%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice184175184176%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl179812180513%_))
                                              (_%__match184382184383%_
                                               _%e179771180407%_
                                               _%hd179772180410%_
                                               _%tl179773180412%_
                                               _%e179774180415%_
                                               _%hd179775180418%_
                                               _%tl179776180420%_
                                               _%e179777180423%_
                                               _%hd179778180426%_
                                               _%tl179779180428%_
                                               _%e179780180431%_
                                               _%hd179781180434%_
                                               _%tl179782180436%_
                                               _%e179783180439%_
                                               _%hd179784180442%_
                                               _%tl179785180444%_
                                               _%e179786180447%_
                                               _%hd179787180450%_
                                               _%tl179788180452%_
                                               _%e179789180455%_
                                               _%hd179790180458%_
                                               _%tl179791180460%_
                                               _%e179792180463%_
                                               _%hd179793180466%_
                                               _%tl179794180468%_
                                               _%e179795180471%_
                                               _%hd179796180474%_
                                               _%tl179797180476%_
                                               _%e179798180479%_
                                               _%hd179799180482%_
                                               _%tl179800180484%_
                                               _%e179801180487%_
                                               _%hd179802180490%_
                                               _%tl179803180492%_
                                               _%e179804180495%_
                                               _%hd179805180498%_
                                               _%tl179806180500%_
                                               _%e179807180503%_
                                               _%hd179808180506%_
                                               _%tl179809180508%_
                                               _%__splice184175184176%_
                                               _%target179810180511%_
                                               _%tl179812180513%_)
                                              (_%__kont184185184186%_))))
                                      (_%__kont184185184186%_))
                                  (_%__kont184185184186%_))))
                          (_%__kont184185184186%_))
                      (_%__kont184185184186%_))
                  (_%__kont184185184186%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont184185184186%_))))
                                          (_%__match184664184665%_
                                           _%e179771180407%_
                                           _%hd179772180410%_
                                           _%tl179773180412%_
                                           _%e179774180415%_
                                           _%hd179775180418%_
                                           _%tl179776180420%_
                                           _%e179777180423%_
                                           _%hd179778180426%_
                                           _%tl179779180428%_
                                           _%e179780180431%_
                                           _%hd179781180434%_
                                           _%tl179782180436%_
                                           _%e179783180439%_
                                           _%hd179784180442%_
                                           _%tl179785180444%_
                                           _%e179786180447%_
                                           _%hd179787180450%_
                                           _%tl179788180452%_
                                           _%e179789180455%_
                                           _%hd179790180458%_
                                           _%tl179791180460%_
                                           _%e179792180463%_
                                           _%hd179793180466%_
                                           _%tl179794180468%_))
                                      (_%__match184664184665%_
                                       _%e179771180407%_
                                       _%hd179772180410%_
                                       _%tl179773180412%_
                                       _%e179774180415%_
                                       _%hd179775180418%_
                                       _%tl179776180420%_
                                       _%e179777180423%_
                                       _%hd179778180426%_
                                       _%tl179779180428%_
                                       _%e179780180431%_
                                       _%hd179781180434%_
                                       _%tl179782180436%_
                                       _%e179783180439%_
                                       _%hd179784180442%_
                                       _%tl179785180444%_
                                       _%e179786180447%_
                                       _%hd179787180450%_
                                       _%tl179788180452%_
                                       _%e179789180455%_
                                       _%hd179790180458%_
                                       _%tl179791180460%_
                                       _%e179792180463%_
                                       _%hd179793180466%_
                                       _%tl179794180468%_))))
                              (_%__match184664184665%_
                               _%e179771180407%_
                               _%hd179772180410%_
                               _%tl179773180412%_
                               _%e179774180415%_
                               _%hd179775180418%_
                               _%tl179776180420%_
                               _%e179777180423%_
                               _%hd179778180426%_
                               _%tl179779180428%_
                               _%e179780180431%_
                               _%hd179781180434%_
                               _%tl179782180436%_
                               _%e179783180439%_
                               _%hd179784180442%_
                               _%tl179785180444%_
                               _%e179786180447%_
                               _%hd179787180450%_
                               _%tl179788180452%_
                               _%e179789180455%_
                               _%hd179790180458%_
                               _%tl179791180460%_
                               _%e179792180463%_
                               _%hd179793180466%_
                               _%tl179794180468%_))
                          (_%__match184450184451%_
                           _%e179771180407%_
                           _%hd179772180410%_
                           _%tl179773180412%_
                           _%e179774180415%_
                           _%hd179775180418%_
                           _%tl179776180420%_
                           _%e179777180423%_
                           _%hd179778180426%_
                           _%tl179779180428%_
                           _%e179780180431%_
                           _%hd179781180434%_
                           _%tl179782180436%_
                           _%e179783180439%_
                           _%hd179784180442%_
                           _%tl179785180444%_
                           _%e179786180447%_
                           _%hd179787180450%_
                           _%tl179788180452%_
                           _%e179789180455%_
                           _%hd179790180458%_
                           _%tl179791180460%_
                           _%e179792180463%_
                           _%hd179793180466%_
                           _%tl179794180468%_
                           _%e179795180471%_
                           _%hd179796180474%_
                           _%tl179797180476%_))))
                   (_%__match184272184273%_
                    (lambda (_%e179727180596%_
                             _%hd179728180599%_
                             _%tl179729180601%_
                             _%e179730180604%_
                             _%hd179731180607%_
                             _%tl179732180609%_
                             _%e179733180612%_
                             _%hd179734180615%_
                             _%tl179735180617%_
                             _%e179736180620%_
                             _%hd179737180623%_
                             _%tl179738180625%_
                             _%e179739180628%_
                             _%hd179740180631%_
                             _%tl179741180633%_
                             _%e179742180636%_
                             _%hd179743180639%_
                             _%tl179744180641%_
                             _%e179745180644%_
                             _%hd179746180647%_
                             _%tl179747180649%_
                             _%e179748180652%_
                             _%hd179749180655%_
                             _%tl179750180657%_
                             _%e179751180660%_
                             _%hd179752180663%_
                             _%tl179753180665%_
                             _%e179754180668%_
                             _%hd179755180671%_
                             _%tl179756180673%_
                             _%__splice184171184172%_
                             _%target179757180676%_
                             _%tl179759180678%_)
                      (letrec ((_%loop179760180681%_
                                (lambda (_%hd179758180684%_
                                         _%args179764180686%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd179758180684%_))
                                      (let ((_%e179761180689%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd179758180684%_))))
                                        (let ((_%lp-tl179763180694%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e179761180689%_)))
                                              (_%lp-hd179762180692%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e179761180689%_))))
                                          (_%loop179760180681%_
                                           _%lp-tl179763180694%_
                                           (cons _%lp-hd179762180692%_
                                                 _%args179764180686%_))))
                                      (let ((_%args179765180697%_
                                             (reverse _%args179764180686%_)))
                                        (let ((_%L180700%_
                                               _%args179765180697%_)
                                              (_%L180701%_ _%hd179755180671%_)
                                              (_%L180702%_ _%hd179746180647%_)
                                              (_%L180703%_ _%hd179737180623%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L180703%_
                                                      'call-method))
                                                   (let ((__tmp185298
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self179712%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L180702%_
                                                      __tmp185298)))
                                              (_%__kont184169184170%_
                                               _%L180700%_
                                               _%L180701%_
                                               _%L180702%_
                                               _%L180703%_)
                                              (_%__match184460184461%_
                                               _%e179727180596%_
                                               _%hd179728180599%_
                                               _%tl179729180601%_
                                               _%e179730180604%_
                                               _%hd179731180607%_
                                               _%tl179732180609%_
                                               _%e179733180612%_
                                               _%hd179734180615%_
                                               _%tl179735180617%_
                                               _%e179736180620%_
                                               _%hd179737180623%_
                                               _%tl179738180625%_
                                               _%e179739180628%_
                                               _%hd179740180631%_
                                               _%tl179741180633%_
                                               _%e179742180636%_
                                               _%hd179743180639%_
                                               _%tl179744180641%_
                                               _%e179745180644%_
                                               _%hd179746180647%_
                                               _%tl179747180649%_
                                               _%e179748180652%_
                                               _%hd179749180655%_
                                               _%tl179750180657%_
                                               _%e179751180660%_
                                               _%hd179752180663%_
                                               _%tl179753180665%_
                                               _%e179754180668%_
                                               _%hd179755180671%_
                                               _%tl179756180673%_))))))))
                        (_%loop179760180681%_ _%target179757180676%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx184167184168%_))
                  (let ((_%e179727180596%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx184167184168%_))))
                    (let ((_%tl179729180601%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e179727180596%_)))
                          (_%hd179728180599%_
                           (let ()
                             (declare (not safe))
                             (##car _%e179727180596%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl179729180601%_))
                          (let ((_%e179730180604%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl179729180601%_))))
                            (let ((_%tl179732180609%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e179730180604%_)))
                                  (_%hd179731180607%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e179730180604%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd179731180607%_))
                                  (let ((_%e179733180612%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd179731180607%_))))
                                    (let ((_%tl179735180617%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e179733180612%_)))
                                          (_%hd179734180615%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e179733180612%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd179734180615%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd179734180615%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl179735180617%_))
                                                  (let ((_%e179736180620%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl179735180617%_))))
                                                    (let ((_%tl179738180625%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e179736180620%_)))
                                                          (_%hd179737180623%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e179736180620%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl179738180625%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl179732180609%_))
                      (let ((_%e179739180628%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl179732180609%_))))
                        (let ((_%tl179741180633%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e179739180628%_)))
                              (_%hd179740180631%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e179739180628%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd179740180631%_))
                              (let ((_%e179742180636%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd179740180631%_))))
                                (let ((_%tl179744180641%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e179742180636%_)))
                                      (_%hd179743180639%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e179742180636%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd179743180639%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd179743180639%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl179744180641%_))
                                              (let ((_%e179745180644%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl179744180641%_))))
                                                (let ((_%tl179747180649%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e179745180644%_)))
                                                      (_%hd179746180647%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e179745180644%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl179747180649%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl179741180633%_))
                                                          (let ((_%e179748180652%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl179741180633%_))))
                    (let ((_%tl179750180657%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e179748180652%_)))
                          (_%hd179749180655%_
                           (let ()
                             (declare (not safe))
                             (##car _%e179748180652%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd179749180655%_))
                          (let ((_%e179751180660%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd179749180655%_))))
                            (let ((_%tl179753180665%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e179751180660%_)))
                                  (_%hd179752180663%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e179751180660%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd179752180663%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd179752180663%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl179753180665%_))
                                          (let ((_%e179754180668%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl179753180665%_))))
                                            (let ((_%tl179756180673%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e179754180668%_)))
                                                  (_%hd179755180671%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e179754180668%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl179756180673%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl179750180657%_))
                                                      (let ((_%__splice184171184172%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl179750180657%_
                        '0))))
                (let ((_%tl179759180678%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice184171184172%_ '1)))
                      (_%target179757180676%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice184171184172%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl179759180678%_))
                      (_%__match184272184273%_
                       _%e179727180596%_
                       _%hd179728180599%_
                       _%tl179729180601%_
                       _%e179730180604%_
                       _%hd179731180607%_
                       _%tl179732180609%_
                       _%e179733180612%_
                       _%hd179734180615%_
                       _%tl179735180617%_
                       _%e179736180620%_
                       _%hd179737180623%_
                       _%tl179738180625%_
                       _%e179739180628%_
                       _%hd179740180631%_
                       _%tl179741180633%_
                       _%e179742180636%_
                       _%hd179743180639%_
                       _%tl179744180641%_
                       _%e179745180644%_
                       _%hd179746180647%_
                       _%tl179747180649%_
                       _%e179748180652%_
                       _%hd179749180655%_
                       _%tl179750180657%_
                       _%e179751180660%_
                       _%hd179752180663%_
                       _%tl179753180665%_
                       _%e179754180668%_
                       _%hd179755180671%_
                       _%tl179756180673%_
                       _%__splice184171184172%_
                       _%target179757180676%_
                       _%tl179759180678%_)
                      (_%__match184460184461%_
                       _%e179727180596%_
                       _%hd179728180599%_
                       _%tl179729180601%_
                       _%e179730180604%_
                       _%hd179731180607%_
                       _%tl179732180609%_
                       _%e179733180612%_
                       _%hd179734180615%_
                       _%tl179735180617%_
                       _%e179736180620%_
                       _%hd179737180623%_
                       _%tl179738180625%_
                       _%e179739180628%_
                       _%hd179740180631%_
                       _%tl179741180633%_
                       _%e179742180636%_
                       _%hd179743180639%_
                       _%tl179744180641%_
                       _%e179745180644%_
                       _%hd179746180647%_
                       _%tl179747180649%_
                       _%e179748180652%_
                       _%hd179749180655%_
                       _%tl179750180657%_
                       _%e179751180660%_
                       _%hd179752180663%_
                       _%tl179753180665%_
                       _%e179754180668%_
                       _%hd179755180671%_
                       _%tl179756180673%_))))
              (_%__match184460184461%_
               _%e179727180596%_
               _%hd179728180599%_
               _%tl179729180601%_
               _%e179730180604%_
               _%hd179731180607%_
               _%tl179732180609%_
               _%e179733180612%_
               _%hd179734180615%_
               _%tl179735180617%_
               _%e179736180620%_
               _%hd179737180623%_
               _%tl179738180625%_
               _%e179739180628%_
               _%hd179740180631%_
               _%tl179741180633%_
               _%e179742180636%_
               _%hd179743180639%_
               _%tl179744180641%_
               _%e179745180644%_
               _%hd179746180647%_
               _%tl179747180649%_
               _%e179748180652%_
               _%hd179749180655%_
               _%tl179750180657%_
               _%e179751180660%_
               _%hd179752180663%_
               _%tl179753180665%_
               _%e179754180668%_
               _%hd179755180671%_
               _%tl179756180673%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match184664184665%_
                                                   _%e179727180596%_
                                                   _%hd179728180599%_
                                                   _%tl179729180601%_
                                                   _%e179730180604%_
                                                   _%hd179731180607%_
                                                   _%tl179732180609%_
                                                   _%e179733180612%_
                                                   _%hd179734180615%_
                                                   _%tl179735180617%_
                                                   _%e179736180620%_
                                                   _%hd179737180623%_
                                                   _%tl179738180625%_
                                                   _%e179739180628%_
                                                   _%hd179740180631%_
                                                   _%tl179741180633%_
                                                   _%e179742180636%_
                                                   _%hd179743180639%_
                                                   _%tl179744180641%_
                                                   _%e179745180644%_
                                                   _%hd179746180647%_
                                                   _%tl179747180649%_
                                                   _%e179748180652%_
                                                   _%hd179749180655%_
                                                   _%tl179750180657%_))))
                                          (_%__match184664184665%_
                                           _%e179727180596%_
                                           _%hd179728180599%_
                                           _%tl179729180601%_
                                           _%e179730180604%_
                                           _%hd179731180607%_
                                           _%tl179732180609%_
                                           _%e179733180612%_
                                           _%hd179734180615%_
                                           _%tl179735180617%_
                                           _%e179736180620%_
                                           _%hd179737180623%_
                                           _%tl179738180625%_
                                           _%e179739180628%_
                                           _%hd179740180631%_
                                           _%tl179741180633%_
                                           _%e179742180636%_
                                           _%hd179743180639%_
                                           _%tl179744180641%_
                                           _%e179745180644%_
                                           _%hd179746180647%_
                                           _%tl179747180649%_
                                           _%e179748180652%_
                                           _%hd179749180655%_
                                           _%tl179750180657%_))
                                      (_%__match184340184341%_
                                       _%e179727180596%_
                                       _%hd179728180599%_
                                       _%tl179729180601%_
                                       _%e179730180604%_
                                       _%hd179731180607%_
                                       _%tl179732180609%_
                                       _%e179733180612%_
                                       _%hd179734180615%_
                                       _%tl179735180617%_
                                       _%e179736180620%_
                                       _%hd179737180623%_
                                       _%tl179738180625%_
                                       _%e179739180628%_
                                       _%hd179740180631%_
                                       _%tl179741180633%_
                                       _%e179742180636%_
                                       _%hd179743180639%_
                                       _%tl179744180641%_
                                       _%e179745180644%_
                                       _%hd179746180647%_
                                       _%tl179747180649%_
                                       _%e179748180652%_
                                       _%hd179749180655%_
                                       _%tl179750180657%_
                                       _%e179751180660%_
                                       _%hd179752180663%_
                                       _%tl179753180665%_))
                                  (_%__match184664184665%_
                                   _%e179727180596%_
                                   _%hd179728180599%_
                                   _%tl179729180601%_
                                   _%e179730180604%_
                                   _%hd179731180607%_
                                   _%tl179732180609%_
                                   _%e179733180612%_
                                   _%hd179734180615%_
                                   _%tl179735180617%_
                                   _%e179736180620%_
                                   _%hd179737180623%_
                                   _%tl179738180625%_
                                   _%e179739180628%_
                                   _%hd179740180631%_
                                   _%tl179741180633%_
                                   _%e179742180636%_
                                   _%hd179743180639%_
                                   _%tl179744180641%_
                                   _%e179745180644%_
                                   _%hd179746180647%_
                                   _%tl179747180649%_
                                   _%e179748180652%_
                                   _%hd179749180655%_
                                   _%tl179750180657%_))))
                          (_%__match184664184665%_
                           _%e179727180596%_
                           _%hd179728180599%_
                           _%tl179729180601%_
                           _%e179730180604%_
                           _%hd179731180607%_
                           _%tl179732180609%_
                           _%e179733180612%_
                           _%hd179734180615%_
                           _%tl179735180617%_
                           _%e179736180620%_
                           _%hd179737180623%_
                           _%tl179738180625%_
                           _%e179739180628%_
                           _%hd179740180631%_
                           _%tl179741180633%_
                           _%e179742180636%_
                           _%hd179743180639%_
                           _%tl179744180641%_
                           _%e179745180644%_
                           _%hd179746180647%_
                           _%tl179747180649%_
                           _%e179748180652%_
                           _%hd179749180655%_
                           _%tl179750180657%_))))
                  (_%__match184602184603%_
                   _%e179727180596%_
                   _%hd179728180599%_
                   _%tl179729180601%_
                   _%e179730180604%_
                   _%hd179731180607%_
                   _%tl179732180609%_
                   _%e179733180612%_
                   _%hd179734180615%_
                   _%tl179735180617%_
                   _%e179736180620%_
                   _%hd179737180623%_
                   _%tl179738180625%_
                   _%e179739180628%_
                   _%hd179740180631%_
                   _%tl179741180633%_
                   _%e179742180636%_
                   _%hd179743180639%_
                   _%tl179744180641%_
                   _%e179745180644%_
                   _%hd179746180647%_
                   _%tl179747180649%_))
              (_%__kont184185184186%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont184185184186%_))
                                          (_%__kont184185184186%_))
                                      (_%__kont184185184186%_))))
                              (_%__kont184185184186%_))))
                      (_%__kont184185184186%_))
                  (_%__kont184185184186%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont184185184186%_))
                                              (_%__kont184185184186%_))
                                          (_%__kont184185184186%_))))
                                  (_%__kont184185184186%_))))
                          (_%__kont184185184186%_))))
                  (_%__kont184185184186%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self178651%_ _%stx178652%_)
        (letrec ((_%force-e178654%_
                  (lambda (_%target179710%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target179710%_ '()))
                                      '()))))))
          (let* ((_%__stx184669184670%_ _%stx178652%_)
                 (_%g178662178884%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx184669184670%_)))))
            (let ((_%__kont184671184672%_
                   (lambda (_%L179656%_ _%L179657%_ _%L179658%_ _%L179659%_)
                     (let ((_%$method179704%_
                            (let ((__tmp185300
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self178651%_ 'methods)))
                                  (__tmp185299
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L179657%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp185300 __tmp185299)))
                           (_%args179705%_
                            (map (lambda (_%g179692179694%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self178651%_
                                      _%g179692179694%_)))
                                 (let ((__tmp185301
                                        (lambda (_%g179696179699%_
                                                 _%g179697179701%_)
                                          (cons _%g179696179699%_
                                                _%g179697179701%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp185301 '() _%L179656%_)))))
                       (let ((__tmp185302
                              (cons '%#call
                                    (cons (_%force-e178654%_ _%$method179704%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self178651%_
                                                               'receiver))
                                                            '()))
                                                _%args179705%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp185302 _%stx178652%_)))))
                  (_%__kont184675184676%_
                   (lambda (_%L179488%_
                            _%L179489%_
                            _%L179490%_
                            _%L179491%_
                            _%L179492%_)
                     (let ((_%$method179544%_
                            (let ((__tmp185304
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self178651%_ 'methods)))
                                  (__tmp185303
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L179489%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp185304 __tmp185303)))
                           (_%args179545%_
                            (map (lambda (_%g179532179534%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self178651%_
                                      _%g179532179534%_)))
                                 (let ((__tmp185305
                                        (lambda (_%g179536179539%_
                                                 _%g179537179541%_)
                                          (cons _%g179536179539%_
                                                _%g179537179541%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp185305 '() _%L179488%_)))))
                       (let ((__tmp185306
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e178654%_
                                                 _%$method179544%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self178651%_ 'receiver))
                          '()))
              _%args179545%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp185306 _%stx178652%_)))))
                  (_%__kont184679184680%_
                   (lambda (_%L179319%_ _%L179320%_ _%L179321%_)
                     (let* ((_%$field179353%_
                             (let ((__tmp185308
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self178651%_ 'slots)))
                                   (__tmp185307
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%L179319%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp185308 __tmp185307)))
                            (__tmp185309
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self178651%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field179353%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self178651%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp185309 _%stx178652%_))))
                  (_%__kont184681184682%_
                   (lambda (_%L179193%_ _%L179194%_ _%L179195%_ _%L179196%_)
                     (let ((_%$field179231%_
                            (let ((__tmp185311
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self178651%_ 'slots)))
                                  (__tmp185310
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L179194%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp185311 __tmp185310)))
                           (_%expr179232%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1 _%self178651%_ _%L179193%_))))
                       (let ((__tmp185312
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self178651%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field179231%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self178651%_ 'receiver))
                          '()))
              (cons _%expr179232%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp185312 _%stx178652%_)))))
                  (_%__kont184683184684%_
                   (lambda (_%L179065%_ _%L179066%_)
                     (let* ((_%accessor179088%_
                             (let ((__tmp185313
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L179066%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp185313)))
                            (_%klass179090%_
                             (let ((__tmp185314
                                    (##structure-ref
                                     _%accessor179088%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx178652%_
                                __tmp185314)))
                            (_%slot179092%_
                             (##structure-ref
                              _%accessor179088%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (if (##structure-ref
                                _%accessor179088%_
                                '4
                                gxc#!accessor::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass179090%_
                                      _%slot179092%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass179090%_
                                      '8
                                      '#f
                                      '#f))))
                           _%stx178652%_
                           (let* ((_%$field179098%_
                                   (let ((__tmp185315
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self178651%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp185315 _%slot179092%_)))
                                  (__tmp185316
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self178651%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field179098%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self178651%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp185316
                              _%stx178652%_))))))
                  (_%__kont184685184686%_
                   (lambda (_%L178960%_ _%L178961%_ _%L178962%_)
                     (let* ((_%mutator178990%_
                             (let ((__tmp185317
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L178962%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp185317)))
                            (_%klass178992%_
                             (let ((__tmp185318
                                    (##structure-ref
                                     _%mutator178990%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx178652%_
                                __tmp185318)))
                            (_%slot178994%_
                             (##structure-ref
                              _%mutator178990%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr178996%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1 _%self178651%_ _%L178960%_))))
                       (if (if (##structure-ref
                                _%mutator178990%_
                                '4
                                gxc#!mutator::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass178992%_
                                      _%slot178994%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass178992%_
                                      '8
                                      '#f
                                      '#f))))
                           (let ((__tmp185319
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%L178962%_ '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L178961%_
                                                                '()))
                                                    (cons _%expr178996%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp185319 _%stx178652%_))
                           (let* ((_%$field179002%_
                                   (let ((__tmp185320
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self178651%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp185320 _%slot178994%_)))
                                  (__tmp185321
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self178651%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field179002%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self178651%_ 'receiver))
                               '()))
                   (cons _%expr178996%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp185321
                              _%stx178652%_))))))
                  (_%__kont184687184688%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self178651%_ _%stx178652%_)))))
              (let* ((_%__match185168185169%_
                      (lambda (_%e178856178896%_
                               _%hd178857178899%_
                               _%tl178858178901%_
                               _%e178859178904%_
                               _%hd178860178907%_
                               _%tl178861178909%_
                               _%e178862178912%_
                               _%hd178863178915%_
                               _%tl178864178917%_
                               _%e178865178920%_
                               _%hd178866178923%_
                               _%tl178867178925%_
                               _%e178868178928%_
                               _%hd178869178931%_
                               _%tl178870178933%_
                               _%e178871178936%_
                               _%hd178872178939%_
                               _%tl178873178941%_
                               _%e178874178944%_
                               _%hd178875178947%_
                               _%tl178876178949%_
                               _%e178877178952%_
                               _%hd178878178955%_
                               _%tl178879178957%_)
                        (let ((_%L178960%_ _%hd178878178955%_)
                              (_%L178961%_ _%hd178875178947%_)
                              (_%L178962%_ _%hd178866178923%_))
                          (if (and (let ((__tmp185322
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self178651%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L178961%_
                                      __tmp185322))
                                   (let ((__tmp185323
                                          (let ((__tmp185324
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L178962%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp185324))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp185323
                                      'gxc#!mutator::t)))
                              (_%__kont184685184686%_
                               _%L178960%_
                               _%L178961%_
                               _%L178962%_)
                              (_%__kont184687184688%_)))))
                     (_%__match185166185167%_
                      (lambda (_%e178856178896%_
                               _%hd178857178899%_
                               _%tl178858178901%_
                               _%e178859178904%_
                               _%hd178860178907%_
                               _%tl178861178909%_
                               _%e178862178912%_
                               _%hd178863178915%_
                               _%tl178864178917%_
                               _%e178865178920%_
                               _%hd178866178923%_
                               _%tl178867178925%_
                               _%e178868178928%_
                               _%hd178869178931%_
                               _%tl178870178933%_
                               _%e178871178936%_
                               _%hd178872178939%_
                               _%tl178873178941%_
                               _%e178874178944%_
                               _%hd178875178947%_
                               _%tl178876178949%_
                               _%e178877178952%_
                               _%hd178878178955%_
                               _%tl178879178957%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl178879178957%_))
                            (_%__match185168185169%_
                             _%e178856178896%_
                             _%hd178857178899%_
                             _%tl178858178901%_
                             _%e178859178904%_
                             _%hd178860178907%_
                             _%tl178861178909%_
                             _%e178862178912%_
                             _%hd178863178915%_
                             _%tl178864178917%_
                             _%e178865178920%_
                             _%hd178866178923%_
                             _%tl178867178925%_
                             _%e178868178928%_
                             _%hd178869178931%_
                             _%tl178870178933%_
                             _%e178871178936%_
                             _%hd178872178939%_
                             _%tl178873178941%_
                             _%e178874178944%_
                             _%hd178875178947%_
                             _%tl178876178949%_
                             _%e178877178952%_
                             _%hd178878178955%_
                             _%tl178879178957%_)
                            (_%__kont184687184688%_))))
                     (_%__match185160185161%_
                      (lambda (_%e178856178896%_
                               _%hd178857178899%_
                               _%tl178858178901%_
                               _%e178859178904%_
                               _%hd178860178907%_
                               _%tl178861178909%_
                               _%e178862178912%_
                               _%hd178863178915%_
                               _%tl178864178917%_
                               _%e178865178920%_
                               _%hd178866178923%_
                               _%tl178867178925%_
                               _%e178868178928%_
                               _%hd178869178931%_
                               _%tl178870178933%_
                               _%e178871178936%_
                               _%hd178872178939%_
                               _%tl178873178941%_
                               _%e178874178944%_
                               _%hd178875178947%_
                               _%tl178876178949%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl178870178933%_))
                            (let ((_%e178877178952%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl178870178933%_))))
                              (let ((_%tl178879178957%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e178877178952%_)))
                                    (_%hd178878178955%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e178877178952%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl178879178957%_))
                                    (_%__match185168185169%_
                                     _%e178856178896%_
                                     _%hd178857178899%_
                                     _%tl178858178901%_
                                     _%e178859178904%_
                                     _%hd178860178907%_
                                     _%tl178861178909%_
                                     _%e178862178912%_
                                     _%hd178863178915%_
                                     _%tl178864178917%_
                                     _%e178865178920%_
                                     _%hd178866178923%_
                                     _%tl178867178925%_
                                     _%e178868178928%_
                                     _%hd178869178931%_
                                     _%tl178870178933%_
                                     _%e178871178936%_
                                     _%hd178872178939%_
                                     _%tl178873178941%_
                                     _%e178874178944%_
                                     _%hd178875178947%_
                                     _%tl178876178949%_
                                     _%e178877178952%_
                                     _%hd178878178955%_
                                     _%tl178879178957%_)
                                    (_%__kont184687184688%_))))
                            (_%__kont184687184688%_))))
                     (_%__match185106185107%_
                      (lambda (_%e178832179009%_
                               _%hd178833179012%_
                               _%tl178834179014%_
                               _%e178835179017%_
                               _%hd178836179020%_
                               _%tl178837179022%_
                               _%e178838179025%_
                               _%hd178839179028%_
                               _%tl178840179030%_
                               _%e178841179033%_
                               _%hd178842179036%_
                               _%tl178843179038%_
                               _%e178844179041%_
                               _%hd178845179044%_
                               _%tl178846179046%_
                               _%e178847179049%_
                               _%hd178848179052%_
                               _%tl178849179054%_
                               _%e178850179057%_
                               _%hd178851179060%_
                               _%tl178852179062%_)
                        (let ((_%L179065%_ _%hd178851179060%_)
                              (_%L179066%_ _%hd178842179036%_))
                          (if (and (let ((__tmp185325
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self178651%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L179065%_
                                      __tmp185325))
                                   (let ((__tmp185326
                                          (let ((__tmp185327
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L179066%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp185327))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp185326
                                      'gxc#!accessor::t)))
                              (_%__kont184683184684%_ _%L179065%_ _%L179066%_)
                              (_%__kont184687184688%_)))))
                     (_%__match185104185105%_
                      (lambda (_%e178832179009%_
                               _%hd178833179012%_
                               _%tl178834179014%_
                               _%e178835179017%_
                               _%hd178836179020%_
                               _%tl178837179022%_
                               _%e178838179025%_
                               _%hd178839179028%_
                               _%tl178840179030%_
                               _%e178841179033%_
                               _%hd178842179036%_
                               _%tl178843179038%_
                               _%e178844179041%_
                               _%hd178845179044%_
                               _%tl178846179046%_
                               _%e178847179049%_
                               _%hd178848179052%_
                               _%tl178849179054%_
                               _%e178850179057%_
                               _%hd178851179060%_
                               _%tl178852179062%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl178846179046%_))
                            (_%__match185106185107%_
                             _%e178832179009%_
                             _%hd178833179012%_
                             _%tl178834179014%_
                             _%e178835179017%_
                             _%hd178836179020%_
                             _%tl178837179022%_
                             _%e178838179025%_
                             _%hd178839179028%_
                             _%tl178840179030%_
                             _%e178841179033%_
                             _%hd178842179036%_
                             _%tl178843179038%_
                             _%e178844179041%_
                             _%hd178845179044%_
                             _%tl178846179046%_
                             _%e178847179049%_
                             _%hd178848179052%_
                             _%tl178849179054%_
                             _%e178850179057%_
                             _%hd178851179060%_
                             _%tl178852179062%_)
                            (_%__match185160185161%_
                             _%e178832179009%_
                             _%hd178833179012%_
                             _%tl178834179014%_
                             _%e178835179017%_
                             _%hd178836179020%_
                             _%tl178837179022%_
                             _%e178838179025%_
                             _%hd178839179028%_
                             _%tl178840179030%_
                             _%e178841179033%_
                             _%hd178842179036%_
                             _%tl178843179038%_
                             _%e178844179041%_
                             _%hd178845179044%_
                             _%tl178846179046%_
                             _%e178847179049%_
                             _%hd178848179052%_
                             _%tl178849179054%_
                             _%e178850179057%_
                             _%hd178851179060%_
                             _%tl178852179062%_))))
                     (_%__match185050185051%_
                      (lambda (_%e178797179105%_
                               _%hd178798179108%_
                               _%tl178799179110%_
                               _%e178800179113%_
                               _%hd178801179116%_
                               _%tl178802179118%_
                               _%e178803179121%_
                               _%hd178804179124%_
                               _%tl178805179126%_
                               _%e178806179129%_
                               _%hd178807179132%_
                               _%tl178808179134%_
                               _%e178809179137%_
                               _%hd178810179140%_
                               _%tl178811179142%_
                               _%e178812179145%_
                               _%hd178813179148%_
                               _%tl178814179150%_
                               _%e178815179153%_
                               _%hd178816179156%_
                               _%tl178817179158%_
                               _%e178818179161%_
                               _%hd178819179164%_
                               _%tl178820179166%_
                               _%e178821179169%_
                               _%hd178822179172%_
                               _%tl178823179174%_
                               _%e178824179177%_
                               _%hd178825179180%_
                               _%tl178826179182%_
                               _%e178827179185%_
                               _%hd178828179188%_
                               _%tl178829179190%_)
                        (let ((_%L179193%_ _%hd178828179188%_)
                              (_%L179194%_ _%hd178825179180%_)
                              (_%L179195%_ _%hd178816179156%_)
                              (_%L179196%_ _%hd178807179132%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L179196%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L179196%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp185328
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self178651%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L179195%_
                                      __tmp185328)))
                              (_%__kont184681184682%_
                               _%L179193%_
                               _%L179194%_
                               _%L179195%_
                               _%L179196%_)
                              (_%__kont184687184688%_)))))
                     (_%__match185042185043%_
                      (lambda (_%e178797179105%_
                               _%hd178798179108%_
                               _%tl178799179110%_
                               _%e178800179113%_
                               _%hd178801179116%_
                               _%tl178802179118%_
                               _%e178803179121%_
                               _%hd178804179124%_
                               _%tl178805179126%_
                               _%e178806179129%_
                               _%hd178807179132%_
                               _%tl178808179134%_
                               _%e178809179137%_
                               _%hd178810179140%_
                               _%tl178811179142%_
                               _%e178812179145%_
                               _%hd178813179148%_
                               _%tl178814179150%_
                               _%e178815179153%_
                               _%hd178816179156%_
                               _%tl178817179158%_
                               _%e178818179161%_
                               _%hd178819179164%_
                               _%tl178820179166%_
                               _%e178821179169%_
                               _%hd178822179172%_
                               _%tl178823179174%_
                               _%e178824179177%_
                               _%hd178825179180%_
                               _%tl178826179182%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl178820179166%_))
                            (let ((_%e178827179185%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl178820179166%_))))
                              (let ((_%tl178829179190%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e178827179185%_)))
                                    (_%hd178828179188%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e178827179185%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl178829179190%_))
                                    (_%__match185050185051%_
                                     _%e178797179105%_
                                     _%hd178798179108%_
                                     _%tl178799179110%_
                                     _%e178800179113%_
                                     _%hd178801179116%_
                                     _%tl178802179118%_
                                     _%e178803179121%_
                                     _%hd178804179124%_
                                     _%tl178805179126%_
                                     _%e178806179129%_
                                     _%hd178807179132%_
                                     _%tl178808179134%_
                                     _%e178809179137%_
                                     _%hd178810179140%_
                                     _%tl178811179142%_
                                     _%e178812179145%_
                                     _%hd178813179148%_
                                     _%tl178814179150%_
                                     _%e178815179153%_
                                     _%hd178816179156%_
                                     _%tl178817179158%_
                                     _%e178818179161%_
                                     _%hd178819179164%_
                                     _%tl178820179166%_
                                     _%e178821179169%_
                                     _%hd178822179172%_
                                     _%tl178823179174%_
                                     _%e178824179177%_
                                     _%hd178825179180%_
                                     _%tl178826179182%_
                                     _%e178827179185%_
                                     _%hd178828179188%_
                                     _%tl178829179190%_)
                                    (_%__kont184687184688%_))))
                            (_%__match185166185167%_
                             _%e178797179105%_
                             _%hd178798179108%_
                             _%tl178799179110%_
                             _%e178800179113%_
                             _%hd178801179116%_
                             _%tl178802179118%_
                             _%e178803179121%_
                             _%hd178804179124%_
                             _%tl178805179126%_
                             _%e178806179129%_
                             _%hd178807179132%_
                             _%tl178808179134%_
                             _%e178809179137%_
                             _%hd178810179140%_
                             _%tl178811179142%_
                             _%e178812179145%_
                             _%hd178813179148%_
                             _%tl178814179150%_
                             _%e178815179153%_
                             _%hd178816179156%_
                             _%tl178817179158%_
                             _%e178818179161%_
                             _%hd178819179164%_
                             _%tl178820179166%_))))
                     (_%__match184964184965%_
                      (lambda (_%e178763179239%_
                               _%hd178764179242%_
                               _%tl178765179244%_
                               _%e178766179247%_
                               _%hd178767179250%_
                               _%tl178768179252%_
                               _%e178769179255%_
                               _%hd178770179258%_
                               _%tl178771179260%_
                               _%e178772179263%_
                               _%hd178773179266%_
                               _%tl178774179268%_
                               _%e178775179271%_
                               _%hd178776179274%_
                               _%tl178777179276%_
                               _%e178778179279%_
                               _%hd178779179282%_
                               _%tl178780179284%_
                               _%e178781179287%_
                               _%hd178782179290%_
                               _%tl178783179292%_
                               _%e178784179295%_
                               _%hd178785179298%_
                               _%tl178786179300%_
                               _%e178787179303%_
                               _%hd178788179306%_
                               _%tl178789179308%_
                               _%e178790179311%_
                               _%hd178791179314%_
                               _%tl178792179316%_)
                        (let ((_%L179319%_ _%hd178791179314%_)
                              (_%L179320%_ _%hd178782179290%_)
                              (_%L179321%_ _%hd178773179266%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L179321%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L179321%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp185329
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self178651%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L179320%_
                                      __tmp185329)))
                              (_%__kont184679184680%_
                               _%L179319%_
                               _%L179320%_
                               _%L179321%_)
                              (_%__match185168185169%_
                               _%e178763179239%_
                               _%hd178764179242%_
                               _%tl178765179244%_
                               _%e178766179247%_
                               _%hd178767179250%_
                               _%tl178768179252%_
                               _%e178769179255%_
                               _%hd178770179258%_
                               _%tl178771179260%_
                               _%e178772179263%_
                               _%hd178773179266%_
                               _%tl178774179268%_
                               _%e178775179271%_
                               _%hd178776179274%_
                               _%tl178777179276%_
                               _%e178778179279%_
                               _%hd178779179282%_
                               _%tl178780179284%_
                               _%e178781179287%_
                               _%hd178782179290%_
                               _%tl178783179292%_
                               _%e178784179295%_
                               _%hd178785179298%_
                               _%tl178786179300%_)))))
                     (_%__match184962184963%_
                      (lambda (_%e178763179239%_
                               _%hd178764179242%_
                               _%tl178765179244%_
                               _%e178766179247%_
                               _%hd178767179250%_
                               _%tl178768179252%_
                               _%e178769179255%_
                               _%hd178770179258%_
                               _%tl178771179260%_
                               _%e178772179263%_
                               _%hd178773179266%_
                               _%tl178774179268%_
                               _%e178775179271%_
                               _%hd178776179274%_
                               _%tl178777179276%_
                               _%e178778179279%_
                               _%hd178779179282%_
                               _%tl178780179284%_
                               _%e178781179287%_
                               _%hd178782179290%_
                               _%tl178783179292%_
                               _%e178784179295%_
                               _%hd178785179298%_
                               _%tl178786179300%_
                               _%e178787179303%_
                               _%hd178788179306%_
                               _%tl178789179308%_
                               _%e178790179311%_
                               _%hd178791179314%_
                               _%tl178792179316%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl178786179300%_))
                            (_%__match184964184965%_
                             _%e178763179239%_
                             _%hd178764179242%_
                             _%tl178765179244%_
                             _%e178766179247%_
                             _%hd178767179250%_
                             _%tl178768179252%_
                             _%e178769179255%_
                             _%hd178770179258%_
                             _%tl178771179260%_
                             _%e178772179263%_
                             _%hd178773179266%_
                             _%tl178774179268%_
                             _%e178775179271%_
                             _%hd178776179274%_
                             _%tl178777179276%_
                             _%e178778179279%_
                             _%hd178779179282%_
                             _%tl178780179284%_
                             _%e178781179287%_
                             _%hd178782179290%_
                             _%tl178783179292%_
                             _%e178784179295%_
                             _%hd178785179298%_
                             _%tl178786179300%_
                             _%e178787179303%_
                             _%hd178788179306%_
                             _%tl178789179308%_
                             _%e178790179311%_
                             _%hd178791179314%_
                             _%tl178792179316%_)
                            (_%__match185042185043%_
                             _%e178763179239%_
                             _%hd178764179242%_
                             _%tl178765179244%_
                             _%e178766179247%_
                             _%hd178767179250%_
                             _%tl178768179252%_
                             _%e178769179255%_
                             _%hd178770179258%_
                             _%tl178771179260%_
                             _%e178772179263%_
                             _%hd178773179266%_
                             _%tl178774179268%_
                             _%e178775179271%_
                             _%hd178776179274%_
                             _%tl178777179276%_
                             _%e178778179279%_
                             _%hd178779179282%_
                             _%tl178780179284%_
                             _%e178781179287%_
                             _%hd178782179290%_
                             _%tl178783179292%_
                             _%e178784179295%_
                             _%hd178785179298%_
                             _%tl178786179300%_
                             _%e178787179303%_
                             _%hd178788179306%_
                             _%tl178789179308%_
                             _%e178790179311%_
                             _%hd178791179314%_
                             _%tl178792179316%_))))
                     (_%__match184952184953%_
                      (lambda (_%e178763179239%_
                               _%hd178764179242%_
                               _%tl178765179244%_
                               _%e178766179247%_
                               _%hd178767179250%_
                               _%tl178768179252%_
                               _%e178769179255%_
                               _%hd178770179258%_
                               _%tl178771179260%_
                               _%e178772179263%_
                               _%hd178773179266%_
                               _%tl178774179268%_
                               _%e178775179271%_
                               _%hd178776179274%_
                               _%tl178777179276%_
                               _%e178778179279%_
                               _%hd178779179282%_
                               _%tl178780179284%_
                               _%e178781179287%_
                               _%hd178782179290%_
                               _%tl178783179292%_
                               _%e178784179295%_
                               _%hd178785179298%_
                               _%tl178786179300%_
                               _%e178787179303%_
                               _%hd178788179306%_
                               _%tl178789179308%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd178788179306%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl178789179308%_))
                                (let ((_%e178790179311%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl178789179308%_))))
                                  (let ((_%tl178792179316%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e178790179311%_)))
                                        (_%hd178791179314%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e178790179311%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl178792179316%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl178786179300%_))
                                            (_%__match184964184965%_
                                             _%e178763179239%_
                                             _%hd178764179242%_
                                             _%tl178765179244%_
                                             _%e178766179247%_
                                             _%hd178767179250%_
                                             _%tl178768179252%_
                                             _%e178769179255%_
                                             _%hd178770179258%_
                                             _%tl178771179260%_
                                             _%e178772179263%_
                                             _%hd178773179266%_
                                             _%tl178774179268%_
                                             _%e178775179271%_
                                             _%hd178776179274%_
                                             _%tl178777179276%_
                                             _%e178778179279%_
                                             _%hd178779179282%_
                                             _%tl178780179284%_
                                             _%e178781179287%_
                                             _%hd178782179290%_
                                             _%tl178783179292%_
                                             _%e178784179295%_
                                             _%hd178785179298%_
                                             _%tl178786179300%_
                                             _%e178787179303%_
                                             _%hd178788179306%_
                                             _%tl178789179308%_
                                             _%e178790179311%_
                                             _%hd178791179314%_
                                             _%tl178792179316%_)
                                            (_%__match185042185043%_
                                             _%e178763179239%_
                                             _%hd178764179242%_
                                             _%tl178765179244%_
                                             _%e178766179247%_
                                             _%hd178767179250%_
                                             _%tl178768179252%_
                                             _%e178769179255%_
                                             _%hd178770179258%_
                                             _%tl178771179260%_
                                             _%e178772179263%_
                                             _%hd178773179266%_
                                             _%tl178774179268%_
                                             _%e178775179271%_
                                             _%hd178776179274%_
                                             _%tl178777179276%_
                                             _%e178778179279%_
                                             _%hd178779179282%_
                                             _%tl178780179284%_
                                             _%e178781179287%_
                                             _%hd178782179290%_
                                             _%tl178783179292%_
                                             _%e178784179295%_
                                             _%hd178785179298%_
                                             _%tl178786179300%_
                                             _%e178787179303%_
                                             _%hd178788179306%_
                                             _%tl178789179308%_
                                             _%e178790179311%_
                                             _%hd178791179314%_
                                             _%tl178792179316%_))
                                        (_%__match185166185167%_
                                         _%e178763179239%_
                                         _%hd178764179242%_
                                         _%tl178765179244%_
                                         _%e178766179247%_
                                         _%hd178767179250%_
                                         _%tl178768179252%_
                                         _%e178769179255%_
                                         _%hd178770179258%_
                                         _%tl178771179260%_
                                         _%e178772179263%_
                                         _%hd178773179266%_
                                         _%tl178774179268%_
                                         _%e178775179271%_
                                         _%hd178776179274%_
                                         _%tl178777179276%_
                                         _%e178778179279%_
                                         _%hd178779179282%_
                                         _%tl178780179284%_
                                         _%e178781179287%_
                                         _%hd178782179290%_
                                         _%tl178783179292%_
                                         _%e178784179295%_
                                         _%hd178785179298%_
                                         _%tl178786179300%_))))
                                (_%__match185166185167%_
                                 _%e178763179239%_
                                 _%hd178764179242%_
                                 _%tl178765179244%_
                                 _%e178766179247%_
                                 _%hd178767179250%_
                                 _%tl178768179252%_
                                 _%e178769179255%_
                                 _%hd178770179258%_
                                 _%tl178771179260%_
                                 _%e178772179263%_
                                 _%hd178773179266%_
                                 _%tl178774179268%_
                                 _%e178775179271%_
                                 _%hd178776179274%_
                                 _%tl178777179276%_
                                 _%e178778179279%_
                                 _%hd178779179282%_
                                 _%tl178780179284%_
                                 _%e178781179287%_
                                 _%hd178782179290%_
                                 _%tl178783179292%_
                                 _%e178784179295%_
                                 _%hd178785179298%_
                                 _%tl178786179300%_))
                            (_%__match185166185167%_
                             _%e178763179239%_
                             _%hd178764179242%_
                             _%tl178765179244%_
                             _%e178766179247%_
                             _%hd178767179250%_
                             _%tl178768179252%_
                             _%e178769179255%_
                             _%hd178770179258%_
                             _%tl178771179260%_
                             _%e178772179263%_
                             _%hd178773179266%_
                             _%tl178774179268%_
                             _%e178775179271%_
                             _%hd178776179274%_
                             _%tl178777179276%_
                             _%e178778179279%_
                             _%hd178779179282%_
                             _%tl178780179284%_
                             _%e178781179287%_
                             _%hd178782179290%_
                             _%tl178783179292%_
                             _%e178784179295%_
                             _%hd178785179298%_
                             _%tl178786179300%_))))
                     (_%__match184884184885%_
                      (lambda (_%e178712179360%_
                               _%hd178713179363%_
                               _%tl178714179365%_
                               _%e178715179368%_
                               _%hd178716179371%_
                               _%tl178717179373%_
                               _%e178718179376%_
                               _%hd178719179379%_
                               _%tl178720179381%_
                               _%e178721179384%_
                               _%hd178722179387%_
                               _%tl178723179389%_
                               _%e178724179392%_
                               _%hd178725179395%_
                               _%tl178726179397%_
                               _%e178727179400%_
                               _%hd178728179403%_
                               _%tl178729179405%_
                               _%e178730179408%_
                               _%hd178731179411%_
                               _%tl178732179413%_
                               _%e178733179416%_
                               _%hd178734179419%_
                               _%tl178735179421%_
                               _%e178736179424%_
                               _%hd178737179427%_
                               _%tl178738179429%_
                               _%e178739179432%_
                               _%hd178740179435%_
                               _%tl178741179437%_
                               _%e178742179440%_
                               _%hd178743179443%_
                               _%tl178744179445%_
                               _%e178745179448%_
                               _%hd178746179451%_
                               _%tl178747179453%_
                               _%e178748179456%_
                               _%hd178749179459%_
                               _%tl178750179461%_
                               _%__splice184677184678%_
                               _%target178751179464%_
                               _%tl178753179466%_)
                        (letrec ((_%loop178754179469%_
                                  (lambda (_%hd178752179472%_
                                           _%args178758179474%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd178752179472%_))
                                        (let ((_%e178755179477%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd178752179472%_))))
                                          (let ((_%lp-tl178757179482%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e178755179477%_)))
                                                (_%lp-hd178756179480%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e178755179477%_))))
                                            (_%loop178754179469%_
                                             _%lp-tl178757179482%_
                                             (cons _%lp-hd178756179480%_
                                                   _%args178758179474%_))))
                                        (let ((_%args178759179485%_
                                               (reverse _%args178758179474%_)))
                                          (let ((_%L179488%_
                                                 _%args178759179485%_)
                                                (_%L179489%_
                                                 _%hd178749179459%_)
                                                (_%L179490%_
                                                 _%hd178740179435%_)
                                                (_%L179491%_
                                                 _%hd178731179411%_)
                                                (_%L179492%_
                                                 _%hd178722179387%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L179492%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L179491%_
                                                        'call-method))
                                                     (let ((__tmp185330
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self178651%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L179490%_
                                                        __tmp185330)))
                                                (_%__kont184675184676%_
                                                 _%L179488%_
                                                 _%L179489%_
                                                 _%L179490%_
                                                 _%L179491%_
                                                 _%L179492%_)
                                                (_%__kont184687184688%_))))))))
                          (_%loop178754179469%_ _%target178751179464%_ '()))))
                     (_%__match184842184843%_
                      (lambda (_%e178712179360%_
                               _%hd178713179363%_
                               _%tl178714179365%_
                               _%e178715179368%_
                               _%hd178716179371%_
                               _%tl178717179373%_
                               _%e178718179376%_
                               _%hd178719179379%_
                               _%tl178720179381%_
                               _%e178721179384%_
                               _%hd178722179387%_
                               _%tl178723179389%_
                               _%e178724179392%_
                               _%hd178725179395%_
                               _%tl178726179397%_
                               _%e178727179400%_
                               _%hd178728179403%_
                               _%tl178729179405%_
                               _%e178730179408%_
                               _%hd178731179411%_
                               _%tl178732179413%_
                               _%e178733179416%_
                               _%hd178734179419%_
                               _%tl178735179421%_
                               _%e178736179424%_
                               _%hd178737179427%_
                               _%tl178738179429%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd178737179427%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl178738179429%_))
                                (let ((_%e178739179432%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl178738179429%_))))
                                  (let ((_%tl178741179437%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e178739179432%_)))
                                        (_%hd178740179435%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e178739179432%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl178741179437%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl178735179421%_))
                                            (let ((_%e178742179440%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl178735179421%_))))
                                              (let ((_%tl178744179445%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e178742179440%_)))
                                                    (_%hd178743179443%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e178742179440%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd178743179443%_))
                                                    (let ((_%e178745179448%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd178743179443%_))))
                                                      (let ((_%tl178747179453%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e178745179448%_)))
                    (_%hd178746179451%_
                     (let () (declare (not safe)) (##car _%e178745179448%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd178746179451%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd178746179451%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl178747179453%_))
                            (let ((_%e178748179456%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl178747179453%_))))
                              (let ((_%tl178750179461%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e178748179456%_)))
                                    (_%hd178749179459%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e178748179456%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl178750179461%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl178744179445%_))
                                        (let ((_%__splice184677184678%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl178744179445%_
                                                  '0))))
                                          (let ((_%tl178753179466%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice184677184678%_
                                                    '1)))
                                                (_%target178751179464%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice184677184678%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl178753179466%_))
                                                (_%__match184884184885%_
                                                 _%e178712179360%_
                                                 _%hd178713179363%_
                                                 _%tl178714179365%_
                                                 _%e178715179368%_
                                                 _%hd178716179371%_
                                                 _%tl178717179373%_
                                                 _%e178718179376%_
                                                 _%hd178719179379%_
                                                 _%tl178720179381%_
                                                 _%e178721179384%_
                                                 _%hd178722179387%_
                                                 _%tl178723179389%_
                                                 _%e178724179392%_
                                                 _%hd178725179395%_
                                                 _%tl178726179397%_
                                                 _%e178727179400%_
                                                 _%hd178728179403%_
                                                 _%tl178729179405%_
                                                 _%e178730179408%_
                                                 _%hd178731179411%_
                                                 _%tl178732179413%_
                                                 _%e178733179416%_
                                                 _%hd178734179419%_
                                                 _%tl178735179421%_
                                                 _%e178736179424%_
                                                 _%hd178737179427%_
                                                 _%tl178738179429%_
                                                 _%e178739179432%_
                                                 _%hd178740179435%_
                                                 _%tl178741179437%_
                                                 _%e178742179440%_
                                                 _%hd178743179443%_
                                                 _%tl178744179445%_
                                                 _%e178745179448%_
                                                 _%hd178746179451%_
                                                 _%tl178747179453%_
                                                 _%e178748179456%_
                                                 _%hd178749179459%_
                                                 _%tl178750179461%_
                                                 _%__splice184677184678%_
                                                 _%target178751179464%_
                                                 _%tl178753179466%_)
                                                (_%__kont184687184688%_))))
                                        (_%__kont184687184688%_))
                                    (_%__kont184687184688%_))))
                            (_%__kont184687184688%_))
                        (_%__kont184687184688%_))
                    (_%__kont184687184688%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont184687184688%_))))
                                            (_%__match185166185167%_
                                             _%e178712179360%_
                                             _%hd178713179363%_
                                             _%tl178714179365%_
                                             _%e178715179368%_
                                             _%hd178716179371%_
                                             _%tl178717179373%_
                                             _%e178718179376%_
                                             _%hd178719179379%_
                                             _%tl178720179381%_
                                             _%e178721179384%_
                                             _%hd178722179387%_
                                             _%tl178723179389%_
                                             _%e178724179392%_
                                             _%hd178725179395%_
                                             _%tl178726179397%_
                                             _%e178727179400%_
                                             _%hd178728179403%_
                                             _%tl178729179405%_
                                             _%e178730179408%_
                                             _%hd178731179411%_
                                             _%tl178732179413%_
                                             _%e178733179416%_
                                             _%hd178734179419%_
                                             _%tl178735179421%_))
                                        (_%__match185166185167%_
                                         _%e178712179360%_
                                         _%hd178713179363%_
                                         _%tl178714179365%_
                                         _%e178715179368%_
                                         _%hd178716179371%_
                                         _%tl178717179373%_
                                         _%e178718179376%_
                                         _%hd178719179379%_
                                         _%tl178720179381%_
                                         _%e178721179384%_
                                         _%hd178722179387%_
                                         _%tl178723179389%_
                                         _%e178724179392%_
                                         _%hd178725179395%_
                                         _%tl178726179397%_
                                         _%e178727179400%_
                                         _%hd178728179403%_
                                         _%tl178729179405%_
                                         _%e178730179408%_
                                         _%hd178731179411%_
                                         _%tl178732179413%_
                                         _%e178733179416%_
                                         _%hd178734179419%_
                                         _%tl178735179421%_))))
                                (_%__match185166185167%_
                                 _%e178712179360%_
                                 _%hd178713179363%_
                                 _%tl178714179365%_
                                 _%e178715179368%_
                                 _%hd178716179371%_
                                 _%tl178717179373%_
                                 _%e178718179376%_
                                 _%hd178719179379%_
                                 _%tl178720179381%_
                                 _%e178721179384%_
                                 _%hd178722179387%_
                                 _%tl178723179389%_
                                 _%e178724179392%_
                                 _%hd178725179395%_
                                 _%tl178726179397%_
                                 _%e178727179400%_
                                 _%hd178728179403%_
                                 _%tl178729179405%_
                                 _%e178730179408%_
                                 _%hd178731179411%_
                                 _%tl178732179413%_
                                 _%e178733179416%_
                                 _%hd178734179419%_
                                 _%tl178735179421%_))
                            (_%__match184952184953%_
                             _%e178712179360%_
                             _%hd178713179363%_
                             _%tl178714179365%_
                             _%e178715179368%_
                             _%hd178716179371%_
                             _%tl178717179373%_
                             _%e178718179376%_
                             _%hd178719179379%_
                             _%tl178720179381%_
                             _%e178721179384%_
                             _%hd178722179387%_
                             _%tl178723179389%_
                             _%e178724179392%_
                             _%hd178725179395%_
                             _%tl178726179397%_
                             _%e178727179400%_
                             _%hd178728179403%_
                             _%tl178729179405%_
                             _%e178730179408%_
                             _%hd178731179411%_
                             _%tl178732179413%_
                             _%e178733179416%_
                             _%hd178734179419%_
                             _%tl178735179421%_
                             _%e178736179424%_
                             _%hd178737179427%_
                             _%tl178738179429%_))))
                     (_%__match184774184775%_
                      (lambda (_%e178668179552%_
                               _%hd178669179555%_
                               _%tl178670179557%_
                               _%e178671179560%_
                               _%hd178672179563%_
                               _%tl178673179565%_
                               _%e178674179568%_
                               _%hd178675179571%_
                               _%tl178676179573%_
                               _%e178677179576%_
                               _%hd178678179579%_
                               _%tl178679179581%_
                               _%e178680179584%_
                               _%hd178681179587%_
                               _%tl178682179589%_
                               _%e178683179592%_
                               _%hd178684179595%_
                               _%tl178685179597%_
                               _%e178686179600%_
                               _%hd178687179603%_
                               _%tl178688179605%_
                               _%e178689179608%_
                               _%hd178690179611%_
                               _%tl178691179613%_
                               _%e178692179616%_
                               _%hd178693179619%_
                               _%tl178694179621%_
                               _%e178695179624%_
                               _%hd178696179627%_
                               _%tl178697179629%_
                               _%__splice184673184674%_
                               _%target178698179632%_
                               _%tl178700179634%_)
                        (letrec ((_%loop178701179637%_
                                  (lambda (_%hd178699179640%_
                                           _%args178705179642%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd178699179640%_))
                                        (let ((_%e178702179645%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd178699179640%_))))
                                          (let ((_%lp-tl178704179650%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e178702179645%_)))
                                                (_%lp-hd178703179648%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e178702179645%_))))
                                            (_%loop178701179637%_
                                             _%lp-tl178704179650%_
                                             (cons _%lp-hd178703179648%_
                                                   _%args178705179642%_))))
                                        (let ((_%args178706179653%_
                                               (reverse _%args178705179642%_)))
                                          (let ((_%L179656%_
                                                 _%args178706179653%_)
                                                (_%L179657%_
                                                 _%hd178696179627%_)
                                                (_%L179658%_
                                                 _%hd178687179603%_)
                                                (_%L179659%_
                                                 _%hd178678179579%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L179659%_
                                                        'call-method))
                                                     (let ((__tmp185331
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self178651%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L179658%_
                                                        __tmp185331)))
                                                (_%__kont184671184672%_
                                                 _%L179656%_
                                                 _%L179657%_
                                                 _%L179658%_
                                                 _%L179659%_)
                                                (_%__match184962184963%_
                                                 _%e178668179552%_
                                                 _%hd178669179555%_
                                                 _%tl178670179557%_
                                                 _%e178671179560%_
                                                 _%hd178672179563%_
                                                 _%tl178673179565%_
                                                 _%e178674179568%_
                                                 _%hd178675179571%_
                                                 _%tl178676179573%_
                                                 _%e178677179576%_
                                                 _%hd178678179579%_
                                                 _%tl178679179581%_
                                                 _%e178680179584%_
                                                 _%hd178681179587%_
                                                 _%tl178682179589%_
                                                 _%e178683179592%_
                                                 _%hd178684179595%_
                                                 _%tl178685179597%_
                                                 _%e178686179600%_
                                                 _%hd178687179603%_
                                                 _%tl178688179605%_
                                                 _%e178689179608%_
                                                 _%hd178690179611%_
                                                 _%tl178691179613%_
                                                 _%e178692179616%_
                                                 _%hd178693179619%_
                                                 _%tl178694179621%_
                                                 _%e178695179624%_
                                                 _%hd178696179627%_
                                                 _%tl178697179629%_))))))))
                          (_%loop178701179637%_ _%target178698179632%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx184669184670%_))
                    (let ((_%e178668179552%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx184669184670%_))))
                      (let ((_%tl178670179557%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e178668179552%_)))
                            (_%hd178669179555%_
                             (let ()
                               (declare (not safe))
                               (##car _%e178668179552%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl178670179557%_))
                            (let ((_%e178671179560%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl178670179557%_))))
                              (let ((_%tl178673179565%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e178671179560%_)))
                                    (_%hd178672179563%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e178671179560%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd178672179563%_))
                                    (let ((_%e178674179568%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd178672179563%_))))
                                      (let ((_%tl178676179573%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e178674179568%_)))
                                            (_%hd178675179571%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e178674179568%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd178675179571%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd178675179571%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl178676179573%_))
                                                    (let ((_%e178677179576%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl178676179573%_))))
                                                      (let ((_%tl178679179581%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e178677179576%_)))
                    (_%hd178678179579%_
                     (let () (declare (not safe)) (##car _%e178677179576%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl178679179581%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl178673179565%_))
                        (let ((_%e178680179584%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl178673179565%_))))
                          (let ((_%tl178682179589%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e178680179584%_)))
                                (_%hd178681179587%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e178680179584%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd178681179587%_))
                                (let ((_%e178683179592%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd178681179587%_))))
                                  (let ((_%tl178685179597%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e178683179592%_)))
                                        (_%hd178684179595%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e178683179592%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd178684179595%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd178684179595%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl178685179597%_))
                                                (let ((_%e178686179600%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl178685179597%_))))
                                                  (let ((_%tl178688179605%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e178686179600%_)))
                                                        (_%hd178687179603%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e178686179600%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl178688179605%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl178682179589%_))
                                                            (let ((_%e178689179608%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl178682179589%_))))
                      (let ((_%tl178691179613%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e178689179608%_)))
                            (_%hd178690179611%_
                             (let ()
                               (declare (not safe))
                               (##car _%e178689179608%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd178690179611%_))
                            (let ((_%e178692179616%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd178690179611%_))))
                              (let ((_%tl178694179621%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e178692179616%_)))
                                    (_%hd178693179619%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e178692179616%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd178693179619%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd178693179619%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl178694179621%_))
                                            (let ((_%e178695179624%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl178694179621%_))))
                                              (let ((_%tl178697179629%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e178695179624%_)))
                                                    (_%hd178696179627%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e178695179624%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl178697179629%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl178691179613%_))
                                                        (let ((_%__splice184673184674%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice->vector
                          _%tl178691179613%_
                          '0))))
                  (let ((_%tl178700179634%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice184673184674%_ '1)))
                        (_%target178698179632%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice184673184674%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl178700179634%_))
                        (_%__match184774184775%_
                         _%e178668179552%_
                         _%hd178669179555%_
                         _%tl178670179557%_
                         _%e178671179560%_
                         _%hd178672179563%_
                         _%tl178673179565%_
                         _%e178674179568%_
                         _%hd178675179571%_
                         _%tl178676179573%_
                         _%e178677179576%_
                         _%hd178678179579%_
                         _%tl178679179581%_
                         _%e178680179584%_
                         _%hd178681179587%_
                         _%tl178682179589%_
                         _%e178683179592%_
                         _%hd178684179595%_
                         _%tl178685179597%_
                         _%e178686179600%_
                         _%hd178687179603%_
                         _%tl178688179605%_
                         _%e178689179608%_
                         _%hd178690179611%_
                         _%tl178691179613%_
                         _%e178692179616%_
                         _%hd178693179619%_
                         _%tl178694179621%_
                         _%e178695179624%_
                         _%hd178696179627%_
                         _%tl178697179629%_
                         _%__splice184673184674%_
                         _%target178698179632%_
                         _%tl178700179634%_)
                        (_%__match184962184963%_
                         _%e178668179552%_
                         _%hd178669179555%_
                         _%tl178670179557%_
                         _%e178671179560%_
                         _%hd178672179563%_
                         _%tl178673179565%_
                         _%e178674179568%_
                         _%hd178675179571%_
                         _%tl178676179573%_
                         _%e178677179576%_
                         _%hd178678179579%_
                         _%tl178679179581%_
                         _%e178680179584%_
                         _%hd178681179587%_
                         _%tl178682179589%_
                         _%e178683179592%_
                         _%hd178684179595%_
                         _%tl178685179597%_
                         _%e178686179600%_
                         _%hd178687179603%_
                         _%tl178688179605%_
                         _%e178689179608%_
                         _%hd178690179611%_
                         _%tl178691179613%_
                         _%e178692179616%_
                         _%hd178693179619%_
                         _%tl178694179621%_
                         _%e178695179624%_
                         _%hd178696179627%_
                         _%tl178697179629%_))))
                (_%__match184962184963%_
                 _%e178668179552%_
                 _%hd178669179555%_
                 _%tl178670179557%_
                 _%e178671179560%_
                 _%hd178672179563%_
                 _%tl178673179565%_
                 _%e178674179568%_
                 _%hd178675179571%_
                 _%tl178676179573%_
                 _%e178677179576%_
                 _%hd178678179579%_
                 _%tl178679179581%_
                 _%e178680179584%_
                 _%hd178681179587%_
                 _%tl178682179589%_
                 _%e178683179592%_
                 _%hd178684179595%_
                 _%tl178685179597%_
                 _%e178686179600%_
                 _%hd178687179603%_
                 _%tl178688179605%_
                 _%e178689179608%_
                 _%hd178690179611%_
                 _%tl178691179613%_
                 _%e178692179616%_
                 _%hd178693179619%_
                 _%tl178694179621%_
                 _%e178695179624%_
                 _%hd178696179627%_
                 _%tl178697179629%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match185166185167%_
                                                     _%e178668179552%_
                                                     _%hd178669179555%_
                                                     _%tl178670179557%_
                                                     _%e178671179560%_
                                                     _%hd178672179563%_
                                                     _%tl178673179565%_
                                                     _%e178674179568%_
                                                     _%hd178675179571%_
                                                     _%tl178676179573%_
                                                     _%e178677179576%_
                                                     _%hd178678179579%_
                                                     _%tl178679179581%_
                                                     _%e178680179584%_
                                                     _%hd178681179587%_
                                                     _%tl178682179589%_
                                                     _%e178683179592%_
                                                     _%hd178684179595%_
                                                     _%tl178685179597%_
                                                     _%e178686179600%_
                                                     _%hd178687179603%_
                                                     _%tl178688179605%_
                                                     _%e178689179608%_
                                                     _%hd178690179611%_
                                                     _%tl178691179613%_))))
                                            (_%__match185166185167%_
                                             _%e178668179552%_
                                             _%hd178669179555%_
                                             _%tl178670179557%_
                                             _%e178671179560%_
                                             _%hd178672179563%_
                                             _%tl178673179565%_
                                             _%e178674179568%_
                                             _%hd178675179571%_
                                             _%tl178676179573%_
                                             _%e178677179576%_
                                             _%hd178678179579%_
                                             _%tl178679179581%_
                                             _%e178680179584%_
                                             _%hd178681179587%_
                                             _%tl178682179589%_
                                             _%e178683179592%_
                                             _%hd178684179595%_
                                             _%tl178685179597%_
                                             _%e178686179600%_
                                             _%hd178687179603%_
                                             _%tl178688179605%_
                                             _%e178689179608%_
                                             _%hd178690179611%_
                                             _%tl178691179613%_))
                                        (_%__match184842184843%_
                                         _%e178668179552%_
                                         _%hd178669179555%_
                                         _%tl178670179557%_
                                         _%e178671179560%_
                                         _%hd178672179563%_
                                         _%tl178673179565%_
                                         _%e178674179568%_
                                         _%hd178675179571%_
                                         _%tl178676179573%_
                                         _%e178677179576%_
                                         _%hd178678179579%_
                                         _%tl178679179581%_
                                         _%e178680179584%_
                                         _%hd178681179587%_
                                         _%tl178682179589%_
                                         _%e178683179592%_
                                         _%hd178684179595%_
                                         _%tl178685179597%_
                                         _%e178686179600%_
                                         _%hd178687179603%_
                                         _%tl178688179605%_
                                         _%e178689179608%_
                                         _%hd178690179611%_
                                         _%tl178691179613%_
                                         _%e178692179616%_
                                         _%hd178693179619%_
                                         _%tl178694179621%_))
                                    (_%__match185166185167%_
                                     _%e178668179552%_
                                     _%hd178669179555%_
                                     _%tl178670179557%_
                                     _%e178671179560%_
                                     _%hd178672179563%_
                                     _%tl178673179565%_
                                     _%e178674179568%_
                                     _%hd178675179571%_
                                     _%tl178676179573%_
                                     _%e178677179576%_
                                     _%hd178678179579%_
                                     _%tl178679179581%_
                                     _%e178680179584%_
                                     _%hd178681179587%_
                                     _%tl178682179589%_
                                     _%e178683179592%_
                                     _%hd178684179595%_
                                     _%tl178685179597%_
                                     _%e178686179600%_
                                     _%hd178687179603%_
                                     _%tl178688179605%_
                                     _%e178689179608%_
                                     _%hd178690179611%_
                                     _%tl178691179613%_))))
                            (_%__match185166185167%_
                             _%e178668179552%_
                             _%hd178669179555%_
                             _%tl178670179557%_
                             _%e178671179560%_
                             _%hd178672179563%_
                             _%tl178673179565%_
                             _%e178674179568%_
                             _%hd178675179571%_
                             _%tl178676179573%_
                             _%e178677179576%_
                             _%hd178678179579%_
                             _%tl178679179581%_
                             _%e178680179584%_
                             _%hd178681179587%_
                             _%tl178682179589%_
                             _%e178683179592%_
                             _%hd178684179595%_
                             _%tl178685179597%_
                             _%e178686179600%_
                             _%hd178687179603%_
                             _%tl178688179605%_
                             _%e178689179608%_
                             _%hd178690179611%_
                             _%tl178691179613%_))))
                    (_%__match185104185105%_
                     _%e178668179552%_
                     _%hd178669179555%_
                     _%tl178670179557%_
                     _%e178671179560%_
                     _%hd178672179563%_
                     _%tl178673179565%_
                     _%e178674179568%_
                     _%hd178675179571%_
                     _%tl178676179573%_
                     _%e178677179576%_
                     _%hd178678179579%_
                     _%tl178679179581%_
                     _%e178680179584%_
                     _%hd178681179587%_
                     _%tl178682179589%_
                     _%e178683179592%_
                     _%hd178684179595%_
                     _%tl178685179597%_
                     _%e178686179600%_
                     _%hd178687179603%_
                     _%tl178688179605%_))
                (_%__kont184687184688%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont184687184688%_))
                                            (_%__kont184687184688%_))
                                        (_%__kont184687184688%_))))
                                (_%__kont184687184688%_))))
                        (_%__kont184687184688%_))
                    (_%__kont184687184688%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont184687184688%_))
                                                (_%__kont184687184688%_))
                                            (_%__kont184687184688%_))))
                                    (_%__kont184687184688%_))))
                            (_%__kont184687184688%_))))
                    (_%__kont184687184688%_))))))))))
