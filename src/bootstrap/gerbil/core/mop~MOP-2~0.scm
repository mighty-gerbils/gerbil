(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/mop~MOP-2::timestamp 1712121891)
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
      (lambda _%$args22667%_
        (apply make-instance
               gerbil/core/mop~MOP-2#class-type-info::t
               _%$args22667%_)))
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
      (lambda (_%self22578%_ _%stx22579%_)
        (let* ((_%g2258122600%_
                (lambda (_%g2258222597%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g2258222597%_)))
               (_%g2258022664%_
                (lambda (_%g2258222603%_)
                  (if (gx#stx-pair? _%g2258222603%_)
                      (let ((_%e2258622605%_ (gx#syntax-e _%g2258222603%_)))
                        (let ((_%hd2258522608%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e2258622605%_)))
                              (_%tl2258422610%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e2258622605%_))))
                          (if (gx#stx-pair/null? _%tl2258422610%_)
                              (let ((_g27227_
                                     (gx#syntax-split-splice
                                      _%tl2258422610%_
                                      '0)))
                                (begin
                                  (let ((_g27228_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g27227_)
                                               (##vector-length _g27227_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g27228_ 2)))
                                        (error "Context expects 2 values"
                                               _g27228_)))
                                  (let ((_%target2258722613%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g27227_ 0)))
                                        (_%tl2258922615%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g27227_ 1))))
                                    (if (gx#stx-null? _%tl2258922615%_)
                                        (letrec ((_%loop2259022618%_
                                                  (lambda (_%hd2258822621%_
                                                           _%arg2259422623%_)
                                                    (if (gx#stx-pair?
                                                         _%hd2258822621%_)
                                                        (let ((_%e2259122626%_
                                                               (gx#syntax-e
                                                                _%hd2258822621%_)))
                                                          (let ((_%lp-hd2259222629%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e2259122626%_)))
                        (_%lp-tl2259322631%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e2259122626%_))))
                    (let ((__tmp27229
                           (cons _%lp-hd2259222629%_ _%arg2259422623%_)))
                      (declare (not safe))
                      (_%loop2259022618%_ _%lp-tl2259322631%_ __tmp27229))))
                (let ((_%arg2259522634%_ (reverse _%arg2259422623%_)))
                  ((lambda (_%L22637%_)
                     (let ((_%$e22651%_
                            (let ((__obj27143 _%self22578%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj27143
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj27143
                                     '13
                                     '#f
                                     '#f))
                                  (class-slot-ref
                                   gerbil/core/mop~MOP-2#class-type-info::t
                                   __obj27143
                                   'constructor)))))
                       (if _%$e22651%_
                           ((lambda (_%make22654%_)
                              (cons _%make22654%_
                                    (foldr (lambda (_%g2265522658%_
                                                    _%g2265622660%_)
                                             (cons _%g2265522658%_
                                                   _%g2265622660%_))
                                           '()
                                           _%L22637%_)))
                            _%$e22651%_)
                           (let ()
                             (gx#raise-syntax-error
                              '#f
                              '"no constructor defined for class"
                              _%stx22579%_
                              _%self22578%_)))))
                   _%arg2259522634%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_%loop2259022618%_
                                             _%target2258722613%_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_%g2258122600%_
                                           _%g2258222603%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g2258122600%_ _%g2258222603%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g2258122600%_ _%g2258222603%_))))))
          (declare (not safe))
          (_%g2258022664%_ _%stx22579%_))))
    (bind-method!
     gerbil/core/mop~MOP-2#class-type-info::t
     'apply-macro-expander
     gerbil/core/mop~MOP-2#class-type-info::apply-macro-expander)
    (define gerbil/core/mop~MOP-2#!class-slot-type
      (lambda (_%klass22569%_ _%slot22570%_)
        (let ((_%$e22572%_
               (let ((__obj27144 _%klass22569%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj27144
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj27144 '19 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj27144
                      'slot-types)))))
          (if _%$e22572%_
              ((lambda (_%slot-types22575%_)
                 (assgetq _%slot22570%_ _%slot-types22575%_))
               _%$e22572%_)
              (let () '#f)))))
    (define gerbil/core/mop~MOP-2#!class-slot-default
      (lambda (_%klass22556%_ _%slot22557%_)
        (let ((_%$e22559%_
               (let ((__obj27145 _%klass22556%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj27145
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj27145 '20 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj27145
                      'slot-defaults)))))
          (if _%$e22559%_
              ((lambda (_%slot-defaults22562%_)
                 (let ((_%$e22564%_
                        (assgetq _%slot22557%_ _%slot-defaults22562%_)))
                   (if _%$e22564%_
                       (gx#syntax-local-introduce _%$e22564%_)
                       (let () '#f))))
               _%$e22559%_)
              (let () '#f)))))
    (define gerbil/core/mop~MOP-2#!class-slot-contract
      (lambda (_%klass22543%_ _%slot22544%_)
        (let ((_%$e22546%_
               (let ((__obj27146 _%klass22543%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj27146
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj27146 '20 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj27146
                      'slot-defaults)))))
          (if _%$e22546%_
              ((lambda (_%slot-defaults22549%_)
                 (let ((_%$e22551%_
                        (assgetq _%slot22544%_ _%slot-defaults22549%_)))
                   (if _%$e22551%_
                       (gx#syntax-local-introduce _%$e22551%_)
                       (let () '#f))))
               _%$e22546%_)
              (let () '#f)))))
    (define gerbil/core/mop~MOP-2#syntax-local-class-type-info?__%
      (lambda (_%stx22524%_ _%is?22525%_)
        (if (gx#identifier? _%stx22524%_)
            (let ((_%e2252622528%_ (gx#syntax-local-value _%stx22524%_ false)))
              (if _%e2252622528%_
                  (let ((_%e22531%_ _%e2252622528%_))
                    (if (let ()
                          (declare (not safe))
                          (class-instance?
                           gerbil/core/mop~MOP-2#class-type-info::t
                           _%e22531%_))
                        (_%is?22525%_ _%e22531%_)
                        '#f))
                  '#f))
            '#f)))
    (define gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
      (lambda (_%stx22536%_)
        (let ((_%is?22538%_ true))
          (declare (not safe))
          (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__%
           _%stx22536%_
           _%is?22538%_))))
    (define gerbil/core/mop~MOP-2#syntax-local-class-type-info?
      (lambda _g27231_
        (let ((_g27230_ (let () (declare (not safe)) (##length _g27231_))))
          (cond ((let () (declare (not safe)) (##fx= _g27230_ 1))
                 (apply (lambda (_%stx22536%_)
                          (let ()
                            (declare (not safe))
                            (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                             _%stx22536%_)))
                        _g27231_))
                ((let () (declare (not safe)) (##fx= _g27230_ 2))
                 (apply (lambda (_%stx22540%_ _%is?22541%_)
                          (let ()
                            (declare (not safe))
                            (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__%
                             _%stx22540%_
                             _%is?22541%_)))
                        _g27231_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/core/mop~MOP-2#syntax-local-class-type-info?
                  _g27231_))))))))
