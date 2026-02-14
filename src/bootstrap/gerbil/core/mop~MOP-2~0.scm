(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/mop~MOP-2::timestamp 1771036630)
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
      (lambda _%$args22653%_
        (apply make-instance
               gerbil/core/mop~MOP-2#runtime-type-info::t
               _%$args22653%_)))
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
      (lambda _%$args22650%_
        (apply make-instance
               gerbil/core/mop~MOP-2#class-type-info::t
               _%$args22650%_)))
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
      (lambda (_%self22563%_ _%stx22564%_)
        (let* ((_%g2256622585%_
                (lambda (_%g2256722582%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g2256722582%_)))
               (_%g2256522647%_
                (lambda (_%g2256722588%_)
                  (if (gx#stx-pair? _%g2256722588%_)
                      (let ((_%e2256922590%_ (gx#syntax-e _%g2256722588%_)))
                        (let ((_%hd2257022593%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e2256922590%_)))
                              (_%tl2257122595%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e2256922590%_))))
                          (if (gx#stx-pair/null? _%tl2257122595%_)
                              (let ((_g200835_
                                     (gx#syntax-split-splice
                                      _%tl2257122595%_
                                      '0)))
                                (begin
                                  (let ((_g200836_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g200835_)
                                               (##values-length _g200835_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g200836_ 2)))
                                        (error "Context expects 2 values"
                                               _g200836_)))
                                  (let ((_%target2257222598%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g200835_ 0)))
                                        (_%tl2257422600%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g200835_ 1))))
                                    (if (gx#stx-null? _%tl2257422600%_)
                                        (letrec ((_%loop2257522603%_
                                                  (lambda (_%hd2257322606%_
                                                           _%arg2257922608%_)
                                                    (if (gx#stx-pair?
                                                         _%hd2257322606%_)
                                                        (let ((_%e2257622610%_
                                                               (gx#syntax-e
                                                                _%hd2257322606%_)))
                                                          (let ((_%lp-hd2257722613%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e2257622610%_)))
                        (_%lp-tl2257822615%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e2257622610%_))))
                    (_%loop2257522603%_
                     _%lp-tl2257822615%_
                     (cons _%lp-hd2257722613%_ _%arg2257922608%_))))
                (let ((_%arg2258022618%_ (reverse _%arg2257922608%_)))
                  ((lambda (_%g2256822620%_)
                     (let ((_%$e22634%_
                            (let ((__obj200741 _%self22563%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj200741
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj200741
                                     '13
                                     '#f
                                     '#f))
                                  (class-slot-ref
                                   gerbil/core/mop~MOP-2#class-type-info::t
                                   __obj200741
                                   'constructor)))))
                       (if _%$e22634%_
                           ((lambda (_%make22637%_)
                              (cons _%make22637%_
                                    (foldr (lambda (_%g2263822641%_
                                                    _%g2263922643%_)
                                             (cons _%g2263822641%_
                                                   _%g2263922643%_))
                                           '()
                                           _%g2256822620%_)))
                            _%$e22634%_)
                           (gx#raise-syntax-error
                            '#f
                            '"no constructor defined for class"
                            _%stx22564%_
                            _%self22563%_))))
                   _%arg2258022618%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop2257522603%_
                                           _%target2257222598%_
                                           '()))
                                        (_%g2256622585%_ _%g2256722588%_)))))
                              (_%g2256622585%_ _%g2256722588%_))))
                      (_%g2256622585%_ _%g2256722588%_)))))
          (_%g2256522647%_ _%stx22564%_))))
    (bind-method!
     gerbil/core/mop~MOP-2#class-type-info::t
     'apply-macro-expander
     gerbil/core/mop~MOP-2#class-type-info::apply-macro-expander)
    (define gerbil/core/mop~MOP-2#syntax-local-runtime-type-info?__%
      (lambda (_%stx22545%_ _%is?22546%_)
        (if (gx#identifier? _%stx22545%_)
            (let ((_%e2254722549%_ (gx#syntax-local-value _%stx22545%_ false)))
              (if _%e2254722549%_
                  (let ((_%e22551%_ _%e2254722549%_))
                    (if (let ()
                          (declare (not safe))
                          (class-instance?
                           gerbil/core/mop~MOP-2#runtime-type-info::t
                           _%e22551%_))
                        (_%is?22546%_ _%e22551%_)
                        '#f))
                  '#f))
            '#f)))
    (define gerbil/core/mop~MOP-2#syntax-local-runtime-type-info?__0
      (lambda (_%stx22556%_)
        (let ((_%is?22558%_ true))
          (gerbil/core/mop~MOP-2#syntax-local-runtime-type-info?__%
           _%stx22556%_
           _%is?22558%_))))
    (define gerbil/core/mop~MOP-2#syntax-local-runtime-type-info?
      (lambda _g200837_
        (let ((_g200838_ (let () (declare (not safe)) (##length _g200837_))))
          (cond ((let () (declare (not safe)) (##fx= _g200838_ 1))
                 (apply gerbil/core/mop~MOP-2#syntax-local-runtime-type-info?__0
                        _g200837_))
                ((let () (declare (not safe)) (##fx= _g200838_ 2))
                 (apply gerbil/core/mop~MOP-2#syntax-local-runtime-type-info?__%
                        _g200837_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/core/mop~MOP-2#syntax-local-runtime-type-info?
                  _g200837_))))))
    (define gerbil/core/mop~MOP-2#syntax-local-class-type-info?__%
      (lambda (_%stx22526%_ _%is?22527%_)
        (if (gx#identifier? _%stx22526%_)
            (let ((_%e2252822530%_ (gx#syntax-local-value _%stx22526%_ false)))
              (if _%e2252822530%_
                  (let ((_%e22532%_ _%e2252822530%_))
                    (if (let ()
                          (declare (not safe))
                          (class-instance?
                           gerbil/core/mop~MOP-2#class-type-info::t
                           _%e22532%_))
                        (_%is?22527%_ _%e22532%_)
                        '#f))
                  '#f))
            '#f)))
    (define gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
      (lambda (_%stx22537%_)
        (let ((_%is?22539%_ true))
          (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__%
           _%stx22537%_
           _%is?22539%_))))
    (define gerbil/core/mop~MOP-2#syntax-local-class-type-info?
      (lambda _g200839_
        (let ((_g200840_ (let () (declare (not safe)) (##length _g200839_))))
          (cond ((let () (declare (not safe)) (##fx= _g200840_ 1))
                 (apply gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                        _g200839_))
                ((let () (declare (not safe)) (##fx= _g200840_ 2))
                 (apply gerbil/core/mop~MOP-2#syntax-local-class-type-info?__%
                        _g200839_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/core/mop~MOP-2#syntax-local-class-type-info?
                  _g200839_))))))))
