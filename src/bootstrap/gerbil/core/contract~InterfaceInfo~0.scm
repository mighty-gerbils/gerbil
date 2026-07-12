(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/contract~InterfaceInfo::timestamp 1783878469)
  (begin
    (define gerbil/core/contract~InterfaceInfo#_g102279_
      (##structure
       gx#syntax-quote::t
       'cast
       #f
       (gx#current-expander-context)
       '()))
    (define gerbil/core/contract~InterfaceInfo#_g102280_
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
        (lambda _%$args50927%_
          (apply make-instance
                 gerbil/core/contract~InterfaceInfo#interface-info::t
                 _%$args50927%_)))
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
        (let* ((_%$%g5073250746%_
                (lambda (_%$%g5073350743%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g5073350743%_)))
               (_%$%g5073150924%_
                (lambda (_%$%g5073350749%_)
                  (if (gx#stx-pair? _%$%g5073350749%_)
                      (let ((_%$%e5073650751%_
                             (gx#syntax-e _%$%g5073350749%_)))
                        (let ((_%$%hd5073750754%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5073650751%_)))
                              (_%$%tl5073850756%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5073650751%_))))
                          (if (gx#stx-pair? _%$%tl5073850756%_)
                              (let ((_%$%e5073950759%_
                                     (gx#syntax-e _%$%tl5073850756%_)))
                                (let ((_%$%hd5074050762%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5073950759%_)))
                                      (_%$%tl5074150764%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5073950759%_))))
                                  (if (gx#stx-null? _%$%tl5074150764%_)
                                      (lambda (_%self50782%_ _%stx50783%_)
                                        (let* ((_%__stx9545795458%_
                                                _%stx50783%_)
                                               (_%$%g5078650799%_
                                                (lambda ()
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%__stx9545795458%_))))
                                          (let ((_%__kont9545995460%_
                                                 (lambda (_%$%g5078850857%_)
                                                   (let* ((_%$%g5086850882%_
                                                           (lambda (_%$%g5086950879%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%$%g5086950879%_)))
                                                          (_%$%g5086750918%_
                                                           (lambda (_%$%g5086950885%_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g5086950885%_)
                         (let ((_%$%e5087250887%_
                                (gx#syntax-e _%$%g5086950885%_)))
                           (let ((_%$%hd5087350890%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e5087250887%_)))
                                 (_%$%tl5087450892%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e5087250887%_))))
                             (if (gx#stx-pair? _%$%tl5087450892%_)
                                 (let ((_%$%e5087550895%_
                                        (gx#syntax-e _%$%tl5087450892%_)))
                                   (let ((_%$%hd5087650898%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e5087550895%_)))
                                         (_%$%tl5087750900%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e5087550895%_))))
                                     (if (gx#stx-null? _%$%tl5087750900%_)
                                         (cons (gx#datum->syntax '#f 'let)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '$obj)
                                                           (cons _%$%g5078850857%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'begin-annotation)
                         (cons (cons (gx#datum->syntax '#f '@type)
                                     (cons _%$%hd5087350890%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (cons _%$%hd5074050762%_
                                                       (cons _%$%hd5087350890%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$obj)
                                                       (cons (cons _%$%hd5073750754%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%$%hd5087650898%_
                                 (cons (gx#datum->syntax '#f '$obj) '())))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%$%g5086850882%_
                                          _%$%g5086950885%_))))
                                 (_%$%g5086850882%_ _%$%g5086950885%_))))
                         (_%$%g5086850882%_ _%$%g5086950885%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g5086750918%_
                                                      (list (let ((__obj102185
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%self50782%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj102185
                             'gerbil/core#runtime-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj102185 '3 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#runtime-type-info::t
                           __obj102185
                           'type-descriptor)))
                    (let ((__obj102186 _%self50782%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj102186
                             'gerbil/core/contract~InterfaceInfo#interface-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj102186 '8 '#f '#f))
                          (class-slot-ref
                           gerbil/core/contract~InterfaceInfo#interface-info::t
                           __obj102186
                           'interface-descriptor))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont9546195462%_
                                                 (lambda ()
                                                   (let* ((_%$%g5080650813%_
                                                           (lambda (_%$%g5080750810%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%$%g5080750810%_)))
                                                          (_%$%g5080550833%_
                                                           (lambda (_%$%g5080750816%_)
                                                             _%$%g5080750816%_)))
                                                     (_%$%g5080550833%_
                                                      (let ((__obj102187
                                                             _%self50782%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               __obj102187
                                                               'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               __obj102187
                                                               '8
                                                               '#f
                                                               '#f))
                                                            (class-slot-ref
                                                             gerbil/core/contract~InterfaceInfo#interface-info::t
                                                             __obj102187
                                                             'interface-descriptor))))))))
                                            (let ((_%$%g5078550836%_
                                                   (lambda ()
                                                     (if (gx#identifier?
                                                          _%stx50783%_)
                                                         (_%__kont9546195462%_)
                                                         (_%$%g5078650799%_)))))
                                              (if (gx#stx-pair?
                                                   _%__stx9545795458%_)
                                                  (let ((_%$%e5078950841%_
                                                         (gx#syntax-e
                                                          _%__stx9545795458%_)))
                                                    (let ((_%$%tl5079150846%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5078950841%_)))
                                                          (_%$%hd5079050844%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5078950841%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%tl5079150846%_)
                                                          (let ((_%$%e5079250849%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl5079150846%_)))
                    (let ((_%$%tl5079450854%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5079250849%_)))
                          (_%$%hd5079350852%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5079250849%_))))
                      (if (gx#stx-null? _%$%tl5079450854%_)
                          (_%__kont9545995460%_ _%$%hd5079350852%_)
                          (_%$%g5078550836%_))))
                  (_%$%g5078550836%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g5078550836%_))))))
                                      (_%$%g5073250746%_ _%$%g5073350749%_))))
                              (_%$%g5073250746%_ _%$%g5073350749%_))))
                      (_%$%g5073250746%_ _%$%g5073350749%_)))))
          (_%$%g5073150924%_
           (list gerbil/core/contract~InterfaceInfo#_g102279_
                 gerbil/core/contract~InterfaceInfo#_g102280_))))
      (bind-method!
       gerbil/core/contract~InterfaceInfo#interface-info::t
       'apply-macro-expander
       gerbil/core/contract~InterfaceInfo#interface-info::apply-macro-expander
       '#f)
      (define gerbil/core/contract~InterfaceInfo#interface-identifier->precedence-list
        (lambda (_%id50608%_)
          (cons _%id50608%_
                (let ((__obj102188 (gx#syntax-local-value _%id50608%_)))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj102188
                         'gerbil/core/contract~InterfaceInfo#interface-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj102188 '7 '#f '#f))
                      (class-slot-ref
                       gerbil/core/contract~InterfaceInfo#interface-info::t
                       __obj102188
                       'interface-precedence-list))))))
      (define gerbil/core/contract~InterfaceInfo#interface-mixin->precedence-list
        (lambda (_%lst50603%_)
          (let ((_g102281_
                 (c4-linearize
                  '()
                  _%lst50603%_
                  'get-precedence-list:
                  gerbil/core/contract~InterfaceInfo#interface-identifier->precedence-list
                  'struct:
                  false
                  'eq:
                  gx#free-identifier=?
                  'get-name:
                  gx#stx-e)))
            (begin
              (let ((_g102282_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g102281_)
                           (##values-length _g102281_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g102282_ 2)))
                    (error "Context expects 2 values" _g102282_)))
              (let ((_%linearized50605%_
                     (let () (declare (not safe)) (##values-ref _g102281_ 0)))
                    (_%_50606%_
                     (let () (declare (not safe)) (##values-ref _g102281_ 1))))
                _%linearized50605%_)))))
      (define gerbil/core/contract~InterfaceInfo#interface-info-method-signature
        (lambda (_%info50593%_ _%method50594%_)
          (let ((_%$%sig5059550599%_
                 (find (lambda (_%sig50597%_)
                         (eq? _%method50594%_ (car _%sig50597%_)))
                       (let ((__obj102189 _%info50593%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj102189
                                'gerbil/core/contract~InterfaceInfo#interface-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj102189
                                '6
                                '#f
                                '#f))
                             (class-slot-ref
                              gerbil/core/contract~InterfaceInfo#interface-info::t
                              __obj102189
                              'interface-methods))))))
            (if _%$%sig5059550599%_
                (let ((_%sig50601%_ _%$%sig5059550599%_)) (cdr _%sig50601%_))
                '#f))))
      (define gerbil/core/contract~InterfaceInfo#interface-info-method-offset
        (lambda (_%info50550%_ _%method50551%_)
          (let ((_%methods50553%_
                 (let ((__obj102190 _%info50550%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-direct-instance-of?
                          __obj102190
                          'gerbil/core/contract~InterfaceInfo#interface-info::t))
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref __obj102190 '6 '#f '#f))
                       (class-slot-ref
                        gerbil/core/contract~InterfaceInfo#interface-info::t
                        __obj102190
                        'interface-methods)))))
            (let _%loop50555%_ ((_%rest50557%_ _%methods50553%_)
                                (_%index50558%_ '2))
              (let* ((_%$%rest5055950567%_ _%rest50557%_)
                     (_%$%else5056150575%_ (lambda () '#f))
                     (_%$%K5056350581%_
                      (lambda (_%rest50578%_ _%method-sig50579%_)
                        (if (eq? _%method50551%_ (car _%method-sig50579%_))
                            _%index50558%_
                            (_%loop50555%_
                             _%rest50578%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%index50558%_ '1)))))))
                (if (pair? _%$%rest5055950567%_)
                    (let ((_%$%hd5056450584%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%rest5055950567%_)))
                          (_%$%tl5056550586%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%rest5055950567%_))))
                      (let* ((_%method-sig50589%_ _%$%hd5056450584%_)
                             (_%rest50591%_ _%$%tl5056550586%_))
                        (_%$%K5056350581%_ _%rest50591%_ _%method-sig50589%_)))
                    (_%$%else5056150575%_)))))))
      (define gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__%
        (lambda (_%stx50532%_ _%is?50533%_)
          (if (gx#identifier? _%stx50532%_)
              (let ((_%$%e5053450536%_
                     (gx#syntax-local-value _%stx50532%_ false)))
                (if _%$%e5053450536%_
                    (let ((_%e50538%_ _%$%e5053450536%_))
                      (if (let ()
                            (declare (not safe))
                            (class-instance?
                             gerbil/core/contract~InterfaceInfo#interface-info::t
                             _%e50538%_))
                          (_%is?50533%_ _%e50538%_)
                          '#f))
                    '#f))
              '#f)))
      (define gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
        (lambda (_%stx50543%_)
          (let ((_%is?50545%_ true))
            (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__%
             _%stx50543%_
             _%is?50545%_))))
      (define gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?
        (lambda _g102283_
          (let ((_g102284_ (let () (declare (not safe)) (##length _g102283_))))
            (cond ((let () (declare (not safe)) (##fx= _g102284_ 1))
                   (apply gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                          _g102283_))
                  ((let () (declare (not safe)) (##fx= _g102284_ 2))
                   (apply gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__%
                          _g102283_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?
                    _g102283_)))))))))
