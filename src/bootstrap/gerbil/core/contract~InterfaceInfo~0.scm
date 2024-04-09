(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/contract~InterfaceInfo::timestamp 1712702627)
  (begin
    (define gerbil/core/contract~InterfaceInfo#_g80416_
      (##structure
       gx#syntax-quote::t
       'cast
       #f
       (gx#current-expander-context)
       '()))
    (define gerbil/core/contract~InterfaceInfo#_g80417_
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
        (lambda _%$args45075%_
          (apply make-instance
                 gerbil/core/contract~InterfaceInfo#interface-info::t
                 _%$args45075%_)))
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
        (let* ((_%g4486444878%_
                (lambda (_%g4486544875%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4486544875%_)))
               (_%g4486345072%_
                (lambda (_%g4486544881%_)
                  (if (gx#stx-pair? _%g4486544881%_)
                      (let ((_%e4486844883%_ (gx#syntax-e _%g4486544881%_)))
                        (let ((_%hd4486944886%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4486844883%_)))
                              (_%tl4487044888%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4486844883%_))))
                          (if (gx#stx-pair? _%tl4487044888%_)
                              (let ((_%e4487144891%_
                                     (gx#syntax-e _%tl4487044888%_)))
                                (let ((_%hd4487244894%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4487144891%_)))
                                      (_%tl4487344896%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4487144891%_))))
                                  (if (gx#stx-null? _%tl4487344896%_)
                                      ((lambda (_%L44899%_ _%L44900%_)
                                         (lambda (_%self44914%_ _%stx44915%_)
                                           (let* ((_%__stx7537775378%_
                                                   _%stx44915%_)
                                                  (_%g4491844931%_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx7537775378%_))))
                                             (let ((_%__kont7537975380%_
                                                    (lambda (_%L44989%_)
                                                      (let* ((_%g4500045018%_
                                                              (lambda (_%g4500145015%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g4500145015%_)))
                     (_%g4499945066%_
                      (lambda (_%g4500145021%_)
                        (if (gx#stx-pair? _%g4500145021%_)
                            (let ((_%e4500545023%_
                                   (gx#syntax-e _%g4500145021%_)))
                              (let ((_%hd4500645026%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4500545023%_)))
                                    (_%tl4500745028%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4500545023%_))))
                                (if (gx#stx-pair? _%tl4500745028%_)
                                    (let ((_%e4500845031%_
                                           (gx#syntax-e _%tl4500745028%_)))
                                      (let ((_%hd4500945034%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4500845031%_)))
                                            (_%tl4501045036%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4500845031%_))))
                                        (if (gx#stx-pair? _%tl4501045036%_)
                                            (let ((_%e4501145039%_
                                                   (gx#syntax-e
                                                    _%tl4501045036%_)))
                                              (let ((_%hd4501245042%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4501145039%_)))
                                                    (_%tl4501345044%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4501145039%_))))
                                                (if (gx#stx-null?
                                                     _%tl4501345044%_)
                                                    ((lambda (_%L45047%_
                                                              _%L45048%_
                                                              _%L45049%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '$obj)
                                 (cons _%L44989%_ '()))
                           (cons (cons (gx#datum->syntax '#f 'begin-annotation)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '@type)
                                                   (cons _%L45047%_ '()))
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'if)
                                                         (cons (cons _%L44899%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%L45049%_
                                   (cons (gx#datum->syntax '#f '$obj) '())))
                       (cons (gx#datum->syntax '#f '$obj)
                             (cons (cons _%L44900%_
                                         (cons _%L45048%_
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      '$obj)
                                                     '())))
                                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd4501245042%_
                                                     _%hd4500945034%_
                                                     _%hd4500645026%_)
                                                    (_%g4500045018%_
                                                     _%g4500145021%_))))
                                            (_%g4500045018%_
                                             _%g4500145021%_))))
                                    (_%g4500045018%_ _%g4500145021%_))))
                            (_%g4500045018%_ _%g4500145021%_)))))
                (_%g4499945066%_
                 (list (let ((__obj80343 _%self44914%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj80343
                                'gerbil/core/contract~InterfaceInfo#interface-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj80343
                                '4
                                '#f
                                '#f))
                             (class-slot-ref
                              gerbil/core/contract~InterfaceInfo#interface-info::t
                              __obj80343
                              'instance-type)))
                       (let ((__obj80344 _%self44914%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj80344
                                'gerbil/core/contract~InterfaceInfo#interface-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj80344
                                '5
                                '#f
                                '#f))
                             (class-slot-ref
                              gerbil/core/contract~InterfaceInfo#interface-info::t
                              __obj80344
                              'interface-descriptor)))
                       (let ((__obj80345 _%self44914%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj80345
                                'gerbil/core/contract~InterfaceInfo#interface-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj80345
                                '4
                                '#f
                                '#f))
                             (class-slot-ref
                              gerbil/core/contract~InterfaceInfo#interface-info::t
                              __obj80345
                              'instance-type))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont7538175382%_
                                                    (lambda ()
                                                      (let* ((_%g4493844945%_
                                                              (lambda (_%g4493944942%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g4493944942%_)))
                     (_%g4493744965%_
                      (lambda (_%g4493944948%_)
                        ((lambda (_%L44950%_) _%L44950%_) _%g4493944948%_))))
                (_%g4493744965%_
                 (let ((__obj80346 _%self44914%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-direct-instance-of?
                          __obj80346
                          'gerbil/core/contract~InterfaceInfo#interface-info::t))
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref __obj80346 '5 '#f '#f))
                       (class-slot-ref
                        gerbil/core/contract~InterfaceInfo#interface-info::t
                        __obj80346
                        'interface-descriptor))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%g4491744968%_
                                                      (lambda ()
                                                        (if (gx#identifier?
                                                             _%stx44915%_)
                                                            (_%__kont7538175382%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_%g4491844931%_))))))
                                                 (if (gx#stx-pair?
                                                      _%__stx7537775378%_)
                                                     (let ((_%e4492144973%_
                                                            (gx#syntax-e
                                                             _%__stx7537775378%_)))
                                                       (let ((_%tl4492344978%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e4492144973%_)))
                     (_%hd4492244976%_
                      (let () (declare (not safe)) (##car _%e4492144973%_))))
                 (if (gx#stx-pair? _%tl4492344978%_)
                     (let ((_%e4492444981%_ (gx#syntax-e _%tl4492344978%_)))
                       (let ((_%tl4492644986%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4492444981%_)))
                             (_%hd4492544984%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4492444981%_))))
                         (if (gx#stx-null? _%tl4492644986%_)
                             (_%__kont7537975380%_ _%hd4492544984%_)
                             (let () (declare (not safe)) (_%g4491744968%_)))))
                     (let () (declare (not safe)) (_%g4491744968%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g4491744968%_))))))))
                                       _%hd4487244894%_
                                       _%hd4486944886%_)
                                      (_%g4486444878%_ _%g4486544881%_))))
                              (_%g4486444878%_ _%g4486544881%_))))
                      (_%g4486444878%_ _%g4486544881%_)))))
          (_%g4486345072%_
           (list gerbil/core/contract~InterfaceInfo#_g80416_
                 gerbil/core/contract~InterfaceInfo#_g80417_))))
      (bind-method!
       gerbil/core/contract~InterfaceInfo#interface-info::t
       'apply-macro-expander
       gerbil/core/contract~InterfaceInfo#interface-info::apply-macro-expander
       '#f)
      (define gerbil/core/contract~InterfaceInfo#interface-info-flatten-mixin
        (lambda (_%info44697%_)
          (let _%loop44699%_ ((_%rest44701%_
                               (let ((__obj80348 _%info44697%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-direct-instance-of?
                                        __obj80348
                                        'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        __obj80348
                                        '2
                                        '#f
                                        '#f))
                                     (class-slot-ref
                                      gerbil/core/contract~InterfaceInfo#interface-info::t
                                      __obj80348
                                      'interface-mixin))))
                              (_%result44702%_ '()))
            (let* ((_%rest4470344711%_ _%rest44701%_)
                   (_%else4470544719%_ (lambda () _%result44702%_))
                   (_%K4470744729%_
                    (lambda (_%rest44722%_ _%id44723%_)
                      (let* ((_%mixin44725%_
                              (let ((__obj80347
                                     (gx#syntax-local-value _%id44723%_)))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-direct-instance-of?
                                       __obj80347
                                       'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __obj80347
                                       '2
                                       '#f
                                       '#f))
                                    (class-slot-ref
                                     gerbil/core/contract~InterfaceInfo#interface-info::t
                                     __obj80347
                                     'interface-mixin))))
                             (_%result44727%_
                              (if (member _%id44723%_
                                          _%result44702%_
                                          gx#free-identifier=?)
                                  _%result44702%_
                                  (cons _%id44723%_ _%result44702%_))))
                        (_%loop44699%_
                         (foldl cons _%rest44722%_ _%mixin44725%_)
                         _%result44727%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest4470344711%_))
                  (let ((_%hd4470844732%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest4470344711%_)))
                        (_%tl4470944734%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest4470344711%_))))
                    (let* ((_%id44737%_ _%hd4470844732%_)
                           (_%rest44739%_ _%tl4470944734%_))
                      (_%K4470744729%_ _%rest44739%_ _%id44737%_)))
                  (_%else4470544719%_))))))
      (define gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__%
        (lambda (_%stx44678%_ _%is?44679%_)
          (if (gx#identifier? _%stx44678%_)
              (let ((_%e4468044682%_
                     (gx#syntax-local-value _%stx44678%_ false)))
                (if _%e4468044682%_
                    (let ((_%e44685%_ _%e4468044682%_))
                      (if (let ()
                            (declare (not safe))
                            (class-instance?
                             gerbil/core/contract~InterfaceInfo#interface-info::t
                             _%e44685%_))
                          (_%is?44679%_ _%e44685%_)
                          '#f))
                    '#f))
              '#f)))
      (define gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
        (lambda (_%stx44690%_)
          (let ((_%is?44692%_ true))
            (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__%
             _%stx44690%_
             _%is?44692%_))))
      (define gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?
        (lambda _g80419_
          (let ((_g80418_ (let () (declare (not safe)) (##length _g80419_))))
            (cond ((let () (declare (not safe)) (##fx= _g80418_ 1))
                   (apply gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                          _g80419_))
                  ((let () (declare (not safe)) (##fx= _g80418_ 2))
                   (apply gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__%
                          _g80419_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?
                    _g80419_)))))))))
