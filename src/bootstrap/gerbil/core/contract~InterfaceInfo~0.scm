(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/contract~InterfaceInfo::timestamp 1781697548)
  (begin
    (define gerbil/core/contract~InterfaceInfo#_g102289_
      (##structure
       gx#syntax-quote::t
       'cast
       #f
       (gx#current-expander-context)
       '()))
    (define gerbil/core/contract~InterfaceInfo#_g102290_
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
        (lambda _%$args50924%_
          (apply make-instance
                 gerbil/core/contract~InterfaceInfo#interface-info::t
                 _%$args50924%_)))
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
        (let* ((_%$%g5072950743%_
                (lambda (_%$%g5073050740%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g5073050740%_)))
               (_%$%g5072850921%_
                (lambda (_%$%g5073050746%_)
                  (if (gx#stx-pair? _%$%g5073050746%_)
                      (let ((_%$%e5073350748%_
                             (gx#syntax-e _%$%g5073050746%_)))
                        (let ((_%$%hd5073450751%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5073350748%_)))
                              (_%$%tl5073550753%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5073350748%_))))
                          (if (gx#stx-pair? _%$%tl5073550753%_)
                              (let ((_%$%e5073650756%_
                                     (gx#syntax-e _%$%tl5073550753%_)))
                                (let ((_%$%hd5073750759%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5073650756%_)))
                                      (_%$%tl5073850761%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5073650756%_))))
                                  (if (gx#stx-null? _%$%tl5073850761%_)
                                      (lambda (_%self50779%_ _%stx50780%_)
                                        (let* ((_%__stx9546795468%_
                                                _%stx50780%_)
                                               (_%$%g5078350796%_
                                                (lambda ()
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%__stx9546795468%_))))
                                          (let ((_%__kont9546995470%_
                                                 (lambda (_%$%g5078550854%_)
                                                   (let* ((_%$%g5086550879%_
                                                           (lambda (_%$%g5086650876%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%$%g5086650876%_)))
                                                          (_%$%g5086450915%_
                                                           (lambda (_%$%g5086650882%_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g5086650882%_)
                         (let ((_%$%e5086950884%_
                                (gx#syntax-e _%$%g5086650882%_)))
                           (let ((_%$%hd5087050887%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e5086950884%_)))
                                 (_%$%tl5087150889%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e5086950884%_))))
                             (if (gx#stx-pair? _%$%tl5087150889%_)
                                 (let ((_%$%e5087250892%_
                                        (gx#syntax-e _%$%tl5087150889%_)))
                                   (let ((_%$%hd5087350895%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e5087250892%_)))
                                         (_%$%tl5087450897%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e5087250892%_))))
                                     (if (gx#stx-null? _%$%tl5087450897%_)
                                         (cons (gx#datum->syntax '#f 'let)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '$obj)
                                                           (cons _%$%g5078550854%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'begin-annotation)
                         (cons (cons (gx#datum->syntax '#f '@type)
                                     (cons _%$%hd5087050887%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (cons _%$%hd5073750759%_
                                                       (cons _%$%hd5087050887%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$obj)
                                                       (cons (cons _%$%hd5073450751%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%$%hd5087350895%_
                                 (cons (gx#datum->syntax '#f '$obj) '())))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%$%g5086550879%_
                                          _%$%g5086650882%_))))
                                 (_%$%g5086550879%_ _%$%g5086650882%_))))
                         (_%$%g5086550879%_ _%$%g5086650882%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g5086450915%_
                                                      (list (let ((__obj102195
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%self50779%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj102195
                             'gerbil/core#runtime-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj102195 '3 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#runtime-type-info::t
                           __obj102195
                           'type-descriptor)))
                    (let ((__obj102196 _%self50779%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj102196
                             'gerbil/core/contract~InterfaceInfo#interface-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj102196 '8 '#f '#f))
                          (class-slot-ref
                           gerbil/core/contract~InterfaceInfo#interface-info::t
                           __obj102196
                           'interface-descriptor))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont9547195472%_
                                                 (lambda ()
                                                   (let* ((_%$%g5080350810%_
                                                           (lambda (_%$%g5080450807%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%$%g5080450807%_)))
                                                          (_%$%g5080250830%_
                                                           (lambda (_%$%g5080450813%_)
                                                             _%$%g5080450813%_)))
                                                     (_%$%g5080250830%_
                                                      (let ((__obj102197
                                                             _%self50779%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               __obj102197
                                                               'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               __obj102197
                                                               '8
                                                               '#f
                                                               '#f))
                                                            (class-slot-ref
                                                             gerbil/core/contract~InterfaceInfo#interface-info::t
                                                             __obj102197
                                                             'interface-descriptor))))))))
                                            (let ((_%$%g5078250833%_
                                                   (lambda ()
                                                     (if (gx#identifier?
                                                          _%stx50780%_)
                                                         (_%__kont9547195472%_)
                                                         (_%$%g5078350796%_)))))
                                              (if (gx#stx-pair?
                                                   _%__stx9546795468%_)
                                                  (let ((_%$%e5078650838%_
                                                         (gx#syntax-e
                                                          _%__stx9546795468%_)))
                                                    (let ((_%$%tl5078850843%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5078650838%_)))
                                                          (_%$%hd5078750841%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5078650838%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%tl5078850843%_)
                                                          (let ((_%$%e5078950846%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl5078850843%_)))
                    (let ((_%$%tl5079150851%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5078950846%_)))
                          (_%$%hd5079050849%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5078950846%_))))
                      (if (gx#stx-null? _%$%tl5079150851%_)
                          (_%__kont9546995470%_ _%$%hd5079050849%_)
                          (_%$%g5078250833%_))))
                  (_%$%g5078250833%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g5078250833%_))))))
                                      (_%$%g5072950743%_ _%$%g5073050746%_))))
                              (_%$%g5072950743%_ _%$%g5073050746%_))))
                      (_%$%g5072950743%_ _%$%g5073050746%_)))))
          (_%$%g5072850921%_
           (list gerbil/core/contract~InterfaceInfo#_g102289_
                 gerbil/core/contract~InterfaceInfo#_g102290_))))
      (bind-method!
       gerbil/core/contract~InterfaceInfo#interface-info::t
       'apply-macro-expander
       gerbil/core/contract~InterfaceInfo#interface-info::apply-macro-expander
       '#f)
      (define gerbil/core/contract~InterfaceInfo#interface-identifier->precedence-list
        (lambda (_%id50605%_)
          (cons _%id50605%_
                (let ((__obj102198 (gx#syntax-local-value _%id50605%_)))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj102198
                         'gerbil/core/contract~InterfaceInfo#interface-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj102198 '7 '#f '#f))
                      (class-slot-ref
                       gerbil/core/contract~InterfaceInfo#interface-info::t
                       __obj102198
                       'interface-precedence-list))))))
      (define gerbil/core/contract~InterfaceInfo#interface-mixin->precedence-list
        (lambda (_%lst50600%_)
          (let ((_g102291_
                 (c4-linearize
                  '()
                  _%lst50600%_
                  'get-precedence-list:
                  gerbil/core/contract~InterfaceInfo#interface-identifier->precedence-list
                  'struct:
                  false
                  'eq:
                  gx#free-identifier=?
                  'get-name:
                  gx#stx-e)))
            (begin
              (let ((_g102292_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g102291_)
                           (##values-length _g102291_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g102292_ 2)))
                    (error "Context expects 2 values" _g102292_)))
              (let ((_%linearized50602%_
                     (let () (declare (not safe)) (##values-ref _g102291_ 0)))
                    (_%_50603%_
                     (let () (declare (not safe)) (##values-ref _g102291_ 1))))
                _%linearized50602%_)))))
      (define gerbil/core/contract~InterfaceInfo#interface-info-method-signature
        (lambda (_%info50590%_ _%method50591%_)
          (let ((_%$%sig5059250596%_
                 (find (lambda (_%sig50594%_)
                         (eq? _%method50591%_ (car _%sig50594%_)))
                       (let ((__obj102199 _%info50590%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj102199
                                'gerbil/core/contract~InterfaceInfo#interface-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj102199
                                '6
                                '#f
                                '#f))
                             (class-slot-ref
                              gerbil/core/contract~InterfaceInfo#interface-info::t
                              __obj102199
                              'interface-methods))))))
            (if _%$%sig5059250596%_
                (let ((_%sig50598%_ _%$%sig5059250596%_)) (cdr _%sig50598%_))
                '#f))))
      (define gerbil/core/contract~InterfaceInfo#interface-info-method-offset
        (lambda (_%info50547%_ _%method50548%_)
          (let ((_%methods50550%_
                 (let ((__obj102200 _%info50547%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-direct-instance-of?
                          __obj102200
                          'gerbil/core/contract~InterfaceInfo#interface-info::t))
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref __obj102200 '6 '#f '#f))
                       (class-slot-ref
                        gerbil/core/contract~InterfaceInfo#interface-info::t
                        __obj102200
                        'interface-methods)))))
            (let _%loop50552%_ ((_%rest50554%_ _%methods50550%_)
                                (_%index50555%_ '2))
              (let* ((_%$%rest5055650564%_ _%rest50554%_)
                     (_%$%else5055850572%_ (lambda () '#f))
                     (_%$%K5056050578%_
                      (lambda (_%rest50575%_ _%method-sig50576%_)
                        (if (eq? _%method50548%_ (car _%method-sig50576%_))
                            _%index50555%_
                            (_%loop50552%_
                             _%rest50575%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%index50555%_ '1)))))))
                (if (pair? _%$%rest5055650564%_)
                    (let ((_%$%hd5056150581%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%rest5055650564%_)))
                          (_%$%tl5056250583%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%rest5055650564%_))))
                      (let* ((_%method-sig50586%_ _%$%hd5056150581%_)
                             (_%rest50588%_ _%$%tl5056250583%_))
                        (_%$%K5056050578%_ _%rest50588%_ _%method-sig50586%_)))
                    (_%$%else5055850572%_)))))))
      (define gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__%
        (lambda (_%stx50529%_ _%is?50530%_)
          (if (gx#identifier? _%stx50529%_)
              (let ((_%$%e5053150533%_
                     (gx#syntax-local-value _%stx50529%_ false)))
                (if _%$%e5053150533%_
                    (let ((_%e50535%_ _%$%e5053150533%_))
                      (if (let ()
                            (declare (not safe))
                            (class-instance?
                             gerbil/core/contract~InterfaceInfo#interface-info::t
                             _%e50535%_))
                          (_%is?50530%_ _%e50535%_)
                          '#f))
                    '#f))
              '#f)))
      (define gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
        (lambda (_%stx50540%_)
          (let ((_%is?50542%_ true))
            (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__%
             _%stx50540%_
             _%is?50542%_))))
      (define gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?
        (lambda _g102293_
          (let ((_g102294_ (let () (declare (not safe)) (##length _g102293_))))
            (cond ((let () (declare (not safe)) (##fx= _g102294_ 1))
                   (apply gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                          _g102293_))
                  ((let () (declare (not safe)) (##fx= _g102294_ 2))
                   (apply gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__%
                          _g102293_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?
                    _g102293_)))))))))
