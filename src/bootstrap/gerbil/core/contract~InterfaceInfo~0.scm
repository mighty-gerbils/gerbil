(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/contract~InterfaceInfo::timestamp 1712251107)
  (begin
    (define gerbil/core/contract~InterfaceInfo#_g80609_
      (##structure
       gx#syntax-quote::t
       'cast
       #f
       (gx#current-expander-context)
       '()))
    (define gerbil/core/contract~InterfaceInfo#_g80610_
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
        (lambda _%$args45250%_
          (apply make-instance
                 gerbil/core/contract~InterfaceInfo#interface-info::t
                 _%$args45250%_)))
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
        (let* ((_%g4503945053%_
                (lambda (_%g4504045050%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4504045050%_)))
               (_%g4503845247%_
                (lambda (_%g4504045056%_)
                  (if (gx#stx-pair? _%g4504045056%_)
                      (let ((_%e4504545058%_ (gx#syntax-e _%g4504045056%_)))
                        (let ((_%hd4504445061%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4504545058%_)))
                              (_%tl4504345063%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4504545058%_))))
                          (if (gx#stx-pair? _%tl4504345063%_)
                              (let ((_%e4504845066%_
                                     (gx#syntax-e _%tl4504345063%_)))
                                (let ((_%hd4504745069%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4504845066%_)))
                                      (_%tl4504645071%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4504845066%_))))
                                  (if (gx#stx-null? _%tl4504645071%_)
                                      ((lambda (_%L45074%_ _%L45075%_)
                                         (let ()
                                           (lambda (_%self45089%_ _%stx45090%_)
                                             (let* ((_%__stx7556175562%_
                                                     _%stx45090%_)
                                                    (_%g4509345106%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx7556175562%_))))
                                               (let ((_%__kont7556375564%_
                                                      (lambda (_%L45164%_)
                                                        (let* ((_%g4517545193%_
                                                                (lambda (_%g4517645190%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g4517645190%_)))
                       (_%g4517445241%_
                        (lambda (_%g4517645196%_)
                          (if (gx#stx-pair? _%g4517645196%_)
                              (let ((_%e4518245198%_
                                     (gx#syntax-e _%g4517645196%_)))
                                (let ((_%hd4518145201%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4518245198%_)))
                                      (_%tl4518045203%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4518245198%_))))
                                  (if (gx#stx-pair? _%tl4518045203%_)
                                      (let ((_%e4518545206%_
                                             (gx#syntax-e _%tl4518045203%_)))
                                        (let ((_%hd4518445209%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4518545206%_)))
                                              (_%tl4518345211%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4518545206%_))))
                                          (if (gx#stx-pair? _%tl4518345211%_)
                                              (let ((_%e4518845214%_
                                                     (gx#syntax-e
                                                      _%tl4518345211%_)))
                                                (let ((_%hd4518745217%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4518845214%_)))
                                                      (_%tl4518645219%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4518845214%_))))
                                                  (if (gx#stx-null?
                                                       _%tl4518645219%_)
                                                      ((lambda (_%L45222%_
                                                                _%L45223%_
                                                                _%L45224%_)
                                                         (let ()
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'let)
                         (cons (cons (gx#datum->syntax '#f '$obj)
                                     (cons _%L45164%_ '()))
                               (cons (cons (gx#datum->syntax
                                            '#f
                                            'begin-annotation)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '@type)
                                                       (cons _%L45222%_ '()))
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'if)
                                                             (cons (cons _%L45074%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L45224%_
                                       (cons (gx#datum->syntax '#f '$obj)
                                             '())))
                           (cons (gx#datum->syntax '#f '$obj)
                                 (cons (cons _%L45075%_
                                             (cons _%L45223%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          '$obj)
                                                         '())))
                                       '()))))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
               _%hd4518745217%_
               _%hd4518445209%_
               _%hd4518145201%_)
              (let ()
                (declare (not safe))
                (_%g4517545193%_ _%g4517645196%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4517545193%_
                                                 _%g4517645196%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4517545193%_ _%g4517645196%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4517545193%_ _%g4517645196%_)))))
                       (__tmp80606
                        (list (let ((__obj80533 _%self45089%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-direct-instance-of?
                                       __obj80533
                                       'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __obj80533
                                       '4
                                       '#f
                                       '#f))
                                    (class-slot-ref
                                     gerbil/core/contract~InterfaceInfo#interface-info::t
                                     __obj80533
                                     'instance-type)))
                              (let ((__obj80534 _%self45089%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-direct-instance-of?
                                       __obj80534
                                       'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __obj80534
                                       '5
                                       '#f
                                       '#f))
                                    (class-slot-ref
                                     gerbil/core/contract~InterfaceInfo#interface-info::t
                                     __obj80534
                                     'interface-descriptor)))
                              (let ((__obj80535 _%self45089%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-direct-instance-of?
                                       __obj80535
                                       'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __obj80535
                                       '4
                                       '#f
                                       '#f))
                                    (class-slot-ref
                                     gerbil/core/contract~InterfaceInfo#interface-info::t
                                     __obj80535
                                     'instance-type))))))
                  (declare (not safe))
                  (_%g4517445241%_ __tmp80606))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont7556575566%_
                                                      (lambda ()
                                                        (let* ((_%g4511345120%_
                                                                (lambda (_%g4511445117%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g4511445117%_)))
                       (_%g4511245140%_
                        (lambda (_%g4511445123%_)
                          ((lambda (_%L45125%_) (let () _%L45125%_))
                           _%g4511445123%_)))
                       (__tmp80607
                        (let ((__obj80536 _%self45089%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj80536
                                 'gerbil/core/contract~InterfaceInfo#interface-info::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj80536
                                 '5
                                 '#f
                                 '#f))
                              (class-slot-ref
                               gerbil/core/contract~InterfaceInfo#interface-info::t
                               __obj80536
                               'interface-descriptor)))))
                  (declare (not safe))
                  (_%g4511245140%_ __tmp80607)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%g4509245143%_
                                                        (lambda ()
                                                          (if (gx#identifier?
                                                               _%stx45090%_)
                                                              (_%__kont7556575566%_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_%g4509345106%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair?
                                                        _%__stx7556175562%_)
                                                       (let ((_%e4509845148%_
                                                              (gx#syntax-e
                                                               _%__stx7556175562%_)))
                                                         (let ((_%tl4509645153%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%e4509845148%_)))
                       (_%hd4509745151%_
                        (let () (declare (not safe)) (##car _%e4509845148%_))))
                   (if (gx#stx-pair? _%tl4509645153%_)
                       (let ((_%e4510145156%_ (gx#syntax-e _%tl4509645153%_)))
                         (let ((_%tl4509945161%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4510145156%_)))
                               (_%hd4510045159%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4510145156%_))))
                           (if (gx#stx-null? _%tl4509945161%_)
                               (_%__kont7556375564%_ _%hd4510045159%_)
                               (let ()
                                 (declare (not safe))
                                 (_%g4509245143%_)))))
                       (let () (declare (not safe)) (_%g4509245143%_)))))
               (let () (declare (not safe)) (_%g4509245143%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd4504745069%_
                                       _%hd4504445061%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4503945053%_ _%g4504045056%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4503945053%_ _%g4504045056%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g4503945053%_ _%g4504045056%_)))))
               (__tmp80608
                (list gerbil/core/contract~InterfaceInfo#_g80609_
                      gerbil/core/contract~InterfaceInfo#_g80610_)))
          (declare (not safe))
          (_%g4503845247%_ __tmp80608)))
      (bind-method!
       gerbil/core/contract~InterfaceInfo#interface-info::t
       'apply-macro-expander
       gerbil/core/contract~InterfaceInfo#interface-info::apply-macro-expander
       '#f)
      (define gerbil/core/contract~InterfaceInfo#interface-info-flatten-mixin
        (lambda (_%info44872%_)
          (let _%loop44874%_ ((_%rest44876%_
                               (let ((__obj80537 _%info44872%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-direct-instance-of?
                                        __obj80537
                                        'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        __obj80537
                                        '2
                                        '#f
                                        '#f))
                                     (class-slot-ref
                                      gerbil/core/contract~InterfaceInfo#interface-info::t
                                      __obj80537
                                      'interface-mixin))))
                              (_%result44877%_ '()))
            (let* ((_%rest4487844886%_ _%rest44876%_)
                   (_%else4488044894%_ (lambda () _%result44877%_))
                   (_%K4488244904%_
                    (lambda (_%rest44897%_ _%id44898%_)
                      (let* ((_%mixin44900%_
                              (let ((__obj80538
                                     (gx#syntax-local-value _%id44898%_)))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-direct-instance-of?
                                       __obj80538
                                       'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __obj80538
                                       '2
                                       '#f
                                       '#f))
                                    (class-slot-ref
                                     gerbil/core/contract~InterfaceInfo#interface-info::t
                                     __obj80538
                                     'interface-mixin))))
                             (_%result44902%_
                              (if (member _%id44898%_
                                          _%result44877%_
                                          gx#free-identifier=?)
                                  _%result44877%_
                                  (cons _%id44898%_ _%result44877%_)))
                             (__tmp80611
                              (foldl cons _%rest44897%_ _%mixin44900%_)))
                        (declare (not safe))
                        (_%loop44874%_ __tmp80611 _%result44902%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest4487844886%_))
                  (let ((_%hd4488344907%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest4487844886%_)))
                        (_%tl4488444909%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest4487844886%_))))
                    (let* ((_%id44912%_ _%hd4488344907%_)
                           (_%rest44914%_ _%tl4488444909%_))
                      (declare (not safe))
                      (_%K4488244904%_ _%rest44914%_ _%id44912%_)))
                  (let () (declare (not safe)) (_%else4488044894%_)))))))
      (define gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__%
        (lambda (_%stx44853%_ _%is?44854%_)
          (if (gx#identifier? _%stx44853%_)
              (let ((_%e4485544857%_
                     (gx#syntax-local-value _%stx44853%_ false)))
                (if _%e4485544857%_
                    (let ((_%e44860%_ _%e4485544857%_))
                      (if (let ()
                            (declare (not safe))
                            (class-instance?
                             gerbil/core/contract~InterfaceInfo#interface-info::t
                             _%e44860%_))
                          (_%is?44854%_ _%e44860%_)
                          '#f))
                    '#f))
              '#f)))
      (define gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
        (lambda (_%stx44865%_)
          (let ((_%is?44867%_ true))
            (declare (not safe))
            (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__%
             _%stx44865%_
             _%is?44867%_))))
      (define gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?
        (lambda _g80613_
          (let ((_g80612_ (let () (declare (not safe)) (##length _g80613_))))
            (cond ((let () (declare (not safe)) (##fx= _g80612_ 1))
                   (apply (lambda (_%stx44865%_)
                            (let ()
                              (declare (not safe))
                              (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                               _%stx44865%_)))
                          _g80613_))
                  ((let () (declare (not safe)) (##fx= _g80612_ 2))
                   (apply (lambda (_%stx44869%_ _%is?44870%_)
                            (let ()
                              (declare (not safe))
                              (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__%
                               _%stx44869%_
                               _%is?44870%_)))
                          _g80613_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?
                    _g80613_)))))))))
