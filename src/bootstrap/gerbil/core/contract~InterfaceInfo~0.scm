(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/contract~InterfaceInfo::timestamp 1734278440)
  (begin
    (define gerbil/core/contract~InterfaceInfo#_g84801_
      (##structure
       gx#syntax-quote::t
       'cast
       #f
       (gx#current-expander-context)
       '()))
    (define gerbil/core/contract~InterfaceInfo#_g84802_
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
        (lambda _%$args45057%_
          (apply make-instance
                 gerbil/core/contract~InterfaceInfo#interface-info::t
                 _%$args45057%_)))
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
        (let* ((_%g4484644860%_
                (lambda (_%g4484744857%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4484744857%_)))
               (_%g4484545054%_
                (lambda (_%g4484744863%_)
                  (if (gx#stx-pair? _%g4484744863%_)
                      (let ((_%e4485044865%_ (gx#syntax-e _%g4484744863%_)))
                        (let ((_%hd4485144868%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4485044865%_)))
                              (_%tl4485244870%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4485044865%_))))
                          (if (gx#stx-pair? _%tl4485244870%_)
                              (let ((_%e4485344873%_
                                     (gx#syntax-e _%tl4485244870%_)))
                                (let ((_%hd4485444876%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4485344873%_)))
                                      (_%tl4485544878%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4485344873%_))))
                                  (if (gx#stx-null? _%tl4485544878%_)
                                      ((lambda (_%L44881%_ _%L44882%_)
                                         (lambda (_%self44896%_ _%stx44897%_)
                                           (let* ((_%__stx7914379144%_
                                                   _%stx44897%_)
                                                  (_%g4490044913%_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx7914379144%_))))
                                             (let ((_%__kont7914579146%_
                                                    (lambda (_%L44971%_)
                                                      (let* ((_%g4498245000%_
                                                              (lambda (_%g4498344997%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g4498344997%_)))
                     (_%g4498145048%_
                      (lambda (_%g4498345003%_)
                        (if (gx#stx-pair? _%g4498345003%_)
                            (let ((_%e4498745005%_
                                   (gx#syntax-e _%g4498345003%_)))
                              (let ((_%hd4498845008%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4498745005%_)))
                                    (_%tl4498945010%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4498745005%_))))
                                (if (gx#stx-pair? _%tl4498945010%_)
                                    (let ((_%e4499045013%_
                                           (gx#syntax-e _%tl4498945010%_)))
                                      (let ((_%hd4499145016%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4499045013%_)))
                                            (_%tl4499245018%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4499045013%_))))
                                        (if (gx#stx-pair? _%tl4499245018%_)
                                            (let ((_%e4499345021%_
                                                   (gx#syntax-e
                                                    _%tl4499245018%_)))
                                              (let ((_%hd4499445024%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4499345021%_)))
                                                    (_%tl4499545026%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4499345021%_))))
                                                (if (gx#stx-null?
                                                     _%tl4499545026%_)
                                                    ((lambda (_%L45029%_
                                                              _%L45030%_
                                                              _%L45031%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '$obj)
                                 (cons _%L44971%_ '()))
                           (cons (cons (gx#datum->syntax '#f 'begin-annotation)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '@type)
                                                   (cons _%L45029%_ '()))
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'if)
                                                         (cons (cons _%L44881%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%L45031%_
                                   (cons (gx#datum->syntax '#f '$obj) '())))
                       (cons (gx#datum->syntax '#f '$obj)
                             (cons (cons _%L44882%_
                                         (cons _%L45030%_
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      '$obj)
                                                     '())))
                                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd4499445024%_
                                                     _%hd4499145016%_
                                                     _%hd4498845008%_)
                                                    (_%g4498245000%_
                                                     _%g4498345003%_))))
                                            (_%g4498245000%_
                                             _%g4498345003%_))))
                                    (_%g4498245000%_ _%g4498345003%_))))
                            (_%g4498245000%_ _%g4498345003%_)))))
                (_%g4498145048%_
                 (list (let ((__obj84721 _%self44896%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj84721
                                'gerbil/core/contract~InterfaceInfo#interface-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj84721
                                '5
                                '#f
                                '#f))
                             (class-slot-ref
                              gerbil/core/contract~InterfaceInfo#interface-info::t
                              __obj84721
                              'instance-type)))
                       (let ((__obj84722 _%self44896%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj84722
                                'gerbil/core/contract~InterfaceInfo#interface-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj84722
                                '6
                                '#f
                                '#f))
                             (class-slot-ref
                              gerbil/core/contract~InterfaceInfo#interface-info::t
                              __obj84722
                              'interface-descriptor)))
                       (let ((__obj84723 _%self44896%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj84723
                                'gerbil/core/contract~InterfaceInfo#interface-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj84723
                                '5
                                '#f
                                '#f))
                             (class-slot-ref
                              gerbil/core/contract~InterfaceInfo#interface-info::t
                              __obj84723
                              'instance-type))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont7914779148%_
                                                    (lambda ()
                                                      (let* ((_%g4492044927%_
                                                              (lambda (_%g4492144924%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g4492144924%_)))
                     (_%g4491944947%_
                      (lambda (_%g4492144930%_)
                        ((lambda (_%L44932%_) _%L44932%_) _%g4492144930%_))))
                (_%g4491944947%_
                 (let ((__obj84724 _%self44896%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-direct-instance-of?
                          __obj84724
                          'gerbil/core/contract~InterfaceInfo#interface-info::t))
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref __obj84724 '6 '#f '#f))
                       (class-slot-ref
                        gerbil/core/contract~InterfaceInfo#interface-info::t
                        __obj84724
                        'interface-descriptor))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%g4489944950%_
                                                      (lambda ()
                                                        (if (gx#identifier?
                                                             _%stx44897%_)
                                                            (_%__kont7914779148%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_%g4490044913%_))))))
                                                 (if (gx#stx-pair?
                                                      _%__stx7914379144%_)
                                                     (let ((_%e4490344955%_
                                                            (gx#syntax-e
                                                             _%__stx7914379144%_)))
                                                       (let ((_%tl4490544960%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e4490344955%_)))
                     (_%hd4490444958%_
                      (let () (declare (not safe)) (##car _%e4490344955%_))))
                 (if (gx#stx-pair? _%tl4490544960%_)
                     (let ((_%e4490644963%_ (gx#syntax-e _%tl4490544960%_)))
                       (let ((_%tl4490844968%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4490644963%_)))
                             (_%hd4490744966%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4490644963%_))))
                         (if (gx#stx-null? _%tl4490844968%_)
                             (_%__kont7914579146%_ _%hd4490744966%_)
                             (let () (declare (not safe)) (_%g4489944950%_)))))
                     (let () (declare (not safe)) (_%g4489944950%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g4489944950%_))))))))
                                       _%hd4485444876%_
                                       _%hd4485144868%_)
                                      (_%g4484644860%_ _%g4484744863%_))))
                              (_%g4484644860%_ _%g4484744863%_))))
                      (_%g4484644860%_ _%g4484744863%_)))))
          (_%g4484545054%_
           (list gerbil/core/contract~InterfaceInfo#_g84801_
                 gerbil/core/contract~InterfaceInfo#_g84802_))))
      (bind-method!
       gerbil/core/contract~InterfaceInfo#interface-info::t
       'apply-macro-expander
       gerbil/core/contract~InterfaceInfo#interface-info::apply-macro-expander
       '#f)
      (define gerbil/core/contract~InterfaceInfo#interface-info-flatten-mixin
        (lambda (_%info44721%_)
          (gerbil/core/contract~InterfaceInfo#interface-flatten-mixin
           (let ((__obj84725 _%info44721%_))
             (if (let ()
                   (declare (not safe))
                   (##structure-direct-instance-of?
                    __obj84725
                    'gerbil/core/contract~InterfaceInfo#interface-info::t))
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref __obj84725 '3 '#f '#f))
                 (class-slot-ref
                  gerbil/core/contract~InterfaceInfo#interface-info::t
                  __obj84725
                  'interface-mixin))))))
      (define gerbil/core/contract~InterfaceInfo#interface-flatten-mixin
        (lambda (_%mixin44710%_)
          (let ((_g84803_
                 (c4-linearize
                  '()
                  _%mixin44710%_
                  'get-precedence-list:
                  (lambda (_%id44712%_)
                    (cons _%id44712%_
                          (gerbil/core/contract~InterfaceInfo#interface-info-flatten-mixin
                           (gx#syntax-local-value _%id44712%_))))
                  'struct:
                  false
                  'eq:
                  gx#free-identifier=?
                  'get-name:
                  (lambda (_%id44714%_)
                    (let ((_%info44716%_ (gx#syntax-local-value _%id44714%_)))
                      (make-symbol
                       (let ((__obj84726 _%info44716%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj84726
                                'gerbil/core/contract~InterfaceInfo#interface-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj84726
                                '2
                                '#f
                                '#f))
                             (class-slot-ref
                              gerbil/core/contract~InterfaceInfo#interface-info::t
                              __obj84726
                              'namespace)))
                       '"::"
                       (let ((__obj84727 _%info44716%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj84727
                                'gerbil/core/contract~InterfaceInfo#interface-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj84727
                                '1
                                '#f
                                '#f))
                             (class-slot-ref
                              gerbil/core/contract~InterfaceInfo#interface-info::t
                              __obj84727
                              'name)))))))))
            (begin
              (let ((_g84804_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g84803_)
                           (##values-length _g84803_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g84804_ 2)))
                    (error "Context expects 2 values" _g84804_)))
              (let ((_%linearized44718%_
                     (let () (declare (not safe)) (##values-ref _g84803_ 0)))
                    (_%_44719%_
                     (let () (declare (not safe)) (##values-ref _g84803_ 1))))
                _%linearized44718%_)))))
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
        (lambda _g84806_
          (let ((_g84805_ (let () (declare (not safe)) (##length _g84806_))))
            (cond ((let () (declare (not safe)) (##fx= _g84805_ 1))
                   (apply gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                          _g84806_))
                  ((let () (declare (not safe)) (##fx= _g84805_ 2))
                   (apply gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__%
                          _g84806_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?
                    _g84806_)))))))))
