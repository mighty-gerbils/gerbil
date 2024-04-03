(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/contract~InterfaceInfo::timestamp 1712155157)
  (begin
    (define gerbil/core/contract~InterfaceInfo#_g80068_
      (##structure
       gx#syntax-quote::t
       'cast
       #f
       (gx#current-expander-context)
       '()))
    (define gerbil/core/contract~InterfaceInfo#_g80069_
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
        (lambda _%$args45285%_
          (apply make-instance
                 gerbil/core/contract~InterfaceInfo#interface-info::t
                 _%$args45285%_)))
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
        (let* ((_%g4507445088%_
                (lambda (_%g4507545085%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4507545085%_)))
               (_%g4507345282%_
                (lambda (_%g4507545091%_)
                  (if (gx#stx-pair? _%g4507545091%_)
                      (let ((_%e4508045093%_ (gx#syntax-e _%g4507545091%_)))
                        (let ((_%hd4507945096%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4508045093%_)))
                              (_%tl4507845098%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4508045093%_))))
                          (if (gx#stx-pair? _%tl4507845098%_)
                              (let ((_%e4508345101%_
                                     (gx#syntax-e _%tl4507845098%_)))
                                (let ((_%hd4508245104%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4508345101%_)))
                                      (_%tl4508145106%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4508345101%_))))
                                  (if (gx#stx-null? _%tl4508145106%_)
                                      ((lambda (_%L45109%_ _%L45110%_)
                                         (let ()
                                           (lambda (_%self45124%_ _%stx45125%_)
                                             (let* ((_%__stx7491074911%_
                                                     _%stx45125%_)
                                                    (_%g4512845141%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx7491074911%_))))
                                               (let ((_%__kont7491274913%_
                                                      (lambda (_%L45199%_)
                                                        (let* ((_%g4521045228%_
                                                                (lambda (_%g4521145225%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g4521145225%_)))
                       (_%g4520945276%_
                        (lambda (_%g4521145231%_)
                          (if (gx#stx-pair? _%g4521145231%_)
                              (let ((_%e4521745233%_
                                     (gx#syntax-e _%g4521145231%_)))
                                (let ((_%hd4521645236%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4521745233%_)))
                                      (_%tl4521545238%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4521745233%_))))
                                  (if (gx#stx-pair? _%tl4521545238%_)
                                      (let ((_%e4522045241%_
                                             (gx#syntax-e _%tl4521545238%_)))
                                        (let ((_%hd4521945244%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4522045241%_)))
                                              (_%tl4521845246%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4522045241%_))))
                                          (if (gx#stx-pair? _%tl4521845246%_)
                                              (let ((_%e4522345249%_
                                                     (gx#syntax-e
                                                      _%tl4521845246%_)))
                                                (let ((_%hd4522245252%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4522345249%_)))
                                                      (_%tl4522145254%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4522345249%_))))
                                                  (if (gx#stx-null?
                                                       _%tl4522145254%_)
                                                      ((lambda (_%L45257%_
                                                                _%L45258%_
                                                                _%L45259%_)
                                                         (let ()
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'let)
                         (cons (cons (gx#datum->syntax '#f '$obj)
                                     (cons _%L45199%_ '()))
                               (cons (cons (gx#datum->syntax
                                            '#f
                                            'begin-annotation)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '@type)
                                                       (cons _%L45257%_ '()))
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'if)
                                                             (cons (cons _%L45109%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L45259%_
                                       (cons (gx#datum->syntax '#f '$obj)
                                             '())))
                           (cons (gx#datum->syntax '#f '$obj)
                                 (cons (cons _%L45110%_
                                             (cons _%L45258%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          '$obj)
                                                         '())))
                                       '()))))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
               _%hd4522245252%_
               _%hd4521945244%_
               _%hd4521645236%_)
              (let ()
                (declare (not safe))
                (_%g4521045228%_ _%g4521145231%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4521045228%_
                                                 _%g4521145231%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4521045228%_ _%g4521145231%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4521045228%_ _%g4521145231%_)))))
                       (__tmp80065
                        (list (let ((__obj79994 _%self45124%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-direct-instance-of?
                                       __obj79994
                                       'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __obj79994
                                       '4
                                       '#f
                                       '#f))
                                    (class-slot-ref
                                     gerbil/core/contract~InterfaceInfo#interface-info::t
                                     __obj79994
                                     'instance-type)))
                              (let ((__obj79995 _%self45124%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-direct-instance-of?
                                       __obj79995
                                       'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __obj79995
                                       '5
                                       '#f
                                       '#f))
                                    (class-slot-ref
                                     gerbil/core/contract~InterfaceInfo#interface-info::t
                                     __obj79995
                                     'interface-descriptor)))
                              (let ((__obj79996 _%self45124%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-direct-instance-of?
                                       __obj79996
                                       'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __obj79996
                                       '4
                                       '#f
                                       '#f))
                                    (class-slot-ref
                                     gerbil/core/contract~InterfaceInfo#interface-info::t
                                     __obj79996
                                     'instance-type))))))
                  (declare (not safe))
                  (_%g4520945276%_ __tmp80065))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont7491474915%_
                                                      (lambda ()
                                                        (let* ((_%g4514845155%_
                                                                (lambda (_%g4514945152%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g4514945152%_)))
                       (_%g4514745175%_
                        (lambda (_%g4514945158%_)
                          ((lambda (_%L45160%_) (let () _%L45160%_))
                           _%g4514945158%_)))
                       (__tmp80066
                        (let ((__obj79997 _%self45124%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj79997
                                 'gerbil/core/contract~InterfaceInfo#interface-info::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj79997
                                 '5
                                 '#f
                                 '#f))
                              (class-slot-ref
                               gerbil/core/contract~InterfaceInfo#interface-info::t
                               __obj79997
                               'interface-descriptor)))))
                  (declare (not safe))
                  (_%g4514745175%_ __tmp80066)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%g4512745178%_
                                                        (lambda ()
                                                          (if (gx#identifier?
                                                               _%stx45125%_)
                                                              (_%__kont7491474915%_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_%g4512845141%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair?
                                                        _%__stx7491074911%_)
                                                       (let ((_%e4513345183%_
                                                              (gx#syntax-e
                                                               _%__stx7491074911%_)))
                                                         (let ((_%tl4513145188%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%e4513345183%_)))
                       (_%hd4513245186%_
                        (let () (declare (not safe)) (##car _%e4513345183%_))))
                   (if (gx#stx-pair? _%tl4513145188%_)
                       (let ((_%e4513645191%_ (gx#syntax-e _%tl4513145188%_)))
                         (let ((_%tl4513445196%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4513645191%_)))
                               (_%hd4513545194%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4513645191%_))))
                           (if (gx#stx-null? _%tl4513445196%_)
                               (_%__kont7491274913%_ _%hd4513545194%_)
                               (let ()
                                 (declare (not safe))
                                 (_%g4512745178%_)))))
                       (let () (declare (not safe)) (_%g4512745178%_)))))
               (let () (declare (not safe)) (_%g4512745178%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd4508245104%_
                                       _%hd4507945096%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4507445088%_ _%g4507545091%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4507445088%_ _%g4507545091%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g4507445088%_ _%g4507545091%_)))))
               (__tmp80067
                (list gerbil/core/contract~InterfaceInfo#_g80068_
                      gerbil/core/contract~InterfaceInfo#_g80069_)))
          (declare (not safe))
          (_%g4507345282%_ __tmp80067)))
      (bind-method!
       gerbil/core/contract~InterfaceInfo#interface-info::t
       'apply-macro-expander
       gerbil/core/contract~InterfaceInfo#interface-info::apply-macro-expander
       '#f)
      (define gerbil/core/contract~InterfaceInfo#interface-info-flatten-mixin
        (lambda (_%info44907%_)
          (let _%loop44909%_ ((_%rest44911%_
                               (let ((__obj79998 _%info44907%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-direct-instance-of?
                                        __obj79998
                                        'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        __obj79998
                                        '2
                                        '#f
                                        '#f))
                                     (class-slot-ref
                                      gerbil/core/contract~InterfaceInfo#interface-info::t
                                      __obj79998
                                      'interface-mixin))))
                              (_%result44912%_ '()))
            (let* ((_%rest4491344921%_ _%rest44911%_)
                   (_%else4491544929%_ (lambda () _%result44912%_))
                   (_%K4491744939%_
                    (lambda (_%rest44932%_ _%id44933%_)
                      (let* ((_%mixin44935%_
                              (let ((__obj79999
                                     (gx#syntax-local-value _%id44933%_)))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-direct-instance-of?
                                       __obj79999
                                       'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __obj79999
                                       '2
                                       '#f
                                       '#f))
                                    (class-slot-ref
                                     gerbil/core/contract~InterfaceInfo#interface-info::t
                                     __obj79999
                                     'interface-mixin))))
                             (_%result44937%_
                              (if (member _%id44933%_
                                          _%result44912%_
                                          gx#free-identifier=?)
                                  _%result44912%_
                                  (cons _%id44933%_ _%result44912%_)))
                             (__tmp80070
                              (foldl cons _%rest44932%_ _%mixin44935%_)))
                        (declare (not safe))
                        (_%loop44909%_ __tmp80070 _%result44937%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest4491344921%_))
                  (let ((_%hd4491844942%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest4491344921%_)))
                        (_%tl4491944944%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest4491344921%_))))
                    (let* ((_%id44947%_ _%hd4491844942%_)
                           (_%rest44949%_ _%tl4491944944%_))
                      (declare (not safe))
                      (_%K4491744939%_ _%rest44949%_ _%id44947%_)))
                  (let () (declare (not safe)) (_%else4491544929%_)))))))
      (define gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__%
        (lambda (_%stx44888%_ _%is?44889%_)
          (if (gx#identifier? _%stx44888%_)
              (let ((_%e4489044892%_
                     (gx#syntax-local-value _%stx44888%_ false)))
                (if _%e4489044892%_
                    (let ((_%e44895%_ _%e4489044892%_))
                      (if (let ()
                            (declare (not safe))
                            (class-instance?
                             gerbil/core/contract~InterfaceInfo#interface-info::t
                             _%e44895%_))
                          (_%is?44889%_ _%e44895%_)
                          '#f))
                    '#f))
              '#f)))
      (define gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
        (lambda (_%stx44900%_)
          (let ((_%is?44902%_ true))
            (declare (not safe))
            (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__%
             _%stx44900%_
             _%is?44902%_))))
      (define gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?
        (lambda _g80072_
          (let ((_g80071_ (let () (declare (not safe)) (##length _g80072_))))
            (cond ((let () (declare (not safe)) (##fx= _g80071_ 1))
                   (apply (lambda (_%stx44900%_)
                            (let ()
                              (declare (not safe))
                              (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                               _%stx44900%_)))
                          _g80072_))
                  ((let () (declare (not safe)) (##fx= _g80071_ 2))
                   (apply (lambda (_%stx44904%_ _%is?44905%_)
                            (let ()
                              (declare (not safe))
                              (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__%
                               _%stx44904%_
                               _%is?44905%_)))
                          _g80072_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?
                    _g80072_)))))))))
