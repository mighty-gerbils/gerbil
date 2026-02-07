(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/contract~InterfaceInfo::timestamp 1770505702)
  (begin
    (define gerbil/core/contract~InterfaceInfo#_g97615_
      (##structure
       gx#syntax-quote::t
       'cast
       #f
       (gx#current-expander-context)
       '()))
    (define gerbil/core/contract~InterfaceInfo#_g97616_
      (##structure
       gx#syntax-quote::t
       'immediate-instance-of?
       #f
       (gx#current-expander-context)
       '()))
    (begin
      (define gerbil/core/contract~InterfaceInfo#interface-info::t
        (make-class-type
         'gerbil/core/contract~InterfaceInfo#interface-info::t
         'interface-info
         (list gerbil/core/mop~MOP-2#runtime-type-info::t)
         '(namespace
           interface-mixin
           interface-methods
           interface-precedence-list
           interface-descriptor
           instance-constructor
           instance-try-constructor
           instance-predicate
           instance-satisfies-predicate
           implementation-methods
           unchecked-implementation-methods
           implementation-macros
           unchecked-implementation-macros)
         '()
         '#f))
      (define gerbil/core/contract~InterfaceInfo#interface-info?
        (make-class-predicate
         gerbil/core/contract~InterfaceInfo#interface-info::t))
      (define gerbil/core/contract~InterfaceInfo#make-interface-info
        (lambda _%$args49465%_
          (apply make-instance
                 gerbil/core/contract~InterfaceInfo#interface-info::t
                 _%$args49465%_)))
      (define gerbil/core/contract~InterfaceInfo#interface-info-namespace
        (make-class-slot-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'namespace))
      (define gerbil/core/contract~InterfaceInfo#interface-info-interface-mixin
        (make-class-slot-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'interface-mixin))
      (define gerbil/core/contract~InterfaceInfo#interface-info-interface-methods
        (make-class-slot-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'interface-methods))
      (define gerbil/core/contract~InterfaceInfo#interface-info-interface-precedence-list
        (make-class-slot-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'interface-precedence-list))
      (define gerbil/core/contract~InterfaceInfo#interface-info-interface-descriptor
        (make-class-slot-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'interface-descriptor))
      (define gerbil/core/contract~InterfaceInfo#interface-info-instance-constructor
        (make-class-slot-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'instance-constructor))
      (define gerbil/core/contract~InterfaceInfo#interface-info-instance-try-constructor
        (make-class-slot-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'instance-try-constructor))
      (define gerbil/core/contract~InterfaceInfo#interface-info-instance-predicate
        (make-class-slot-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'instance-predicate))
      (define gerbil/core/contract~InterfaceInfo#interface-info-instance-satisfies-predicate
        (make-class-slot-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'instance-satisfies-predicate))
      (define gerbil/core/contract~InterfaceInfo#interface-info-implementation-methods
        (make-class-slot-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'implementation-methods))
      (define gerbil/core/contract~InterfaceInfo#interface-info-unchecked-implementation-methods
        (make-class-slot-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'unchecked-implementation-methods))
      (define gerbil/core/contract~InterfaceInfo#interface-info-implementation-macros
        (make-class-slot-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'implementation-macros))
      (define gerbil/core/contract~InterfaceInfo#interface-info-unchecked-implementation-macros
        (make-class-slot-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'unchecked-implementation-macros))
      (define gerbil/core/contract~InterfaceInfo#interface-info-id
        (make-class-slot-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'id))
      (define gerbil/core/contract~InterfaceInfo#interface-info-name
        (make-class-slot-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'name))
      (define gerbil/core/contract~InterfaceInfo#interface-info-type-descriptor
        (make-class-slot-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'type-descriptor))
      (define gerbil/core/contract~InterfaceInfo#interface-info-namespace-set!
        (make-class-slot-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'namespace))
      (define gerbil/core/contract~InterfaceInfo#interface-info-interface-mixin-set!
        (make-class-slot-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'interface-mixin))
      (define gerbil/core/contract~InterfaceInfo#interface-info-interface-methods-set!
        (make-class-slot-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'interface-methods))
      (define gerbil/core/contract~InterfaceInfo#interface-info-interface-precedence-list-set!
        (make-class-slot-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'interface-precedence-list))
      (define gerbil/core/contract~InterfaceInfo#interface-info-interface-descriptor-set!
        (make-class-slot-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'interface-descriptor))
      (define gerbil/core/contract~InterfaceInfo#interface-info-instance-constructor-set!
        (make-class-slot-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'instance-constructor))
      (define gerbil/core/contract~InterfaceInfo#interface-info-instance-try-constructor-set!
        (make-class-slot-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'instance-try-constructor))
      (define gerbil/core/contract~InterfaceInfo#interface-info-instance-predicate-set!
        (make-class-slot-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'instance-predicate))
      (define gerbil/core/contract~InterfaceInfo#interface-info-instance-satisfies-predicate-set!
        (make-class-slot-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'instance-satisfies-predicate))
      (define gerbil/core/contract~InterfaceInfo#interface-info-implementation-methods-set!
        (make-class-slot-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'implementation-methods))
      (define gerbil/core/contract~InterfaceInfo#interface-info-unchecked-implementation-methods-set!
        (make-class-slot-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'unchecked-implementation-methods))
      (define gerbil/core/contract~InterfaceInfo#interface-info-implementation-macros-set!
        (make-class-slot-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'implementation-macros))
      (define gerbil/core/contract~InterfaceInfo#interface-info-unchecked-implementation-macros-set!
        (make-class-slot-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'unchecked-implementation-macros))
      (define gerbil/core/contract~InterfaceInfo#interface-info-id-set!
        (make-class-slot-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'id))
      (define gerbil/core/contract~InterfaceInfo#interface-info-name-set!
        (make-class-slot-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'name))
      (define gerbil/core/contract~InterfaceInfo#interface-info-type-descriptor-set!
        (make-class-slot-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'type-descriptor))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-namespace
        (make-class-slot-unchecked-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'namespace))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-interface-mixin
        (make-class-slot-unchecked-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'interface-mixin))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-interface-methods
        (make-class-slot-unchecked-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'interface-methods))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-interface-precedence-list
        (make-class-slot-unchecked-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'interface-precedence-list))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-interface-descriptor
        (make-class-slot-unchecked-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'interface-descriptor))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-instance-constructor
        (make-class-slot-unchecked-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'instance-constructor))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-instance-try-constructor
        (make-class-slot-unchecked-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'instance-try-constructor))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-instance-predicate
        (make-class-slot-unchecked-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'instance-predicate))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-instance-satisfies-predicate
        (make-class-slot-unchecked-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'instance-satisfies-predicate))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-implementation-methods
        (make-class-slot-unchecked-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'implementation-methods))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-unchecked-implementation-methods
        (make-class-slot-unchecked-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'unchecked-implementation-methods))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-implementation-macros
        (make-class-slot-unchecked-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'implementation-macros))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-unchecked-implementation-macros
        (make-class-slot-unchecked-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'unchecked-implementation-macros))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-id
        (make-class-slot-unchecked-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'id))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-name
        (make-class-slot-unchecked-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'name))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-type-descriptor
        (make-class-slot-unchecked-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'type-descriptor))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-namespace-set!
        (make-class-slot-unchecked-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'namespace))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-interface-mixin-set!
        (make-class-slot-unchecked-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'interface-mixin))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-interface-methods-set!
        (make-class-slot-unchecked-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'interface-methods))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-interface-precedence-list-set!
        (make-class-slot-unchecked-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'interface-precedence-list))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-interface-descriptor-set!
        (make-class-slot-unchecked-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'interface-descriptor))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-instance-constructor-set!
        (make-class-slot-unchecked-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'instance-constructor))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-instance-try-constructor-set!
        (make-class-slot-unchecked-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'instance-try-constructor))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-instance-predicate-set!
        (make-class-slot-unchecked-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'instance-predicate))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-instance-satisfies-predicate-set!
        (make-class-slot-unchecked-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'instance-satisfies-predicate))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-implementation-methods-set!
        (make-class-slot-unchecked-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'implementation-methods))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-unchecked-implementation-methods-set!
        (make-class-slot-unchecked-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'unchecked-implementation-methods))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-implementation-macros-set!
        (make-class-slot-unchecked-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'implementation-macros))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-unchecked-implementation-macros-set!
        (make-class-slot-unchecked-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'unchecked-implementation-macros))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-id-set!
        (make-class-slot-unchecked-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'id))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-name-set!
        (make-class-slot-unchecked-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'name))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-type-descriptor-set!
        (make-class-slot-unchecked-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'type-descriptor))
      (define gerbil/core/contract~InterfaceInfo#interface-info::apply-macro-expander
        (let* ((_%g4927049284%_
                (lambda (_%g4927149281%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4927149281%_)))
               (_%g4926949462%_
                (lambda (_%g4927149287%_)
                  (if (gx#stx-pair? _%g4927149287%_)
                      (let ((_%e4927449289%_ (gx#syntax-e _%g4927149287%_)))
                        (let ((_%hd4927549292%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4927449289%_)))
                              (_%tl4927649294%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4927449289%_))))
                          (if (gx#stx-pair? _%tl4927649294%_)
                              (let ((_%e4927749297%_
                                     (gx#syntax-e _%tl4927649294%_)))
                                (let ((_%hd4927849300%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4927749297%_)))
                                      (_%tl4927949302%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4927749297%_))))
                                  (if (gx#stx-null? _%tl4927949302%_)
                                      ((lambda (_%g4927249305%_
                                                _%g4927349306%_)
                                         (lambda (_%self49320%_ _%stx49321%_)
                                           (let* ((_%__stx9124491245%_
                                                   _%stx49321%_)
                                                  (_%g4932449337%_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx9124491245%_))))
                                             (let ((_%__kont9124691247%_
                                                    (lambda (_%g4932649395%_)
                                                      (let* ((_%g4940649420%_
                                                              (lambda (_%g4940749417%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g4940749417%_)))
                     (_%g4940549456%_
                      (lambda (_%g4940749423%_)
                        (if (gx#stx-pair? _%g4940749423%_)
                            (let ((_%e4941049425%_
                                   (gx#syntax-e _%g4940749423%_)))
                              (let ((_%hd4941149428%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4941049425%_)))
                                    (_%tl4941249430%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4941049425%_))))
                                (if (gx#stx-pair? _%tl4941249430%_)
                                    (let ((_%e4941349433%_
                                           (gx#syntax-e _%tl4941249430%_)))
                                      (let ((_%hd4941449436%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4941349433%_)))
                                            (_%tl4941549438%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4941349433%_))))
                                        (if (gx#stx-null? _%tl4941549438%_)
                                            ((lambda (_%g4940849441%_
                                                      _%g4940949442%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '$obj)
                         (cons _%g4932649395%_ '()))
                   (cons (cons (gx#datum->syntax '#f 'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@type)
                                           (cons _%g4940949442%_ '()))
                                     (cons (cons (gx#datum->syntax '#f 'if)
                                                 (cons (cons _%g4927249305%_
                                                             (cons _%g4940949442%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f '$obj) '())))
               (cons (gx#datum->syntax '#f '$obj)
                     (cons (cons _%g4927349306%_
                                 (cons _%g4940849441%_
                                       (cons (gx#datum->syntax '#f '$obj)
                                             '())))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd4941449436%_
                                             _%hd4941149428%_)
                                            (_%g4940649420%_
                                             _%g4940749423%_))))
                                    (_%g4940649420%_ _%g4940749423%_))))
                            (_%g4940649420%_ _%g4940749423%_)))))
                (_%g4940549456%_
                 (list (let ((__obj97532 _%self49320%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj97532
                                'gerbil.core#runtime-type-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj97532
                                '3
                                '#f
                                '#f))
                             (class-slot-ref
                              gerbil/core/mop~MOP-2#runtime-type-info::t
                              __obj97532
                              'type-descriptor)))
                       (let ((__obj97533 _%self49320%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj97533
                                'gerbil/core/contract~InterfaceInfo#interface-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj97533
                                '8
                                '#f
                                '#f))
                             (class-slot-ref
                              gerbil/core/contract~InterfaceInfo#interface-info::t
                              __obj97533
                              'interface-descriptor))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont9124891249%_
                                                    (lambda ()
                                                      (let* ((_%g4934449351%_
                                                              (lambda (_%g4934549348%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g4934549348%_)))
                     (_%g4934349371%_
                      (lambda (_%g4934549354%_)
                        ((lambda (_%g4934649356%_) _%g4934649356%_)
                         _%g4934549354%_))))
                (_%g4934349371%_
                 (let ((__obj97534 _%self49320%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-direct-instance-of?
                          __obj97534
                          'gerbil/core/contract~InterfaceInfo#interface-info::t))
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref __obj97534 '8 '#f '#f))
                       (class-slot-ref
                        gerbil/core/contract~InterfaceInfo#interface-info::t
                        __obj97534
                        'interface-descriptor))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%g4932349374%_
                                                      (lambda ()
                                                        (if (gx#identifier?
                                                             _%stx49321%_)
                                                            (_%__kont9124891249%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_%g4932449337%_))))))
                                                 (if (gx#stx-pair?
                                                      _%__stx9124491245%_)
                                                     (let ((_%e4932749379%_
                                                            (gx#syntax-e
                                                             _%__stx9124491245%_)))
                                                       (let ((_%tl4932949384%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e4932749379%_)))
                     (_%hd4932849382%_
                      (let () (declare (not safe)) (##car _%e4932749379%_))))
                 (if (gx#stx-pair? _%tl4932949384%_)
                     (let ((_%e4933049387%_ (gx#syntax-e _%tl4932949384%_)))
                       (let ((_%tl4933249392%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4933049387%_)))
                             (_%hd4933149390%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4933049387%_))))
                         (if (gx#stx-null? _%tl4933249392%_)
                             (_%__kont9124691247%_ _%hd4933149390%_)
                             (let () (declare (not safe)) (_%g4932349374%_)))))
                     (let () (declare (not safe)) (_%g4932349374%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g4932349374%_))))))))
                                       _%hd4927849300%_
                                       _%hd4927549292%_)
                                      (_%g4927049284%_ _%g4927149287%_))))
                              (_%g4927049284%_ _%g4927149287%_))))
                      (_%g4927049284%_ _%g4927149287%_)))))
          (_%g4926949462%_
           (list gerbil/core/contract~InterfaceInfo#_g97615_
                 gerbil/core/contract~InterfaceInfo#_g97616_))))
      (bind-method!
       gerbil/core/contract~InterfaceInfo#interface-info::t
       'apply-macro-expander
       gerbil/core/contract~InterfaceInfo#interface-info::apply-macro-expander
       '#f)
      (define gerbil/core/contract~InterfaceInfo#interface-identifier->precedence-list
        (lambda (_%id49146%_)
          (cons _%id49146%_
                (let ((__obj97535 (gx#syntax-local-value _%id49146%_)))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj97535
                         'gerbil/core/contract~InterfaceInfo#interface-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj97535 '7 '#f '#f))
                      (class-slot-ref
                       gerbil/core/contract~InterfaceInfo#interface-info::t
                       __obj97535
                       'interface-precedence-list))))))
      (define gerbil/core/contract~InterfaceInfo#interface-mixin->precedence-list
        (lambda (_%lst49141%_)
          (let ((_g97617_
                 (c4-linearize
                  '()
                  _%lst49141%_
                  'get-precedence-list:
                  gerbil/core/contract~InterfaceInfo#interface-identifier->precedence-list
                  'struct:
                  false
                  'eq:
                  gx#free-identifier=?)))
            (begin
              (let ((_g97618_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g97617_)
                           (##values-length _g97617_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g97618_ 2)))
                    (error "Context expects 2 values" _g97618_)))
              (let ((_%linearized49143%_
                     (let () (declare (not safe)) (##values-ref _g97617_ 0)))
                    (_%_49144%_
                     (let () (declare (not safe)) (##values-ref _g97617_ 1))))
                _%linearized49143%_)))))
      (define gerbil/core/contract~InterfaceInfo#interface-info-method-signature
        (lambda (_%info49131%_ _%method49132%_)
          (let ((_%sig4913349137%_
                 (find (lambda (_%sig49135%_)
                         (eq? _%method49132%_ (car _%sig49135%_)))
                       (let ((__obj97536 _%info49131%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj97536
                                'gerbil/core/contract~InterfaceInfo#interface-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj97536
                                '6
                                '#f
                                '#f))
                             (class-slot-ref
                              gerbil/core/contract~InterfaceInfo#interface-info::t
                              __obj97536
                              'interface-methods))))))
            (if _%sig4913349137%_
                (let ((_%sig49139%_ _%sig4913349137%_)) (cdr _%sig49139%_))
                '#f))))
      (define gerbil/core/contract~InterfaceInfo#interface-info-method-offset
        (lambda (_%info49088%_ _%method49089%_)
          (let ((_%methods49091%_
                 (let ((__obj97537 _%info49088%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-direct-instance-of?
                          __obj97537
                          'gerbil/core/contract~InterfaceInfo#interface-info::t))
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref __obj97537 '6 '#f '#f))
                       (class-slot-ref
                        gerbil/core/contract~InterfaceInfo#interface-info::t
                        __obj97537
                        'interface-methods)))))
            (let _%loop49093%_ ((_%rest49095%_ _%methods49091%_)
                                (_%index49096%_ '2))
              (let* ((_%rest4909749105%_ _%rest49095%_)
                     (_%else4909949113%_ (lambda () '#f))
                     (_%K4910149119%_
                      (lambda (_%rest49116%_ _%method-sig49117%_)
                        (if (eq? _%method49089%_ (car _%method-sig49117%_))
                            _%index49096%_
                            (_%loop49093%_
                             _%rest49116%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%index49096%_ '1)))))))
                (if (pair? _%rest4909749105%_)
                    (let ((_%hd4910249122%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest4909749105%_)))
                          (_%tl4910349124%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest4909749105%_))))
                      (let* ((_%method-sig49127%_ _%hd4910249122%_)
                             (_%rest49129%_ _%tl4910349124%_))
                        (_%K4910149119%_ _%rest49129%_ _%method-sig49127%_)))
                    (_%else4909949113%_)))))))
      (define gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__%
        (lambda (_%stx49070%_ _%is?49071%_)
          (if (gx#identifier? _%stx49070%_)
              (let ((_%e4907249074%_
                     (gx#syntax-local-value _%stx49070%_ false)))
                (if _%e4907249074%_
                    (let ((_%e49076%_ _%e4907249074%_))
                      (if (let ()
                            (declare (not safe))
                            (class-instance?
                             gerbil/core/contract~InterfaceInfo#interface-info::t
                             _%e49076%_))
                          (_%is?49071%_ _%e49076%_)
                          '#f))
                    '#f))
              '#f)))
      (define gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
        (lambda (_%stx49081%_)
          (let ((_%is?49083%_ true))
            (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__%
             _%stx49081%_
             _%is?49083%_))))
      (define gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?
        (lambda _g97619_
          (let ((_g97620_ (let () (declare (not safe)) (##length _g97619_))))
            (cond ((let () (declare (not safe)) (##fx= _g97620_ 1))
                   (apply gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                          _g97619_))
                  ((let () (declare (not safe)) (##fx= _g97620_ 2))
                   (apply gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__%
                          _g97619_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?
                    _g97619_)))))))))
