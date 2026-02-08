(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1770513294)
  (begin
    (define CastError::t
      (let ((__tmp141759 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp141759
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (__make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _%$args141673%_
        (apply make-instance CastError::t _%$args141673%_)))
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
      (lambda (_%where141547%_ _%message141548%_ . _%irritants141549%_)
        (let ((__tmp141760
               (let ((__obj141754
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (CastError:::init!
                    __obj141754
                    _%message141548%_
                    'where:
                    _%where141547%_
                    'irritants:
                    _%irritants141549%_))
                 __obj141754)))
          (declare (not safe))
          (raise __tmp141760))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp141762 (list)) (__tmp141761 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp141762
         '(object)
         __tmp141761
         '#f)))
    (define interface-instance?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-instance::t)))
    (define make-interface-instance
      (lambda _%$args141544%_
        (apply make-instance interface-instance::t _%$args141544%_)))
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
      (let ((__tmp141764 (list))
            (__tmp141763
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil#interface-descriptor::t
         'interface-descriptor
         __tmp141764
         '(type methods index)
         __tmp141763
         ':init!)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _%$args141541%_
        (apply make-instance interface-descriptor::t _%$args141541%_)))
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
          (let _%again141521%_ ((_%spin141524%_ '0))
            (if (let ((__tmp141765
                       (let ()
                         (declare (not safe))
                         (##vector-cas!
                          __next-interface-index-lock
                          '0
                          '1
                          '0))))
                  (declare (not safe))
                  (##fx= __tmp141765 '0))
                (let ((__tmp141766 (current-thread)))
                  (declare (not safe))
                  (##vector-set! __next-interface-index-lock '1 __tmp141766))
                (if (let () (declare (not safe)) (##fx< _%spin141524%_ '10))
                    (let ()
                      (let () (declare (not safe)) (##thread-yield!))
                      (_%again141521%_
                       (let ()
                         (declare (not safe))
                         (##fx+ _%spin141524%_ '1))))
                    (let ((_%owner141530%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref __next-interface-index-lock '1))))
                      (if (eq? _%owner141530%_ (macro-current-thread))
                          (let ()
                            (declare (not safe))
                            (##thread-deadlock-action!))
                          (if (macro-thread-end-condvar _%owner141530%_)
                              (let ()
                                (let () (declare (not safe)) (##thread-yield!))
                                (_%again141521%_ '0))
                              (let ()
                                (declare (not safe))
                                (##thread-deadlock-action!)))))))))
        (let ((_%$r141538%_
               (let ((_%index141536%_ __next-interface-index))
                 (set! __next-interface-index
                       (let ()
                         (declare (not safe))
                         (##fx+ _%index141536%_ '1)))
                 _%index141536%_)))
          (let ()
            (declare (not safe))
            (##vector-set! __next-interface-index-lock '1 '#f))
          (let ()
            (declare (not safe))
            (##vector-cas! __next-interface-index-lock '0 '0 '1))
          _%$r141538%_)))
    (define interface-descriptor:::init!
      (lambda (_%self141502%_ _%type141503%_ _%methods141504%_)
        (let ((_%self141507%_ _%self141502%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self141507%_
             _%type141503%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self141507%_
             _%methods141504%_
             '2
             '#f
             '#f))
          (let ((__tmp141767 (__get-next-interface-index)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self141507%_
             __tmp141767
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
      (let ((__tmp141769 (list))
            (__tmp141768
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil#prototype-table::t
         'prototype-table
         __tmp141769
         '(lock table)
         __tmp141768
         ':init!)))
    (define prototype-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate prototype-table::t)))
    (define make-prototype-table
      (lambda _%$args141377%_
        (apply make-instance prototype-table::t _%$args141377%_)))
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
      (lambda (_%self141363%_)
        (let ((_%self141366%_ _%self141363%_))
          (let ((__tmp141770 (vector '0 '#f)))
            (declare (not safe))
            (##unchecked-structure-set! _%self141366%_ __tmp141770 '1 '#f '#f))
          (let ((__tmp141771
                 (let ()
                   (declare (not safe))
                   (##make-vector __next-interface-index '#f))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self141366%_
             __tmp141771
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
    (define ____prototype-table-get
      (lambda (_%prototable141194%_ _%descriptor141195%_)
        (let* ((_%prototable141198%_ _%prototable141194%_)
               (_%descriptor141206%_ _%descriptor141195%_))
          (declare (not safe))
          (let ((_%lock141216%_
                 (##unchecked-structure-ref _%prototable141198%_ '1 '#f '#f))
                (_%index141217%_
                 (##unchecked-structure-ref _%descriptor141206%_ '3 '#f '#f)))
            (let ()
              (declare (not interrupts-enabled))
              (let _%again141221%_ ((_%spin141224%_ '0))
                (if (##fx= (##vector-cas! _%lock141216%_ '0 '1 '0) '0)
                    (##vector-set! _%lock141216%_ '1 (current-thread))
                    (if (##fx< _%spin141224%_ '10)
                        (let ()
                          (##thread-yield!)
                          (_%again141221%_ (##fx+ _%spin141224%_ '1)))
                        (let ((_%owner141230%_
                               (##vector-ref _%lock141216%_ '1)))
                          (if (eq? _%owner141230%_ (macro-current-thread))
                              (##thread-deadlock-action!)
                              (if (macro-thread-end-condvar _%owner141230%_)
                                  (let ()
                                    (##thread-yield!)
                                    (_%again141221%_ '0))
                                  (##thread-deadlock-action!))))))))
            (let ((_%$r141238%_
                   (let ((_%tab141236%_
                          (##unchecked-structure-ref
                           _%prototable141198%_
                           '2
                           '#f
                           '#f)))
                     (if (##fx< _%index141217%_ (vector-length _%tab141236%_))
                         (vector-ref _%tab141236%_ _%index141217%_)
                         '#f))))
              (##vector-set! _%lock141216%_ '1 '#f)
              (##vector-cas! _%lock141216%_ '0 '0 '1)
              _%$r141238%_)))))
    (define __prototype-table-get
      (lambda (_%prototable139175%_ _%descriptor139176%_)
        (let* ((_%prototable139179%_ _%prototable139175%_)
               (_%descriptor139187%_ _%descriptor139176%_))
          (____prototype-table-get
           _%prototable139179%_
           _%descriptor139187%_))))
    (define ____prototype-table-set!
      (lambda (_%prototable141141%_ _%descriptor141142%_ _%prototype141143%_)
        (let* ((_%prototable141146%_ _%prototable141141%_)
               (_%descriptor141154%_ _%descriptor141142%_))
          (declare (not safe))
          (let ((_%lock141164%_
                 (##unchecked-structure-ref _%prototable141146%_ '1 '#f '#f))
                (_%index141165%_
                 (##unchecked-structure-ref _%descriptor141154%_ '3 '#f '#f)))
            (let ()
              (declare (not interrupts-enabled))
              (let _%again141169%_ ((_%spin141172%_ '0))
                (if (##fx= (##vector-cas! _%lock141164%_ '0 '1 '0) '0)
                    (##vector-set! _%lock141164%_ '1 (current-thread))
                    (if (##fx< _%spin141172%_ '10)
                        (let ()
                          (##thread-yield!)
                          (_%again141169%_ (##fx+ _%spin141172%_ '1)))
                        (let ((_%owner141178%_
                               (##vector-ref _%lock141164%_ '1)))
                          (if (eq? _%owner141178%_ (macro-current-thread))
                              (##thread-deadlock-action!)
                              (if (macro-thread-end-condvar _%owner141178%_)
                                  (let ()
                                    (##thread-yield!)
                                    (_%again141169%_ '0))
                                  (##thread-deadlock-action!))))))))
            (let ((_%$r141191%_
                   (let ((_%tab141184%_
                          (##unchecked-structure-ref
                           _%prototable141146%_
                           '2
                           '#f
                           '#f)))
                     (if (##fx< _%index141165%_ (vector-length _%tab141184%_))
                         (vector-set!
                          _%tab141184%_
                          _%index141165%_
                          _%prototype141143%_)
                         (let* ((_%new-size141186%_ __next-interface-index)
                                (_%new-tab141188%_
                                 (##make-vector _%new-size141186%_ '#f)))
                           (subvector-move!
                            _%tab141184%_
                            '0
                            (vector-length _%tab141184%_)
                            _%new-tab141188%_
                            '0)
                           (vector-set!
                            _%new-tab141188%_
                            _%index141165%_
                            _%prototype141143%_)
                           (##unchecked-structure-set!
                            _%prototable141146%_
                            _%new-tab141188%_
                            '2
                            '#f
                            '#f))))))
              (##vector-set! _%lock141164%_ '1 '#f)
              (##vector-cas! _%lock141164%_ '0 '0 '1)
              _%$r141191%_)))))
    (define __prototype-table-set!
      (lambda (_%prototable139316%_ _%descriptor139317%_ _%prototype139318%_)
        (let* ((_%prototable139321%_ _%prototable139316%_)
               (_%descriptor139329%_ _%descriptor139317%_))
          (____prototype-table-set!
           _%prototable139321%_
           _%descriptor139329%_
           _%prototype139318%_))))
    (define interface-subclass?
      (lambda (_%klass141134%_)
        (let ((_%super141135141137%_
               (let () (declare (not safe)) (##type-super _%klass141134%_))))
          (if _%super141135141137%_
              (let ((_%super141139%_ _%super141135141137%_))
                (eq? (let () (declare (not safe)) (##type-id _%super141139%_))
                     (let ()
                       (declare (not safe))
                       (##type-id interface-instance::t))))
              '#f))))
    (define class-type-interface-table
      (lambda (_%klass141126%_)
        (let ((_%$e141128%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%klass141126%_ '13 '#f '#f))))
          (if _%$e141128%_
              _%$e141128%_
              (let ((_%tab141132%_
                     (let ((__obj141758
                            (let ()
                              (declare (not safe))
                              (##structure prototype-table::t '#f '#f))))
                       (prototype-table:::init! __obj141758)
                       __obj141758)))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%klass141126%_
                   _%tab141132%_
                   '13
                   '#f
                   '#f))
                _%tab141132%_)))))
    (define create-prototype
      (lambda (_%descriptor140809%_ _%klass140810%_ _%obj-klass140811%_)
        (let ((_%method-table140829%_
               (let ((_%klass140813%_ _%obj-klass140811%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _%klass140813%_ 'class))
                     (let ((_%klass140818%_ _%klass140813%_))
                       (declare (not safe))
                       (__specialize-class _%klass140818%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/interface
                        'contract:
                        'class-type?
                        'value:
                        _%klass140813%_)
                       '#!void)))))
          (let _%loop140832%_ ((_%rest140835%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor140809%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count140837%_ '0)
                               (_%methods140839%_ '()))
            (let* ((_%rest140841140849%_ _%rest140835%_)
                   (_%else140843140976%_
                    (lambda ()
                      (let ((_%prototype140892%_
                             (let* ((_%klass140857%_ _%klass140810%_)
                                    (_%k140860%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%count140837%_ '2))))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%klass140857%_
                                      'class))
                                   (let* ((_%klass140865%_ _%klass140857%_)
                                          (_%k140882%_ _%k140860%_))
                                     (declare (not safe))
                                     (__make-object
                                      _%klass140865%_
                                      _%k140882%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/interface
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%klass140857%_)
                                     '#!void)))))
                        (let _%loop140895%_ ((_%rest140897%_ _%methods140839%_)
                                             (_%off140898%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count140837%_ '1))))
                          (let* ((_%rest140900140908%_ _%rest140897%_)
                                 (_%else140902140957%_
                                  (lambda ()
                                    (let ((_%tab140916%_
                                           (class-type-interface-table
                                            _%obj-klass140811%_)))
                                      (let* ((_%prototable140919%_
                                              _%tab140916%_)
                                             (_%descriptor140922%_
                                              _%descriptor140809%_)
                                             (_%prototype140925%_
                                              _%prototype140892%_)
                                             (_%prototable140929%_
                                              _%prototable140919%_)
                                             (_%descriptor140946%_
                                              _%descriptor140922%_))
                                        (____prototype-table-set!
                                         _%prototable140929%_
                                         _%descriptor140946%_
                                         _%prototype140925%_))
                                      ((lambda (_%prototype140955%_)
                                         _%prototype140955%_)
                                       _%prototype140892%_))))
                                 (_%K140904140964%_
                                  (lambda (_%rest140960%_ _%method140961%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype140892%_
                                       _%method140961%_
                                       _%off140898%_
                                       _%klass140810%_
                                       '#f))
                                    (_%loop140895%_
                                     _%rest140960%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off140898%_ '1))))))
                            (if (pair? _%rest140900140908%_)
                                (let ((_%hd140905140967%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest140900140908%_)))
                                      (_%tl140906140969%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest140900140908%_))))
                                  (let* ((_%method140972%_ _%hd140905140967%_)
                                         (_%rest140974%_ _%tl140906140969%_))
                                    (_%K140904140964%_
                                     _%rest140974%_
                                     _%method140972%_)))
                                (_%else140902140957%_)))))))
                   (_%K140845141114%_
                    (lambda (_%rest140979%_ _%method-spec140980%_)
                      (if (pair? _%method-spec140980%_)
                          (let _%loop-inner140984%_ ((_%methods-rest140987%_
                                                      _%method-spec140980%_))
                            (let* ((_%methods-rest140989140997%_
                                    _%methods-rest140987%_)
                                   (_%else140991141047%_
                                    (lambda ()
                                      (let ((_%tab141005%_
                                             (class-type-interface-table
                                              _%obj-klass140811%_)))
                                        (let* ((_%prototable141007%_
                                                _%tab141005%_)
                                               (_%descriptor141010%_
                                                _%descriptor140809%_)
                                               (_%prototype141013%_ '#!void)
                                               (_%prototable141017%_
                                                _%prototable141007%_)
                                               (_%descriptor141036%_
                                                _%descriptor141010%_))
                                          (____prototype-table-set!
                                           _%prototable141017%_
                                           _%descriptor141036%_
                                           _%prototype141013%_))
                                        ((lambda (_%method141045%_)
                                           (raise-cast-error
                                            'create-prototype
                                            '"cannot create interface prototype; missing method"
                                            'interface:
                                            _%descriptor140809%_
                                            'class:
                                            _%obj-klass140811%_
                                            'method:
                                            _%method141045%_)
                                           '#!void)
                                         _%method-spec140980%_))))
                                   (_%K140993141060%_
                                    (lambda (_%methods-rest141050%_
                                             _%method-name141051%_)
                                      (let ((_%$e141054%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table140829%_
                                                _%method-name141051%_
                                                '#f))))
                                        (if _%$e141054%_
                                            ((lambda (_%method141057%_)
                                               (_%loop140832%_
                                                _%rest140979%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%count140837%_ '1))
                                                (cons _%method141057%_
                                                      _%methods140839%_)))
                                             _%$e141054%_)
                                            (_%loop-inner140984%_
                                             _%methods-rest141050%_))))))
                              (if (pair? _%methods-rest140989140997%_)
                                  (let ((_%hd140994141063%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%methods-rest140989140997%_)))
                                        (_%tl140995141065%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%methods-rest140989140997%_))))
                                    (let* ((_%method-name141068%_
                                            _%hd140994141063%_)
                                           (_%methods-rest141070%_
                                            _%tl140995141065%_))
                                      (_%K140993141060%_
                                       _%methods-rest141070%_
                                       _%method-name141068%_)))
                                  (_%else140991141047%_))))
                          (let ((_%$e141072%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table140829%_
                                    _%method-spec140980%_
                                    '#f))))
                            (if _%$e141072%_
                                ((lambda (_%method141075%_)
                                   (_%loop140832%_
                                    _%rest140979%_
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%count140837%_ '1))
                                    (cons _%method141075%_ _%methods140839%_)))
                                 _%$e141072%_)
                                (let ((_%tab141078%_
                                       (class-type-interface-table
                                        _%obj-klass140811%_)))
                                  (let* ((_%prototable141080%_ _%tab141078%_)
                                         (_%descriptor141083%_
                                          _%descriptor140809%_)
                                         (_%prototype141086%_ '#!void)
                                         (_%prototable141090%_
                                          _%prototable141080%_)
                                         (_%descriptor141103%_
                                          _%descriptor141083%_))
                                    (____prototype-table-set!
                                     _%prototable141090%_
                                     _%descriptor141103%_
                                     _%prototype141086%_))
                                  ((lambda (_%method141112%_)
                                     (raise-cast-error
                                      'create-prototype
                                      '"cannot create interface prototype; missing method"
                                      'interface:
                                      _%descriptor140809%_
                                      'class:
                                      _%obj-klass140811%_
                                      'method:
                                      _%method141112%_)
                                     '#!void)
                                   _%method-spec140980%_))))))))
              (if (pair? _%rest140841140849%_)
                  (let ((_%hd140846141117%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest140841140849%_)))
                        (_%tl140847141119%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest140841140849%_))))
                    (let* ((_%method-spec141122%_ _%hd140846141117%_)
                           (_%rest141124%_ _%tl140847141119%_))
                      (_%K140845141114%_
                       _%rest141124%_
                       _%method-spec141122%_)))
                  (_%else140843140976%_)))))))
    (define try-create-prototype
      (lambda (_%descriptor140492%_ _%klass140493%_ _%obj-klass140494%_)
        (let ((_%method-table140512%_
               (let ((_%klass140496%_ _%obj-klass140494%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _%klass140496%_ 'class))
                     (let ((_%klass140501%_ _%klass140496%_))
                       (declare (not safe))
                       (__specialize-class _%klass140501%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/interface
                        'contract:
                        'class-type?
                        'value:
                        _%klass140496%_)
                       '#!void)))))
          (let _%loop140515%_ ((_%rest140518%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor140492%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count140520%_ '0)
                               (_%methods140522%_ '()))
            (let* ((_%rest140524140532%_ _%rest140518%_)
                   (_%else140526140659%_
                    (lambda ()
                      (let ((_%prototype140575%_
                             (let* ((_%klass140540%_ _%klass140493%_)
                                    (_%k140543%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%count140520%_ '2))))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%klass140540%_
                                      'class))
                                   (let* ((_%klass140548%_ _%klass140540%_)
                                          (_%k140565%_ _%k140543%_))
                                     (declare (not safe))
                                     (__make-object
                                      _%klass140548%_
                                      _%k140565%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/interface
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%klass140540%_)
                                     '#!void)))))
                        (let _%loop140578%_ ((_%rest140580%_ _%methods140522%_)
                                             (_%off140581%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count140520%_ '1))))
                          (let* ((_%rest140583140591%_ _%rest140580%_)
                                 (_%else140585140640%_
                                  (lambda ()
                                    (let ((_%tab140599%_
                                           (class-type-interface-table
                                            _%obj-klass140494%_)))
                                      (let* ((_%prototable140602%_
                                              _%tab140599%_)
                                             (_%descriptor140605%_
                                              _%descriptor140492%_)
                                             (_%prototype140608%_
                                              _%prototype140575%_)
                                             (_%prototable140612%_
                                              _%prototable140602%_)
                                             (_%descriptor140629%_
                                              _%descriptor140605%_))
                                        (____prototype-table-set!
                                         _%prototable140612%_
                                         _%descriptor140629%_
                                         _%prototype140608%_))
                                      ((lambda (_%prototype140638%_)
                                         _%prototype140638%_)
                                       _%prototype140575%_))))
                                 (_%K140587140647%_
                                  (lambda (_%rest140643%_ _%method140644%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype140575%_
                                       _%method140644%_
                                       _%off140581%_
                                       _%klass140493%_
                                       '#f))
                                    (_%loop140578%_
                                     _%rest140643%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off140581%_ '1))))))
                            (if (pair? _%rest140583140591%_)
                                (let ((_%hd140588140650%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest140583140591%_)))
                                      (_%tl140589140652%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest140583140591%_))))
                                  (let* ((_%method140655%_ _%hd140588140650%_)
                                         (_%rest140657%_ _%tl140589140652%_))
                                    (_%K140587140647%_
                                     _%rest140657%_
                                     _%method140655%_)))
                                (_%else140585140640%_)))))))
                   (_%K140528140797%_
                    (lambda (_%rest140662%_ _%method-spec140663%_)
                      (if (pair? _%method-spec140663%_)
                          (let _%loop-inner140667%_ ((_%methods-rest140670%_
                                                      _%method-spec140663%_))
                            (let* ((_%methods-rest140672140680%_
                                    _%methods-rest140670%_)
                                   (_%else140674140730%_
                                    (lambda ()
                                      (let ((_%tab140688%_
                                             (class-type-interface-table
                                              _%obj-klass140494%_)))
                                        (let* ((_%prototable140690%_
                                                _%tab140688%_)
                                               (_%descriptor140693%_
                                                _%descriptor140492%_)
                                               (_%prototype140696%_ '#!void)
                                               (_%prototable140700%_
                                                _%prototable140690%_)
                                               (_%descriptor140719%_
                                                _%descriptor140693%_))
                                          (____prototype-table-set!
                                           _%prototable140700%_
                                           _%descriptor140719%_
                                           _%prototype140696%_))
                                        ((lambda (_%method140728%_) '#f)
                                         _%method-spec140663%_))))
                                   (_%K140676140743%_
                                    (lambda (_%methods-rest140733%_
                                             _%method-name140734%_)
                                      (let ((_%$e140737%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table140512%_
                                                _%method-name140734%_
                                                '#f))))
                                        (if _%$e140737%_
                                            ((lambda (_%method140740%_)
                                               (_%loop140515%_
                                                _%rest140662%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%count140520%_ '1))
                                                (cons _%method140740%_
                                                      _%methods140522%_)))
                                             _%$e140737%_)
                                            (_%loop-inner140667%_
                                             _%methods-rest140733%_))))))
                              (if (pair? _%methods-rest140672140680%_)
                                  (let ((_%hd140677140746%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%methods-rest140672140680%_)))
                                        (_%tl140678140748%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%methods-rest140672140680%_))))
                                    (let* ((_%method-name140751%_
                                            _%hd140677140746%_)
                                           (_%methods-rest140753%_
                                            _%tl140678140748%_))
                                      (_%K140676140743%_
                                       _%methods-rest140753%_
                                       _%method-name140751%_)))
                                  (_%else140674140730%_))))
                          (let ((_%$e140755%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table140512%_
                                    _%method-spec140663%_
                                    '#f))))
                            (if _%$e140755%_
                                ((lambda (_%method140758%_)
                                   (_%loop140515%_
                                    _%rest140662%_
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%count140520%_ '1))
                                    (cons _%method140758%_ _%methods140522%_)))
                                 _%$e140755%_)
                                (let ((_%tab140761%_
                                       (class-type-interface-table
                                        _%obj-klass140494%_)))
                                  (let* ((_%prototable140763%_ _%tab140761%_)
                                         (_%descriptor140766%_
                                          _%descriptor140492%_)
                                         (_%prototype140769%_ '#!void)
                                         (_%prototable140773%_
                                          _%prototable140763%_)
                                         (_%descriptor140786%_
                                          _%descriptor140766%_))
                                    (____prototype-table-set!
                                     _%prototable140773%_
                                     _%descriptor140786%_
                                     _%prototype140769%_))
                                  ((lambda (_%method140795%_) '#f)
                                   _%method-spec140663%_))))))))
              (if (pair? _%rest140524140532%_)
                  (let ((_%hd140529140800%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest140524140532%_)))
                        (_%tl140530140802%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest140524140532%_))))
                    (let* ((_%method-spec140805%_ _%hd140529140800%_)
                           (_%rest140807%_ _%tl140530140802%_))
                      (_%K140528140797%_
                       _%rest140807%_
                       _%method-spec140805%_)))
                  (_%else140526140659%_)))))))
    (define cast
      (lambda (_%descriptor140334%_ _%obj140336%_)
        (let* ((_%klass140339%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor140334%_ '1 '#f '#f)))
               (_%klass-id140342%_
                (let () (declare (not safe)) (##type-id _%klass140339%_))))
          (let _%loop140346%_ ((_%obj140349%_ _%obj140336%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass140352%_
                    (let () (declare (not safe)) (class-of _%obj140349%_)))
                   (_%obj-klass-id140355%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass140352%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id140342%_ _%obj-klass-id140355%_))
                  ((lambda (_%obj140360%_) _%obj140360%_) _%obj140349%_)
                  (if (interface-subclass? _%obj-klass140352%_)
                      (let* ((_%tab140363%_
                              (class-type-interface-table _%obj-klass140352%_))
                             (_%$e140403%_
                              (let* ((_%prototable140366%_ _%tab140363%_)
                                     (_%descriptor140369%_
                                      _%descriptor140334%_)
                                     (_%prototable140373%_
                                      _%prototable140366%_)
                                     (_%descriptor140394%_
                                      _%descriptor140369%_))
                                (____prototype-table-get
                                 _%prototable140373%_
                                 _%descriptor140394%_))))
                        (if _%$e140403%_
                            ((lambda (_%prototype140406%_)
                               (if (eq? _%prototype140406%_ '#!void)
                                   (_%loop140346%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj140349%_
                                       '1
                                       '#f
                                       '#f)))
                                   ((lambda (_%descriptor140409%_
                                             _%prototype140410%_
                                             _%obj140411%_)
                                      (if _%prototype140410%_
                                          (let ((_%instance140413%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype140410%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance140413%_
                                               _%obj140411%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance140413%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor140409%_
                                             'class:
                                             (let ()
                                               (declare (not safe))
                                               (class-of _%obj140411%_)))
                                            '#!void)))
                                    _%descriptor140334%_
                                    _%prototype140406%_
                                    _%obj140349%_)))
                             _%$e140403%_)
                            (let ((_%$e140415%_
                                   (try-create-prototype
                                    _%descriptor140334%_
                                    _%klass140339%_
                                    _%obj-klass140352%_)))
                              (if _%$e140415%_
                                  ((lambda (_%prototype140418%_)
                                     ((lambda (_%descriptor140420%_
                                               _%prototype140421%_
                                               _%obj140422%_)
                                        (if _%prototype140421%_
                                            (let ((_%instance140424%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype140421%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance140424%_
                                                 _%obj140422%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance140424%_)
                                            (begin
                                              (raise-cast-error
                                               'cast
                                               '"cannot create interface prototype"
                                               'interface:
                                               _%descriptor140420%_
                                               'class:
                                               (let ()
                                                 (declare (not safe))
                                                 (class-of _%obj140422%_)))
                                              '#!void)))
                                      _%descriptor140334%_
                                      _%prototype140418%_
                                      _%obj140349%_))
                                   _%$e140415%_)
                                  (_%loop140346%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj140349%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab140428%_
                              (class-type-interface-table _%obj-klass140352%_))
                             (_%$e140457%_
                              (let* ((_%prototable140430%_ _%tab140428%_)
                                     (_%descriptor140433%_
                                      _%descriptor140334%_)
                                     (_%prototable140437%_
                                      _%prototable140430%_)
                                     (_%descriptor140448%_
                                      _%descriptor140433%_))
                                (____prototype-table-get
                                 _%prototable140437%_
                                 _%descriptor140448%_))))
                        (if _%$e140457%_
                            ((lambda (_%prototype140460%_)
                               (if (eq? _%prototype140460%_ '#!void)
                                   ((lambda (_%descriptor140462%_
                                             _%prototype140463%_
                                             _%obj140464%_)
                                      (if _%prototype140463%_
                                          (let ((_%instance140466%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype140463%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance140466%_
                                               _%obj140464%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance140466%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor140462%_
                                             'class:
                                             (let ()
                                               (declare (not safe))
                                               (class-of _%obj140464%_)))
                                            '#!void)))
                                    _%descriptor140334%_
                                    '#f
                                    _%obj140349%_)
                                   ((lambda (_%descriptor140468%_
                                             _%prototype140469%_
                                             _%obj140470%_)
                                      (if _%prototype140469%_
                                          (let ((_%instance140472%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype140469%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance140472%_
                                               _%obj140470%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance140472%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor140468%_
                                             'class:
                                             (let ()
                                               (declare (not safe))
                                               (class-of _%obj140470%_)))
                                            '#!void)))
                                    _%descriptor140334%_
                                    _%prototype140460%_
                                    _%obj140349%_)))
                             _%$e140457%_)
                            (let ((_%$e140474%_
                                   (create-prototype
                                    _%descriptor140334%_
                                    _%klass140339%_
                                    _%obj-klass140352%_)))
                              (if _%$e140474%_
                                  ((lambda (_%prototype140477%_)
                                     ((lambda (_%descriptor140479%_
                                               _%prototype140480%_
                                               _%obj140481%_)
                                        (if _%prototype140480%_
                                            (let ((_%instance140483%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype140480%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance140483%_
                                                 _%obj140481%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance140483%_)
                                            (begin
                                              (raise-cast-error
                                               'cast
                                               '"cannot create interface prototype"
                                               'interface:
                                               _%descriptor140479%_
                                               'class:
                                               (let ()
                                                 (declare (not safe))
                                                 (class-of _%obj140481%_)))
                                              '#!void)))
                                      _%descriptor140334%_
                                      _%prototype140477%_
                                      _%obj140349%_))
                                   _%$e140474%_)
                                  ((lambda (_%descriptor140486%_
                                            _%prototype140487%_
                                            _%obj140488%_)
                                     (if _%prototype140487%_
                                         (let ((_%instance140490%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##structure-copy
                                                   _%prototype140487%_))))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-set!
                                              _%instance140490%_
                                              _%obj140488%_
                                              '1
                                              '#f
                                              'cast))
                                           _%instance140490%_)
                                         (begin
                                           (raise-cast-error
                                            'cast
                                            '"cannot create interface prototype"
                                            'interface:
                                            _%descriptor140486%_
                                            'class:
                                            (let ()
                                              (declare (not safe))
                                              (class-of _%obj140488%_)))
                                           '#!void)))
                                   _%descriptor140334%_
                                   '#f
                                   _%obj140349%_))))))))))))
    (define try-cast
      (lambda (_%descriptor140176%_ _%obj140178%_)
        (let* ((_%klass140181%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor140176%_ '1 '#f '#f)))
               (_%klass-id140184%_
                (let () (declare (not safe)) (##type-id _%klass140181%_))))
          (let _%loop140188%_ ((_%obj140191%_ _%obj140178%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass140194%_
                    (let () (declare (not safe)) (class-of _%obj140191%_)))
                   (_%obj-klass-id140197%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass140194%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id140184%_ _%obj-klass-id140197%_))
                  ((lambda (_%obj140202%_) _%obj140202%_) _%obj140191%_)
                  (if (interface-subclass? _%obj-klass140194%_)
                      (let* ((_%tab140205%_
                              (class-type-interface-table _%obj-klass140194%_))
                             (_%$e140245%_
                              (let* ((_%prototable140208%_ _%tab140205%_)
                                     (_%descriptor140211%_
                                      _%descriptor140176%_)
                                     (_%prototable140215%_
                                      _%prototable140208%_)
                                     (_%descriptor140236%_
                                      _%descriptor140211%_))
                                (____prototype-table-get
                                 _%prototable140215%_
                                 _%descriptor140236%_))))
                        (if _%$e140245%_
                            ((lambda (_%prototype140248%_)
                               (if (eq? _%prototype140248%_ '#!void)
                                   (_%loop140188%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj140191%_
                                       '1
                                       '#f
                                       '#f)))
                                   ((lambda (_%descriptor140251%_
                                             _%prototype140252%_
                                             _%obj140253%_)
                                      (if _%prototype140252%_
                                          (let ((_%instance140255%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype140252%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance140255%_
                                               _%obj140253%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance140255%_)
                                          '#f))
                                    _%descriptor140176%_
                                    _%prototype140248%_
                                    _%obj140191%_)))
                             _%$e140245%_)
                            (let ((_%$e140257%_
                                   (try-create-prototype
                                    _%descriptor140176%_
                                    _%klass140181%_
                                    _%obj-klass140194%_)))
                              (if _%$e140257%_
                                  ((lambda (_%prototype140260%_)
                                     ((lambda (_%descriptor140262%_
                                               _%prototype140263%_
                                               _%obj140264%_)
                                        (if _%prototype140263%_
                                            (let ((_%instance140266%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype140263%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance140266%_
                                                 _%obj140264%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance140266%_)
                                            '#f))
                                      _%descriptor140176%_
                                      _%prototype140260%_
                                      _%obj140191%_))
                                   _%$e140257%_)
                                  (_%loop140188%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj140191%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab140270%_
                              (class-type-interface-table _%obj-klass140194%_))
                             (_%$e140299%_
                              (let* ((_%prototable140272%_ _%tab140270%_)
                                     (_%descriptor140275%_
                                      _%descriptor140176%_)
                                     (_%prototable140279%_
                                      _%prototable140272%_)
                                     (_%descriptor140290%_
                                      _%descriptor140275%_))
                                (____prototype-table-get
                                 _%prototable140279%_
                                 _%descriptor140290%_))))
                        (if _%$e140299%_
                            ((lambda (_%prototype140302%_)
                               (if (eq? _%prototype140302%_ '#!void)
                                   ((lambda (_%descriptor140304%_
                                             _%prototype140305%_
                                             _%obj140306%_)
                                      (if _%prototype140305%_
                                          (let ((_%instance140308%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype140305%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance140308%_
                                               _%obj140306%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance140308%_)
                                          '#f))
                                    _%descriptor140176%_
                                    '#f
                                    _%obj140191%_)
                                   ((lambda (_%descriptor140310%_
                                             _%prototype140311%_
                                             _%obj140312%_)
                                      (if _%prototype140311%_
                                          (let ((_%instance140314%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype140311%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance140314%_
                                               _%obj140312%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance140314%_)
                                          '#f))
                                    _%descriptor140176%_
                                    _%prototype140302%_
                                    _%obj140191%_)))
                             _%$e140299%_)
                            (let ((_%$e140316%_
                                   (try-create-prototype
                                    _%descriptor140176%_
                                    _%klass140181%_
                                    _%obj-klass140194%_)))
                              (if _%$e140316%_
                                  ((lambda (_%prototype140319%_)
                                     ((lambda (_%descriptor140321%_
                                               _%prototype140322%_
                                               _%obj140323%_)
                                        (if _%prototype140322%_
                                            (let ((_%instance140325%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype140322%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance140325%_
                                                 _%obj140323%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance140325%_)
                                            '#f))
                                      _%descriptor140176%_
                                      _%prototype140319%_
                                      _%obj140191%_))
                                   _%$e140316%_)
                                  ((lambda (_%descriptor140328%_
                                            _%prototype140329%_
                                            _%obj140330%_)
                                     (if _%prototype140329%_
                                         (let ((_%instance140332%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##structure-copy
                                                   _%prototype140329%_))))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-set!
                                              _%instance140332%_
                                              _%obj140330%_
                                              '1
                                              '#f
                                              'cast))
                                           _%instance140332%_)
                                         '#f))
                                   _%descriptor140176%_
                                   '#f
                                   _%obj140191%_))))))))))))
    (define satisfies?
      (lambda (_%descriptor140030%_ _%obj140032%_)
        (let* ((_%klass140035%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor140030%_ '1 '#f '#f)))
               (_%klass-id140038%_
                (let () (declare (not safe)) (##type-id _%klass140035%_))))
          (let _%loop140042%_ ((_%obj140045%_ _%obj140032%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass140048%_
                    (let () (declare (not safe)) (class-of _%obj140045%_)))
                   (_%obj-klass-id140051%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass140048%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id140038%_ _%obj-klass-id140051%_))
                  ((lambda (_%obj140056%_) '#t) _%obj140045%_)
                  (if (interface-subclass? _%obj-klass140048%_)
                      (let* ((_%tab140059%_
                              (class-type-interface-table _%obj-klass140048%_))
                             (_%$e140099%_
                              (let* ((_%prototable140062%_ _%tab140059%_)
                                     (_%descriptor140065%_
                                      _%descriptor140030%_)
                                     (_%prototable140069%_
                                      _%prototable140062%_)
                                     (_%descriptor140090%_
                                      _%descriptor140065%_))
                                (____prototype-table-get
                                 _%prototable140069%_
                                 _%descriptor140090%_))))
                        (if _%$e140099%_
                            ((lambda (_%prototype140102%_)
                               (if (eq? _%prototype140102%_ '#!void)
                                   (_%loop140042%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj140045%_
                                       '1
                                       '#f
                                       '#f)))
                                   ((lambda (_%descriptor140105%_
                                             _%prototype140106%_
                                             _%obj140107%_)
                                      (if _%prototype140106%_ '#t '#f))
                                    _%descriptor140030%_
                                    _%prototype140102%_
                                    _%obj140045%_)))
                             _%$e140099%_)
                            (let ((_%$e140109%_
                                   (try-create-prototype
                                    _%descriptor140030%_
                                    _%klass140035%_
                                    _%obj-klass140048%_)))
                              (if _%$e140109%_
                                  ((lambda (_%prototype140112%_)
                                     ((lambda (_%descriptor140114%_
                                               _%prototype140115%_
                                               _%obj140116%_)
                                        (if _%prototype140115%_ '#t '#f))
                                      _%descriptor140030%_
                                      _%prototype140112%_
                                      _%obj140045%_))
                                   _%$e140109%_)
                                  (_%loop140042%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj140045%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab140120%_
                              (class-type-interface-table _%obj-klass140048%_))
                             (_%$e140149%_
                              (let* ((_%prototable140122%_ _%tab140120%_)
                                     (_%descriptor140125%_
                                      _%descriptor140030%_)
                                     (_%prototable140129%_
                                      _%prototable140122%_)
                                     (_%descriptor140140%_
                                      _%descriptor140125%_))
                                (____prototype-table-get
                                 _%prototable140129%_
                                 _%descriptor140140%_))))
                        (if _%$e140149%_
                            ((lambda (_%prototype140152%_)
                               (if (eq? _%prototype140152%_ '#!void)
                                   ((lambda (_%descriptor140154%_
                                             _%prototype140155%_
                                             _%obj140156%_)
                                      (if _%prototype140155%_ '#t '#f))
                                    _%descriptor140030%_
                                    '#f
                                    _%obj140045%_)
                                   ((lambda (_%descriptor140158%_
                                             _%prototype140159%_
                                             _%obj140160%_)
                                      (if _%prototype140159%_ '#t '#f))
                                    _%descriptor140030%_
                                    _%prototype140152%_
                                    _%obj140045%_)))
                             _%$e140149%_)
                            (let ((_%$e140162%_
                                   (try-create-prototype
                                    _%descriptor140030%_
                                    _%klass140035%_
                                    _%obj-klass140048%_)))
                              (if _%$e140162%_
                                  ((lambda (_%prototype140165%_)
                                     ((lambda (_%descriptor140167%_
                                               _%prototype140168%_
                                               _%obj140169%_)
                                        (if _%prototype140168%_ '#t '#f))
                                      _%descriptor140030%_
                                      _%prototype140165%_
                                      _%obj140045%_))
                                   _%$e140162%_)
                                  ((lambda (_%descriptor140172%_
                                            _%prototype140173%_
                                            _%obj140174%_)
                                     (if _%prototype140173%_ '#t '#f))
                                   _%descriptor140030%_
                                   '#f
                                   _%obj140045%_))))))))))))
    (define __with-prototype
      (lambda (_%descriptor139882%_
               _%obj139883%_
               _%with-prototype+receiver139884%_
               _%with-receiver139885%_)
        (let* ((_%descriptor139888%_ _%descriptor139882%_)
               (_%with-prototype+receiver139896%_
                _%with-prototype+receiver139884%_)
               (_%with-receiver139904%_ _%with-receiver139885%_)
               (_%klass139913%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor139888%_ '1 '#f '#f)))
               (_%klass-id139916%_
                (let () (declare (not safe)) (##type-id _%klass139913%_))))
          (let _%loop139920%_ ((_%obj139923%_ _%obj139883%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass139926%_
                    (let () (declare (not safe)) (class-of _%obj139923%_)))
                   (_%obj-klass-id139929%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass139926%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id139916%_ _%obj-klass-id139929%_))
                  (let ()
                    (declare (not safe))
                    (_%with-receiver139904%_ _%obj139923%_))
                  (if (interface-subclass? _%obj-klass139926%_)
                      (let* ((_%tab139935%_
                              (class-type-interface-table _%obj-klass139926%_))
                             (_%$e139977%_
                              (let* ((_%prototable139938%_ _%tab139935%_)
                                     (_%descriptor139941%_
                                      _%descriptor139888%_)
                                     (_%prototable139945%_
                                      _%prototable139938%_)
                                     (_%descriptor139968%_
                                      _%descriptor139941%_))
                                (____prototype-table-get
                                 _%prototable139945%_
                                 _%descriptor139968%_))))
                        (if _%$e139977%_
                            ((lambda (_%prototype139980%_)
                               (if (eq? _%prototype139980%_ '#!void)
                                   (_%loop139920%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj139923%_
                                       '1
                                       '#f
                                       '#f)))
                                   (let ()
                                     (declare (not safe))
                                     (_%with-prototype+receiver139896%_
                                      _%descriptor139888%_
                                      _%prototype139980%_
                                      _%obj139923%_))))
                             _%$e139977%_)
                            (let ((_%$e139983%_
                                   (try-create-prototype
                                    _%descriptor139888%_
                                    _%klass139913%_
                                    _%obj-klass139926%_)))
                              (if _%$e139983%_
                                  ((lambda (_%prototype139986%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%with-prototype+receiver139896%_
                                        _%descriptor139888%_
                                        _%prototype139986%_
                                        _%obj139923%_)))
                                   _%$e139983%_)
                                  (_%loop139920%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj139923%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab139990%_
                              (class-type-interface-table _%obj-klass139926%_))
                             (_%$e140019%_
                              (let* ((_%prototable139992%_ _%tab139990%_)
                                     (_%descriptor139995%_
                                      _%descriptor139888%_)
                                     (_%prototable139999%_
                                      _%prototable139992%_)
                                     (_%descriptor140010%_
                                      _%descriptor139995%_))
                                (____prototype-table-get
                                 _%prototable139999%_
                                 _%descriptor140010%_))))
                        (if _%$e140019%_
                            ((lambda (_%prototype140022%_)
                               (if (eq? _%prototype140022%_ '#!void)
                                   (let ()
                                     (declare (not safe))
                                     (_%with-prototype+receiver139896%_
                                      _%descriptor139888%_
                                      '#f
                                      _%obj139923%_))
                                   (let ()
                                     (declare (not safe))
                                     (_%with-prototype+receiver139896%_
                                      _%descriptor139888%_
                                      _%prototype140022%_
                                      _%obj139923%_))))
                             _%$e140019%_)
                            (let ((_%$e140024%_
                                   (create-prototype
                                    _%descriptor139888%_
                                    _%klass139913%_
                                    _%obj-klass139926%_)))
                              (if _%$e140024%_
                                  ((lambda (_%prototype140027%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%with-prototype+receiver139896%_
                                        _%descriptor139888%_
                                        _%prototype140027%_
                                        _%obj139923%_)))
                                   _%$e140024%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%with-prototype+receiver139896%_
                                     _%descriptor139888%_
                                     '#f
                                     _%obj139923%_)))))))))))))
    (define with-prototype
      (lambda (_%descriptor139845%_
               _%obj139846%_
               _%with-prototype+receiver139847%_
               _%with-receiver139848%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%descriptor139845%_
               'gerbil#interface-descriptor::t))
            (let ((_%descriptor139852%_ _%descriptor139845%_))
              (if (procedure? _%with-prototype+receiver139847%_)
                  (let ((_%with-prototype+receiver139862%_
                         _%with-prototype+receiver139847%_))
                    (if (procedure? _%with-receiver139848%_)
                        (let ((_%with-receiver139872%_
                               _%with-receiver139848%_))
                          (__with-prototype
                           _%descriptor139852%_
                           _%obj139846%_
                           _%with-prototype+receiver139862%_
                           _%with-receiver139872%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/interface.ss\"@235.9-235.22"
                           'contract:
                           'procedure?
                           'value:
                           _%with-receiver139848%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/interface.ss\"@234.9-234.32"
                     'contract:
                     'procedure?
                     'value:
                     _%with-prototype+receiver139847%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/interface.ss\"@233.23-233.33"
               'contract:
               'interface-descriptor?
               'value:
               _%descriptor139845%_)
              '#!void))))))
