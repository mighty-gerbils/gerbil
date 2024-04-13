(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/contract~InterfaceInfo::timestamp 1713000273)
  (begin
    (define gerbil/core/contract~InterfaceInfo#_g82519_
      (##structure
       gx#syntax-quote::t
       'cast
       #f
       (gx#current-expander-context)
       '()))
    (define gerbil/core/contract~InterfaceInfo#_g82520_
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
         (list)
         '(name interface-mixin
                interface-methods
                instance-type
                interface-descriptor
                instance-constructor
                instance-try-constructor
                instance-predicate
                instance-satisfies-predicate
                implementation-methods
                unchecked-implementation-methods)
         '()
         '#f))
      (define gerbil/core/contract~InterfaceInfo#interface-info?
        (make-class-predicate
         gerbil/core/contract~InterfaceInfo#interface-info::t))
      (define gerbil/core/contract~InterfaceInfo#make-interface-info
        (lambda _%$args44991%_
          (apply make-instance
                 gerbil/core/contract~InterfaceInfo#interface-info::t
                 _%$args44991%_)))
      (define gerbil/core/contract~InterfaceInfo#interface-info-name
        (make-class-slot-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'name))
      (define gerbil/core/contract~InterfaceInfo#interface-info-interface-mixin
        (make-class-slot-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'interface-mixin))
      (define gerbil/core/contract~InterfaceInfo#interface-info-interface-methods
        (make-class-slot-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'interface-methods))
      (define gerbil/core/contract~InterfaceInfo#interface-info-instance-type
        (make-class-slot-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'instance-type))
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
      (define gerbil/core/contract~InterfaceInfo#interface-info-name-set!
        (make-class-slot-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'name))
      (define gerbil/core/contract~InterfaceInfo#interface-info-interface-mixin-set!
        (make-class-slot-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'interface-mixin))
      (define gerbil/core/contract~InterfaceInfo#interface-info-interface-methods-set!
        (make-class-slot-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'interface-methods))
      (define gerbil/core/contract~InterfaceInfo#interface-info-instance-type-set!
        (make-class-slot-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'instance-type))
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
      (define gerbil/core/contract~InterfaceInfo#&interface-info-name
        (make-class-slot-unchecked-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'name))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-interface-mixin
        (make-class-slot-unchecked-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'interface-mixin))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-interface-methods
        (make-class-slot-unchecked-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'interface-methods))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-instance-type
        (make-class-slot-unchecked-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'instance-type))
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
      (define gerbil/core/contract~InterfaceInfo#&interface-info-name-set!
        (make-class-slot-unchecked-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'name))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-interface-mixin-set!
        (make-class-slot-unchecked-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'interface-mixin))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-interface-methods-set!
        (make-class-slot-unchecked-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'interface-methods))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-instance-type-set!
        (make-class-slot-unchecked-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'instance-type))
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
      (define gerbil/core/contract~InterfaceInfo#interface-info::apply-macro-expander
        (let* ((_%g4478044794%_
                (lambda (_%g4478144791%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4478144791%_)))
               (_%g4477944988%_
                (lambda (_%g4478144797%_)
                  (if (gx#stx-pair? _%g4478144797%_)
                      (let ((_%e4478444799%_ (gx#syntax-e _%g4478144797%_)))
                        (let ((_%hd4478544802%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4478444799%_)))
                              (_%tl4478644804%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4478444799%_))))
                          (if (gx#stx-pair? _%tl4478644804%_)
                              (let ((_%e4478744807%_
                                     (gx#syntax-e _%tl4478644804%_)))
                                (let ((_%hd4478844810%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4478744807%_)))
                                      (_%tl4478944812%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4478744807%_))))
                                  (if (gx#stx-null? _%tl4478944812%_)
                                      ((lambda (_%L44815%_ _%L44816%_)
                                         (lambda (_%self44830%_ _%stx44831%_)
                                           (let* ((_%__stx7713677137%_
                                                   _%stx44831%_)
                                                  (_%g4483444847%_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx7713677137%_))))
                                             (let ((_%__kont7713877139%_
                                                    (lambda (_%L44905%_)
                                                      (let* ((_%g4491644934%_
                                                              (lambda (_%g4491744931%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g4491744931%_)))
                     (_%g4491544982%_
                      (lambda (_%g4491744937%_)
                        (if (gx#stx-pair? _%g4491744937%_)
                            (let ((_%e4492144939%_
                                   (gx#syntax-e _%g4491744937%_)))
                              (let ((_%hd4492244942%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4492144939%_)))
                                    (_%tl4492344944%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4492144939%_))))
                                (if (gx#stx-pair? _%tl4492344944%_)
                                    (let ((_%e4492444947%_
                                           (gx#syntax-e _%tl4492344944%_)))
                                      (let ((_%hd4492544950%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4492444947%_)))
                                            (_%tl4492644952%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4492444947%_))))
                                        (if (gx#stx-pair? _%tl4492644952%_)
                                            (let ((_%e4492744955%_
                                                   (gx#syntax-e
                                                    _%tl4492644952%_)))
                                              (let ((_%hd4492844958%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4492744955%_)))
                                                    (_%tl4492944960%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4492744955%_))))
                                                (if (gx#stx-null?
                                                     _%tl4492944960%_)
                                                    ((lambda (_%L44963%_
                                                              _%L44964%_
                                                              _%L44965%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '$obj)
                                 (cons _%L44905%_ '()))
                           (cons (cons (gx#datum->syntax '#f 'begin-annotation)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '@type)
                                                   (cons _%L44963%_ '()))
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'if)
                                                         (cons (cons _%L44815%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%L44965%_
                                   (cons (gx#datum->syntax '#f '$obj) '())))
                       (cons (gx#datum->syntax '#f '$obj)
                             (cons (cons _%L44816%_
                                         (cons _%L44964%_
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      '$obj)
                                                     '())))
                                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd4492844958%_
                                                     _%hd4492544950%_
                                                     _%hd4492244942%_)
                                                    (_%g4491644934%_
                                                     _%g4491744937%_))))
                                            (_%g4491644934%_
                                             _%g4491744937%_))))
                                    (_%g4491644934%_ _%g4491744937%_))))
                            (_%g4491644934%_ _%g4491744937%_)))))
                (_%g4491544982%_
                 (list (let ((__obj82444 _%self44830%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj82444
                                'gerbil/core/contract~InterfaceInfo#interface-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj82444
                                '4
                                '#f
                                '#f))
                             (class-slot-ref
                              gerbil/core/contract~InterfaceInfo#interface-info::t
                              __obj82444
                              'instance-type)))
                       (let ((__obj82445 _%self44830%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj82445
                                'gerbil/core/contract~InterfaceInfo#interface-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj82445
                                '5
                                '#f
                                '#f))
                             (class-slot-ref
                              gerbil/core/contract~InterfaceInfo#interface-info::t
                              __obj82445
                              'interface-descriptor)))
                       (let ((__obj82446 _%self44830%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj82446
                                'gerbil/core/contract~InterfaceInfo#interface-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj82446
                                '4
                                '#f
                                '#f))
                             (class-slot-ref
                              gerbil/core/contract~InterfaceInfo#interface-info::t
                              __obj82446
                              'instance-type))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont7714077141%_
                                                    (lambda ()
                                                      (let* ((_%g4485444861%_
                                                              (lambda (_%g4485544858%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g4485544858%_)))
                     (_%g4485344881%_
                      (lambda (_%g4485544864%_)
                        ((lambda (_%L44866%_) _%L44866%_) _%g4485544864%_))))
                (_%g4485344881%_
                 (let ((__obj82447 _%self44830%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-direct-instance-of?
                          __obj82447
                          'gerbil/core/contract~InterfaceInfo#interface-info::t))
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref __obj82447 '5 '#f '#f))
                       (class-slot-ref
                        gerbil/core/contract~InterfaceInfo#interface-info::t
                        __obj82447
                        'interface-descriptor))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%g4483344884%_
                                                      (lambda ()
                                                        (if (gx#identifier?
                                                             _%stx44831%_)
                                                            (_%__kont7714077141%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_%g4483444847%_))))))
                                                 (if (gx#stx-pair?
                                                      _%__stx7713677137%_)
                                                     (let ((_%e4483744889%_
                                                            (gx#syntax-e
                                                             _%__stx7713677137%_)))
                                                       (let ((_%tl4483944894%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e4483744889%_)))
                     (_%hd4483844892%_
                      (let () (declare (not safe)) (##car _%e4483744889%_))))
                 (if (gx#stx-pair? _%tl4483944894%_)
                     (let ((_%e4484044897%_ (gx#syntax-e _%tl4483944894%_)))
                       (let ((_%tl4484244902%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4484044897%_)))
                             (_%hd4484144900%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4484044897%_))))
                         (if (gx#stx-null? _%tl4484244902%_)
                             (_%__kont7713877139%_ _%hd4484144900%_)
                             (let () (declare (not safe)) (_%g4483344884%_)))))
                     (let () (declare (not safe)) (_%g4483344884%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g4483344884%_))))))))
                                       _%hd4478844810%_
                                       _%hd4478544802%_)
                                      (_%g4478044794%_ _%g4478144797%_))))
                              (_%g4478044794%_ _%g4478144797%_))))
                      (_%g4478044794%_ _%g4478144797%_)))))
          (_%g4477944988%_
           (list gerbil/core/contract~InterfaceInfo#_g82519_
                 gerbil/core/contract~InterfaceInfo#_g82520_))))
      (bind-method!
       gerbil/core/contract~InterfaceInfo#interface-info::t
       'apply-macro-expander
       gerbil/core/contract~InterfaceInfo#interface-info::apply-macro-expander
       '#f)
      (define gerbil/core/contract~InterfaceInfo#interface-info-flatten-mixin
        (lambda (_%info44613%_)
          (let _%loop44615%_ ((_%rest44617%_
                               (let ((__obj82449 _%info44613%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-direct-instance-of?
                                        __obj82449
                                        'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        __obj82449
                                        '2
                                        '#f
                                        '#f))
                                     (class-slot-ref
                                      gerbil/core/contract~InterfaceInfo#interface-info::t
                                      __obj82449
                                      'interface-mixin))))
                              (_%result44618%_ '()))
            (let* ((_%rest4461944627%_ _%rest44617%_)
                   (_%else4462144635%_ (lambda () _%result44618%_))
                   (_%K4462344645%_
                    (lambda (_%rest44638%_ _%id44639%_)
                      (let* ((_%mixin44641%_
                              (let ((__obj82448
                                     (gx#syntax-local-value _%id44639%_)))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-direct-instance-of?
                                       __obj82448
                                       'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __obj82448
                                       '2
                                       '#f
                                       '#f))
                                    (class-slot-ref
                                     gerbil/core/contract~InterfaceInfo#interface-info::t
                                     __obj82448
                                     'interface-mixin))))
                             (_%result44643%_
                              (if (member _%id44639%_
                                          _%result44618%_
                                          gx#free-identifier=?)
                                  _%result44618%_
                                  (cons _%id44639%_ _%result44618%_))))
                        (_%loop44615%_
                         (foldl cons _%rest44638%_ _%mixin44641%_)
                         _%result44643%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest4461944627%_))
                  (let ((_%hd4462444648%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest4461944627%_)))
                        (_%tl4462544650%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest4461944627%_))))
                    (let* ((_%id44653%_ _%hd4462444648%_)
                           (_%rest44655%_ _%tl4462544650%_))
                      (_%K4462344645%_ _%rest44655%_ _%id44653%_)))
                  (_%else4462144635%_))))))
      (define gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__%
        (lambda (_%stx44594%_ _%is?44595%_)
          (if (gx#identifier? _%stx44594%_)
              (let ((_%e4459644598%_
                     (gx#syntax-local-value _%stx44594%_ false)))
                (if _%e4459644598%_
                    (let ((_%e44601%_ _%e4459644598%_))
                      (if (let ()
                            (declare (not safe))
                            (class-instance?
                             gerbil/core/contract~InterfaceInfo#interface-info::t
                             _%e44601%_))
                          (_%is?44595%_ _%e44601%_)
                          '#f))
                    '#f))
              '#f)))
      (define gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
        (lambda (_%stx44606%_)
          (let ((_%is?44608%_ true))
            (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__%
             _%stx44606%_
             _%is?44608%_))))
      (define gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?
        (lambda _g82522_
          (let ((_g82521_ (let () (declare (not safe)) (##length _g82522_))))
            (cond ((let () (declare (not safe)) (##fx= _g82521_ 1))
                   (apply gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                          _g82522_))
                  ((let () (declare (not safe)) (##fx= _g82521_ 2))
                   (apply gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__%
                          _g82522_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?
                    _g82522_)))))))))
