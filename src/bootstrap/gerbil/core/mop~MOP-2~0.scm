(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/mop~MOP-2::timestamp 1768864936)
  (begin
    (define gerbil/core/mop~MOP-2#runtime-type-info::t
      (make-class-type
       'gerbil.core#runtime-type-info::t
       'runtime-type-info
       (list)
       '(id name type-descriptor)
       '((print: name))
       '#f))
    (define gerbil/core/mop~MOP-2#runtime-type-info?
      (make-class-predicate gerbil/core/mop~MOP-2#runtime-type-info::t))
    (define gerbil/core/mop~MOP-2#make-runtime-type-info
      (lambda _%$args22562%_
        (apply make-instance
               gerbil/core/mop~MOP-2#runtime-type-info::t
               _%$args22562%_)))
    (define gerbil/core/mop~MOP-2#!runtime-type-id
      (make-class-slot-accessor
       gerbil/core/mop~MOP-2#runtime-type-info::t
       'id))
    (define gerbil/core/mop~MOP-2#!runtime-type-name
      (make-class-slot-accessor
       gerbil/core/mop~MOP-2#runtime-type-info::t
       'name))
    (define gerbil/core/mop~MOP-2#!runtime-type-descriptor
      (make-class-slot-accessor
       gerbil/core/mop~MOP-2#runtime-type-info::t
       'type-descriptor))
    (define gerbil/core/mop~MOP-2#!runtime-type-id-set!
      (make-class-slot-mutator gerbil/core/mop~MOP-2#runtime-type-info::t 'id))
    (define gerbil/core/mop~MOP-2#!runtime-type-name-set!
      (make-class-slot-mutator
       gerbil/core/mop~MOP-2#runtime-type-info::t
       'name))
    (define gerbil/core/mop~MOP-2#!runtime-type-descriptor-set!
      (make-class-slot-mutator
       gerbil/core/mop~MOP-2#runtime-type-info::t
       'type-descriptor))
    (define gerbil/core/mop~MOP-2#&!runtime-type-id
      (make-class-slot-unchecked-accessor
       gerbil/core/mop~MOP-2#runtime-type-info::t
       'id))
    (define gerbil/core/mop~MOP-2#&!runtime-type-name
      (make-class-slot-unchecked-accessor
       gerbil/core/mop~MOP-2#runtime-type-info::t
       'name))
    (define gerbil/core/mop~MOP-2#&!runtime-type-descriptor
      (make-class-slot-unchecked-accessor
       gerbil/core/mop~MOP-2#runtime-type-info::t
       'type-descriptor))
    (define gerbil/core/mop~MOP-2#&!runtime-type-id-set!
      (make-class-slot-unchecked-mutator
       gerbil/core/mop~MOP-2#runtime-type-info::t
       'id))
    (define gerbil/core/mop~MOP-2#&!runtime-type-name-set!
      (make-class-slot-unchecked-mutator
       gerbil/core/mop~MOP-2#runtime-type-info::t
       'name))
    (define gerbil/core/mop~MOP-2#&!runtime-type-descriptor-set!
      (make-class-slot-unchecked-mutator
       gerbil/core/mop~MOP-2#runtime-type-info::t
       'type-descriptor))
    (define gerbil/core/mop~MOP-2#class-type-info::t
      (make-class-type
       'gerbil.core#class-type-info::t
       'class-type-info
       (list gerbil/core/mop~MOP-2#runtime-type-info::t)
       '(super slots
               precedence-list
               ordered-slots
               struct?
               final?
               system?
               metaclass
               constructor-method
               constructor
               predicate
               accessors
               mutators
               unchecked-accessors
               unchecked-mutators
               slot-types
               slot-defaults
               slot-contracts)
       '((print: name))
       '#f))
    (define gerbil/core/mop~MOP-2#class-type-info?
      (make-class-predicate gerbil/core/mop~MOP-2#class-type-info::t))
    (define gerbil/core/mop~MOP-2#make-class-type-info
      (lambda _%$args22559%_
        (apply make-instance
               gerbil/core/mop~MOP-2#class-type-info::t
               _%$args22559%_)))
    (define gerbil/core/mop~MOP-2#!class-type-super
      (make-class-slot-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'super))
    (define gerbil/core/mop~MOP-2#!class-type-slots
      (make-class-slot-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'slots))
    (define gerbil/core/mop~MOP-2#!class-type-precedence-list
      (make-class-slot-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'precedence-list))
    (define gerbil/core/mop~MOP-2#!class-type-ordered-slots
      (make-class-slot-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'ordered-slots))
    (define gerbil/core/mop~MOP-2#!class-type-struct?
      (make-class-slot-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'struct?))
    (define gerbil/core/mop~MOP-2#!class-type-final?
      (make-class-slot-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'final?))
    (define gerbil/core/mop~MOP-2#!class-type-system?
      (make-class-slot-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'system?))
    (define gerbil/core/mop~MOP-2#!class-type-metaclass
      (make-class-slot-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'metaclass))
    (define gerbil/core/mop~MOP-2#!class-type-constructor-method
      (make-class-slot-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'constructor-method))
    (define gerbil/core/mop~MOP-2#!class-type-constructor
      (make-class-slot-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'constructor))
    (define gerbil/core/mop~MOP-2#!class-type-predicate
      (make-class-slot-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'predicate))
    (define gerbil/core/mop~MOP-2#!class-type-accessors
      (make-class-slot-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'accessors))
    (define gerbil/core/mop~MOP-2#!class-type-mutators
      (make-class-slot-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'mutators))
    (define gerbil/core/mop~MOP-2#!class-type-unchecked-accessors
      (make-class-slot-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'unchecked-accessors))
    (define gerbil/core/mop~MOP-2#!class-type-unchecked-mutators
      (make-class-slot-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'unchecked-mutators))
    (define gerbil/core/mop~MOP-2#!class-type-slot-types
      (make-class-slot-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'slot-types))
    (define gerbil/core/mop~MOP-2#!class-type-slot-defaults
      (make-class-slot-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'slot-defaults))
    (define gerbil/core/mop~MOP-2#!class-type-slot-contracts
      (make-class-slot-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'slot-contracts))
    (define gerbil/core/mop~MOP-2#!class-type-id
      (make-class-slot-accessor gerbil/core/mop~MOP-2#class-type-info::t 'id))
    (define gerbil/core/mop~MOP-2#!class-type-name
      (make-class-slot-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'name))
    (define gerbil/core/mop~MOP-2#!class-type-descriptor
      (make-class-slot-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'type-descriptor))
    (define gerbil/core/mop~MOP-2#!class-type-super-set!
      (make-class-slot-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'super))
    (define gerbil/core/mop~MOP-2#!class-type-slots-set!
      (make-class-slot-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'slots))
    (define gerbil/core/mop~MOP-2#!class-type-precedence-list-set!
      (make-class-slot-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'precedence-list))
    (define gerbil/core/mop~MOP-2#!class-type-ordered-slots-set!
      (make-class-slot-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'ordered-slots))
    (define gerbil/core/mop~MOP-2#!class-type-struct?-set!
      (make-class-slot-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'struct?))
    (define gerbil/core/mop~MOP-2#!class-type-final?-set!
      (make-class-slot-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'final?))
    (define gerbil/core/mop~MOP-2#!class-type-system?-set!
      (make-class-slot-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'system?))
    (define gerbil/core/mop~MOP-2#!class-type-metaclass-set!
      (make-class-slot-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'metaclass))
    (define gerbil/core/mop~MOP-2#!class-type-constructor-method-set!
      (make-class-slot-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'constructor-method))
    (define gerbil/core/mop~MOP-2#!class-type-constructor-set!
      (make-class-slot-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'constructor))
    (define gerbil/core/mop~MOP-2#!class-type-predicate-set!
      (make-class-slot-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'predicate))
    (define gerbil/core/mop~MOP-2#!class-type-accessors-set!
      (make-class-slot-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'accessors))
    (define gerbil/core/mop~MOP-2#!class-type-mutators-set!
      (make-class-slot-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'mutators))
    (define gerbil/core/mop~MOP-2#!class-type-unchecked-accessors-set!
      (make-class-slot-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'unchecked-accessors))
    (define gerbil/core/mop~MOP-2#!class-type-unchecked-mutators-set!
      (make-class-slot-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'unchecked-mutators))
    (define gerbil/core/mop~MOP-2#!class-type-slot-types-set!
      (make-class-slot-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'slot-types))
    (define gerbil/core/mop~MOP-2#!class-type-slot-defaults-set!
      (make-class-slot-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'slot-defaults))
    (define gerbil/core/mop~MOP-2#!class-type-slot-contracts-set!
      (make-class-slot-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'slot-contracts))
    (define gerbil/core/mop~MOP-2#!class-type-id-set!
      (make-class-slot-mutator gerbil/core/mop~MOP-2#class-type-info::t 'id))
    (define gerbil/core/mop~MOP-2#!class-type-name-set!
      (make-class-slot-mutator gerbil/core/mop~MOP-2#class-type-info::t 'name))
    (define gerbil/core/mop~MOP-2#!class-type-descriptor-set!
      (make-class-slot-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'type-descriptor))
    (define gerbil/core/mop~MOP-2#&!class-type-super
      (make-class-slot-unchecked-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'super))
    (define gerbil/core/mop~MOP-2#&!class-type-slots
      (make-class-slot-unchecked-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'slots))
    (define gerbil/core/mop~MOP-2#&!class-type-precedence-list
      (make-class-slot-unchecked-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'precedence-list))
    (define gerbil/core/mop~MOP-2#&!class-type-ordered-slots
      (make-class-slot-unchecked-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'ordered-slots))
    (define gerbil/core/mop~MOP-2#&!class-type-struct?
      (make-class-slot-unchecked-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'struct?))
    (define gerbil/core/mop~MOP-2#&!class-type-final?
      (make-class-slot-unchecked-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'final?))
    (define gerbil/core/mop~MOP-2#&!class-type-system?
      (make-class-slot-unchecked-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'system?))
    (define gerbil/core/mop~MOP-2#&!class-type-metaclass
      (make-class-slot-unchecked-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'metaclass))
    (define gerbil/core/mop~MOP-2#&!class-type-constructor-method
      (make-class-slot-unchecked-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'constructor-method))
    (define gerbil/core/mop~MOP-2#&!class-type-constructor
      (make-class-slot-unchecked-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'constructor))
    (define gerbil/core/mop~MOP-2#&!class-type-predicate
      (make-class-slot-unchecked-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'predicate))
    (define gerbil/core/mop~MOP-2#&!class-type-accessors
      (make-class-slot-unchecked-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'accessors))
    (define gerbil/core/mop~MOP-2#&!class-type-mutators
      (make-class-slot-unchecked-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'mutators))
    (define gerbil/core/mop~MOP-2#&!class-type-unchecked-accessors
      (make-class-slot-unchecked-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'unchecked-accessors))
    (define gerbil/core/mop~MOP-2#&!class-type-unchecked-mutators
      (make-class-slot-unchecked-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'unchecked-mutators))
    (define gerbil/core/mop~MOP-2#&!class-type-slot-types
      (make-class-slot-unchecked-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'slot-types))
    (define gerbil/core/mop~MOP-2#&!class-type-slot-defaults
      (make-class-slot-unchecked-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'slot-defaults))
    (define gerbil/core/mop~MOP-2#&!class-type-slot-contracts
      (make-class-slot-unchecked-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'slot-contracts))
    (define gerbil/core/mop~MOP-2#&!class-type-id
      (make-class-slot-unchecked-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'id))
    (define gerbil/core/mop~MOP-2#&!class-type-name
      (make-class-slot-unchecked-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'name))
    (define gerbil/core/mop~MOP-2#&!class-type-descriptor
      (make-class-slot-unchecked-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'type-descriptor))
    (define gerbil/core/mop~MOP-2#&!class-type-super-set!
      (make-class-slot-unchecked-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'super))
    (define gerbil/core/mop~MOP-2#&!class-type-slots-set!
      (make-class-slot-unchecked-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'slots))
    (define gerbil/core/mop~MOP-2#&!class-type-precedence-list-set!
      (make-class-slot-unchecked-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'precedence-list))
    (define gerbil/core/mop~MOP-2#&!class-type-ordered-slots-set!
      (make-class-slot-unchecked-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'ordered-slots))
    (define gerbil/core/mop~MOP-2#&!class-type-struct?-set!
      (make-class-slot-unchecked-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'struct?))
    (define gerbil/core/mop~MOP-2#&!class-type-final?-set!
      (make-class-slot-unchecked-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'final?))
    (define gerbil/core/mop~MOP-2#&!class-type-system?-set!
      (make-class-slot-unchecked-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'system?))
    (define gerbil/core/mop~MOP-2#&!class-type-metaclass-set!
      (make-class-slot-unchecked-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'metaclass))
    (define gerbil/core/mop~MOP-2#&!class-type-constructor-method-set!
      (make-class-slot-unchecked-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'constructor-method))
    (define gerbil/core/mop~MOP-2#&!class-type-constructor-set!
      (make-class-slot-unchecked-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'constructor))
    (define gerbil/core/mop~MOP-2#&!class-type-predicate-set!
      (make-class-slot-unchecked-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'predicate))
    (define gerbil/core/mop~MOP-2#&!class-type-accessors-set!
      (make-class-slot-unchecked-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'accessors))
    (define gerbil/core/mop~MOP-2#&!class-type-mutators-set!
      (make-class-slot-unchecked-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'mutators))
    (define gerbil/core/mop~MOP-2#&!class-type-unchecked-accessors-set!
      (make-class-slot-unchecked-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'unchecked-accessors))
    (define gerbil/core/mop~MOP-2#&!class-type-unchecked-mutators-set!
      (make-class-slot-unchecked-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'unchecked-mutators))
    (define gerbil/core/mop~MOP-2#&!class-type-slot-types-set!
      (make-class-slot-unchecked-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'slot-types))
    (define gerbil/core/mop~MOP-2#&!class-type-slot-defaults-set!
      (make-class-slot-unchecked-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'slot-defaults))
    (define gerbil/core/mop~MOP-2#&!class-type-slot-contracts-set!
      (make-class-slot-unchecked-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'slot-contracts))
    (define gerbil/core/mop~MOP-2#&!class-type-id-set!
      (make-class-slot-unchecked-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'id))
    (define gerbil/core/mop~MOP-2#&!class-type-name-set!
      (make-class-slot-unchecked-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'name))
    (define gerbil/core/mop~MOP-2#&!class-type-descriptor-set!
      (make-class-slot-unchecked-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'type-descriptor))
    (define gerbil/core/mop~MOP-2#class-type-info::apply-macro-expander
      (lambda (_%self22470%_ _%stx22471%_)
        (let* ((_%g2247322492%_
                (lambda (_%g2247422489%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g2247422489%_)))
               (_%g2247222556%_
                (lambda (_%g2247422495%_)
                  (if (gx#stx-pair? _%g2247422495%_)
                      (let ((_%e2247622497%_ (gx#syntax-e _%g2247422495%_)))
                        (let ((_%hd2247722500%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e2247622497%_)))
                              (_%tl2247822502%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e2247622497%_))))
                          (if (gx#stx-pair/null? _%tl2247822502%_)
                              (let ((_g27130_
                                     (gx#syntax-split-splice
                                      _%tl2247822502%_
                                      '0)))
                                (begin
                                  (let ((_g27131_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g27130_)
                                               (##values-length _g27130_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g27131_ 2)))
                                        (error "Context expects 2 values"
                                               _g27131_)))
                                  (let ((_%target2247922505%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g27130_ 0)))
                                        (_%tl2248122507%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g27130_ 1))))
                                    (if (gx#stx-null? _%tl2248122507%_)
                                        (letrec ((_%loop2248222510%_
                                                  (lambda (_%hd2248022513%_
                                                           _%arg2248622515%_)
                                                    (if (gx#stx-pair?
                                                         _%hd2248022513%_)
                                                        (let ((_%e2248322518%_
                                                               (gx#syntax-e
                                                                _%hd2248022513%_)))
                                                          (let ((_%lp-hd2248422521%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e2248322518%_)))
                        (_%lp-tl2248522523%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e2248322518%_))))
                    (_%loop2248222510%_
                     _%lp-tl2248522523%_
                     (cons _%lp-hd2248422521%_ _%arg2248622515%_))))
                (let ((_%arg2248722526%_ (reverse _%arg2248622515%_)))
                  ((lambda (_%L22529%_)
                     (let ((_%$e22543%_
                            (let ((__obj27043 _%self22470%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj27043
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj27043
                                     '13
                                     '#f
                                     '#f))
                                  (class-slot-ref
                                   gerbil/core/mop~MOP-2#class-type-info::t
                                   __obj27043
                                   'constructor)))))
                       (if _%$e22543%_
                           ((lambda (_%make22546%_)
                              (cons _%make22546%_
                                    (foldr (lambda (_%g2254722550%_
                                                    _%g2254822552%_)
                                             (cons _%g2254722550%_
                                                   _%g2254822552%_))
                                           '()
                                           _%L22529%_)))
                            _%$e22543%_)
                           (gx#raise-syntax-error
                            '#f
                            '"no constructor defined for class"
                            _%stx22471%_
                            _%self22470%_))))
                   _%arg2248722526%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop2248222510%_
                                           _%target2247922505%_
                                           '()))
                                        (_%g2247322492%_ _%g2247422495%_)))))
                              (_%g2247322492%_ _%g2247422495%_))))
                      (_%g2247322492%_ _%g2247422495%_)))))
          (_%g2247222556%_ _%stx22471%_))))
    (bind-method!
     gerbil/core/mop~MOP-2#class-type-info::t
     'apply-macro-expander
     gerbil/core/mop~MOP-2#class-type-info::apply-macro-expander)
    (define gerbil/core/mop~MOP-2#syntax-local-runtime-type-info?__%
      (lambda (_%stx22451%_ _%is?22452%_)
        (if (gx#identifier? _%stx22451%_)
            (let ((_%e2245322455%_ (gx#syntax-local-value _%stx22451%_ false)))
              (if _%e2245322455%_
                  (let ((_%e22458%_ _%e2245322455%_))
                    (if (let ()
                          (declare (not safe))
                          (class-instance?
                           gerbil/core/mop~MOP-2#runtime-type-info::t
                           _%e22458%_))
                        (_%is?22452%_ _%e22458%_)
                        '#f))
                  '#f))
            '#f)))
    (define gerbil/core/mop~MOP-2#syntax-local-runtime-type-info?__0
      (lambda (_%stx22463%_)
        (let ((_%is?22465%_ true))
          (gerbil/core/mop~MOP-2#syntax-local-runtime-type-info?__%
           _%stx22463%_
           _%is?22465%_))))
    (define gerbil/core/mop~MOP-2#syntax-local-runtime-type-info?
      (lambda _g27132_
        (let ((_g27133_ (let () (declare (not safe)) (##length _g27132_))))
          (cond ((let () (declare (not safe)) (##fx= _g27133_ 1))
                 (apply gerbil/core/mop~MOP-2#syntax-local-runtime-type-info?__0
                        _g27132_))
                ((let () (declare (not safe)) (##fx= _g27133_ 2))
                 (apply gerbil/core/mop~MOP-2#syntax-local-runtime-type-info?__%
                        _g27132_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/core/mop~MOP-2#syntax-local-runtime-type-info?
                  _g27132_))))))
    (define gerbil/core/mop~MOP-2#syntax-local-class-type-info?__%
      (lambda (_%stx22431%_ _%is?22432%_)
        (if (gx#identifier? _%stx22431%_)
            (let ((_%e2243322435%_ (gx#syntax-local-value _%stx22431%_ false)))
              (if _%e2243322435%_
                  (let ((_%e22438%_ _%e2243322435%_))
                    (if (let ()
                          (declare (not safe))
                          (class-instance?
                           gerbil/core/mop~MOP-2#class-type-info::t
                           _%e22438%_))
                        (_%is?22432%_ _%e22438%_)
                        '#f))
                  '#f))
            '#f)))
    (define gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
      (lambda (_%stx22443%_)
        (let ((_%is?22445%_ true))
          (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__%
           _%stx22443%_
           _%is?22445%_))))
    (define gerbil/core/mop~MOP-2#syntax-local-class-type-info?
      (lambda _g27134_
        (let ((_g27135_ (let () (declare (not safe)) (##length _g27134_))))
          (cond ((let () (declare (not safe)) (##fx= _g27135_ 1))
                 (apply gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                        _g27134_))
                ((let () (declare (not safe)) (##fx= _g27135_ 2))
                 (apply gerbil/core/mop~MOP-2#syntax-local-class-type-info?__%
                        _g27134_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/core/mop~MOP-2#syntax-local-class-type-info?
                  _g27134_))))))))
