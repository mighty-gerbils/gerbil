(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/mop~MOP-2::timestamp 1756142908)
  (begin
    (define gerbil/core/mop~MOP-2#class-type-info::t
      (make-class-type
       'gerbil.core#class-type-info::t
       'class-type-info
       (list)
       '(id name
            super
            slots
            precedence-list
            ordered-slots
            struct?
            final?
            system?
            metaclass
            constructor-method
            type-descriptor
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
      (lambda _%$args22163%_
        (apply make-instance
               gerbil/core/mop~MOP-2#class-type-info::t
               _%$args22163%_)))
    (define gerbil/core/mop~MOP-2#!class-type-id
      (make-class-slot-accessor gerbil/core/mop~MOP-2#class-type-info::t 'id))
    (define gerbil/core/mop~MOP-2#!class-type-name
      (make-class-slot-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'name))
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
    (define gerbil/core/mop~MOP-2#!class-type-descriptor
      (make-class-slot-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'type-descriptor))
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
    (define gerbil/core/mop~MOP-2#!class-type-id-set!
      (make-class-slot-mutator gerbil/core/mop~MOP-2#class-type-info::t 'id))
    (define gerbil/core/mop~MOP-2#!class-type-name-set!
      (make-class-slot-mutator gerbil/core/mop~MOP-2#class-type-info::t 'name))
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
    (define gerbil/core/mop~MOP-2#!class-type-descriptor-set!
      (make-class-slot-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'type-descriptor))
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
    (define gerbil/core/mop~MOP-2#&!class-type-id
      (make-class-slot-unchecked-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'id))
    (define gerbil/core/mop~MOP-2#&!class-type-name
      (make-class-slot-unchecked-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'name))
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
    (define gerbil/core/mop~MOP-2#&!class-type-descriptor
      (make-class-slot-unchecked-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'type-descriptor))
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
    (define gerbil/core/mop~MOP-2#&!class-type-id-set!
      (make-class-slot-unchecked-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'id))
    (define gerbil/core/mop~MOP-2#&!class-type-name-set!
      (make-class-slot-unchecked-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'name))
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
    (define gerbil/core/mop~MOP-2#&!class-type-descriptor-set!
      (make-class-slot-unchecked-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'type-descriptor))
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
    (define gerbil/core/mop~MOP-2#class-type-info::apply-macro-expander
      (lambda (_%self22074%_ _%stx22075%_)
        (let* ((_%g2207722096%_
                (lambda (_%g2207822093%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g2207822093%_)))
               (_%g2207622160%_
                (lambda (_%g2207822099%_)
                  (if (gx#stx-pair? _%g2207822099%_)
                      (let ((_%e2208022101%_ (gx#syntax-e _%g2207822099%_)))
                        (let ((_%hd2208122104%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e2208022101%_)))
                              (_%tl2208222106%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e2208022101%_))))
                          (if (gx#stx-pair/null? _%tl2208222106%_)
                              (let ((_g26720_
                                     (gx#syntax-split-splice
                                      _%tl2208222106%_
                                      '0)))
                                (begin
                                  (let ((_g26721_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g26720_)
                                               (##values-length _g26720_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g26721_ 2)))
                                        (error "Context expects 2 values"
                                               _g26721_)))
                                  (let ((_%target2208322109%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g26720_ 0)))
                                        (_%tl2208522111%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g26720_ 1))))
                                    (if (gx#stx-null? _%tl2208522111%_)
                                        (letrec ((_%loop2208622114%_
                                                  (lambda (_%hd2208422117%_
                                                           _%arg2209022119%_)
                                                    (if (gx#stx-pair?
                                                         _%hd2208422117%_)
                                                        (let ((_%e2208722122%_
                                                               (gx#syntax-e
                                                                _%hd2208422117%_)))
                                                          (let ((_%lp-hd2208822125%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e2208722122%_)))
                        (_%lp-tl2208922127%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e2208722122%_))))
                    (_%loop2208622114%_
                     _%lp-tl2208922127%_
                     (cons _%lp-hd2208822125%_ _%arg2209022119%_))))
                (let ((_%arg2209122130%_ (reverse _%arg2209022119%_)))
                  ((lambda (_%L22133%_)
                     (let ((_%$e22147%_
                            (let ((__obj26639 _%self22074%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj26639
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj26639
                                     '13
                                     '#f
                                     '#f))
                                  (class-slot-ref
                                   gerbil/core/mop~MOP-2#class-type-info::t
                                   __obj26639
                                   'constructor)))))
                       (if _%$e22147%_
                           ((lambda (_%make22150%_)
                              (cons _%make22150%_
                                    (foldr (lambda (_%g2215122154%_
                                                    _%g2215222156%_)
                                             (cons _%g2215122154%_
                                                   _%g2215222156%_))
                                           '()
                                           _%L22133%_)))
                            _%$e22147%_)
                           (gx#raise-syntax-error
                            '#f
                            '"no constructor defined for class"
                            _%stx22075%_
                            _%self22074%_))))
                   _%arg2209122130%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop2208622114%_
                                           _%target2208322109%_
                                           '()))
                                        (_%g2207722096%_ _%g2207822099%_)))))
                              (_%g2207722096%_ _%g2207822099%_))))
                      (_%g2207722096%_ _%g2207822099%_)))))
          (_%g2207622160%_ _%stx22075%_))))
    (bind-method!
     gerbil/core/mop~MOP-2#class-type-info::t
     'apply-macro-expander
     gerbil/core/mop~MOP-2#class-type-info::apply-macro-expander)
    (define gerbil/core/mop~MOP-2#syntax-local-class-type-info?__%
      (lambda (_%stx22055%_ _%is?22056%_)
        (if (gx#identifier? _%stx22055%_)
            (let ((_%e2205722059%_ (gx#syntax-local-value _%stx22055%_ false)))
              (if _%e2205722059%_
                  (let ((_%e22062%_ _%e2205722059%_))
                    (if (let ()
                          (declare (not safe))
                          (class-instance?
                           gerbil/core/mop~MOP-2#class-type-info::t
                           _%e22062%_))
                        (_%is?22056%_ _%e22062%_)
                        '#f))
                  '#f))
            '#f)))
    (define gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
      (lambda (_%stx22067%_)
        (let ((_%is?22069%_ true))
          (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__%
           _%stx22067%_
           _%is?22069%_))))
    (define gerbil/core/mop~MOP-2#syntax-local-class-type-info?
      (lambda _g26722_
        (let ((_g26723_ (let () (declare (not safe)) (##length _g26722_))))
          (cond ((let () (declare (not safe)) (##fx= _g26723_ 1))
                 (apply gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                        _g26722_))
                ((let () (declare (not safe)) (##fx= _g26723_ 2))
                 (apply gerbil/core/mop~MOP-2#syntax-local-class-type-info?__%
                        _g26722_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/core/mop~MOP-2#syntax-local-class-type-info?
                  _g26722_))))))))
