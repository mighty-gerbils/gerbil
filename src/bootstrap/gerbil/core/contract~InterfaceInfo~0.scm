(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/contract~InterfaceInfo::timestamp 1733868031)
  (begin
    (define gerbil/core/contract~InterfaceInfo#_g83959_
      (##structure
       gx#syntax-quote::t
       'cast
       #f
       (gx#current-expander-context)
       '()))
    (define gerbil/core/contract~InterfaceInfo#_g83960_
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
        (lambda _%$args45025%_
          (apply make-instance
                 gerbil/core/contract~InterfaceInfo#interface-info::t
                 _%$args45025%_)))
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
        (let* ((_%g4481444828%_
                (lambda (_%g4481544825%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4481544825%_)))
               (_%g4481345022%_
                (lambda (_%g4481544831%_)
                  (if (gx#stx-pair? _%g4481544831%_)
                      (let ((_%e4481844833%_ (gx#syntax-e _%g4481544831%_)))
                        (let ((_%hd4481944836%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4481844833%_)))
                              (_%tl4482044838%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4481844833%_))))
                          (if (gx#stx-pair? _%tl4482044838%_)
                              (let ((_%e4482144841%_
                                     (gx#syntax-e _%tl4482044838%_)))
                                (let ((_%hd4482244844%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4482144841%_)))
                                      (_%tl4482344846%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4482144841%_))))
                                  (if (gx#stx-null? _%tl4482344846%_)
                                      ((lambda (_%L44849%_ _%L44850%_)
                                         (lambda (_%self44864%_ _%stx44865%_)
                                           (let* ((_%__stx7840078401%_
                                                   _%stx44865%_)
                                                  (_%g4486844881%_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx7840078401%_))))
                                             (let ((_%__kont7840278403%_
                                                    (lambda (_%L44939%_)
                                                      (let* ((_%g4495044968%_
                                                              (lambda (_%g4495144965%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g4495144965%_)))
                     (_%g4494945016%_
                      (lambda (_%g4495144971%_)
                        (if (gx#stx-pair? _%g4495144971%_)
                            (let ((_%e4495544973%_
                                   (gx#syntax-e _%g4495144971%_)))
                              (let ((_%hd4495644976%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4495544973%_)))
                                    (_%tl4495744978%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4495544973%_))))
                                (if (gx#stx-pair? _%tl4495744978%_)
                                    (let ((_%e4495844981%_
                                           (gx#syntax-e _%tl4495744978%_)))
                                      (let ((_%hd4495944984%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4495844981%_)))
                                            (_%tl4496044986%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4495844981%_))))
                                        (if (gx#stx-pair? _%tl4496044986%_)
                                            (let ((_%e4496144989%_
                                                   (gx#syntax-e
                                                    _%tl4496044986%_)))
                                              (let ((_%hd4496244992%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4496144989%_)))
                                                    (_%tl4496344994%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4496144989%_))))
                                                (if (gx#stx-null?
                                                     _%tl4496344994%_)
                                                    ((lambda (_%L44997%_
                                                              _%L44998%_
                                                              _%L44999%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '$obj)
                                 (cons _%L44939%_ '()))
                           (cons (cons (gx#datum->syntax '#f 'begin-annotation)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '@type)
                                                   (cons _%L44997%_ '()))
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'if)
                                                         (cons (cons _%L44849%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%L44999%_
                                   (cons (gx#datum->syntax '#f '$obj) '())))
                       (cons (gx#datum->syntax '#f '$obj)
                             (cons (cons _%L44850%_
                                         (cons _%L44998%_
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      '$obj)
                                                     '())))
                                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd4496244992%_
                                                     _%hd4495944984%_
                                                     _%hd4495644976%_)
                                                    (_%g4495044968%_
                                                     _%g4495144971%_))))
                                            (_%g4495044968%_
                                             _%g4495144971%_))))
                                    (_%g4495044968%_ _%g4495144971%_))))
                            (_%g4495044968%_ _%g4495144971%_)))))
                (_%g4494945016%_
                 (list (let ((__obj83884 _%self44864%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj83884
                                'gerbil/core/contract~InterfaceInfo#interface-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj83884
                                '4
                                '#f
                                '#f))
                             (class-slot-ref
                              gerbil/core/contract~InterfaceInfo#interface-info::t
                              __obj83884
                              'instance-type)))
                       (let ((__obj83885 _%self44864%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj83885
                                'gerbil/core/contract~InterfaceInfo#interface-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj83885
                                '5
                                '#f
                                '#f))
                             (class-slot-ref
                              gerbil/core/contract~InterfaceInfo#interface-info::t
                              __obj83885
                              'interface-descriptor)))
                       (let ((__obj83886 _%self44864%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj83886
                                'gerbil/core/contract~InterfaceInfo#interface-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj83886
                                '4
                                '#f
                                '#f))
                             (class-slot-ref
                              gerbil/core/contract~InterfaceInfo#interface-info::t
                              __obj83886
                              'instance-type))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont7840478405%_
                                                    (lambda ()
                                                      (let* ((_%g4488844895%_
                                                              (lambda (_%g4488944892%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g4488944892%_)))
                     (_%g4488744915%_
                      (lambda (_%g4488944898%_)
                        ((lambda (_%L44900%_) _%L44900%_) _%g4488944898%_))))
                (_%g4488744915%_
                 (let ((__obj83887 _%self44864%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-direct-instance-of?
                          __obj83887
                          'gerbil/core/contract~InterfaceInfo#interface-info::t))
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref __obj83887 '5 '#f '#f))
                       (class-slot-ref
                        gerbil/core/contract~InterfaceInfo#interface-info::t
                        __obj83887
                        'interface-descriptor))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%g4486744918%_
                                                      (lambda ()
                                                        (if (gx#identifier?
                                                             _%stx44865%_)
                                                            (_%__kont7840478405%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_%g4486844881%_))))))
                                                 (if (gx#stx-pair?
                                                      _%__stx7840078401%_)
                                                     (let ((_%e4487144923%_
                                                            (gx#syntax-e
                                                             _%__stx7840078401%_)))
                                                       (let ((_%tl4487344928%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e4487144923%_)))
                     (_%hd4487244926%_
                      (let () (declare (not safe)) (##car _%e4487144923%_))))
                 (if (gx#stx-pair? _%tl4487344928%_)
                     (let ((_%e4487444931%_ (gx#syntax-e _%tl4487344928%_)))
                       (let ((_%tl4487644936%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4487444931%_)))
                             (_%hd4487544934%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4487444931%_))))
                         (if (gx#stx-null? _%tl4487644936%_)
                             (_%__kont7840278403%_ _%hd4487544934%_)
                             (let () (declare (not safe)) (_%g4486744918%_)))))
                     (let () (declare (not safe)) (_%g4486744918%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g4486744918%_))))))))
                                       _%hd4482244844%_
                                       _%hd4481944836%_)
                                      (_%g4481444828%_ _%g4481544831%_))))
                              (_%g4481444828%_ _%g4481544831%_))))
                      (_%g4481444828%_ _%g4481544831%_)))))
          (_%g4481345022%_
           (list gerbil/core/contract~InterfaceInfo#_g83959_
                 gerbil/core/contract~InterfaceInfo#_g83960_))))
      (bind-method!
       gerbil/core/contract~InterfaceInfo#interface-info::t
       'apply-macro-expander
       gerbil/core/contract~InterfaceInfo#interface-info::apply-macro-expander
       '#f)
      (define gerbil/core/contract~InterfaceInfo#interface-info-flatten-mixin
        (lambda (_%info44647%_)
          (let _%loop44649%_ ((_%rest44651%_
                               (let ((__obj83889 _%info44647%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-direct-instance-of?
                                        __obj83889
                                        'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        __obj83889
                                        '2
                                        '#f
                                        '#f))
                                     (class-slot-ref
                                      gerbil/core/contract~InterfaceInfo#interface-info::t
                                      __obj83889
                                      'interface-mixin))))
                              (_%result44652%_ '()))
            (let* ((_%rest4465344661%_ _%rest44651%_)
                   (_%else4465544669%_ (lambda () _%result44652%_))
                   (_%K4465744679%_
                    (lambda (_%rest44672%_ _%id44673%_)
                      (let* ((_%mixin44675%_
                              (let ((__obj83888
                                     (gx#syntax-local-value _%id44673%_)))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-direct-instance-of?
                                       __obj83888
                                       'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __obj83888
                                       '2
                                       '#f
                                       '#f))
                                    (class-slot-ref
                                     gerbil/core/contract~InterfaceInfo#interface-info::t
                                     __obj83888
                                     'interface-mixin))))
                             (_%result44677%_
                              (if (member _%id44673%_
                                          _%result44652%_
                                          gx#free-identifier=?)
                                  _%result44652%_
                                  (cons _%id44673%_ _%result44652%_))))
                        (_%loop44649%_
                         (foldl cons _%rest44672%_ _%mixin44675%_)
                         _%result44677%_)))))
              (if (pair? _%rest4465344661%_)
                  (let ((_%hd4465844682%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest4465344661%_)))
                        (_%tl4465944684%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest4465344661%_))))
                    (let* ((_%id44687%_ _%hd4465844682%_)
                           (_%rest44689%_ _%tl4465944684%_))
                      (_%K4465744679%_ _%rest44689%_ _%id44687%_)))
                  (_%else4465544669%_))))))
      (define gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__%
        (lambda (_%stx44628%_ _%is?44629%_)
          (if (gx#identifier? _%stx44628%_)
              (let ((_%e4463044632%_
                     (gx#syntax-local-value _%stx44628%_ false)))
                (if _%e4463044632%_
                    (let ((_%e44635%_ _%e4463044632%_))
                      (if (let ()
                            (declare (not safe))
                            (class-instance?
                             gerbil/core/contract~InterfaceInfo#interface-info::t
                             _%e44635%_))
                          (_%is?44629%_ _%e44635%_)
                          '#f))
                    '#f))
              '#f)))
      (define gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
        (lambda (_%stx44640%_)
          (let ((_%is?44642%_ true))
            (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__%
             _%stx44640%_
             _%is?44642%_))))
      (define gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?
        (lambda _g83962_
          (let ((_g83961_ (let () (declare (not safe)) (##length _g83962_))))
            (cond ((let () (declare (not safe)) (##fx= _g83961_ 1))
                   (apply gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                          _g83962_))
                  ((let () (declare (not safe)) (##fx= _g83961_ 2))
                   (apply gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__%
                          _g83962_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?
                    _g83962_)))))))))
