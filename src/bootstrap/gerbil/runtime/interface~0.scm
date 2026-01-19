(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1768865822)
  (begin
    (define CastError::t
      (let ((__tmp116160 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp116160
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (__make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _%$args116150%_
        (apply make-instance CastError::t _%$args116150%_)))
    (define CastError-message
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor CastError::t 'message)))
    (define CastError-irritants
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor CastError::t 'irritants)))
    (define CastError-where
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor CastError::t 'where)))
    (define CastError-continuation
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor CastError::t 'continuation)))
    (define CastError-message-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator CastError::t 'message)))
    (define CastError-irritants-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator CastError::t 'irritants)))
    (define CastError-where-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator CastError::t 'where)))
    (define CastError-continuation-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator CastError::t 'continuation)))
    (define &CastError-message
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor CastError::t 'message)))
    (define &CastError-irritants
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor CastError::t 'irritants)))
    (define &CastError-where
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor CastError::t 'where)))
    (define &CastError-continuation
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor CastError::t 'continuation)))
    (define &CastError-message-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator CastError::t 'message)))
    (define &CastError-irritants-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator CastError::t 'irritants)))
    (define &CastError-where-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator CastError::t 'where)))
    (define &CastError-continuation-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator CastError::t 'continuation)))
    (define CastError:::init! Error:::init!)
    (let ()
      (declare (not safe))
      (__bind-method!__% CastError::t ':init! CastError:::init! '#f))
    (define raise-cast-error
      (lambda (_%where116024%_ _%message116025%_ . _%irritants116026%_)
        (let ((__tmp116161
               (let ((__obj116153
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (CastError:::init!
                    __obj116153
                    _%message116025%_
                    'where:
                    _%where116024%_
                    'irritants:
                    _%irritants116026%_))
                 __obj116153)))
          (declare (not safe))
          (raise __tmp116161))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp116163 (list)) (__tmp116162 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp116163
         '(object)
         __tmp116162
         '#f)))
    (define interface-instance?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-instance::t)))
    (define make-interface-instance
      (lambda _%$args116021%_
        (apply make-instance interface-instance::t _%$args116021%_)))
    (define interface-instance-object
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor interface-instance::t 'object)))
    (define interface-instance-object-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator interface-instance::t 'object)))
    (define &interface-instance-object
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor interface-instance::t 'object)))
    (define &interface-instance-object-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator interface-instance::t 'object)))
    (define interface-descriptor::t
      (let ((__tmp116165 (list))
            (__tmp116164
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil#interface-descriptor::t
         'interface-descriptor
         __tmp116165
         '(type methods index)
         __tmp116164
         ':init!)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _%$args116018%_
        (apply make-instance interface-descriptor::t _%$args116018%_)))
    (define interface-descriptor-type
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor interface-descriptor::t 'type)))
    (define interface-descriptor-methods
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor interface-descriptor::t 'methods)))
    (define interface-descriptor-index
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor interface-descriptor::t 'index)))
    (define interface-descriptor-type-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator interface-descriptor::t 'type)))
    (define interface-descriptor-methods-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator interface-descriptor::t 'methods)))
    (define interface-descriptor-index-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator interface-descriptor::t 'index)))
    (define &interface-descriptor-type
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor interface-descriptor::t 'type)))
    (define &interface-descriptor-methods
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         interface-descriptor::t
         'methods)))
    (define &interface-descriptor-index
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor interface-descriptor::t 'index)))
    (define &interface-descriptor-type-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator interface-descriptor::t 'type)))
    (define &interface-descriptor-methods-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         interface-descriptor::t
         'methods)))
    (define &interface-descriptor-index-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator interface-descriptor::t 'index)))
    (define __next-interface-index '0)
    (define __next-interface-index-lock (vector '0 '#f))
    (define __get-next-interface-index
      (lambda ()
        (let ()
          (declare (not interrupts-enabled))
          (let _%again115998%_ ((_%spin116001%_ '0))
            (if (let ((__tmp116166
                       (let ()
                         (declare (not safe))
                         (##vector-cas!
                          __next-interface-index-lock
                          '0
                          '1
                          '0))))
                  (declare (not safe))
                  (##fx= __tmp116166 '0))
                (let ((__tmp116167 (current-thread)))
                  (declare (not safe))
                  (##vector-set! __next-interface-index-lock '1 __tmp116167))
                (if (let () (declare (not safe)) (##fx< _%spin116001%_ '10))
                    (let ()
                      (let () (declare (not safe)) (##thread-yield!))
                      (_%again115998%_
                       (let ()
                         (declare (not safe))
                         (##fx+ _%spin116001%_ '1))))
                    (let ((_%owner116007%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref __next-interface-index-lock '1))))
                      (if (eq? _%owner116007%_ (macro-current-thread))
                          (let ()
                            (declare (not safe))
                            (##thread-deadlock-action!))
                          (if (macro-thread-end-condvar _%owner116007%_)
                              (let ()
                                (let () (declare (not safe)) (##thread-yield!))
                                (_%again115998%_ '0))
                              (let ()
                                (declare (not safe))
                                (##thread-deadlock-action!)))))))))
        (let ((_%$r116015%_
               (let ((_%index116013%_ __next-interface-index))
                 (set! __next-interface-index
                       (let ()
                         (declare (not safe))
                         (##fx+ _%index116013%_ '1)))
                 _%index116013%_)))
          (let ()
            (declare (not safe))
            (##vector-set! __next-interface-index-lock '1 '#f))
          (let ()
            (declare (not safe))
            (##vector-cas! __next-interface-index-lock '0 '0 '1))
          _%$r116015%_)))
    (define interface-descriptor:::init!
      (lambda (_%self115979%_ _%type115980%_ _%methods115981%_)
        (let ((_%self115984%_ _%self115979%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self115984%_
             _%type115980%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self115984%_
             _%methods115981%_
             '2
             '#f
             '#f))
          (let ((__tmp116168 (__get-next-interface-index)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self115984%_
             __tmp116168
             '3
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       interface-descriptor::t
       ':init!
       interface-descriptor:::init!
       '#f))
    (define prototype-table::t
      (let ((__tmp116170 (list))
            (__tmp116169
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil#prototype-table::t
         'prototype-table
         __tmp116170
         '(lock table)
         __tmp116169
         ':init!)))
    (define prototype-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate prototype-table::t)))
    (define make-prototype-table
      (lambda _%$args115854%_
        (apply make-instance prototype-table::t _%$args115854%_)))
    (define prototype-table-lock
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor prototype-table::t 'lock)))
    (define prototype-table-table
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor prototype-table::t 'table)))
    (define prototype-table-lock-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator prototype-table::t 'lock)))
    (define prototype-table-table-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator prototype-table::t 'table)))
    (define &prototype-table-lock
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor prototype-table::t 'lock)))
    (define &prototype-table-table
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor prototype-table::t 'table)))
    (define &prototype-table-lock-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator prototype-table::t 'lock)))
    (define &prototype-table-table-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator prototype-table::t 'table)))
    (define prototype-table:::init!
      (lambda (_%self115840%_)
        (let ((_%self115843%_ _%self115840%_))
          (let ((__tmp116171 (vector '0 '#f)))
            (declare (not safe))
            (##unchecked-structure-set! _%self115843%_ __tmp116171 '1 '#f '#f))
          (let ((__tmp116172
                 (let ()
                   (declare (not safe))
                   (##make-vector __next-interface-index '#f))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self115843%_
             __tmp116172
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       prototype-table::t
       ':init!
       prototype-table:::init!
       '#f))
    (define __prototype-table-get
      (lambda (_%prototable115697%_ _%descriptor115698%_)
        (let* ((_%prototable115701%_ _%prototable115697%_)
               (_%descriptor115709%_ _%descriptor115698%_))
          (____prototype-table-get
           _%prototable115701%_
           _%descriptor115709%_))))
    (define ____prototype-table-get
      (lambda (_%prototable115650%_ _%descriptor115651%_)
        (let* ((_%prototable115654%_ _%prototable115650%_)
               (_%descriptor115662%_ _%descriptor115651%_))
          (declare (not safe))
          (let ((_%lock115672%_
                 (##unchecked-structure-ref _%prototable115654%_ '1 '#f '#f))
                (_%index115673%_
                 (##unchecked-structure-ref _%descriptor115662%_ '3 '#f '#f)))
            (let ()
              (declare (not interrupts-enabled))
              (let _%again115677%_ ((_%spin115680%_ '0))
                (if (##fx= (##vector-cas! _%lock115672%_ '0 '1 '0) '0)
                    (##vector-set! _%lock115672%_ '1 (current-thread))
                    (if (##fx< _%spin115680%_ '10)
                        (let ()
                          (##thread-yield!)
                          (_%again115677%_ (##fx+ _%spin115680%_ '1)))
                        (let ((_%owner115686%_
                               (##vector-ref _%lock115672%_ '1)))
                          (if (eq? _%owner115686%_ (macro-current-thread))
                              (##thread-deadlock-action!)
                              (if (macro-thread-end-condvar _%owner115686%_)
                                  (let ()
                                    (##thread-yield!)
                                    (_%again115677%_ '0))
                                  (##thread-deadlock-action!))))))))
            (let ((_%$r115694%_
                   (let ((_%tab115692%_
                          (##unchecked-structure-ref
                           _%prototable115654%_
                           '2
                           '#f
                           '#f)))
                     (if (##fx< _%index115673%_ (vector-length _%tab115692%_))
                         (vector-ref _%tab115692%_ _%index115673%_)
                         '#f))))
              (##vector-set! _%lock115672%_ '1 '#f)
              (##vector-cas! _%lock115672%_ '0 '0 '1)
              _%$r115694%_)))))
    (define __prototype-table-set!
      (lambda (_%prototable115628%_ _%descriptor115629%_ _%prototype115630%_)
        (let* ((_%prototable115633%_ _%prototable115628%_)
               (_%descriptor115641%_ _%descriptor115629%_))
          (____prototype-table-set!
           _%prototable115633%_
           _%descriptor115641%_
           _%prototype115630%_))))
    (define ____prototype-table-set!
      (lambda (_%prototable115575%_ _%descriptor115576%_ _%prototype115577%_)
        (let* ((_%prototable115580%_ _%prototable115575%_)
               (_%descriptor115588%_ _%descriptor115576%_))
          (declare (not safe))
          (let ((_%lock115598%_
                 (##unchecked-structure-ref _%prototable115580%_ '1 '#f '#f))
                (_%index115599%_
                 (##unchecked-structure-ref _%descriptor115588%_ '3 '#f '#f)))
            (let ()
              (declare (not interrupts-enabled))
              (let _%again115603%_ ((_%spin115606%_ '0))
                (if (##fx= (##vector-cas! _%lock115598%_ '0 '1 '0) '0)
                    (##vector-set! _%lock115598%_ '1 (current-thread))
                    (if (##fx< _%spin115606%_ '10)
                        (let ()
                          (##thread-yield!)
                          (_%again115603%_ (##fx+ _%spin115606%_ '1)))
                        (let ((_%owner115612%_
                               (##vector-ref _%lock115598%_ '1)))
                          (if (eq? _%owner115612%_ (macro-current-thread))
                              (##thread-deadlock-action!)
                              (if (macro-thread-end-condvar _%owner115612%_)
                                  (let ()
                                    (##thread-yield!)
                                    (_%again115603%_ '0))
                                  (##thread-deadlock-action!))))))))
            (let ((_%$r115625%_
                   (let ((_%tab115618%_
                          (##unchecked-structure-ref
                           _%prototable115580%_
                           '2
                           '#f
                           '#f)))
                     (if (##fx< _%index115599%_ (vector-length _%tab115618%_))
                         (vector-set!
                          _%tab115618%_
                          _%index115599%_
                          _%prototype115577%_)
                         (let* ((_%new-size115620%_ __next-interface-index)
                                (_%new-tab115622%_
                                 (##make-vector _%new-size115620%_ '#f)))
                           (subvector-move!
                            _%tab115618%_
                            '0
                            (vector-length _%tab115618%_)
                            _%new-tab115622%_
                            '0)
                           (vector-set!
                            _%new-tab115622%_
                            _%index115599%_
                            _%prototype115577%_)
                           (##unchecked-structure-set!
                            _%prototable115580%_
                            _%new-tab115622%_
                            '2
                            '#f
                            '#f))))))
              (##vector-set! _%lock115598%_ '1 '#f)
              (##vector-cas! _%lock115598%_ '0 '0 '1)
              _%$r115625%_)))))
    (define interface-subclass?
      (lambda (_%klass115567%_)
        (let ((_%super115568115570%_
               (let () (declare (not safe)) (##type-super _%klass115567%_))))
          (if _%super115568115570%_
              (let ((_%super115573%_ _%super115568115570%_))
                (eq? (let () (declare (not safe)) (##type-id _%super115573%_))
                     (let ()
                       (declare (not safe))
                       (##type-id interface-instance::t))))
              '#f))))
    (define class-type-interface-table
      (lambda (_%klass115559%_)
        (let ((_%$e115561%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%klass115559%_ '13 '#f '#f))))
          (if _%$e115561%_
              _%$e115561%_
              (let ((_%tab115565%_
                     (let ((__obj116157
                            (let ()
                              (declare (not safe))
                              (##structure prototype-table::t '#f '#f))))
                       (prototype-table:::init! __obj116157)
                       __obj116157)))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%klass115559%_
                   _%tab115565%_
                   '13
                   '#f
                   '#f))
                _%tab115565%_)))))
    (define create-prototype
      (lambda (_%descriptor115399%_ _%klass115400%_ _%obj-klass115401%_)
        (let ((_%method-table115403%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass115401%_))))
          (let _%loop115406%_ ((_%rest115409%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor115399%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count115411%_ '0)
                               (_%methods115413%_ '()))
            (let* ((_%rest115415115423%_ _%rest115409%_)
                   (_%else115417115479%_
                    (lambda ()
                      (let ((_%prototype115431%_
                             (let ((__obj116158
                                    (let ((__tmp116173
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count115411%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass115400%_
                                       __tmp116173))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj116158 '#f))
                               __obj116158)))
                        (let _%loop115434%_ ((_%rest115436%_ _%methods115413%_)
                                             (_%off115437%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count115411%_ '1))))
                          (let* ((_%rest115439115447%_ _%rest115436%_)
                                 (_%else115441115460%_
                                  (lambda ()
                                    (let ((_%tab115455%_
                                           (class-type-interface-table
                                            _%obj-klass115401%_)))
                                      (____prototype-table-set!
                                       _%tab115455%_
                                       _%descriptor115399%_
                                       _%prototype115431%_)
                                      ((lambda (_%prototype115458%_)
                                         _%prototype115458%_)
                                       _%prototype115431%_))))
                                 (_%K115443115467%_
                                  (lambda (_%rest115463%_ _%method115464%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype115431%_
                                       _%method115464%_
                                       _%off115437%_
                                       _%klass115400%_
                                       '#f))
                                    (_%loop115434%_
                                     _%rest115463%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off115437%_ '1))))))
                            (if (pair? _%rest115439115447%_)
                                (let ((_%hd115444115470%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest115439115447%_)))
                                      (_%tl115445115472%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest115439115447%_))))
                                  (let* ((_%method115475%_ _%hd115444115470%_)
                                         (_%rest115477%_ _%tl115445115472%_))
                                    (_%K115443115467%_
                                     _%rest115477%_
                                     _%method115475%_)))
                                (_%else115441115460%_)))))))
                   (_%K115419115547%_
                    (lambda (_%rest115482%_ _%method-spec115483%_)
                      (if (pair? _%method-spec115483%_)
                          (let _%loop-inner115487%_ ((_%methods-rest115490%_
                                                      _%method-spec115483%_))
                            (let* ((_%methods-rest115492115500%_
                                    _%methods-rest115490%_)
                                   (_%else115494115512%_
                                    (lambda ()
                                      (let ((_%tab115508%_
                                             (class-type-interface-table
                                              _%obj-klass115401%_)))
                                        (____prototype-table-set!
                                         _%tab115508%_
                                         _%descriptor115399%_
                                         '#!void)
                                        ((lambda (_%method115510%_)
                                           (raise-cast-error
                                            'create-prototype
                                            '"cannot create interface prototype; missing method"
                                            'interface:
                                            _%descriptor115399%_
                                            'class:
                                            _%obj-klass115401%_
                                            'method:
                                            _%method115510%_)
                                           '#!void)
                                         _%method-spec115483%_))))
                                   (_%K115496115525%_
                                    (lambda (_%methods-rest115515%_
                                             _%method-name115516%_)
                                      (let ((_%$e115519%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table115403%_
                                                _%method-name115516%_
                                                '#f))))
                                        (if _%$e115519%_
                                            ((lambda (_%method115522%_)
                                               (_%loop115406%_
                                                _%rest115482%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%count115411%_ '1))
                                                (cons _%method115522%_
                                                      _%methods115413%_)))
                                             _%$e115519%_)
                                            (_%loop-inner115487%_
                                             _%methods-rest115515%_))))))
                              (if (pair? _%methods-rest115492115500%_)
                                  (let ((_%hd115497115528%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%methods-rest115492115500%_)))
                                        (_%tl115498115530%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%methods-rest115492115500%_))))
                                    (let* ((_%method-name115533%_
                                            _%hd115497115528%_)
                                           (_%methods-rest115535%_
                                            _%tl115498115530%_))
                                      (_%K115496115525%_
                                       _%methods-rest115535%_
                                       _%method-name115533%_)))
                                  (_%else115494115512%_))))
                          (let ((_%$e115537%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table115403%_
                                    _%method-spec115483%_
                                    '#f))))
                            (if _%$e115537%_
                                ((lambda (_%method115540%_)
                                   (_%loop115406%_
                                    _%rest115482%_
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%count115411%_ '1))
                                    (cons _%method115540%_ _%methods115413%_)))
                                 _%$e115537%_)
                                (let ((_%tab115543%_
                                       (class-type-interface-table
                                        _%obj-klass115401%_)))
                                  (____prototype-table-set!
                                   _%tab115543%_
                                   _%descriptor115399%_
                                   '#!void)
                                  ((lambda (_%method115545%_)
                                     (raise-cast-error
                                      'create-prototype
                                      '"cannot create interface prototype; missing method"
                                      'interface:
                                      _%descriptor115399%_
                                      'class:
                                      _%obj-klass115401%_
                                      'method:
                                      _%method115545%_)
                                     '#!void)
                                   _%method-spec115483%_))))))))
              (if (pair? _%rest115415115423%_)
                  (let ((_%hd115420115550%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest115415115423%_)))
                        (_%tl115421115552%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest115415115423%_))))
                    (let* ((_%method-spec115555%_ _%hd115420115550%_)
                           (_%rest115557%_ _%tl115421115552%_))
                      (_%K115419115547%_
                       _%rest115557%_
                       _%method-spec115555%_)))
                  (_%else115417115479%_)))))))
    (define try-create-prototype
      (lambda (_%descriptor115239%_ _%klass115240%_ _%obj-klass115241%_)
        (let ((_%method-table115243%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass115241%_))))
          (let _%loop115246%_ ((_%rest115249%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor115239%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count115251%_ '0)
                               (_%methods115253%_ '()))
            (let* ((_%rest115255115263%_ _%rest115249%_)
                   (_%else115257115319%_
                    (lambda ()
                      (let ((_%prototype115271%_
                             (let ((__obj116159
                                    (let ((__tmp116174
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count115251%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass115240%_
                                       __tmp116174))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj116159 '#f))
                               __obj116159)))
                        (let _%loop115274%_ ((_%rest115276%_ _%methods115253%_)
                                             (_%off115277%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count115251%_ '1))))
                          (let* ((_%rest115279115287%_ _%rest115276%_)
                                 (_%else115281115300%_
                                  (lambda ()
                                    (let ((_%tab115295%_
                                           (class-type-interface-table
                                            _%obj-klass115241%_)))
                                      (____prototype-table-set!
                                       _%tab115295%_
                                       _%descriptor115239%_
                                       _%prototype115271%_)
                                      ((lambda (_%prototype115298%_)
                                         _%prototype115298%_)
                                       _%prototype115271%_))))
                                 (_%K115283115307%_
                                  (lambda (_%rest115303%_ _%method115304%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype115271%_
                                       _%method115304%_
                                       _%off115277%_
                                       _%klass115240%_
                                       '#f))
                                    (_%loop115274%_
                                     _%rest115303%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off115277%_ '1))))))
                            (if (pair? _%rest115279115287%_)
                                (let ((_%hd115284115310%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest115279115287%_)))
                                      (_%tl115285115312%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest115279115287%_))))
                                  (let* ((_%method115315%_ _%hd115284115310%_)
                                         (_%rest115317%_ _%tl115285115312%_))
                                    (_%K115283115307%_
                                     _%rest115317%_
                                     _%method115315%_)))
                                (_%else115281115300%_)))))))
                   (_%K115259115387%_
                    (lambda (_%rest115322%_ _%method-spec115323%_)
                      (if (pair? _%method-spec115323%_)
                          (let _%loop-inner115327%_ ((_%methods-rest115330%_
                                                      _%method-spec115323%_))
                            (let* ((_%methods-rest115332115340%_
                                    _%methods-rest115330%_)
                                   (_%else115334115352%_
                                    (lambda ()
                                      (let ((_%tab115348%_
                                             (class-type-interface-table
                                              _%obj-klass115241%_)))
                                        (____prototype-table-set!
                                         _%tab115348%_
                                         _%descriptor115239%_
                                         '#!void)
                                        ((lambda (_%method115350%_) '#f)
                                         _%method-spec115323%_))))
                                   (_%K115336115365%_
                                    (lambda (_%methods-rest115355%_
                                             _%method-name115356%_)
                                      (let ((_%$e115359%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table115243%_
                                                _%method-name115356%_
                                                '#f))))
                                        (if _%$e115359%_
                                            ((lambda (_%method115362%_)
                                               (_%loop115246%_
                                                _%rest115322%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%count115251%_ '1))
                                                (cons _%method115362%_
                                                      _%methods115253%_)))
                                             _%$e115359%_)
                                            (_%loop-inner115327%_
                                             _%methods-rest115355%_))))))
                              (if (pair? _%methods-rest115332115340%_)
                                  (let ((_%hd115337115368%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%methods-rest115332115340%_)))
                                        (_%tl115338115370%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%methods-rest115332115340%_))))
                                    (let* ((_%method-name115373%_
                                            _%hd115337115368%_)
                                           (_%methods-rest115375%_
                                            _%tl115338115370%_))
                                      (_%K115336115365%_
                                       _%methods-rest115375%_
                                       _%method-name115373%_)))
                                  (_%else115334115352%_))))
                          (let ((_%$e115377%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table115243%_
                                    _%method-spec115323%_
                                    '#f))))
                            (if _%$e115377%_
                                ((lambda (_%method115380%_)
                                   (_%loop115246%_
                                    _%rest115322%_
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%count115251%_ '1))
                                    (cons _%method115380%_ _%methods115253%_)))
                                 _%$e115377%_)
                                (let ((_%tab115383%_
                                       (class-type-interface-table
                                        _%obj-klass115241%_)))
                                  (____prototype-table-set!
                                   _%tab115383%_
                                   _%descriptor115239%_
                                   '#!void)
                                  ((lambda (_%method115385%_) '#f)
                                   _%method-spec115323%_))))))))
              (if (pair? _%rest115255115263%_)
                  (let ((_%hd115260115390%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest115255115263%_)))
                        (_%tl115261115392%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest115255115263%_))))
                    (let* ((_%method-spec115395%_ _%hd115260115390%_)
                           (_%rest115397%_ _%tl115261115392%_))
                      (_%K115259115387%_
                       _%rest115397%_
                       _%method-spec115395%_)))
                  (_%else115257115319%_)))))))
    (define cast
      (lambda (_%descriptor115145%_ _%obj115147%_)
        (let* ((_%klass115150%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor115145%_ '1 '#f '#f)))
               (_%klass-id115153%_
                (let () (declare (not safe)) (##type-id _%klass115150%_))))
          (let _%loop115157%_ ((_%obj115160%_ _%obj115147%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass115163%_
                    (let () (declare (not safe)) (class-of _%obj115160%_)))
                   (_%obj-klass-id115166%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass115163%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id115153%_ _%obj-klass-id115166%_))
                  ((lambda (_%obj115171%_) _%obj115171%_) _%obj115160%_)
                  (if (interface-subclass? _%obj-klass115163%_)
                      (let* ((_%tab115174%_
                              (class-type-interface-table _%obj-klass115163%_))
                             (_%$e115177%_
                              (____prototype-table-get
                               _%tab115174%_
                               _%descriptor115145%_)))
                        (if _%$e115177%_
                            ((lambda (_%prototype115180%_)
                               (if (eq? _%prototype115180%_ '#!void)
                                   (_%loop115157%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj115160%_
                                       '1
                                       '#f
                                       '#f)))
                                   ((lambda (_%descriptor115183%_
                                             _%prototype115184%_
                                             _%obj115185%_)
                                      (if _%prototype115184%_
                                          (let ((_%instance115187%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype115184%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance115187%_
                                               _%obj115185%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance115187%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor115183%_
                                             'class:
                                             (let ()
                                               (declare (not safe))
                                               (class-of _%obj115185%_)))
                                            '#!void)))
                                    _%descriptor115145%_
                                    _%prototype115180%_
                                    _%obj115160%_)))
                             _%$e115177%_)
                            (let ((_%$e115189%_
                                   (try-create-prototype
                                    _%descriptor115145%_
                                    _%klass115150%_
                                    _%obj-klass115163%_)))
                              (if _%$e115189%_
                                  ((lambda (_%prototype115192%_)
                                     ((lambda (_%descriptor115194%_
                                               _%prototype115195%_
                                               _%obj115196%_)
                                        (if _%prototype115195%_
                                            (let ((_%instance115198%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype115195%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance115198%_
                                                 _%obj115196%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance115198%_)
                                            (begin
                                              (raise-cast-error
                                               'cast
                                               '"cannot create interface prototype"
                                               'interface:
                                               _%descriptor115194%_
                                               'class:
                                               (let ()
                                                 (declare (not safe))
                                                 (class-of _%obj115196%_)))
                                              '#!void)))
                                      _%descriptor115145%_
                                      _%prototype115192%_
                                      _%obj115160%_))
                                   _%$e115189%_)
                                  (_%loop115157%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj115160%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab115202%_
                              (class-type-interface-table _%obj-klass115163%_))
                             (_%$e115204%_
                              (____prototype-table-get
                               _%tab115202%_
                               _%descriptor115145%_)))
                        (if _%$e115204%_
                            ((lambda (_%prototype115207%_)
                               (if (eq? _%prototype115207%_ '#!void)
                                   ((lambda (_%descriptor115209%_
                                             _%prototype115210%_
                                             _%obj115211%_)
                                      (if _%prototype115210%_
                                          (let ((_%instance115213%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype115210%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance115213%_
                                               _%obj115211%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance115213%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor115209%_
                                             'class:
                                             (let ()
                                               (declare (not safe))
                                               (class-of _%obj115211%_)))
                                            '#!void)))
                                    _%descriptor115145%_
                                    '#f
                                    _%obj115160%_)
                                   ((lambda (_%descriptor115215%_
                                             _%prototype115216%_
                                             _%obj115217%_)
                                      (if _%prototype115216%_
                                          (let ((_%instance115219%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype115216%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance115219%_
                                               _%obj115217%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance115219%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor115215%_
                                             'class:
                                             (let ()
                                               (declare (not safe))
                                               (class-of _%obj115217%_)))
                                            '#!void)))
                                    _%descriptor115145%_
                                    _%prototype115207%_
                                    _%obj115160%_)))
                             _%$e115204%_)
                            (let ((_%$e115221%_
                                   (create-prototype
                                    _%descriptor115145%_
                                    _%klass115150%_
                                    _%obj-klass115163%_)))
                              (if _%$e115221%_
                                  ((lambda (_%prototype115224%_)
                                     ((lambda (_%descriptor115226%_
                                               _%prototype115227%_
                                               _%obj115228%_)
                                        (if _%prototype115227%_
                                            (let ((_%instance115230%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype115227%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance115230%_
                                                 _%obj115228%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance115230%_)
                                            (begin
                                              (raise-cast-error
                                               'cast
                                               '"cannot create interface prototype"
                                               'interface:
                                               _%descriptor115226%_
                                               'class:
                                               (let ()
                                                 (declare (not safe))
                                                 (class-of _%obj115228%_)))
                                              '#!void)))
                                      _%descriptor115145%_
                                      _%prototype115224%_
                                      _%obj115160%_))
                                   _%$e115221%_)
                                  ((lambda (_%descriptor115233%_
                                            _%prototype115234%_
                                            _%obj115235%_)
                                     (if _%prototype115234%_
                                         (let ((_%instance115237%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##structure-copy
                                                   _%prototype115234%_))))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-set!
                                              _%instance115237%_
                                              _%obj115235%_
                                              '1
                                              '#f
                                              'cast))
                                           _%instance115237%_)
                                         (begin
                                           (raise-cast-error
                                            'cast
                                            '"cannot create interface prototype"
                                            'interface:
                                            _%descriptor115233%_
                                            'class:
                                            (let ()
                                              (declare (not safe))
                                              (class-of _%obj115235%_)))
                                           '#!void)))
                                   _%descriptor115145%_
                                   '#f
                                   _%obj115160%_))))))))))))
    (define try-cast
      (lambda (_%descriptor115051%_ _%obj115053%_)
        (let* ((_%klass115056%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor115051%_ '1 '#f '#f)))
               (_%klass-id115059%_
                (let () (declare (not safe)) (##type-id _%klass115056%_))))
          (let _%loop115063%_ ((_%obj115066%_ _%obj115053%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass115069%_
                    (let () (declare (not safe)) (class-of _%obj115066%_)))
                   (_%obj-klass-id115072%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass115069%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id115059%_ _%obj-klass-id115072%_))
                  ((lambda (_%obj115077%_) _%obj115077%_) _%obj115066%_)
                  (if (interface-subclass? _%obj-klass115069%_)
                      (let* ((_%tab115080%_
                              (class-type-interface-table _%obj-klass115069%_))
                             (_%$e115083%_
                              (____prototype-table-get
                               _%tab115080%_
                               _%descriptor115051%_)))
                        (if _%$e115083%_
                            ((lambda (_%prototype115086%_)
                               (if (eq? _%prototype115086%_ '#!void)
                                   (_%loop115063%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj115066%_
                                       '1
                                       '#f
                                       '#f)))
                                   ((lambda (_%descriptor115089%_
                                             _%prototype115090%_
                                             _%obj115091%_)
                                      (if _%prototype115090%_
                                          (let ((_%instance115093%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype115090%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance115093%_
                                               _%obj115091%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance115093%_)
                                          '#f))
                                    _%descriptor115051%_
                                    _%prototype115086%_
                                    _%obj115066%_)))
                             _%$e115083%_)
                            (let ((_%$e115095%_
                                   (try-create-prototype
                                    _%descriptor115051%_
                                    _%klass115056%_
                                    _%obj-klass115069%_)))
                              (if _%$e115095%_
                                  ((lambda (_%prototype115098%_)
                                     ((lambda (_%descriptor115100%_
                                               _%prototype115101%_
                                               _%obj115102%_)
                                        (if _%prototype115101%_
                                            (let ((_%instance115104%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype115101%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance115104%_
                                                 _%obj115102%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance115104%_)
                                            '#f))
                                      _%descriptor115051%_
                                      _%prototype115098%_
                                      _%obj115066%_))
                                   _%$e115095%_)
                                  (_%loop115063%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj115066%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab115108%_
                              (class-type-interface-table _%obj-klass115069%_))
                             (_%$e115110%_
                              (____prototype-table-get
                               _%tab115108%_
                               _%descriptor115051%_)))
                        (if _%$e115110%_
                            ((lambda (_%prototype115113%_)
                               (if (eq? _%prototype115113%_ '#!void)
                                   ((lambda (_%descriptor115115%_
                                             _%prototype115116%_
                                             _%obj115117%_)
                                      (if _%prototype115116%_
                                          (let ((_%instance115119%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype115116%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance115119%_
                                               _%obj115117%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance115119%_)
                                          '#f))
                                    _%descriptor115051%_
                                    '#f
                                    _%obj115066%_)
                                   ((lambda (_%descriptor115121%_
                                             _%prototype115122%_
                                             _%obj115123%_)
                                      (if _%prototype115122%_
                                          (let ((_%instance115125%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype115122%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance115125%_
                                               _%obj115123%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance115125%_)
                                          '#f))
                                    _%descriptor115051%_
                                    _%prototype115113%_
                                    _%obj115066%_)))
                             _%$e115110%_)
                            (let ((_%$e115127%_
                                   (try-create-prototype
                                    _%descriptor115051%_
                                    _%klass115056%_
                                    _%obj-klass115069%_)))
                              (if _%$e115127%_
                                  ((lambda (_%prototype115130%_)
                                     ((lambda (_%descriptor115132%_
                                               _%prototype115133%_
                                               _%obj115134%_)
                                        (if _%prototype115133%_
                                            (let ((_%instance115136%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype115133%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance115136%_
                                                 _%obj115134%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance115136%_)
                                            '#f))
                                      _%descriptor115051%_
                                      _%prototype115130%_
                                      _%obj115066%_))
                                   _%$e115127%_)
                                  ((lambda (_%descriptor115139%_
                                            _%prototype115140%_
                                            _%obj115141%_)
                                     (if _%prototype115140%_
                                         (let ((_%instance115143%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##structure-copy
                                                   _%prototype115140%_))))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-set!
                                              _%instance115143%_
                                              _%obj115141%_
                                              '1
                                              '#f
                                              'cast))
                                           _%instance115143%_)
                                         '#f))
                                   _%descriptor115051%_
                                   '#f
                                   _%obj115066%_))))))))))))
    (define satisfies?
      (lambda (_%descriptor114969%_ _%obj114971%_)
        (let* ((_%klass114974%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor114969%_ '1 '#f '#f)))
               (_%klass-id114977%_
                (let () (declare (not safe)) (##type-id _%klass114974%_))))
          (let _%loop114981%_ ((_%obj114984%_ _%obj114971%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass114987%_
                    (let () (declare (not safe)) (class-of _%obj114984%_)))
                   (_%obj-klass-id114990%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass114987%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id114977%_ _%obj-klass-id114990%_))
                  ((lambda (_%obj114995%_) '#t) _%obj114984%_)
                  (if (interface-subclass? _%obj-klass114987%_)
                      (let* ((_%tab114998%_
                              (class-type-interface-table _%obj-klass114987%_))
                             (_%$e115001%_
                              (____prototype-table-get
                               _%tab114998%_
                               _%descriptor114969%_)))
                        (if _%$e115001%_
                            ((lambda (_%prototype115004%_)
                               (if (eq? _%prototype115004%_ '#!void)
                                   (_%loop114981%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj114984%_
                                       '1
                                       '#f
                                       '#f)))
                                   ((lambda (_%descriptor115007%_
                                             _%prototype115008%_
                                             _%obj115009%_)
                                      (if _%prototype115008%_ '#t '#f))
                                    _%descriptor114969%_
                                    _%prototype115004%_
                                    _%obj114984%_)))
                             _%$e115001%_)
                            (let ((_%$e115011%_
                                   (try-create-prototype
                                    _%descriptor114969%_
                                    _%klass114974%_
                                    _%obj-klass114987%_)))
                              (if _%$e115011%_
                                  ((lambda (_%prototype115014%_)
                                     ((lambda (_%descriptor115016%_
                                               _%prototype115017%_
                                               _%obj115018%_)
                                        (if _%prototype115017%_ '#t '#f))
                                      _%descriptor114969%_
                                      _%prototype115014%_
                                      _%obj114984%_))
                                   _%$e115011%_)
                                  (_%loop114981%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj114984%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab115022%_
                              (class-type-interface-table _%obj-klass114987%_))
                             (_%$e115024%_
                              (____prototype-table-get
                               _%tab115022%_
                               _%descriptor114969%_)))
                        (if _%$e115024%_
                            ((lambda (_%prototype115027%_)
                               (if (eq? _%prototype115027%_ '#!void)
                                   ((lambda (_%descriptor115029%_
                                             _%prototype115030%_
                                             _%obj115031%_)
                                      (if _%prototype115030%_ '#t '#f))
                                    _%descriptor114969%_
                                    '#f
                                    _%obj114984%_)
                                   ((lambda (_%descriptor115033%_
                                             _%prototype115034%_
                                             _%obj115035%_)
                                      (if _%prototype115034%_ '#t '#f))
                                    _%descriptor114969%_
                                    _%prototype115027%_
                                    _%obj114984%_)))
                             _%$e115024%_)
                            (let ((_%$e115037%_
                                   (try-create-prototype
                                    _%descriptor114969%_
                                    _%klass114974%_
                                    _%obj-klass114987%_)))
                              (if _%$e115037%_
                                  ((lambda (_%prototype115040%_)
                                     ((lambda (_%descriptor115042%_
                                               _%prototype115043%_
                                               _%obj115044%_)
                                        (if _%prototype115043%_ '#t '#f))
                                      _%descriptor114969%_
                                      _%prototype115040%_
                                      _%obj114984%_))
                                   _%$e115037%_)
                                  ((lambda (_%descriptor115047%_
                                            _%prototype115048%_
                                            _%obj115049%_)
                                     (if _%prototype115048%_ '#t '#f))
                                   _%descriptor114969%_
                                   '#f
                                   _%obj114984%_))))))))))))
    (define with-prototype
      (lambda (_%descriptor114932%_
               _%obj114933%_
               _%with-prototype+receiver114934%_
               _%with-receiver114935%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%descriptor114932%_
               'gerbil#interface-descriptor::t))
            (let ((_%descriptor114939%_ _%descriptor114932%_))
              (if (procedure? _%with-prototype+receiver114934%_)
                  (let ((_%with-prototype+receiver114949%_
                         _%with-prototype+receiver114934%_))
                    (if (procedure? _%with-receiver114935%_)
                        (let ((_%with-receiver114959%_
                               _%with-receiver114935%_))
                          (__with-prototype
                           _%descriptor114939%_
                           _%obj114933%_
                           _%with-prototype+receiver114949%_
                           _%with-receiver114959%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/interface.ss\"@235.9-235.22"
                           'contract:
                           'procedure?
                           'value:
                           _%with-receiver114935%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/interface.ss\"@234.9-234.32"
                     'contract:
                     'procedure?
                     'value:
                     _%with-prototype+receiver114934%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/interface.ss\"@233.23-233.33"
               'contract:
               'interface-descriptor?
               'value:
               _%descriptor114932%_)
              '#!void))))
    (define __with-prototype
      (lambda (_%descriptor114850%_
               _%obj114851%_
               _%with-prototype+receiver114852%_
               _%with-receiver114853%_)
        (let* ((_%descriptor114856%_ _%descriptor114850%_)
               (_%with-prototype+receiver114864%_
                _%with-prototype+receiver114852%_)
               (_%with-receiver114872%_ _%with-receiver114853%_)
               (_%klass114881%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor114856%_ '1 '#f '#f)))
               (_%klass-id114884%_
                (let () (declare (not safe)) (##type-id _%klass114881%_))))
          (let _%loop114888%_ ((_%obj114891%_ _%obj114851%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass114894%_
                    (let () (declare (not safe)) (class-of _%obj114891%_)))
                   (_%obj-klass-id114897%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass114894%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id114884%_ _%obj-klass-id114897%_))
                  (let ()
                    (declare (not safe))
                    (_%with-receiver114872%_ _%obj114891%_))
                  (if (interface-subclass? _%obj-klass114894%_)
                      (let* ((_%tab114903%_
                              (class-type-interface-table _%obj-klass114894%_))
                             (_%$e114906%_
                              (____prototype-table-get
                               _%tab114903%_
                               _%descriptor114856%_)))
                        (if _%$e114906%_
                            ((lambda (_%prototype114909%_)
                               (if (eq? _%prototype114909%_ '#!void)
                                   (_%loop114888%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj114891%_
                                       '1
                                       '#f
                                       '#f)))
                                   (let ()
                                     (declare (not safe))
                                     (_%with-prototype+receiver114864%_
                                      _%descriptor114856%_
                                      _%prototype114909%_
                                      _%obj114891%_))))
                             _%$e114906%_)
                            (let ((_%$e114912%_
                                   (try-create-prototype
                                    _%descriptor114856%_
                                    _%klass114881%_
                                    _%obj-klass114894%_)))
                              (if _%$e114912%_
                                  ((lambda (_%prototype114915%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%with-prototype+receiver114864%_
                                        _%descriptor114856%_
                                        _%prototype114915%_
                                        _%obj114891%_)))
                                   _%$e114912%_)
                                  (_%loop114888%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj114891%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab114919%_
                              (class-type-interface-table _%obj-klass114894%_))
                             (_%$e114921%_
                              (____prototype-table-get
                               _%tab114919%_
                               _%descriptor114856%_)))
                        (if _%$e114921%_
                            ((lambda (_%prototype114924%_)
                               (if (eq? _%prototype114924%_ '#!void)
                                   (let ()
                                     (declare (not safe))
                                     (_%with-prototype+receiver114864%_
                                      _%descriptor114856%_
                                      '#f
                                      _%obj114891%_))
                                   (let ()
                                     (declare (not safe))
                                     (_%with-prototype+receiver114864%_
                                      _%descriptor114856%_
                                      _%prototype114924%_
                                      _%obj114891%_))))
                             _%$e114921%_)
                            (let ((_%$e114926%_
                                   (create-prototype
                                    _%descriptor114856%_
                                    _%klass114881%_
                                    _%obj-klass114894%_)))
                              (if _%$e114926%_
                                  ((lambda (_%prototype114929%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%with-prototype+receiver114864%_
                                        _%descriptor114856%_
                                        _%prototype114929%_
                                        _%obj114891%_)))
                                   _%$e114926%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%with-prototype+receiver114864%_
                                     _%descriptor114856%_
                                     '#f
                                     _%obj114891%_)))))))))))))))
