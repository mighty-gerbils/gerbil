(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/contract~InterfaceInfo::timestamp 1734131742)
  (begin
    (define gerbil/core/contract~InterfaceInfo#_g84022_
      (##structure
       gx#syntax-quote::t
       'cast
       #f
       (gx#current-expander-context)
       '()))
    (define gerbil/core/contract~InterfaceInfo#_g84023_
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
        (lambda _%$args45088%_
          (apply make-instance
                 gerbil/core/contract~InterfaceInfo#interface-info::t
                 _%$args45088%_)))
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
        (let* ((_%g4487744891%_
                (lambda (_%g4487844888%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4487844888%_)))
               (_%g4487645085%_
                (lambda (_%g4487844894%_)
                  (if (gx#stx-pair? _%g4487844894%_)
                      (let ((_%e4488144896%_ (gx#syntax-e _%g4487844894%_)))
                        (let ((_%hd4488244899%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4488144896%_)))
                              (_%tl4488344901%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4488144896%_))))
                          (if (gx#stx-pair? _%tl4488344901%_)
                              (let ((_%e4488444904%_
                                     (gx#syntax-e _%tl4488344901%_)))
                                (let ((_%hd4488544907%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4488444904%_)))
                                      (_%tl4488644909%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4488444904%_))))
                                  (if (gx#stx-null? _%tl4488644909%_)
                                      ((lambda (_%L44912%_ _%L44913%_)
                                         (lambda (_%self44927%_ _%stx44928%_)
                                           (let* ((_%__stx7846378464%_
                                                   _%stx44928%_)
                                                  (_%g4493144944%_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx7846378464%_))))
                                             (let ((_%__kont7846578466%_
                                                    (lambda (_%L45002%_)
                                                      (let* ((_%g4501345031%_
                                                              (lambda (_%g4501445028%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g4501445028%_)))
                     (_%g4501245079%_
                      (lambda (_%g4501445034%_)
                        (if (gx#stx-pair? _%g4501445034%_)
                            (let ((_%e4501845036%_
                                   (gx#syntax-e _%g4501445034%_)))
                              (let ((_%hd4501945039%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4501845036%_)))
                                    (_%tl4502045041%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4501845036%_))))
                                (if (gx#stx-pair? _%tl4502045041%_)
                                    (let ((_%e4502145044%_
                                           (gx#syntax-e _%tl4502045041%_)))
                                      (let ((_%hd4502245047%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4502145044%_)))
                                            (_%tl4502345049%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4502145044%_))))
                                        (if (gx#stx-pair? _%tl4502345049%_)
                                            (let ((_%e4502445052%_
                                                   (gx#syntax-e
                                                    _%tl4502345049%_)))
                                              (let ((_%hd4502545055%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4502445052%_)))
                                                    (_%tl4502645057%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4502445052%_))))
                                                (if (gx#stx-null?
                                                     _%tl4502645057%_)
                                                    ((lambda (_%L45060%_
                                                              _%L45061%_
                                                              _%L45062%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '$obj)
                                 (cons _%L45002%_ '()))
                           (cons (cons (gx#datum->syntax '#f 'begin-annotation)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '@type)
                                                   (cons _%L45060%_ '()))
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'if)
                                                         (cons (cons _%L44912%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%L45062%_
                                   (cons (gx#datum->syntax '#f '$obj) '())))
                       (cons (gx#datum->syntax '#f '$obj)
                             (cons (cons _%L44913%_
                                         (cons _%L45061%_
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      '$obj)
                                                     '())))
                                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd4502545055%_
                                                     _%hd4502245047%_
                                                     _%hd4501945039%_)
                                                    (_%g4501345031%_
                                                     _%g4501445034%_))))
                                            (_%g4501345031%_
                                             _%g4501445034%_))))
                                    (_%g4501345031%_ _%g4501445034%_))))
                            (_%g4501345031%_ _%g4501445034%_)))))
                (_%g4501245079%_
                 (list (let ((__obj83947 _%self44927%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj83947
                                'gerbil/core/contract~InterfaceInfo#interface-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj83947
                                '4
                                '#f
                                '#f))
                             (class-slot-ref
                              gerbil/core/contract~InterfaceInfo#interface-info::t
                              __obj83947
                              'instance-type)))
                       (let ((__obj83948 _%self44927%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj83948
                                'gerbil/core/contract~InterfaceInfo#interface-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj83948
                                '5
                                '#f
                                '#f))
                             (class-slot-ref
                              gerbil/core/contract~InterfaceInfo#interface-info::t
                              __obj83948
                              'interface-descriptor)))
                       (let ((__obj83949 _%self44927%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj83949
                                'gerbil/core/contract~InterfaceInfo#interface-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj83949
                                '4
                                '#f
                                '#f))
                             (class-slot-ref
                              gerbil/core/contract~InterfaceInfo#interface-info::t
                              __obj83949
                              'instance-type))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont7846778468%_
                                                    (lambda ()
                                                      (let* ((_%g4495144958%_
                                                              (lambda (_%g4495244955%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g4495244955%_)))
                     (_%g4495044978%_
                      (lambda (_%g4495244961%_)
                        ((lambda (_%L44963%_) _%L44963%_) _%g4495244961%_))))
                (_%g4495044978%_
                 (let ((__obj83950 _%self44927%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-direct-instance-of?
                          __obj83950
                          'gerbil/core/contract~InterfaceInfo#interface-info::t))
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref __obj83950 '5 '#f '#f))
                       (class-slot-ref
                        gerbil/core/contract~InterfaceInfo#interface-info::t
                        __obj83950
                        'interface-descriptor))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%g4493044981%_
                                                      (lambda ()
                                                        (if (gx#identifier?
                                                             _%stx44928%_)
                                                            (_%__kont7846778468%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_%g4493144944%_))))))
                                                 (if (gx#stx-pair?
                                                      _%__stx7846378464%_)
                                                     (let ((_%e4493444986%_
                                                            (gx#syntax-e
                                                             _%__stx7846378464%_)))
                                                       (let ((_%tl4493644991%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e4493444986%_)))
                     (_%hd4493544989%_
                      (let () (declare (not safe)) (##car _%e4493444986%_))))
                 (if (gx#stx-pair? _%tl4493644991%_)
                     (let ((_%e4493744994%_ (gx#syntax-e _%tl4493644991%_)))
                       (let ((_%tl4493944999%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4493744994%_)))
                             (_%hd4493844997%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4493744994%_))))
                         (if (gx#stx-null? _%tl4493944999%_)
                             (_%__kont7846578466%_ _%hd4493844997%_)
                             (let () (declare (not safe)) (_%g4493044981%_)))))
                     (let () (declare (not safe)) (_%g4493044981%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g4493044981%_))))))))
                                       _%hd4488544907%_
                                       _%hd4488244899%_)
                                      (_%g4487744891%_ _%g4487844894%_))))
                              (_%g4487744891%_ _%g4487844894%_))))
                      (_%g4487744891%_ _%g4487844894%_)))))
          (_%g4487645085%_
           (list gerbil/core/contract~InterfaceInfo#_g84022_
                 gerbil/core/contract~InterfaceInfo#_g84023_))))
      (bind-method!
       gerbil/core/contract~InterfaceInfo#interface-info::t
       'apply-macro-expander
       gerbil/core/contract~InterfaceInfo#interface-info::apply-macro-expander
       '#f)
      (define gerbil/core/contract~InterfaceInfo#interface-info-flatten-mixin
        (lambda (_%info44710%_)
          (let _%loop44712%_ ((_%rest44714%_
                               (let ((__obj83952 _%info44710%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-direct-instance-of?
                                        __obj83952
                                        'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        __obj83952
                                        '2
                                        '#f
                                        '#f))
                                     (class-slot-ref
                                      gerbil/core/contract~InterfaceInfo#interface-info::t
                                      __obj83952
                                      'interface-mixin))))
                              (_%result44715%_ '()))
            (let* ((_%rest4471644724%_ _%rest44714%_)
                   (_%else4471844732%_ (lambda () _%result44715%_))
                   (_%K4472044742%_
                    (lambda (_%rest44735%_ _%id44736%_)
                      (let* ((_%mixin44738%_
                              (let ((__obj83951
                                     (gx#syntax-local-value _%id44736%_)))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-direct-instance-of?
                                       __obj83951
                                       'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __obj83951
                                       '2
                                       '#f
                                       '#f))
                                    (class-slot-ref
                                     gerbil/core/contract~InterfaceInfo#interface-info::t
                                     __obj83951
                                     'interface-mixin))))
                             (_%result44740%_
                              (if (member _%id44736%_
                                          _%result44715%_
                                          gx#free-identifier=?)
                                  _%result44715%_
                                  (cons _%id44736%_ _%result44715%_))))
                        (_%loop44712%_
                         (foldl cons _%rest44735%_ _%mixin44738%_)
                         _%result44740%_)))))
              (if (pair? _%rest4471644724%_)
                  (let ((_%hd4472144745%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest4471644724%_)))
                        (_%tl4472244747%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest4471644724%_))))
                    (let* ((_%id44750%_ _%hd4472144745%_)
                           (_%rest44752%_ _%tl4472244747%_))
                      (_%K4472044742%_ _%rest44752%_ _%id44750%_)))
                  (_%else4471844732%_))))))
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
        (lambda _g84025_
          (let ((_g84024_ (let () (declare (not safe)) (##length _g84025_))))
            (cond ((let () (declare (not safe)) (##fx= _g84024_ 1))
                   (apply gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                          _g84025_))
                  ((let () (declare (not safe)) (##fx= _g84024_ 2))
                   (apply gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__%
                          _g84025_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?
                    _g84025_)))))))))
