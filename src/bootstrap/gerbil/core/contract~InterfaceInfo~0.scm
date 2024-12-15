(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/contract~InterfaceInfo::timestamp 1734280441)
  (begin
    (define gerbil/core/contract~InterfaceInfo#_g84795_
      (##structure
       gx#syntax-quote::t
       'cast
       #f
       (gx#current-expander-context)
       '()))
    (define gerbil/core/contract~InterfaceInfo#_g84796_
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
         '(name namespace
                interface-mixin
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
        (lambda _%$args45053%_
          (apply make-instance
                 gerbil/core/contract~InterfaceInfo#interface-info::t
                 _%$args45053%_)))
      (define gerbil/core/contract~InterfaceInfo#interface-info-name
        (make-class-slot-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'name))
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
        (let* ((_%g4484244856%_
                (lambda (_%g4484344853%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4484344853%_)))
               (_%g4484145050%_
                (lambda (_%g4484344859%_)
                  (if (gx#stx-pair? _%g4484344859%_)
                      (let ((_%e4484644861%_ (gx#syntax-e _%g4484344859%_)))
                        (let ((_%hd4484744864%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4484644861%_)))
                              (_%tl4484844866%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4484644861%_))))
                          (if (gx#stx-pair? _%tl4484844866%_)
                              (let ((_%e4484944869%_
                                     (gx#syntax-e _%tl4484844866%_)))
                                (let ((_%hd4485044872%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4484944869%_)))
                                      (_%tl4485144874%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4484944869%_))))
                                  (if (gx#stx-null? _%tl4485144874%_)
                                      ((lambda (_%L44877%_ _%L44878%_)
                                         (lambda (_%self44892%_ _%stx44893%_)
                                           (let* ((_%__stx7913979140%_
                                                   _%stx44893%_)
                                                  (_%g4489644909%_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx7913979140%_))))
                                             (let ((_%__kont7914179142%_
                                                    (lambda (_%L44967%_)
                                                      (let* ((_%g4497844996%_
                                                              (lambda (_%g4497944993%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g4497944993%_)))
                     (_%g4497745044%_
                      (lambda (_%g4497944999%_)
                        (if (gx#stx-pair? _%g4497944999%_)
                            (let ((_%e4498345001%_
                                   (gx#syntax-e _%g4497944999%_)))
                              (let ((_%hd4498445004%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4498345001%_)))
                                    (_%tl4498545006%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4498345001%_))))
                                (if (gx#stx-pair? _%tl4498545006%_)
                                    (let ((_%e4498645009%_
                                           (gx#syntax-e _%tl4498545006%_)))
                                      (let ((_%hd4498745012%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4498645009%_)))
                                            (_%tl4498845014%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4498645009%_))))
                                        (if (gx#stx-pair? _%tl4498845014%_)
                                            (let ((_%e4498945017%_
                                                   (gx#syntax-e
                                                    _%tl4498845014%_)))
                                              (let ((_%hd4499045020%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4498945017%_)))
                                                    (_%tl4499145022%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4498945017%_))))
                                                (if (gx#stx-null?
                                                     _%tl4499145022%_)
                                                    ((lambda (_%L45025%_
                                                              _%L45026%_
                                                              _%L45027%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '$obj)
                                 (cons _%L44967%_ '()))
                           (cons (cons (gx#datum->syntax '#f 'begin-annotation)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '@type)
                                                   (cons _%L45025%_ '()))
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'if)
                                                         (cons (cons _%L44877%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%L45027%_
                                   (cons (gx#datum->syntax '#f '$obj) '())))
                       (cons (gx#datum->syntax '#f '$obj)
                             (cons (cons _%L44878%_
                                         (cons _%L45026%_
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      '$obj)
                                                     '())))
                                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd4499045020%_
                                                     _%hd4498745012%_
                                                     _%hd4498445004%_)
                                                    (_%g4497844996%_
                                                     _%g4497944999%_))))
                                            (_%g4497844996%_
                                             _%g4497944999%_))))
                                    (_%g4497844996%_ _%g4497944999%_))))
                            (_%g4497844996%_ _%g4497944999%_)))))
                (_%g4497745044%_
                 (list (let ((__obj84717 _%self44892%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj84717
                                'gerbil/core/contract~InterfaceInfo#interface-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj84717
                                '5
                                '#f
                                '#f))
                             (class-slot-ref
                              gerbil/core/contract~InterfaceInfo#interface-info::t
                              __obj84717
                              'instance-type)))
                       (let ((__obj84718 _%self44892%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj84718
                                'gerbil/core/contract~InterfaceInfo#interface-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj84718
                                '6
                                '#f
                                '#f))
                             (class-slot-ref
                              gerbil/core/contract~InterfaceInfo#interface-info::t
                              __obj84718
                              'interface-descriptor)))
                       (let ((__obj84719 _%self44892%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj84719
                                'gerbil/core/contract~InterfaceInfo#interface-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj84719
                                '5
                                '#f
                                '#f))
                             (class-slot-ref
                              gerbil/core/contract~InterfaceInfo#interface-info::t
                              __obj84719
                              'instance-type))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont7914379144%_
                                                    (lambda ()
                                                      (let* ((_%g4491644923%_
                                                              (lambda (_%g4491744920%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g4491744920%_)))
                     (_%g4491544943%_
                      (lambda (_%g4491744926%_)
                        ((lambda (_%L44928%_) _%L44928%_) _%g4491744926%_))))
                (_%g4491544943%_
                 (let ((__obj84720 _%self44892%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-direct-instance-of?
                          __obj84720
                          'gerbil/core/contract~InterfaceInfo#interface-info::t))
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref __obj84720 '6 '#f '#f))
                       (class-slot-ref
                        gerbil/core/contract~InterfaceInfo#interface-info::t
                        __obj84720
                        'interface-descriptor))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%g4489544946%_
                                                      (lambda ()
                                                        (if (gx#identifier?
                                                             _%stx44893%_)
                                                            (_%__kont7914379144%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_%g4489644909%_))))))
                                                 (if (gx#stx-pair?
                                                      _%__stx7913979140%_)
                                                     (let ((_%e4489944951%_
                                                            (gx#syntax-e
                                                             _%__stx7913979140%_)))
                                                       (let ((_%tl4490144956%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e4489944951%_)))
                     (_%hd4490044954%_
                      (let () (declare (not safe)) (##car _%e4489944951%_))))
                 (if (gx#stx-pair? _%tl4490144956%_)
                     (let ((_%e4490244959%_ (gx#syntax-e _%tl4490144956%_)))
                       (let ((_%tl4490444964%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4490244959%_)))
                             (_%hd4490344962%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4490244959%_))))
                         (if (gx#stx-null? _%tl4490444964%_)
                             (_%__kont7914179142%_ _%hd4490344962%_)
                             (let () (declare (not safe)) (_%g4489544946%_)))))
                     (let () (declare (not safe)) (_%g4489544946%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g4489544946%_))))))))
                                       _%hd4485044872%_
                                       _%hd4484744864%_)
                                      (_%g4484244856%_ _%g4484344859%_))))
                              (_%g4484244856%_ _%g4484344859%_))))
                      (_%g4484244856%_ _%g4484344859%_)))))
          (_%g4484145050%_
           (list gerbil/core/contract~InterfaceInfo#_g84795_
                 gerbil/core/contract~InterfaceInfo#_g84796_))))
      (bind-method!
       gerbil/core/contract~InterfaceInfo#interface-info::t
       'apply-macro-expander
       gerbil/core/contract~InterfaceInfo#interface-info::apply-macro-expander
       '#f)
      (define gerbil/core/contract~InterfaceInfo#interface-identifier->precedence-list
        (lambda (_%id44717%_)
          (cons _%id44717%_
                (gerbil/core/contract~InterfaceInfo#interface-info->precedence-list
                 (gx#syntax-local-value _%id44717%_)))))
      (define gerbil/core/contract~InterfaceInfo#interface-info->precedence-list
        (lambda (_%info44715%_)
          (gerbil/core/contract~InterfaceInfo#interface-mixin->precedence-list
           (let ((__obj84721 _%info44715%_))
             (if (let ()
                   (declare (not safe))
                   (##structure-direct-instance-of?
                    __obj84721
                    'gerbil/core/contract~InterfaceInfo#interface-info::t))
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref __obj84721 '3 '#f '#f))
                 (class-slot-ref
                  gerbil/core/contract~InterfaceInfo#interface-info::t
                  __obj84721
                  'interface-mixin))))))
      (define gerbil/core/contract~InterfaceInfo#interface-mixin->precedence-list
        (lambda (_%lst44710%_)
          (let ((_g84797_
                 (c4-linearize
                  '()
                  _%lst44710%_
                  'get-precedence-list:
                  gerbil/core/contract~InterfaceInfo#interface-identifier->precedence-list
                  'struct:
                  false
                  'eq:
                  gx#free-identifier=?)))
            (begin
              (let ((_g84798_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g84797_)
                           (##values-length _g84797_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g84798_ 2)))
                    (error "Context expects 2 values" _g84798_)))
              (let ((_%linearized44712%_
                     (let () (declare (not safe)) (##values-ref _g84797_ 0)))
                    (_%_44713%_
                     (let () (declare (not safe)) (##values-ref _g84797_ 1))))
                _%linearized44712%_)))))
      (define gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__%
        (lambda (_%stx44691%_ _%is?44692%_)
          (if (gx#identifier? _%stx44691%_)
              (let ((_%e4469344695%_
                     (gx#syntax-local-value _%stx44691%_ false)))
                (if _%e4469344695%_
                    (let ((_%e44698%_ _%e4469344695%_))
                      (if (let ()
                            (declare (not safe))
                            (class-instance?
                             gerbil/core/contract~InterfaceInfo#interface-info::t
                             _%e44698%_))
                          (_%is?44692%_ _%e44698%_)
                          '#f))
                    '#f))
              '#f)))
      (define gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
        (lambda (_%stx44703%_)
          (let ((_%is?44705%_ true))
            (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__%
             _%stx44703%_
             _%is?44705%_))))
      (define gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?
        (lambda _g84800_
          (let ((_g84799_ (let () (declare (not safe)) (##length _g84800_))))
            (cond ((let () (declare (not safe)) (##fx= _g84799_ 1))
                   (apply gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                          _g84800_))
                  ((let () (declare (not safe)) (##fx= _g84799_ 2))
                   (apply gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__%
                          _g84800_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?
                    _g84800_)))))))))
