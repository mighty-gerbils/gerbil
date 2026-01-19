(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/contract~InterfaceInfo::timestamp 1768865818)
  (begin
    (define gerbil/core/contract~InterfaceInfo#_g92194_
      (##structure
       gx#syntax-quote::t
       'cast
       #f
       (gx#current-expander-context)
       '()))
    (define gerbil/core/contract~InterfaceInfo#_g92195_
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
           unchecked-implementation-methods)
         '()
         '#f))
      (define gerbil/core/contract~InterfaceInfo#interface-info?
        (make-class-predicate
         gerbil/core/contract~InterfaceInfo#interface-info::t))
      (define gerbil/core/contract~InterfaceInfo#make-interface-info
        (lambda _%$args48591%_
          (apply make-instance
                 gerbil/core/contract~InterfaceInfo#interface-info::t
                 _%$args48591%_)))
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
        (let* ((_%g4839648410%_
                (lambda (_%g4839748407%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4839748407%_)))
               (_%g4839548588%_
                (lambda (_%g4839748413%_)
                  (if (gx#stx-pair? _%g4839748413%_)
                      (let ((_%e4840048415%_ (gx#syntax-e _%g4839748413%_)))
                        (let ((_%hd4840148418%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4840048415%_)))
                              (_%tl4840248420%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4840048415%_))))
                          (if (gx#stx-pair? _%tl4840248420%_)
                              (let ((_%e4840348423%_
                                     (gx#syntax-e _%tl4840248420%_)))
                                (let ((_%hd4840448426%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4840348423%_)))
                                      (_%tl4840548428%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4840348423%_))))
                                  (if (gx#stx-null? _%tl4840548428%_)
                                      ((lambda (_%L48431%_ _%L48432%_)
                                         (lambda (_%self48446%_ _%stx48447%_)
                                           (let* ((_%__stx8619586196%_
                                                   _%stx48447%_)
                                                  (_%g4845048463%_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx8619586196%_))))
                                             (let ((_%__kont8619786198%_
                                                    (lambda (_%L48521%_)
                                                      (let* ((_%g4853248546%_
                                                              (lambda (_%g4853348543%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g4853348543%_)))
                     (_%g4853148582%_
                      (lambda (_%g4853348549%_)
                        (if (gx#stx-pair? _%g4853348549%_)
                            (let ((_%e4853648551%_
                                   (gx#syntax-e _%g4853348549%_)))
                              (let ((_%hd4853748554%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4853648551%_)))
                                    (_%tl4853848556%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4853648551%_))))
                                (if (gx#stx-pair? _%tl4853848556%_)
                                    (let ((_%e4853948559%_
                                           (gx#syntax-e _%tl4853848556%_)))
                                      (let ((_%hd4854048562%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4853948559%_)))
                                            (_%tl4854148564%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4853948559%_))))
                                        (if (gx#stx-null? _%tl4854148564%_)
                                            ((lambda (_%L48567%_ _%L48568%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '$obj)
                         (cons _%L48521%_ '()))
                   (cons (cons (gx#datum->syntax '#f 'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@type)
                                           (cons _%L48568%_ '()))
                                     (cons (cons (gx#datum->syntax '#f 'if)
                                                 (cons (cons _%L48431%_
                                                             (cons _%L48568%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f '$obj) '())))
               (cons (gx#datum->syntax '#f '$obj)
                     (cons (cons _%L48432%_
                                 (cons _%L48567%_
                                       (cons (gx#datum->syntax '#f '$obj)
                                             '())))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd4854048562%_
                                             _%hd4853748554%_)
                                            (_%g4853248546%_
                                             _%g4853348549%_))))
                                    (_%g4853248546%_ _%g4853348549%_))))
                            (_%g4853248546%_ _%g4853348549%_)))))
                (_%g4853148582%_
                 (list (let ((__obj92113 _%self48446%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj92113
                                'gerbil.core#runtime-type-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj92113
                                '3
                                '#f
                                '#f))
                             (class-slot-ref
                              gerbil/core/mop~MOP-2#runtime-type-info::t
                              __obj92113
                              'type-descriptor)))
                       (let ((__obj92114 _%self48446%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj92114
                                'gerbil/core/contract~InterfaceInfo#interface-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj92114
                                '8
                                '#f
                                '#f))
                             (class-slot-ref
                              gerbil/core/contract~InterfaceInfo#interface-info::t
                              __obj92114
                              'interface-descriptor))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont8619986200%_
                                                    (lambda ()
                                                      (let* ((_%g4847048477%_
                                                              (lambda (_%g4847148474%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g4847148474%_)))
                     (_%g4846948497%_
                      (lambda (_%g4847148480%_)
                        ((lambda (_%L48482%_) _%L48482%_) _%g4847148480%_))))
                (_%g4846948497%_
                 (let ((__obj92115 _%self48446%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-direct-instance-of?
                          __obj92115
                          'gerbil/core/contract~InterfaceInfo#interface-info::t))
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref __obj92115 '8 '#f '#f))
                       (class-slot-ref
                        gerbil/core/contract~InterfaceInfo#interface-info::t
                        __obj92115
                        'interface-descriptor))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%g4844948500%_
                                                      (lambda ()
                                                        (if (gx#identifier?
                                                             _%stx48447%_)
                                                            (_%__kont8619986200%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_%g4845048463%_))))))
                                                 (if (gx#stx-pair?
                                                      _%__stx8619586196%_)
                                                     (let ((_%e4845348505%_
                                                            (gx#syntax-e
                                                             _%__stx8619586196%_)))
                                                       (let ((_%tl4845548510%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e4845348505%_)))
                     (_%hd4845448508%_
                      (let () (declare (not safe)) (##car _%e4845348505%_))))
                 (if (gx#stx-pair? _%tl4845548510%_)
                     (let ((_%e4845648513%_ (gx#syntax-e _%tl4845548510%_)))
                       (let ((_%tl4845848518%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4845648513%_)))
                             (_%hd4845748516%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4845648513%_))))
                         (if (gx#stx-null? _%tl4845848518%_)
                             (_%__kont8619786198%_ _%hd4845748516%_)
                             (let () (declare (not safe)) (_%g4844948500%_)))))
                     (let () (declare (not safe)) (_%g4844948500%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g4844948500%_))))))))
                                       _%hd4840448426%_
                                       _%hd4840148418%_)
                                      (_%g4839648410%_ _%g4839748413%_))))
                              (_%g4839648410%_ _%g4839748413%_))))
                      (_%g4839648410%_ _%g4839748413%_)))))
          (_%g4839548588%_
           (list gerbil/core/contract~InterfaceInfo#_g92194_
                 gerbil/core/contract~InterfaceInfo#_g92195_))))
      (bind-method!
       gerbil/core/contract~InterfaceInfo#interface-info::t
       'apply-macro-expander
       gerbil/core/contract~InterfaceInfo#interface-info::apply-macro-expander
       '#f)
      (define gerbil/core/contract~InterfaceInfo#interface-identifier->precedence-list
        (lambda (_%id48272%_)
          (cons _%id48272%_
                (let ((__obj92116 (gx#syntax-local-value _%id48272%_)))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj92116
                         'gerbil/core/contract~InterfaceInfo#interface-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj92116 '7 '#f '#f))
                      (class-slot-ref
                       gerbil/core/contract~InterfaceInfo#interface-info::t
                       __obj92116
                       'interface-precedence-list))))))
      (define gerbil/core/contract~InterfaceInfo#interface-mixin->precedence-list
        (lambda (_%lst48267%_)
          (let ((_g92196_
                 (c4-linearize
                  '()
                  _%lst48267%_
                  'get-precedence-list:
                  gerbil/core/contract~InterfaceInfo#interface-identifier->precedence-list
                  'struct:
                  false
                  'eq:
                  gx#free-identifier=?)))
            (begin
              (let ((_g92197_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g92196_)
                           (##values-length _g92196_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g92197_ 2)))
                    (error "Context expects 2 values" _g92197_)))
              (let ((_%linearized48269%_
                     (let () (declare (not safe)) (##values-ref _g92196_ 0)))
                    (_%_48270%_
                     (let () (declare (not safe)) (##values-ref _g92196_ 1))))
                _%linearized48269%_)))))
      (define gerbil/core/contract~InterfaceInfo#interface-info-method-signature
        (lambda (_%info48256%_ _%method48257%_)
          (let ((_%sig4825848262%_
                 (find (lambda (_%sig48260%_)
                         (eq? _%method48257%_ (car _%sig48260%_)))
                       (let ((__obj92117 _%info48256%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj92117
                                'gerbil/core/contract~InterfaceInfo#interface-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj92117
                                '6
                                '#f
                                '#f))
                             (class-slot-ref
                              gerbil/core/contract~InterfaceInfo#interface-info::t
                              __obj92117
                              'interface-methods))))))
            (if _%sig4825848262%_
                (let ((_%sig48265%_ _%sig4825848262%_)) (cdr _%sig48265%_))
                '#f))))
      (define gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__%
        (lambda (_%stx48237%_ _%is?48238%_)
          (if (gx#identifier? _%stx48237%_)
              (let ((_%e4823948241%_
                     (gx#syntax-local-value _%stx48237%_ false)))
                (if _%e4823948241%_
                    (let ((_%e48244%_ _%e4823948241%_))
                      (if (let ()
                            (declare (not safe))
                            (class-instance?
                             gerbil/core/contract~InterfaceInfo#interface-info::t
                             _%e48244%_))
                          (_%is?48238%_ _%e48244%_)
                          '#f))
                    '#f))
              '#f)))
      (define gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
        (lambda (_%stx48249%_)
          (let ((_%is?48251%_ true))
            (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__%
             _%stx48249%_
             _%is?48251%_))))
      (define gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?
        (lambda _g92198_
          (let ((_g92199_ (let () (declare (not safe)) (##length _g92198_))))
            (cond ((let () (declare (not safe)) (##fx= _g92199_ 1))
                   (apply gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                          _g92198_))
                  ((let () (declare (not safe)) (##fx= _g92199_ 2))
                   (apply gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__%
                          _g92198_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?
                    _g92198_)))))))))
