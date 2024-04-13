(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/contract~InterfaceInfo::timestamp 1713044311)
  (begin
    (define gerbil/core/contract~InterfaceInfo#_g82517_
      (##structure
       gx#syntax-quote::t
       'cast
       #f
       (gx#current-expander-context)
       '()))
    (define gerbil/core/contract~InterfaceInfo#_g82518_
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
        (lambda _%$args44989%_
          (apply make-instance
                 gerbil/core/contract~InterfaceInfo#interface-info::t
                 _%$args44989%_)))
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
        (let* ((_%g4477844792%_
                (lambda (_%g4477944789%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4477944789%_)))
               (_%g4477744986%_
                (lambda (_%g4477944795%_)
                  (if (gx#stx-pair? _%g4477944795%_)
                      (let ((_%e4478244797%_ (gx#syntax-e _%g4477944795%_)))
                        (let ((_%hd4478344800%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4478244797%_)))
                              (_%tl4478444802%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4478244797%_))))
                          (if (gx#stx-pair? _%tl4478444802%_)
                              (let ((_%e4478544805%_
                                     (gx#syntax-e _%tl4478444802%_)))
                                (let ((_%hd4478644808%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4478544805%_)))
                                      (_%tl4478744810%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4478544805%_))))
                                  (if (gx#stx-null? _%tl4478744810%_)
                                      ((lambda (_%L44813%_ _%L44814%_)
                                         (lambda (_%self44828%_ _%stx44829%_)
                                           (let* ((_%__stx7713477135%_
                                                   _%stx44829%_)
                                                  (_%g4483244845%_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx7713477135%_))))
                                             (let ((_%__kont7713677137%_
                                                    (lambda (_%L44903%_)
                                                      (let* ((_%g4491444932%_
                                                              (lambda (_%g4491544929%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g4491544929%_)))
                     (_%g4491344980%_
                      (lambda (_%g4491544935%_)
                        (if (gx#stx-pair? _%g4491544935%_)
                            (let ((_%e4491944937%_
                                   (gx#syntax-e _%g4491544935%_)))
                              (let ((_%hd4492044940%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4491944937%_)))
                                    (_%tl4492144942%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4491944937%_))))
                                (if (gx#stx-pair? _%tl4492144942%_)
                                    (let ((_%e4492244945%_
                                           (gx#syntax-e _%tl4492144942%_)))
                                      (let ((_%hd4492344948%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4492244945%_)))
                                            (_%tl4492444950%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4492244945%_))))
                                        (if (gx#stx-pair? _%tl4492444950%_)
                                            (let ((_%e4492544953%_
                                                   (gx#syntax-e
                                                    _%tl4492444950%_)))
                                              (let ((_%hd4492644956%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4492544953%_)))
                                                    (_%tl4492744958%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4492544953%_))))
                                                (if (gx#stx-null?
                                                     _%tl4492744958%_)
                                                    ((lambda (_%L44961%_
                                                              _%L44962%_
                                                              _%L44963%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '$obj)
                                 (cons _%L44903%_ '()))
                           (cons (cons (gx#datum->syntax '#f 'begin-annotation)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '@type)
                                                   (cons _%L44961%_ '()))
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'if)
                                                         (cons (cons _%L44813%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%L44963%_
                                   (cons (gx#datum->syntax '#f '$obj) '())))
                       (cons (gx#datum->syntax '#f '$obj)
                             (cons (cons _%L44814%_
                                         (cons _%L44962%_
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      '$obj)
                                                     '())))
                                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd4492644956%_
                                                     _%hd4492344948%_
                                                     _%hd4492044940%_)
                                                    (_%g4491444932%_
                                                     _%g4491544935%_))))
                                            (_%g4491444932%_
                                             _%g4491544935%_))))
                                    (_%g4491444932%_ _%g4491544935%_))))
                            (_%g4491444932%_ _%g4491544935%_)))))
                (_%g4491344980%_
                 (list (let ((__obj82442 _%self44828%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj82442
                                'gerbil/core/contract~InterfaceInfo#interface-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj82442
                                '4
                                '#f
                                '#f))
                             (class-slot-ref
                              gerbil/core/contract~InterfaceInfo#interface-info::t
                              __obj82442
                              'instance-type)))
                       (let ((__obj82443 _%self44828%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj82443
                                'gerbil/core/contract~InterfaceInfo#interface-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj82443
                                '5
                                '#f
                                '#f))
                             (class-slot-ref
                              gerbil/core/contract~InterfaceInfo#interface-info::t
                              __obj82443
                              'interface-descriptor)))
                       (let ((__obj82444 _%self44828%_))
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
                              'instance-type))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont7713877139%_
                                                    (lambda ()
                                                      (let* ((_%g4485244859%_
                                                              (lambda (_%g4485344856%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g4485344856%_)))
                     (_%g4485144879%_
                      (lambda (_%g4485344862%_)
                        ((lambda (_%L44864%_) _%L44864%_) _%g4485344862%_))))
                (_%g4485144879%_
                 (let ((__obj82445 _%self44828%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-direct-instance-of?
                          __obj82445
                          'gerbil/core/contract~InterfaceInfo#interface-info::t))
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref __obj82445 '5 '#f '#f))
                       (class-slot-ref
                        gerbil/core/contract~InterfaceInfo#interface-info::t
                        __obj82445
                        'interface-descriptor))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%g4483144882%_
                                                      (lambda ()
                                                        (if (gx#identifier?
                                                             _%stx44829%_)
                                                            (_%__kont7713877139%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_%g4483244845%_))))))
                                                 (if (gx#stx-pair?
                                                      _%__stx7713477135%_)
                                                     (let ((_%e4483544887%_
                                                            (gx#syntax-e
                                                             _%__stx7713477135%_)))
                                                       (let ((_%tl4483744892%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e4483544887%_)))
                     (_%hd4483644890%_
                      (let () (declare (not safe)) (##car _%e4483544887%_))))
                 (if (gx#stx-pair? _%tl4483744892%_)
                     (let ((_%e4483844895%_ (gx#syntax-e _%tl4483744892%_)))
                       (let ((_%tl4484044900%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4483844895%_)))
                             (_%hd4483944898%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4483844895%_))))
                         (if (gx#stx-null? _%tl4484044900%_)
                             (_%__kont7713677137%_ _%hd4483944898%_)
                             (let () (declare (not safe)) (_%g4483144882%_)))))
                     (let () (declare (not safe)) (_%g4483144882%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g4483144882%_))))))))
                                       _%hd4478644808%_
                                       _%hd4478344800%_)
                                      (_%g4477844792%_ _%g4477944795%_))))
                              (_%g4477844792%_ _%g4477944795%_))))
                      (_%g4477844792%_ _%g4477944795%_)))))
          (_%g4477744986%_
           (list gerbil/core/contract~InterfaceInfo#_g82517_
                 gerbil/core/contract~InterfaceInfo#_g82518_))))
      (bind-method!
       gerbil/core/contract~InterfaceInfo#interface-info::t
       'apply-macro-expander
       gerbil/core/contract~InterfaceInfo#interface-info::apply-macro-expander
       '#f)
      (define gerbil/core/contract~InterfaceInfo#interface-info-flatten-mixin
        (lambda (_%info44611%_)
          (let _%loop44613%_ ((_%rest44615%_
                               (let ((__obj82447 _%info44611%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-direct-instance-of?
                                        __obj82447
                                        'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        __obj82447
                                        '2
                                        '#f
                                        '#f))
                                     (class-slot-ref
                                      gerbil/core/contract~InterfaceInfo#interface-info::t
                                      __obj82447
                                      'interface-mixin))))
                              (_%result44616%_ '()))
            (let* ((_%rest4461744625%_ _%rest44615%_)
                   (_%else4461944633%_ (lambda () _%result44616%_))
                   (_%K4462144643%_
                    (lambda (_%rest44636%_ _%id44637%_)
                      (let* ((_%mixin44639%_
                              (let ((__obj82446
                                     (gx#syntax-local-value _%id44637%_)))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-direct-instance-of?
                                       __obj82446
                                       'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __obj82446
                                       '2
                                       '#f
                                       '#f))
                                    (class-slot-ref
                                     gerbil/core/contract~InterfaceInfo#interface-info::t
                                     __obj82446
                                     'interface-mixin))))
                             (_%result44641%_
                              (if (member _%id44637%_
                                          _%result44616%_
                                          gx#free-identifier=?)
                                  _%result44616%_
                                  (cons _%id44637%_ _%result44616%_))))
                        (_%loop44613%_
                         (foldl cons _%rest44636%_ _%mixin44639%_)
                         _%result44641%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest4461744625%_))
                  (let ((_%hd4462244646%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest4461744625%_)))
                        (_%tl4462344648%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest4461744625%_))))
                    (let* ((_%id44651%_ _%hd4462244646%_)
                           (_%rest44653%_ _%tl4462344648%_))
                      (_%K4462144643%_ _%rest44653%_ _%id44651%_)))
                  (_%else4461944633%_))))))
      (define gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__%
        (lambda (_%stx44592%_ _%is?44593%_)
          (if (gx#identifier? _%stx44592%_)
              (let ((_%e4459444596%_
                     (gx#syntax-local-value _%stx44592%_ false)))
                (if _%e4459444596%_
                    (let ((_%e44599%_ _%e4459444596%_))
                      (if (let ()
                            (declare (not safe))
                            (class-instance?
                             gerbil/core/contract~InterfaceInfo#interface-info::t
                             _%e44599%_))
                          (_%is?44593%_ _%e44599%_)
                          '#f))
                    '#f))
              '#f)))
      (define gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
        (lambda (_%stx44604%_)
          (let ((_%is?44606%_ true))
            (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__%
             _%stx44604%_
             _%is?44606%_))))
      (define gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?
        (lambda _g82520_
          (let ((_g82519_ (let () (declare (not safe)) (##length _g82520_))))
            (cond ((let () (declare (not safe)) (##fx= _g82519_ 1))
                   (apply gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                          _g82520_))
                  ((let () (declare (not safe)) (##fx= _g82519_ 2))
                   (apply gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__%
                          _g82520_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?
                    _g82520_)))))))))
