(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/contract~InterfaceInfo::timestamp 1712993611)
  (begin
    (define gerbil/core/contract~InterfaceInfo#_g82286_
      (##structure
       gx#syntax-quote::t
       'cast
       #f
       (gx#current-expander-context)
       '()))
    (define gerbil/core/contract~InterfaceInfo#_g82287_
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
        (lambda _%$args45070%_
          (apply make-instance
                 gerbil/core/contract~InterfaceInfo#interface-info::t
                 _%$args45070%_)))
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
        (let* ((_%g4485944873%_
                (lambda (_%g4486044870%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4486044870%_)))
               (_%g4485845067%_
                (lambda (_%g4486044876%_)
                  (if (gx#stx-pair? _%g4486044876%_)
                      (let ((_%e4486344878%_ (gx#syntax-e _%g4486044876%_)))
                        (let ((_%hd4486444881%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4486344878%_)))
                              (_%tl4486544883%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4486344878%_))))
                          (if (gx#stx-pair? _%tl4486544883%_)
                              (let ((_%e4486644886%_
                                     (gx#syntax-e _%tl4486544883%_)))
                                (let ((_%hd4486744889%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4486644886%_)))
                                      (_%tl4486844891%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4486644886%_))))
                                  (if (gx#stx-null? _%tl4486844891%_)
                                      ((lambda (_%L44894%_ _%L44895%_)
                                         (lambda (_%self44909%_ _%stx44910%_)
                                           (let* ((_%__stx7696576966%_
                                                   _%stx44910%_)
                                                  (_%g4491344926%_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx7696576966%_))))
                                             (let ((_%__kont7696776968%_
                                                    (lambda (_%L44984%_)
                                                      (let* ((_%g4499545013%_
                                                              (lambda (_%g4499645010%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g4499645010%_)))
                     (_%g4499445061%_
                      (lambda (_%g4499645016%_)
                        (if (gx#stx-pair? _%g4499645016%_)
                            (let ((_%e4500045018%_
                                   (gx#syntax-e _%g4499645016%_)))
                              (let ((_%hd4500145021%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4500045018%_)))
                                    (_%tl4500245023%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4500045018%_))))
                                (if (gx#stx-pair? _%tl4500245023%_)
                                    (let ((_%e4500345026%_
                                           (gx#syntax-e _%tl4500245023%_)))
                                      (let ((_%hd4500445029%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4500345026%_)))
                                            (_%tl4500545031%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4500345026%_))))
                                        (if (gx#stx-pair? _%tl4500545031%_)
                                            (let ((_%e4500645034%_
                                                   (gx#syntax-e
                                                    _%tl4500545031%_)))
                                              (let ((_%hd4500745037%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4500645034%_)))
                                                    (_%tl4500845039%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4500645034%_))))
                                                (if (gx#stx-null?
                                                     _%tl4500845039%_)
                                                    ((lambda (_%L45042%_
                                                              _%L45043%_
                                                              _%L45044%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '$obj)
                                 (cons _%L44984%_ '()))
                           (cons (cons (gx#datum->syntax '#f 'begin-annotation)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '@type)
                                                   (cons _%L45042%_ '()))
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'if)
                                                         (cons (cons _%L44894%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%L45044%_
                                   (cons (gx#datum->syntax '#f '$obj) '())))
                       (cons (gx#datum->syntax '#f '$obj)
                             (cons (cons _%L44895%_
                                         (cons _%L45043%_
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      '$obj)
                                                     '())))
                                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd4500745037%_
                                                     _%hd4500445029%_
                                                     _%hd4500145021%_)
                                                    (_%g4499545013%_
                                                     _%g4499645016%_))))
                                            (_%g4499545013%_
                                             _%g4499645016%_))))
                                    (_%g4499545013%_ _%g4499645016%_))))
                            (_%g4499545013%_ _%g4499645016%_)))))
                (_%g4499445061%_
                 (list (let ((__obj82211 _%self44909%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj82211
                                'gerbil/core/contract~InterfaceInfo#interface-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj82211
                                '4
                                '#f
                                '#f))
                             (class-slot-ref
                              gerbil/core/contract~InterfaceInfo#interface-info::t
                              __obj82211
                              'instance-type)))
                       (let ((__obj82212 _%self44909%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj82212
                                'gerbil/core/contract~InterfaceInfo#interface-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj82212
                                '5
                                '#f
                                '#f))
                             (class-slot-ref
                              gerbil/core/contract~InterfaceInfo#interface-info::t
                              __obj82212
                              'interface-descriptor)))
                       (let ((__obj82213 _%self44909%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj82213
                                'gerbil/core/contract~InterfaceInfo#interface-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj82213
                                '4
                                '#f
                                '#f))
                             (class-slot-ref
                              gerbil/core/contract~InterfaceInfo#interface-info::t
                              __obj82213
                              'instance-type))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont7696976970%_
                                                    (lambda ()
                                                      (let* ((_%g4493344940%_
                                                              (lambda (_%g4493444937%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g4493444937%_)))
                     (_%g4493244960%_
                      (lambda (_%g4493444943%_)
                        ((lambda (_%L44945%_) _%L44945%_) _%g4493444943%_))))
                (_%g4493244960%_
                 (let ((__obj82214 _%self44909%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-direct-instance-of?
                          __obj82214
                          'gerbil/core/contract~InterfaceInfo#interface-info::t))
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref __obj82214 '5 '#f '#f))
                       (class-slot-ref
                        gerbil/core/contract~InterfaceInfo#interface-info::t
                        __obj82214
                        'interface-descriptor))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%g4491244963%_
                                                      (lambda ()
                                                        (if (gx#identifier?
                                                             _%stx44910%_)
                                                            (_%__kont7696976970%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_%g4491344926%_))))))
                                                 (if (gx#stx-pair?
                                                      _%__stx7696576966%_)
                                                     (let ((_%e4491644968%_
                                                            (gx#syntax-e
                                                             _%__stx7696576966%_)))
                                                       (let ((_%tl4491844973%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e4491644968%_)))
                     (_%hd4491744971%_
                      (let () (declare (not safe)) (##car _%e4491644968%_))))
                 (if (gx#stx-pair? _%tl4491844973%_)
                     (let ((_%e4491944976%_ (gx#syntax-e _%tl4491844973%_)))
                       (let ((_%tl4492144981%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4491944976%_)))
                             (_%hd4492044979%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4491944976%_))))
                         (if (gx#stx-null? _%tl4492144981%_)
                             (_%__kont7696776968%_ _%hd4492044979%_)
                             (let () (declare (not safe)) (_%g4491244963%_)))))
                     (let () (declare (not safe)) (_%g4491244963%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g4491244963%_))))))))
                                       _%hd4486744889%_
                                       _%hd4486444881%_)
                                      (_%g4485944873%_ _%g4486044876%_))))
                              (_%g4485944873%_ _%g4486044876%_))))
                      (_%g4485944873%_ _%g4486044876%_)))))
          (_%g4485845067%_
           (list gerbil/core/contract~InterfaceInfo#_g82286_
                 gerbil/core/contract~InterfaceInfo#_g82287_))))
      (bind-method!
       gerbil/core/contract~InterfaceInfo#interface-info::t
       'apply-macro-expander
       gerbil/core/contract~InterfaceInfo#interface-info::apply-macro-expander
       '#f)
      (define gerbil/core/contract~InterfaceInfo#interface-info-flatten-mixin
        (lambda (_%info44692%_)
          (let _%loop44694%_ ((_%rest44696%_
                               (let ((__obj82216 _%info44692%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-direct-instance-of?
                                        __obj82216
                                        'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        __obj82216
                                        '2
                                        '#f
                                        '#f))
                                     (class-slot-ref
                                      gerbil/core/contract~InterfaceInfo#interface-info::t
                                      __obj82216
                                      'interface-mixin))))
                              (_%result44697%_ '()))
            (let* ((_%rest4469844706%_ _%rest44696%_)
                   (_%else4470044714%_ (lambda () _%result44697%_))
                   (_%K4470244724%_
                    (lambda (_%rest44717%_ _%id44718%_)
                      (let* ((_%mixin44720%_
                              (let ((__obj82215
                                     (gx#syntax-local-value _%id44718%_)))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-direct-instance-of?
                                       __obj82215
                                       'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __obj82215
                                       '2
                                       '#f
                                       '#f))
                                    (class-slot-ref
                                     gerbil/core/contract~InterfaceInfo#interface-info::t
                                     __obj82215
                                     'interface-mixin))))
                             (_%result44722%_
                              (if (member _%id44718%_
                                          _%result44697%_
                                          gx#free-identifier=?)
                                  _%result44697%_
                                  (cons _%id44718%_ _%result44697%_))))
                        (_%loop44694%_
                         (foldl cons _%rest44717%_ _%mixin44720%_)
                         _%result44722%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest4469844706%_))
                  (let ((_%hd4470344727%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest4469844706%_)))
                        (_%tl4470444729%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest4469844706%_))))
                    (let* ((_%id44732%_ _%hd4470344727%_)
                           (_%rest44734%_ _%tl4470444729%_))
                      (_%K4470244724%_ _%rest44734%_ _%id44732%_)))
                  (_%else4470044714%_))))))
      (define gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__%
        (lambda (_%stx44673%_ _%is?44674%_)
          (if (gx#identifier? _%stx44673%_)
              (let ((_%e4467544677%_
                     (gx#syntax-local-value _%stx44673%_ false)))
                (if _%e4467544677%_
                    (let ((_%e44680%_ _%e4467544677%_))
                      (if (let ()
                            (declare (not safe))
                            (class-instance?
                             gerbil/core/contract~InterfaceInfo#interface-info::t
                             _%e44680%_))
                          (_%is?44674%_ _%e44680%_)
                          '#f))
                    '#f))
              '#f)))
      (define gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
        (lambda (_%stx44685%_)
          (let ((_%is?44687%_ true))
            (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__%
             _%stx44685%_
             _%is?44687%_))))
      (define gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?
        (lambda _g82289_
          (let ((_g82288_ (let () (declare (not safe)) (##length _g82289_))))
            (cond ((let () (declare (not safe)) (##fx= _g82288_ 1))
                   (apply gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                          _g82289_))
                  ((let () (declare (not safe)) (##fx= _g82288_ 2))
                   (apply gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__%
                          _g82289_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?
                    _g82289_)))))))))
