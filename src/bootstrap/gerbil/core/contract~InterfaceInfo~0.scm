(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/contract~InterfaceInfo::timestamp 1770607516)
  (begin
    (define gerbil/core/contract~InterfaceInfo#_g98765_
      (##structure
       gx#syntax-quote::t
       'cast
       #f
       (gx#current-expander-context)
       '()))
    (define gerbil/core/contract~InterfaceInfo#_g98766_
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
           unchecked-implementation-methods
           implementation-macros
           unchecked-implementation-macros)
         '()
         '#f))
      (define gerbil/core/contract~InterfaceInfo#interface-info?
        (make-class-predicate
         gerbil/core/contract~InterfaceInfo#interface-info::t))
      (define gerbil/core/contract~InterfaceInfo#make-interface-info
        (lambda _%$args49472%_
          (apply make-instance
                 gerbil/core/contract~InterfaceInfo#interface-info::t
                 _%$args49472%_)))
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
      (define gerbil/core/contract~InterfaceInfo#interface-info-implementation-macros
        (make-class-slot-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'implementation-macros))
      (define gerbil/core/contract~InterfaceInfo#interface-info-unchecked-implementation-macros
        (make-class-slot-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'unchecked-implementation-macros))
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
      (define gerbil/core/contract~InterfaceInfo#interface-info-implementation-macros-set!
        (make-class-slot-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'implementation-macros))
      (define gerbil/core/contract~InterfaceInfo#interface-info-unchecked-implementation-macros-set!
        (make-class-slot-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'unchecked-implementation-macros))
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
      (define gerbil/core/contract~InterfaceInfo#&interface-info-implementation-macros
        (make-class-slot-unchecked-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'implementation-macros))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-unchecked-implementation-macros
        (make-class-slot-unchecked-accessor
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'unchecked-implementation-macros))
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
      (define gerbil/core/contract~InterfaceInfo#&interface-info-implementation-macros-set!
        (make-class-slot-unchecked-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'implementation-macros))
      (define gerbil/core/contract~InterfaceInfo#&interface-info-unchecked-implementation-macros-set!
        (make-class-slot-unchecked-mutator
         gerbil/core/contract~InterfaceInfo#interface-info::t
         'unchecked-implementation-macros))
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
        (let* ((_%g4927749291%_
                (lambda (_%g4927849288%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4927849288%_)))
               (_%g4927649469%_
                (lambda (_%g4927849294%_)
                  (if (gx#stx-pair? _%g4927849294%_)
                      (let ((_%e4928149296%_ (gx#syntax-e _%g4927849294%_)))
                        (let ((_%hd4928249299%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4928149296%_)))
                              (_%tl4928349301%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4928149296%_))))
                          (if (gx#stx-pair? _%tl4928349301%_)
                              (let ((_%e4928449304%_
                                     (gx#syntax-e _%tl4928349301%_)))
                                (let ((_%hd4928549307%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4928449304%_)))
                                      (_%tl4928649309%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4928449304%_))))
                                  (if (gx#stx-null? _%tl4928649309%_)
                                      ((lambda (_%g4927949312%_
                                                _%g4928049313%_)
                                         (lambda (_%self49327%_ _%stx49328%_)
                                           (let* ((_%__stx9215092151%_
                                                   _%stx49328%_)
                                                  (_%g4933149344%_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx9215092151%_))))
                                             (let ((_%__kont9215292153%_
                                                    (lambda (_%g4933349402%_)
                                                      (let* ((_%g4941349427%_
                                                              (lambda (_%g4941449424%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g4941449424%_)))
                     (_%g4941249463%_
                      (lambda (_%g4941449430%_)
                        (if (gx#stx-pair? _%g4941449430%_)
                            (let ((_%e4941749432%_
                                   (gx#syntax-e _%g4941449430%_)))
                              (let ((_%hd4941849435%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4941749432%_)))
                                    (_%tl4941949437%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4941749432%_))))
                                (if (gx#stx-pair? _%tl4941949437%_)
                                    (let ((_%e4942049440%_
                                           (gx#syntax-e _%tl4941949437%_)))
                                      (let ((_%hd4942149443%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4942049440%_)))
                                            (_%tl4942249445%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4942049440%_))))
                                        (if (gx#stx-null? _%tl4942249445%_)
                                            ((lambda (_%g4941549448%_
                                                      _%g4941649449%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '$obj)
                         (cons _%g4933349402%_ '()))
                   (cons (cons (gx#datum->syntax '#f 'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@type)
                                           (cons _%g4941649449%_ '()))
                                     (cons (cons (gx#datum->syntax '#f 'if)
                                                 (cons (cons _%g4927949312%_
                                                             (cons _%g4941649449%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f '$obj) '())))
               (cons (gx#datum->syntax '#f '$obj)
                     (cons (cons _%g4928049313%_
                                 (cons _%g4941549448%_
                                       (cons (gx#datum->syntax '#f '$obj)
                                             '())))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd4942149443%_
                                             _%hd4941849435%_)
                                            (_%g4941349427%_
                                             _%g4941449430%_))))
                                    (_%g4941349427%_ _%g4941449430%_))))
                            (_%g4941349427%_ _%g4941449430%_)))))
                (_%g4941249463%_
                 (list (let ((__obj98682 _%self49327%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj98682
                                'gerbil.core#runtime-type-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj98682
                                '3
                                '#f
                                '#f))
                             (class-slot-ref
                              gerbil/core/mop~MOP-2#runtime-type-info::t
                              __obj98682
                              'type-descriptor)))
                       (let ((__obj98683 _%self49327%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj98683
                                'gerbil/core/contract~InterfaceInfo#interface-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj98683
                                '8
                                '#f
                                '#f))
                             (class-slot-ref
                              gerbil/core/contract~InterfaceInfo#interface-info::t
                              __obj98683
                              'interface-descriptor))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont9215492155%_
                                                    (lambda ()
                                                      (let* ((_%g4935149358%_
                                                              (lambda (_%g4935249355%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g4935249355%_)))
                     (_%g4935049378%_
                      (lambda (_%g4935249361%_)
                        ((lambda (_%g4935349363%_) _%g4935349363%_)
                         _%g4935249361%_))))
                (_%g4935049378%_
                 (let ((__obj98684 _%self49327%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-direct-instance-of?
                          __obj98684
                          'gerbil/core/contract~InterfaceInfo#interface-info::t))
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref __obj98684 '8 '#f '#f))
                       (class-slot-ref
                        gerbil/core/contract~InterfaceInfo#interface-info::t
                        __obj98684
                        'interface-descriptor))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%g4933049381%_
                                                      (lambda ()
                                                        (if (gx#identifier?
                                                             _%stx49328%_)
                                                            (_%__kont9215492155%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_%g4933149344%_))))))
                                                 (if (gx#stx-pair?
                                                      _%__stx9215092151%_)
                                                     (let ((_%e4933449386%_
                                                            (gx#syntax-e
                                                             _%__stx9215092151%_)))
                                                       (let ((_%tl4933649391%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e4933449386%_)))
                     (_%hd4933549389%_
                      (let () (declare (not safe)) (##car _%e4933449386%_))))
                 (if (gx#stx-pair? _%tl4933649391%_)
                     (let ((_%e4933749394%_ (gx#syntax-e _%tl4933649391%_)))
                       (let ((_%tl4933949399%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4933749394%_)))
                             (_%hd4933849397%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4933749394%_))))
                         (if (gx#stx-null? _%tl4933949399%_)
                             (_%__kont9215292153%_ _%hd4933849397%_)
                             (let () (declare (not safe)) (_%g4933049381%_)))))
                     (let () (declare (not safe)) (_%g4933049381%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g4933049381%_))))))))
                                       _%hd4928549307%_
                                       _%hd4928249299%_)
                                      (_%g4927749291%_ _%g4927849294%_))))
                              (_%g4927749291%_ _%g4927849294%_))))
                      (_%g4927749291%_ _%g4927849294%_)))))
          (_%g4927649469%_
           (list gerbil/core/contract~InterfaceInfo#_g98765_
                 gerbil/core/contract~InterfaceInfo#_g98766_))))
      (bind-method!
       gerbil/core/contract~InterfaceInfo#interface-info::t
       'apply-macro-expander
       gerbil/core/contract~InterfaceInfo#interface-info::apply-macro-expander
       '#f)
      (define gerbil/core/contract~InterfaceInfo#interface-identifier->precedence-list
        (lambda (_%id49153%_)
          (cons _%id49153%_
                (let ((__obj98685 (gx#syntax-local-value _%id49153%_)))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj98685
                         'gerbil/core/contract~InterfaceInfo#interface-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj98685 '7 '#f '#f))
                      (class-slot-ref
                       gerbil/core/contract~InterfaceInfo#interface-info::t
                       __obj98685
                       'interface-precedence-list))))))
      (define gerbil/core/contract~InterfaceInfo#interface-mixin->precedence-list
        (lambda (_%lst49148%_)
          (let ((_g98767_
                 (c4-linearize
                  '()
                  _%lst49148%_
                  'get-precedence-list:
                  gerbil/core/contract~InterfaceInfo#interface-identifier->precedence-list
                  'struct:
                  false
                  'eq:
                  gx#free-identifier=?)))
            (begin
              (let ((_g98768_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g98767_)
                           (##values-length _g98767_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g98768_ 2)))
                    (error "Context expects 2 values" _g98768_)))
              (let ((_%linearized49150%_
                     (let () (declare (not safe)) (##values-ref _g98767_ 0)))
                    (_%_49151%_
                     (let () (declare (not safe)) (##values-ref _g98767_ 1))))
                _%linearized49150%_)))))
      (define gerbil/core/contract~InterfaceInfo#interface-info-method-signature
        (lambda (_%info49138%_ _%method49139%_)
          (let ((_%sig4914049144%_
                 (find (lambda (_%sig49142%_)
                         (eq? _%method49139%_ (car _%sig49142%_)))
                       (let ((__obj98686 _%info49138%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj98686
                                'gerbil/core/contract~InterfaceInfo#interface-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj98686
                                '6
                                '#f
                                '#f))
                             (class-slot-ref
                              gerbil/core/contract~InterfaceInfo#interface-info::t
                              __obj98686
                              'interface-methods))))))
            (if _%sig4914049144%_
                (let ((_%sig49146%_ _%sig4914049144%_)) (cdr _%sig49146%_))
                '#f))))
      (define gerbil/core/contract~InterfaceInfo#interface-info-method-offset
        (lambda (_%info49095%_ _%method49096%_)
          (let ((_%methods49098%_
                 (let ((__obj98687 _%info49095%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-direct-instance-of?
                          __obj98687
                          'gerbil/core/contract~InterfaceInfo#interface-info::t))
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref __obj98687 '6 '#f '#f))
                       (class-slot-ref
                        gerbil/core/contract~InterfaceInfo#interface-info::t
                        __obj98687
                        'interface-methods)))))
            (let _%loop49100%_ ((_%rest49102%_ _%methods49098%_)
                                (_%index49103%_ '2))
              (let* ((_%rest4910449112%_ _%rest49102%_)
                     (_%else4910649120%_ (lambda () '#f))
                     (_%K4910849126%_
                      (lambda (_%rest49123%_ _%method-sig49124%_)
                        (if (eq? _%method49096%_ (car _%method-sig49124%_))
                            _%index49103%_
                            (_%loop49100%_
                             _%rest49123%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%index49103%_ '1)))))))
                (if (pair? _%rest4910449112%_)
                    (let ((_%hd4910949129%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest4910449112%_)))
                          (_%tl4911049131%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest4910449112%_))))
                      (let* ((_%method-sig49134%_ _%hd4910949129%_)
                             (_%rest49136%_ _%tl4911049131%_))
                        (_%K4910849126%_ _%rest49136%_ _%method-sig49134%_)))
                    (_%else4910649120%_)))))))
      (define gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__%
        (lambda (_%stx49077%_ _%is?49078%_)
          (if (gx#identifier? _%stx49077%_)
              (let ((_%e4907949081%_
                     (gx#syntax-local-value _%stx49077%_ false)))
                (if _%e4907949081%_
                    (let ((_%e49083%_ _%e4907949081%_))
                      (if (let ()
                            (declare (not safe))
                            (class-instance?
                             gerbil/core/contract~InterfaceInfo#interface-info::t
                             _%e49083%_))
                          (_%is?49078%_ _%e49083%_)
                          '#f))
                    '#f))
              '#f)))
      (define gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
        (lambda (_%stx49088%_)
          (let ((_%is?49090%_ true))
            (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__%
             _%stx49088%_
             _%is?49090%_))))
      (define gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?
        (lambda _g98769_
          (let ((_g98770_ (let () (declare (not safe)) (##length _g98769_))))
            (cond ((let () (declare (not safe)) (##fx= _g98770_ 1))
                   (apply gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                          _g98769_))
                  ((let () (declare (not safe)) (##fx= _g98770_ 2))
                   (apply gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__%
                          _g98769_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?
                    _g98769_)))))))))
