(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/contract~InterfaceInfo::timestamp 1712093472)
  (begin
    (define gerbil/core/contract~InterfaceInfo#_g80018_
      (##structure
       gx#syntax-quote::t
       'cast
       #f
       (gx#current-expander-context)
       '()))
    (define gerbil/core/contract~InterfaceInfo#_g80019_
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
        (lambda _%$args45254%_
          (apply make-instance
                 gerbil/core/contract~InterfaceInfo#interface-info::t
                 _%$args45254%_)))
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
        (let* ((_%g4504345057%_
                (lambda (_%g4504445054%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4504445054%_)))
               (_%g4504245251%_
                (lambda (_%g4504445060%_)
                  (if (gx#stx-pair? _%g4504445060%_)
                      (let ((_%e4504945062%_ (gx#syntax-e _%g4504445060%_)))
                        (let ((_%hd4504845065%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4504945062%_)))
                              (_%tl4504745067%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4504945062%_))))
                          (if (gx#stx-pair? _%tl4504745067%_)
                              (let ((_%e4505245070%_
                                     (gx#syntax-e _%tl4504745067%_)))
                                (let ((_%hd4505145073%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4505245070%_)))
                                      (_%tl4505045075%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4505245070%_))))
                                  (if (gx#stx-null? _%tl4505045075%_)
                                      ((lambda (_%L45078%_ _%L45079%_)
                                         (let ()
                                           (lambda (_%self45093%_ _%stx45094%_)
                                             (let* ((_%__stx7485774858%_
                                                     _%stx45094%_)
                                                    (_%g4509745110%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx7485774858%_))))
                                               (let ((_%__kont7485974860%_
                                                      (lambda (_%L45168%_)
                                                        (let* ((_%g4517945197%_
                                                                (lambda (_%g4518045194%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g4518045194%_)))
                       (_%g4517845245%_
                        (lambda (_%g4518045200%_)
                          (if (gx#stx-pair? _%g4518045200%_)
                              (let ((_%e4518645202%_
                                     (gx#syntax-e _%g4518045200%_)))
                                (let ((_%hd4518545205%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4518645202%_)))
                                      (_%tl4518445207%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4518645202%_))))
                                  (if (gx#stx-pair? _%tl4518445207%_)
                                      (let ((_%e4518945210%_
                                             (gx#syntax-e _%tl4518445207%_)))
                                        (let ((_%hd4518845213%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4518945210%_)))
                                              (_%tl4518745215%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4518945210%_))))
                                          (if (gx#stx-pair? _%tl4518745215%_)
                                              (let ((_%e4519245218%_
                                                     (gx#syntax-e
                                                      _%tl4518745215%_)))
                                                (let ((_%hd4519145221%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4519245218%_)))
                                                      (_%tl4519045223%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4519245218%_))))
                                                  (if (gx#stx-null?
                                                       _%tl4519045223%_)
                                                      ((lambda (_%L45226%_
                                                                _%L45227%_
                                                                _%L45228%_)
                                                         (let ()
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'let)
                         (cons (cons (gx#datum->syntax '#f '$obj)
                                     (cons _%L45168%_ '()))
                               (cons (cons (gx#datum->syntax
                                            '#f
                                            'begin-annotation)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '@type)
                                                       (cons _%L45226%_ '()))
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'if)
                                                             (cons (cons _%L45078%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L45228%_
                                       (cons (gx#datum->syntax '#f '$obj)
                                             '())))
                           (cons (gx#datum->syntax '#f '$obj)
                                 (cons (cons _%L45079%_
                                             (cons _%L45227%_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          '$obj)
                                                         '())))
                                       '()))))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
               _%hd4519145221%_
               _%hd4518845213%_
               _%hd4518545205%_)
              (let ()
                (declare (not safe))
                (_%g4517945197%_ _%g4518045200%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4517945197%_
                                                 _%g4518045200%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4517945197%_ _%g4518045200%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4517945197%_ _%g4518045200%_)))))
                       (__tmp80015
                        (list (let ((__obj79943 _%self45093%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-direct-instance-of?
                                       __obj79943
                                       'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __obj79943
                                       '4
                                       '#f
                                       '#f))
                                    (class-slot-ref
                                     gerbil/core/contract~InterfaceInfo#interface-info::t
                                     __obj79943
                                     'instance-type)))
                              (let ((__obj79944 _%self45093%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-direct-instance-of?
                                       __obj79944
                                       'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __obj79944
                                       '5
                                       '#f
                                       '#f))
                                    (class-slot-ref
                                     gerbil/core/contract~InterfaceInfo#interface-info::t
                                     __obj79944
                                     'interface-descriptor)))
                              (let ((__obj79945 _%self45093%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-direct-instance-of?
                                       __obj79945
                                       'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __obj79945
                                       '4
                                       '#f
                                       '#f))
                                    (class-slot-ref
                                     gerbil/core/contract~InterfaceInfo#interface-info::t
                                     __obj79945
                                     'instance-type))))))
                  (declare (not safe))
                  (_%g4517845245%_ __tmp80015))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont7486174862%_
                                                      (lambda ()
                                                        (let* ((_%g4511745124%_
                                                                (lambda (_%g4511845121%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g4511845121%_)))
                       (_%g4511645144%_
                        (lambda (_%g4511845127%_)
                          ((lambda (_%L45129%_) (let () _%L45129%_))
                           _%g4511845127%_)))
                       (__tmp80016
                        (let ((__obj79946 _%self45093%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj79946
                                 'gerbil/core/contract~InterfaceInfo#interface-info::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj79946
                                 '5
                                 '#f
                                 '#f))
                              (class-slot-ref
                               gerbil/core/contract~InterfaceInfo#interface-info::t
                               __obj79946
                               'interface-descriptor)))))
                  (declare (not safe))
                  (_%g4511645144%_ __tmp80016)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%g4509645147%_
                                                        (lambda ()
                                                          (if (gx#identifier?
                                                               _%stx45094%_)
                                                              (_%__kont7486174862%_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_%g4509745110%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair?
                                                        _%__stx7485774858%_)
                                                       (let ((_%e4510245152%_
                                                              (gx#syntax-e
                                                               _%__stx7485774858%_)))
                                                         (let ((_%tl4510045157%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%e4510245152%_)))
                       (_%hd4510145155%_
                        (let () (declare (not safe)) (##car _%e4510245152%_))))
                   (if (gx#stx-pair? _%tl4510045157%_)
                       (let ((_%e4510545160%_ (gx#syntax-e _%tl4510045157%_)))
                         (let ((_%tl4510345165%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4510545160%_)))
                               (_%hd4510445163%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4510545160%_))))
                           (if (gx#stx-null? _%tl4510345165%_)
                               (_%__kont7485974860%_ _%hd4510445163%_)
                               (let ()
                                 (declare (not safe))
                                 (_%g4509645147%_)))))
                       (let () (declare (not safe)) (_%g4509645147%_)))))
               (let () (declare (not safe)) (_%g4509645147%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd4505145073%_
                                       _%hd4504845065%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4504345057%_ _%g4504445060%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4504345057%_ _%g4504445060%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g4504345057%_ _%g4504445060%_)))))
               (__tmp80017
                (list gerbil/core/contract~InterfaceInfo#_g80018_
                      gerbil/core/contract~InterfaceInfo#_g80019_)))
          (declare (not safe))
          (_%g4504245251%_ __tmp80017)))
      (bind-method!
       gerbil/core/contract~InterfaceInfo#interface-info::t
       'apply-macro-expander
       gerbil/core/contract~InterfaceInfo#interface-info::apply-macro-expander
       '#f)
      (define gerbil/core/contract~InterfaceInfo#interface-info-flatten-mixin
        (lambda (_%info44876%_)
          (let _%loop44878%_ ((_%rest44880%_
                               (let ((__obj79947 _%info44876%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-direct-instance-of?
                                        __obj79947
                                        'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        __obj79947
                                        '2
                                        '#f
                                        '#f))
                                     (class-slot-ref
                                      gerbil/core/contract~InterfaceInfo#interface-info::t
                                      __obj79947
                                      'interface-mixin))))
                              (_%result44881%_ '()))
            (let* ((_%rest4488244890%_ _%rest44880%_)
                   (_%else4488444898%_ (lambda () _%result44881%_))
                   (_%K4488644908%_
                    (lambda (_%rest44901%_ _%id44902%_)
                      (let* ((_%mixin44904%_
                              (let ((__obj79948
                                     (gx#syntax-local-value _%id44902%_)))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-direct-instance-of?
                                       __obj79948
                                       'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __obj79948
                                       '2
                                       '#f
                                       '#f))
                                    (class-slot-ref
                                     gerbil/core/contract~InterfaceInfo#interface-info::t
                                     __obj79948
                                     'interface-mixin))))
                             (_%result44906%_
                              (if (member _%id44902%_
                                          _%result44881%_
                                          gx#free-identifier=?)
                                  _%result44881%_
                                  (cons _%id44902%_ _%result44881%_)))
                             (__tmp80020
                              (foldl cons _%rest44901%_ _%mixin44904%_)))
                        (declare (not safe))
                        (_%loop44878%_ __tmp80020 _%result44906%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest4488244890%_))
                  (let ((_%hd4488744911%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest4488244890%_)))
                        (_%tl4488844913%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest4488244890%_))))
                    (let* ((_%id44916%_ _%hd4488744911%_)
                           (_%rest44918%_ _%tl4488844913%_))
                      (declare (not safe))
                      (_%K4488644908%_ _%rest44918%_ _%id44916%_)))
                  (let () (declare (not safe)) (_%else4488444898%_)))))))
      (define gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__%
        (lambda (_%stx44857%_ _%is?44858%_)
          (if (gx#identifier? _%stx44857%_)
              (let ((_%e4485944861%_
                     (gx#syntax-local-value _%stx44857%_ false)))
                (if _%e4485944861%_
                    (let ((_%e44864%_ _%e4485944861%_))
                      (if (let ()
                            (declare (not safe))
                            (class-instance?
                             gerbil/core/contract~InterfaceInfo#interface-info::t
                             _%e44864%_))
                          (_%is?44858%_ _%e44864%_)
                          '#f))
                    '#f))
              '#f)))
      (define gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
        (lambda (_%stx44869%_)
          (let ((_%is?44871%_ true))
            (declare (not safe))
            (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__%
             _%stx44869%_
             _%is?44871%_))))
      (define gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?
        (lambda _g80022_
          (let ((_g80021_ (let () (declare (not safe)) (##length _g80022_))))
            (cond ((let () (declare (not safe)) (##fx= _g80021_ 1))
                   (apply (lambda (_%stx44869%_)
                            (let ()
                              (declare (not safe))
                              (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                               _%stx44869%_)))
                          _g80022_))
                  ((let () (declare (not safe)) (##fx= _g80021_ 2))
                   (apply (lambda (_%stx44873%_ _%is?44874%_)
                            (let ()
                              (declare (not safe))
                              (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__%
                               _%stx44873%_
                               _%is?44874%_)))
                          _g80022_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?
                    _g80022_)))))))))
