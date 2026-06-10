(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/contract~InterfaceInfo::timestamp 1781119024)
  (begin
    (define gerbil/core/contract~InterfaceInfo#_g87536_
      (##structure
       gx#syntax-quote::t
       'cast
       #f
       (gx#current-expander-context)
       '()))
    (define gerbil/core/contract~InterfaceInfo#_g87537_
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
        (lambda _%$args42994%_
          (apply make-instance
                 gerbil/core/contract~InterfaceInfo#interface-info::t
                 _%$args42994%_)))
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
        (let* ((_%$%g4279942813%_
                (lambda (_%$%g4280042810%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4280042810%_)))
               (_%$%g4279842991%_
                (lambda (_%$%g4280042816%_)
                  (if (gx#stx-pair? _%$%g4280042816%_)
                      (let ((_%$%e4280342818%_
                             (gx#syntax-e _%$%g4280042816%_)))
                        (let ((_%$%hd4280442821%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4280342818%_)))
                              (_%$%tl4280542823%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4280342818%_))))
                          (if (gx#stx-pair? _%$%tl4280542823%_)
                              (let ((_%$%e4280642826%_
                                     (gx#syntax-e _%$%tl4280542823%_)))
                                (let ((_%$%hd4280742829%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4280642826%_)))
                                      (_%$%tl4280842831%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4280642826%_))))
                                  (if (gx#stx-null? _%$%tl4280842831%_)
                                      ((lambda (_%$%g4280142834%_
                                                _%$%g4280242835%_)
                                         (lambda (_%self42849%_ _%stx42850%_)
                                           (let* ((_%$%g4285342866%_
                                                   (lambda (_%$%g4285442863%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%$%g4285442863%_)))
                                                  (_%$%g4285242903%_
                                                   (lambda (_%$%g4285442869%_)
                                                     ((lambda ()
                                                        (if (gx#identifier?
                                                             _%stx42850%_)
                                                            (let* ((_%$%g4287342880%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%$%g4287442877%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g4287442877%_)))
                           (_%$%g4287242900%_
                            (lambda (_%$%g4287442883%_)
                              ((lambda (_%$%g4287542885%_) _%$%g4287542885%_)
                               _%$%g4287442883%_))))
                      (_%$%g4287242900%_
                       (gerbil/core/contract~InterfaceInfo#interface-info-interface-descriptor
                        _%self42849%_)))
                    (_%$%g4285342866%_ _%$%g4285442869%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g4285142988%_
                                                   (lambda (_%$%g4285442906%_)
                                                     (if (gx#stx-pair?
                                                          _%$%g4285442906%_)
                                                         (let ((_%$%e4285642908%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g4285442906%_)))
                   (let ((_%$%hd4285742911%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e4285642908%_)))
                         (_%$%tl4285842913%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e4285642908%_))))
                     (if (gx#stx-pair? _%$%tl4285842913%_)
                         (let ((_%$%e4285942916%_
                                (gx#syntax-e _%$%tl4285842913%_)))
                           (let ((_%$%hd4286042919%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e4285942916%_)))
                                 (_%$%tl4286142921%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e4285942916%_))))
                             (if (gx#stx-null? _%$%tl4286142921%_)
                                 ((lambda (_%$%g4285542924%_)
                                    (let* ((_%$%g4293542949%_
                                            (lambda (_%$%g4293642946%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%$%g4293642946%_)))
                                           (_%$%g4293442985%_
                                            (lambda (_%$%g4293642952%_)
                                              (if (gx#stx-pair?
                                                   _%$%g4293642952%_)
                                                  (let ((_%$%e4293942954%_
                                                         (gx#syntax-e
                                                          _%$%g4293642952%_)))
                                                    (let ((_%$%hd4294042957%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e4293942954%_)))
                                                          (_%$%tl4294142959%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e4293942954%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%tl4294142959%_)
                                                          (let ((_%$%e4294242962%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl4294142959%_)))
                    (let ((_%$%hd4294342965%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e4294242962%_)))
                          (_%$%tl4294442967%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e4294242962%_))))
                      (if (gx#stx-null? _%$%tl4294442967%_)
                          ((lambda (_%$%g4293742970%_ _%$%g4293842971%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (cons (gx#datum->syntax '#f '$obj)
                                               (cons _%$%g4285542924%_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'begin-annotation)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '@type)
                         (cons _%$%g4293842971%_ '()))
                   (cons (cons (gx#datum->syntax '#f 'if)
                               (cons (cons _%$%g4280142834%_
                                           (cons _%$%g4293842971%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$obj)
                                                       '())))
                                     (cons (gx#datum->syntax '#f '$obj)
                                           (cons (cons _%$%g4280242835%_
                                                       (cons _%$%g4293742970%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$%hd4294342965%_
                           _%$%hd4294042957%_)
                          (_%$%g4293542949%_ _%$%g4293642952%_))))
                  (_%$%g4293542949%_ _%$%g4293642952%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g4293542949%_
                                                   _%$%g4293642952%_)))))
                                      (_%$%g4293442985%_
                                       (list (gerbil/core/mop~MOP-2#!runtime-type-descriptor
                                              _%self42849%_)
                                             (gerbil/core/contract~InterfaceInfo#interface-info-interface-descriptor
                                              _%self42849%_)))))
                                  _%$%hd4286042919%_)
                                 (_%$%g4285242903%_ _%$%g4285442906%_))))
                         (_%$%g4285242903%_ _%$%g4285442906%_))))
                 (_%$%g4285242903%_ _%$%g4285442906%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%$%g4285142988%_
                                              _%stx42850%_))))
                                       _%$%hd4280742829%_
                                       _%$%hd4280442821%_)
                                      (_%$%g4279942813%_ _%$%g4280042816%_))))
                              (_%$%g4279942813%_ _%$%g4280042816%_))))
                      (_%$%g4279942813%_ _%$%g4280042816%_)))))
          (_%$%g4279842991%_
           (list gerbil/core/contract~InterfaceInfo#_g87536_
                 gerbil/core/contract~InterfaceInfo#_g87537_))))
      (bind-method!
       gerbil/core/contract~InterfaceInfo#interface-info::t
       'apply-macro-expander
       gerbil/core/contract~InterfaceInfo#interface-info::apply-macro-expander
       '#f)
      (define gerbil/core/contract~InterfaceInfo#interface-identifier->precedence-list
        (lambda (_%id42675%_)
          (cons _%id42675%_
                (gerbil/core/contract~InterfaceInfo#interface-info-interface-precedence-list
                 (gx#syntax-local-value _%id42675%_)))))
      (define gerbil/core/contract~InterfaceInfo#interface-mixin->precedence-list
        (lambda (_%lst42670%_)
          (let ((_g87538_
                 (c4-linearize
                  '()
                  _%lst42670%_
                  'get-precedence-list:
                  gerbil/core/contract~InterfaceInfo#interface-identifier->precedence-list
                  'struct:
                  false
                  'eq:
                  gx#free-identifier=?)))
            (begin
              (let ((_g87539_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g87538_)
                           (##values-length _g87538_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g87539_ 2)))
                    (error "Context expects 2 values" _g87539_)))
              (let ((_%linearized42672%_
                     (let () (declare (not safe)) (##values-ref _g87538_ 0)))
                    (_%_42673%_
                     (let () (declare (not safe)) (##values-ref _g87538_ 1))))
                _%linearized42672%_)))))
      (define gerbil/core/contract~InterfaceInfo#interface-info-method-signature
        (lambda (_%info42660%_ _%method42661%_)
          (let ((_%$%sig4266242666%_
                 (find (lambda (_%sig42664%_)
                         (eq? _%method42661%_ (car _%sig42664%_)))
                       (gerbil/core/contract~InterfaceInfo#interface-info-interface-methods
                        _%info42660%_))))
            (if _%$%sig4266242666%_
                (let ((_%sig42668%_ _%$%sig4266242666%_)) (cdr _%sig42668%_))
                '#f))))
      (define gerbil/core/contract~InterfaceInfo#interface-info-method-offset
        (lambda (_%info42617%_ _%method42618%_)
          (let ((_%methods42620%_
                 (gerbil/core/contract~InterfaceInfo#interface-info-interface-methods
                  _%info42617%_)))
            (let _%loop42622%_ ((_%rest42624%_ _%methods42620%_)
                                (_%index42625%_ '2))
              (let* ((_%$%rest4262642634%_ _%rest42624%_)
                     (_%$%E4262942638%_
                      (lambda ()
                        (error '"No clause matching"
                               _%$%rest4262642634%_
                               '([method-sig . rest])
                               'else)
                        (void)))
                     (_%$%else4262842642%_ (lambda () '#f))
                     (_%$%K4263042648%_
                      (lambda (_%rest42645%_ _%method-sig42646%_)
                        (if (eq? _%method42618%_ (car _%method-sig42646%_))
                            _%index42625%_
                            (_%loop42622%_
                             _%rest42645%_
                             (fx+ _%index42625%_ '1))))))
                (if (pair? _%$%rest4262642634%_)
                    (let ((_%$%hd4263142651%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%rest4262642634%_)))
                          (_%$%tl4263242653%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%rest4262642634%_))))
                      (let* ((_%method-sig42656%_ _%$%hd4263142651%_)
                             (_%rest42658%_ _%$%tl4263242653%_))
                        (_%$%K4263042648%_ _%rest42658%_ _%method-sig42656%_)))
                    (_%$%else4262842642%_)))))))
      (define gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?
        (let ((_%$%opt-lambda4259742607%_
               (lambda (_%stx42599%_ _%is?42600%_)
                 (if (gx#identifier? _%stx42599%_)
                     (let ((_%$%e4260142603%_
                            (gx#syntax-local-value _%stx42599%_ false)))
                       (if _%$%e4260142603%_
                           (let ((_%e42605%_ _%$%e4260142603%_))
                             (if (gerbil/core/contract~InterfaceInfo#interface-info?
                                  _%e42605%_)
                                 (_%is?42600%_ _%e42605%_)
                                 '#f))
                           '#f))
                     '#f))))
          (lambda _g87540_
            (let ((_g87541_ (let () (declare (not safe)) (##length _g87540_))))
              (cond ((let () (declare (not safe)) (##fx= _g87541_ 1))
                     (apply (lambda (_%stx42610%_)
                              (let ((_%is?42612%_ true))
                                (_%$%opt-lambda4259742607%_
                                 _%stx42610%_
                                 _%is?42612%_)))
                            _g87540_))
                    ((let () (declare (not safe)) (##fx= _g87541_ 2))
                     (apply _%$%opt-lambda4259742607%_ _g87540_))
                    (else
                     (##raise-wrong-number-of-arguments-exception
                      gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?
                      _g87540_))))))))))
