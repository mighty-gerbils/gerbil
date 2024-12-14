(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1734215269)
  (begin
    (define CastError::t
      (let ((__tmp105325 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp105325
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (__make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _%$args105318%_
        (apply make-instance CastError::t _%$args105318%_)))
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
      (lambda (_%where105192%_ _%message105193%_ . _%irritants105194%_)
        (let ((__tmp105326
               (let ((__obj105321
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (CastError:::init!
                    __obj105321
                    _%message105193%_
                    'where:
                    _%where105192%_
                    'irritants:
                    _%irritants105194%_))
                 __obj105321)))
          (declare (not safe))
          (raise __tmp105326))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp105328 (list)) (__tmp105327 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp105328
         '(__object)
         __tmp105327
         '#f)))
    (define interface-instance?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-instance::t)))
    (define interface-instance-object
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor interface-instance::t '__object)))
    (define interface-instance-object-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator interface-instance::t '__object)))
    (define &interface-instance-object
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         interface-instance::t
         '__object)))
    (define &interface-instance-object-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator interface-instance::t '__object)))
    (define interface-descriptor::t
      (let ((__tmp105330 (list))
            (__tmp105329
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#interface-descriptor::t
         'interface-descriptor
         __tmp105330
         '(type methods)
         __tmp105329
         '#f)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _%$args105189%_
        (apply make-instance interface-descriptor::t _%$args105189%_)))
    (define interface-descriptor-type
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor interface-descriptor::t 'type)))
    (define interface-descriptor-methods
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor interface-descriptor::t 'methods)))
    (define interface-descriptor-type-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator interface-descriptor::t 'type)))
    (define interface-descriptor-methods-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator interface-descriptor::t 'methods)))
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
    (define __interface-hash-key
      (lambda (_%key105187%_)
        (let ((__tmp105332
               (macro-slot
                '1
                (let () (declare (not safe)) (##car _%key105187%_))))
              (__tmp105331
               (macro-slot
                '1
                (let () (declare (not safe)) (##cdr _%key105187%_)))))
          (declare (not safe))
          (##fxxor __tmp105332 __tmp105331))))
    (define __interface-test-key
      (lambda (_%a105184%_ _%b105185%_)
        (if (let ((__tmp105334
                   (let () (declare (not safe)) (##car _%a105184%_)))
                  (__tmp105333
                   (let () (declare (not safe)) (##car _%b105185%_))))
              (declare (not safe))
              (##eq? __tmp105334 __tmp105333))
            (let ((__tmp105336
                   (let () (declare (not safe)) (##cdr _%a105184%_)))
                  (__tmp105335
                   (let () (declare (not safe)) (##cdr _%b105185%_))))
              (declare (not safe))
              (##eq? __tmp105336 __tmp105335))
            '#f)))
    (define make-prototype-table__%
      (lambda (_%size-hint105165%_ _%seed105167%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint105165%_
           __interface-hash-key
           __interface-test-key
           _%seed105167%_))))
    (define make-prototype-table__0
      (lambda ()
        (let* ((_%size-hint105173%_ '#f) (_%seed105175%_ '0))
          (make-prototype-table__% _%size-hint105173%_ _%seed105175%_))))
    (define make-prototype-table__1
      (lambda (_%size-hint105177%_)
        (let ((_%seed105179%_ '0))
          (make-prototype-table__% _%size-hint105177%_ _%seed105179%_))))
    (define make-prototype-table
      (lambda _g105338_
        (let ((_g105337_ (let () (declare (not safe)) (##length _g105338_))))
          (cond ((let () (declare (not safe)) (##fx= _g105337_ 0))
                 (apply make-prototype-table__0 _g105338_))
                ((let () (declare (not safe)) (##fx= _g105337_ 1))
                 (apply make-prototype-table__1 _g105338_))
                ((let () (declare (not safe)) (##fx= _g105337_ 2))
                 (apply make-prototype-table__% _g105338_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-prototype-table
                  _g105338_))))))
    (define prototype-table-ref
      (lambda (_%tab105118%_ _%key105119%_ _%default105120%_)
        (let ((_%table105122%_
               (let () (declare (not safe)) (&raw-table-table _%tab105118%_)))
              (_%seed105123%_
               (let () (declare (not safe)) (&raw-table-seed _%tab105118%_))))
          (let* ((_%h105125%_
                  (fxxor (__interface-hash-key _%key105119%_) _%seed105123%_))
                 (_%size105128%_ (vector-length _%table105122%_))
                 (_%entries105131%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size105128%_ '2)))
                 (_%start105134%_
                  (let ((__tmp105339
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h105125%_ _%entries105131%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp105339 '1))))
            (let _%loop105138%_ ((_%probe105141%_ _%start105134%_)
                                 (_%i105143%_ '1)
                                 (_%deleted105145%_ '#f))
              (let ((_%k105148%_ (vector-ref _%table105122%_ _%probe105141%_)))
                (if (eq? _%k105148%_ (macro-unused-obj))
                    _%default105120%_
                    (if (eq? _%k105148%_ (macro-deleted-obj))
                        (_%loop105138%_
                         (let ((_%next-probe105153%_
                                (fx+ _%start105134%_
                                     _%i105143%_
                                     (fx* _%i105143%_ _%i105143%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe105153%_ _%size105128%_))
                         (let () (declare (not safe)) (##fx+ _%i105143%_ '1))
                         (let ((_%$e105156%_ _%deleted105145%_))
                           (if _%$e105156%_ _%$e105156%_ _%probe105141%_)))
                        (if (__interface-test-key _%key105119%_ _%k105148%_)
                            (vector-ref
                             _%table105122%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe105141%_ '1)))
                            (_%loop105138%_
                             (let ((_%next-probe105161%_
                                    (fx+ _%start105134%_
                                         _%i105143%_
                                         (fx* _%i105143%_ _%i105143%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe105161%_
                                _%size105128%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i105143%_ '1))
                             _%deleted105145%_))))))))))
    (define prototype-table-set!
      (lambda (_%tab105114%_ _%key105115%_ _%value105116%_)
        (if (let ((__tmp105342
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab105114%_)))
                  (__tmp105340
                   (let ((__tmp105341
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab105114%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp105341 '4))))
              (declare (not safe))
              (##fx< __tmp105342 __tmp105340))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab105114%_))
            '#!void)
        (__prototype-table-set! _%tab105114%_ _%key105115%_ _%value105116%_)))
    (define __prototype-table-set!
      (lambda (_%tab105065%_ _%key105066%_ _%value105067%_)
        (let ((_%table105070%_
               (let () (declare (not safe)) (&raw-table-table _%tab105065%_)))
              (_%seed105071%_
               (let () (declare (not safe)) (&raw-table-seed _%tab105065%_))))
          (let* ((_%h105073%_
                  (fxxor (__interface-hash-key _%key105066%_) _%seed105071%_))
                 (_%size105076%_ (vector-length _%table105070%_))
                 (_%entries105079%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size105076%_ '2)))
                 (_%start105082%_
                  (let ((__tmp105343
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h105073%_ _%entries105079%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp105343 '1))))
            (let _%loop105086%_ ((_%probe105089%_ _%start105082%_)
                                 (_%i105091%_ '1)
                                 (_%deleted105093%_ '#f))
              (let ((_%k105096%_ (vector-ref _%table105070%_ _%probe105089%_)))
                (if (eq? _%k105096%_ (macro-unused-obj))
                    (if _%deleted105093%_
                        (begin
                          (vector-set!
                           _%table105070%_
                           _%deleted105093%_
                           _%key105066%_)
                          (vector-set!
                           _%table105070%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted105093%_ '1))
                           _%value105067%_)
                          ((lambda ()
                             (let ((__tmp105344
                                    (let ((__tmp105345
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab105065%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp105345 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab105065%_
                                __tmp105344)))))
                        (begin
                          (vector-set!
                           _%table105070%_
                           _%probe105089%_
                           _%key105066%_)
                          (vector-set!
                           _%table105070%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe105089%_ '1))
                           _%value105067%_)
                          ((lambda ()
                             (let ((__tmp105346
                                    (let ((__tmp105347
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab105065%_))))
                                      (declare (not safe))
                                      (##fx- __tmp105347 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab105065%_
                                __tmp105346))
                             (let ((__tmp105348
                                    (let ((__tmp105349
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab105065%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp105349 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab105065%_
                                __tmp105348))))))
                    (if (eq? _%k105096%_ (macro-deleted-obj))
                        (_%loop105086%_
                         (let ((_%next-probe105103%_
                                (fx+ _%start105082%_
                                     _%i105091%_
                                     (fx* _%i105091%_ _%i105091%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe105103%_ _%size105076%_))
                         (let () (declare (not safe)) (##fx+ _%i105091%_ '1))
                         (let ((_%$e105106%_ _%deleted105093%_))
                           (if _%$e105106%_ _%$e105106%_ _%probe105089%_)))
                        (if (__interface-test-key _%key105066%_ _%k105096%_)
                            (let ()
                              (vector-set!
                               _%table105070%_
                               _%probe105089%_
                               _%key105066%_)
                              (vector-set!
                               _%table105070%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe105089%_ '1))
                               _%value105067%_))
                            (_%loop105086%_
                             (let ((_%next-probe105111%_
                                    (fx+ _%start105082%_
                                         _%i105091%_
                                         (fx* _%i105091%_ _%i105091%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe105111%_
                                _%size105076%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i105091%_ '1))
                             _%deleted105093%_))))))))))
    (define prototype-table-update!
      (lambda (_%tab105060%_
               _%key105061%_
               _%prototype-table-update!105062%_
               _%default105063%_)
        (if (let ((__tmp105352
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab105060%_)))
                  (__tmp105350
                   (let ((__tmp105351
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab105060%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp105351 '4))))
              (declare (not safe))
              (##fx< __tmp105352 __tmp105350))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab105060%_))
            '#!void)
        (__prototype-table-update!
         _%tab105060%_
         _%key105061%_
         _%prototype-table-update!105062%_
         _%default105063%_)))
    (define __prototype-table-update!
      (lambda (_%tab105010%_
               _%key105011%_
               _%prototype-table-update!105012%_
               _%default105013%_)
        (let ((_%table105016%_
               (let () (declare (not safe)) (&raw-table-table _%tab105010%_)))
              (_%seed105017%_
               (let () (declare (not safe)) (&raw-table-seed _%tab105010%_))))
          (let* ((_%h105019%_
                  (fxxor (__interface-hash-key _%key105011%_) _%seed105017%_))
                 (_%size105022%_ (vector-length _%table105016%_))
                 (_%entries105025%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size105022%_ '2)))
                 (_%start105028%_
                  (let ((__tmp105353
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h105019%_ _%entries105025%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp105353 '1))))
            (let _%loop105032%_ ((_%probe105035%_ _%start105028%_)
                                 (_%i105037%_ '1)
                                 (_%deleted105039%_ '#f))
              (let ((_%k105042%_ (vector-ref _%table105016%_ _%probe105035%_)))
                (if (eq? _%k105042%_ (macro-unused-obj))
                    (if _%deleted105039%_
                        (begin
                          (vector-set!
                           _%table105016%_
                           _%deleted105039%_
                           _%key105011%_)
                          (vector-set!
                           _%table105016%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted105039%_ '1))
                           (_%prototype-table-update!105012%_
                            _%default105013%_))
                          ((lambda ()
                             (let ((__tmp105354
                                    (let ((__tmp105355
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab105010%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp105355 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab105010%_
                                __tmp105354)))))
                        (begin
                          (vector-set!
                           _%table105016%_
                           _%probe105035%_
                           _%key105011%_)
                          (vector-set!
                           _%table105016%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe105035%_ '1))
                           (_%prototype-table-update!105012%_
                            _%default105013%_))
                          ((lambda ()
                             (let ((__tmp105356
                                    (let ((__tmp105357
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab105010%_))))
                                      (declare (not safe))
                                      (##fx- __tmp105357 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab105010%_
                                __tmp105356))
                             (let ((__tmp105358
                                    (let ((__tmp105359
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab105010%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp105359 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab105010%_
                                __tmp105358))))))
                    (if (eq? _%k105042%_ (macro-deleted-obj))
                        (_%loop105032%_
                         (let ((_%next-probe105049%_
                                (fx+ _%start105028%_
                                     _%i105037%_
                                     (fx* _%i105037%_ _%i105037%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe105049%_ _%size105022%_))
                         (let () (declare (not safe)) (##fx+ _%i105037%_ '1))
                         (let ((_%$e105052%_ _%deleted105039%_))
                           (if _%$e105052%_ _%$e105052%_ _%probe105035%_)))
                        (if (__interface-test-key _%key105011%_ _%k105042%_)
                            (let ()
                              (vector-set!
                               _%table105016%_
                               _%probe105035%_
                               _%key105011%_)
                              (vector-set!
                               _%table105016%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe105035%_ '1))
                               (_%prototype-table-update!105012%_
                                (vector-ref
                                 _%table105016%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe105035%_ '1))))))
                            (_%loop105032%_
                             (let ((_%next-probe105057%_
                                    (fx+ _%start105028%_
                                         _%i105037%_
                                         (fx* _%i105037%_ _%i105037%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe105057%_
                                _%size105022%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i105037%_ '1))
                             _%deleted105039%_))))))))))
    (define prototype-table-delete!
      (lambda (_%tab104965%_ _%key104967%_)
        (let ((_%table104970%_
               (let () (declare (not safe)) (&raw-table-table _%tab104965%_)))
              (_%seed104972%_
               (let () (declare (not safe)) (&raw-table-seed _%tab104965%_))))
          (let* ((_%h104975%_
                  (fxxor (__interface-hash-key _%key104967%_) _%seed104972%_))
                 (_%size104978%_ (vector-length _%table104970%_))
                 (_%entries104981%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size104978%_ '2)))
                 (_%start104984%_
                  (let ((__tmp105360
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h104975%_ _%entries104981%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp105360 '1))))
            (let _%loop104988%_ ((_%probe104991%_ _%start104984%_)
                                 (_%i104993%_ '1))
              (let ((_%k104996%_ (vector-ref _%table104970%_ _%probe104991%_)))
                (if (eq? _%k104996%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k104996%_ (macro-deleted-obj))
                        (_%loop104988%_
                         (let ((_%next-probe105001%_
                                (fx+ _%start104984%_
                                     _%i104993%_
                                     (fx* _%i104993%_ _%i104993%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe105001%_ _%size104978%_))
                         (let () (declare (not safe)) (##fx+ _%i104993%_ '1)))
                        (if (__interface-test-key _%key104967%_ _%k104996%_)
                            (let ()
                              (vector-set!
                               _%table104970%_
                               _%probe104991%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table104970%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe104991%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp105361
                                        (let ((__tmp105362
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab104965%_))))
                                          (declare (not safe))
                                          (##fx- __tmp105362 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab104965%_
                                    __tmp105361)))))
                            (_%loop104988%_
                             (let ((_%next-probe105007%_
                                    (fx+ _%start104984%_
                                         _%i104993%_
                                         (fx* _%i104993%_ _%i104993%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe105007%_
                                _%size104978%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i104993%_ '1))))))))))))
    (define __interface-prototypes-mx (vector '0))
    (define __interface-prototypes (make-prototype-table__% '#f '0))
    (define __interface-prototypes-key (cons '#f '#f))
    (define interface-subclass?
      (lambda (_%klass104957%_)
        (let ((_%super104958104960%_
               (let () (declare (not safe)) (##type-super _%klass104957%_))))
          (if _%super104958104960%_
              (let ((_%super104963%_ _%super104958104960%_))
                (eq? (let () (declare (not safe)) (##type-id _%super104963%_))
                     (let ()
                       (declare (not safe))
                       (##type-id interface-instance::t))))
              '#f))))
    (define create-prototype
      (lambda (_%descriptor104791%_ _%klass104792%_ _%obj-klass104793%_)
        (let ((_%method-table104795%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass104793%_))))
          (let _%loop104798%_ ((_%rest104801%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor104791%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count104803%_ '0)
                               (_%methods104805%_ '()))
            (let* ((_%rest104807104815%_ _%rest104801%_)
                   (_%else104809104877%_
                    (lambda ()
                      (let ((_%prototype104823%_
                             (let ((__obj105323
                                    (let ((__tmp105363
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count104803%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass104792%_
                                       __tmp105363))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj105323 '#f))
                               __obj105323)))
                        (let _%loop104826%_ ((_%rest104828%_ _%methods104805%_)
                                             (_%off104829%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count104803%_ '1))))
                          (let* ((_%rest104831104839%_ _%rest104828%_)
                                 (_%else104833104858%_
                                  (lambda ()
                                    (let ((_%prototype-key104847%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##type-id _%klass104792%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id
                                                    _%obj-klass104793%_)))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _%again104852%_ ()
                                          (if (let ((__tmp105364
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp105364 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (_%again104852%_)))))
                                      (prototype-table-set!
                                       __interface-prototypes
                                       _%prototype-key104847%_
                                       _%prototype104823%_)
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_%prototype104856%_)
                                         _%prototype104856%_)
                                       _%prototype104823%_))))
                                 (_%K104835104865%_
                                  (lambda (_%rest104861%_ _%method104862%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype104823%_
                                       _%method104862%_
                                       _%off104829%_
                                       _%klass104792%_
                                       '#f))
                                    (_%loop104826%_
                                     _%rest104861%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off104829%_ '1))))))
                            (if (pair? _%rest104831104839%_)
                                (let ((_%hd104836104868%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest104831104839%_)))
                                      (_%tl104837104870%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest104831104839%_))))
                                  (let* ((_%method104873%_ _%hd104836104868%_)
                                         (_%rest104875%_ _%tl104837104870%_))
                                    (_%K104835104865%_
                                     _%rest104875%_
                                     _%method104873%_)))
                                (_%else104833104858%_)))))))
                   (_%K104811104945%_
                    (lambda (_%rest104880%_ _%method-spec104881%_)
                      (if (pair? _%method-spec104881%_)
                          (let _%loop-inner104885%_ ((_%methods-rest104888%_
                                                      _%method-spec104881%_))
                            (let* ((_%methods-rest104890104898%_
                                    _%methods-rest104888%_)
                                   (_%else104892104910%_
                                    (lambda ()
                                      ((lambda (_%klass104906%_
                                                _%obj-klass104907%_
                                                _%method-name104908%_)
                                         (raise-cast-error
                                          'create-prototype
                                          '"cannot create interface instance; missing method"
                                          'interface:
                                          _%klass104906%_
                                          'interface-id:
                                          (let ()
                                            (declare (not safe))
                                            (##type-id _%klass104906%_))
                                          'class:
                                          _%obj-klass104907%_
                                          'class-id:
                                          (let ()
                                            (declare (not safe))
                                            (##type-id _%obj-klass104907%_))
                                          'method:
                                          _%method-name104908%_)
                                         '#!void)
                                       _%klass104792%_
                                       _%obj-klass104793%_
                                       _%method-spec104881%_)))
                                   (_%K104894104923%_
                                    (lambda (_%methods-rest104913%_
                                             _%method-name104914%_)
                                      (let ((_%$e104917%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table104795%_
                                                _%method-name104914%_
                                                '#f))))
                                        (if _%$e104917%_
                                            ((lambda (_%method104920%_)
                                               (_%loop104798%_
                                                _%rest104880%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%count104803%_ '1))
                                                (cons _%method104920%_
                                                      _%methods104805%_)))
                                             _%$e104917%_)
                                            (_%loop-inner104885%_
                                             _%methods-rest104913%_))))))
                              (if (pair? _%methods-rest104890104898%_)
                                  (let ((_%hd104895104926%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%methods-rest104890104898%_)))
                                        (_%tl104896104928%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%methods-rest104890104898%_))))
                                    (let* ((_%method-name104931%_
                                            _%hd104895104926%_)
                                           (_%methods-rest104933%_
                                            _%tl104896104928%_))
                                      (_%K104894104923%_
                                       _%methods-rest104933%_
                                       _%method-name104931%_)))
                                  (_%else104892104910%_))))
                          (let ((_%$e104935%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table104795%_
                                    _%method-spec104881%_
                                    '#f))))
                            (if _%$e104935%_
                                ((lambda (_%method104938%_)
                                   (_%loop104798%_
                                    _%rest104880%_
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%count104803%_ '1))
                                    (cons _%method104938%_ _%methods104805%_)))
                                 _%$e104935%_)
                                ((lambda (_%klass104941%_
                                          _%obj-klass104942%_
                                          _%method-name104943%_)
                                   (raise-cast-error
                                    'create-prototype
                                    '"cannot create interface instance; missing method"
                                    'interface:
                                    _%klass104941%_
                                    'interface-id:
                                    (let ()
                                      (declare (not safe))
                                      (##type-id _%klass104941%_))
                                    'class:
                                    _%obj-klass104942%_
                                    'class-id:
                                    (let ()
                                      (declare (not safe))
                                      (##type-id _%obj-klass104942%_))
                                    'method:
                                    _%method-name104943%_)
                                   '#!void)
                                 _%klass104792%_
                                 _%obj-klass104793%_
                                 _%method-spec104881%_)))))))
              (if (pair? _%rest104807104815%_)
                  (let ((_%hd104812104948%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest104807104815%_)))
                        (_%tl104813104950%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest104807104815%_))))
                    (let* ((_%method-spec104953%_ _%hd104812104948%_)
                           (_%rest104955%_ _%tl104813104950%_))
                      (_%K104811104945%_
                       _%rest104955%_
                       _%method-spec104953%_)))
                  (_%else104809104877%_)))))))
    (define try-create-prototype
      (lambda (_%descriptor104625%_ _%klass104626%_ _%obj-klass104627%_)
        (let ((_%method-table104629%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass104627%_))))
          (let _%loop104632%_ ((_%rest104635%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor104625%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count104637%_ '0)
                               (_%methods104639%_ '()))
            (let* ((_%rest104641104649%_ _%rest104635%_)
                   (_%else104643104711%_
                    (lambda ()
                      (let ((_%prototype104657%_
                             (let ((__obj105324
                                    (let ((__tmp105365
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count104637%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass104626%_
                                       __tmp105365))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj105324 '#f))
                               __obj105324)))
                        (let _%loop104660%_ ((_%rest104662%_ _%methods104639%_)
                                             (_%off104663%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count104637%_ '1))))
                          (let* ((_%rest104665104673%_ _%rest104662%_)
                                 (_%else104667104692%_
                                  (lambda ()
                                    (let ((_%prototype-key104681%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##type-id _%klass104626%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id
                                                    _%obj-klass104627%_)))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _%again104686%_ ()
                                          (if (let ((__tmp105366
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp105366 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (_%again104686%_)))))
                                      (prototype-table-set!
                                       __interface-prototypes
                                       _%prototype-key104681%_
                                       _%prototype104657%_)
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_%prototype104690%_)
                                         _%prototype104690%_)
                                       _%prototype104657%_))))
                                 (_%K104669104699%_
                                  (lambda (_%rest104695%_ _%method104696%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype104657%_
                                       _%method104696%_
                                       _%off104663%_
                                       _%klass104626%_
                                       '#f))
                                    (_%loop104660%_
                                     _%rest104695%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off104663%_ '1))))))
                            (if (pair? _%rest104665104673%_)
                                (let ((_%hd104670104702%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest104665104673%_)))
                                      (_%tl104671104704%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest104665104673%_))))
                                  (let* ((_%method104707%_ _%hd104670104702%_)
                                         (_%rest104709%_ _%tl104671104704%_))
                                    (_%K104669104699%_
                                     _%rest104709%_
                                     _%method104707%_)))
                                (_%else104667104692%_)))))))
                   (_%K104645104779%_
                    (lambda (_%rest104714%_ _%method-spec104715%_)
                      (if (pair? _%method-spec104715%_)
                          (let _%loop-inner104719%_ ((_%methods-rest104722%_
                                                      _%method-spec104715%_))
                            (let* ((_%methods-rest104724104732%_
                                    _%methods-rest104722%_)
                                   (_%else104726104744%_
                                    (lambda ()
                                      ((lambda (_%klass104740%_
                                                _%obj-klass104741%_
                                                _%method-name104742%_)
                                         '#f)
                                       _%klass104626%_
                                       _%obj-klass104627%_
                                       _%method-spec104715%_)))
                                   (_%K104728104757%_
                                    (lambda (_%methods-rest104747%_
                                             _%method-name104748%_)
                                      (let ((_%$e104751%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table104629%_
                                                _%method-name104748%_
                                                '#f))))
                                        (if _%$e104751%_
                                            ((lambda (_%method104754%_)
                                               (_%loop104632%_
                                                _%rest104714%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%count104637%_ '1))
                                                (cons _%method104754%_
                                                      _%methods104639%_)))
                                             _%$e104751%_)
                                            (_%loop-inner104719%_
                                             _%methods-rest104747%_))))))
                              (if (pair? _%methods-rest104724104732%_)
                                  (let ((_%hd104729104760%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%methods-rest104724104732%_)))
                                        (_%tl104730104762%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%methods-rest104724104732%_))))
                                    (let* ((_%method-name104765%_
                                            _%hd104729104760%_)
                                           (_%methods-rest104767%_
                                            _%tl104730104762%_))
                                      (_%K104728104757%_
                                       _%methods-rest104767%_
                                       _%method-name104765%_)))
                                  (_%else104726104744%_))))
                          (let ((_%$e104769%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table104629%_
                                    _%method-spec104715%_
                                    '#f))))
                            (if _%$e104769%_
                                ((lambda (_%method104772%_)
                                   (_%loop104632%_
                                    _%rest104714%_
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%count104637%_ '1))
                                    (cons _%method104772%_ _%methods104639%_)))
                                 _%$e104769%_)
                                ((lambda (_%klass104775%_
                                          _%obj-klass104776%_
                                          _%method-name104777%_)
                                   '#f)
                                 _%klass104626%_
                                 _%obj-klass104627%_
                                 _%method-spec104715%_)))))))
              (if (pair? _%rest104641104649%_)
                  (let ((_%hd104646104782%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest104641104649%_)))
                        (_%tl104647104784%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest104641104649%_))))
                    (let* ((_%method-spec104787%_ _%hd104646104782%_)
                           (_%rest104789%_ _%tl104647104784%_))
                      (_%K104645104779%_
                       _%rest104789%_
                       _%method-spec104787%_)))
                  (_%else104643104711%_)))))))
    (define cast
      (lambda (_%descriptor104583%_ _%obj104585%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass104589%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor104583%_ '1 '#f '#f)))
               (_%klass-id104592%_
                (let () (declare (not safe)) (##type-id _%klass104589%_)))
               (_%obj-klass104595%_
                (let () (declare (not safe)) (class-of _%obj104585%_)))
               (_%obj-klass-id104598%_
                (let () (declare (not safe)) (##type-id _%obj-klass104595%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id104592%_ _%obj-klass-id104598%_))
              _%obj104585%_
              (if (interface-subclass? _%obj-klass104595%_)
                  (cast _%descriptor104583%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%obj104585%_
                           '1
                           '#f
                           '#f)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again104607%_ ()
                        (if (let ((__tmp105367
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp105367 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (_%again104607%_)))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id104592%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id104598%_))
                    (let ((_%prototype104618%_
                           (let ((_%$e104611%_
                                  (prototype-table-ref
                                   __interface-prototypes
                                   __interface-prototypes-key
                                   '#f)))
                             (if _%$e104611%_
                                 ((lambda (_%prototype104614%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype104614%_)
                                  _%$e104611%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (create-prototype
                                    _%descriptor104583%_
                                    _%klass104589%_
                                    _%obj-klass104595%_))))))
                      ((lambda (_%prototype104620%_ _%obj104621%_)
                         (let ((_%instance104623%_
                                (let ()
                                  (declare (not safe))
                                  (##structure-copy _%prototype104620%_))))
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-set!
                              _%instance104623%_
                              _%obj104621%_
                              '1
                              '#f
                              'cast))
                           _%instance104623%_))
                       _%prototype104618%_
                       _%obj104585%_))))))))
    (define try-cast
      (lambda (_%descriptor104541%_ _%obj104543%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass104547%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor104541%_ '1 '#f '#f)))
               (_%klass-id104550%_
                (let () (declare (not safe)) (##type-id _%klass104547%_)))
               (_%obj-klass104553%_
                (let () (declare (not safe)) (class-of _%obj104543%_)))
               (_%obj-klass-id104556%_
                (let () (declare (not safe)) (##type-id _%obj-klass104553%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id104550%_ _%obj-klass-id104556%_))
              _%obj104543%_
              (if (interface-subclass? _%obj-klass104553%_)
                  (try-cast
                   _%descriptor104541%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%obj104543%_ '1 '#f '#f)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again104565%_ ()
                        (if (let ((__tmp105368
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp105368 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (_%again104565%_)))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id104550%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id104556%_))
                    (let ((_%prototype104576%_
                           (let ((_%$e104569%_
                                  (prototype-table-ref
                                   __interface-prototypes
                                   __interface-prototypes-key
                                   '#f)))
                             (if _%$e104569%_
                                 ((lambda (_%prototype104572%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype104572%_)
                                  _%$e104569%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (try-create-prototype
                                    _%descriptor104541%_
                                    _%klass104547%_
                                    _%obj-klass104553%_))))))
                      ((lambda (_%prototype104578%_ _%obj104579%_)
                         (if _%prototype104578%_
                             (let ((_%instance104581%_
                                    (let ()
                                      (declare (not safe))
                                      (##structure-copy _%prototype104578%_))))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-set!
                                  _%instance104581%_
                                  _%obj104579%_
                                  '1
                                  '#f
                                  'cast))
                               _%instance104581%_)
                             '#f))
                       _%prototype104576%_
                       _%obj104543%_))))))))
    (define satisfies?
      (lambda (_%descriptor104501%_ _%obj104503%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass104507%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor104501%_ '1 '#f '#f)))
               (_%klass-id104510%_
                (let () (declare (not safe)) (##type-id _%klass104507%_)))
               (_%obj-klass104513%_
                (let () (declare (not safe)) (class-of _%obj104503%_)))
               (_%obj-klass-id104516%_
                (let () (declare (not safe)) (##type-id _%obj-klass104513%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id104510%_ _%obj-klass-id104516%_))
              _%obj104503%_
              (if (interface-subclass? _%obj-klass104513%_)
                  (satisfies?
                   _%descriptor104501%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%obj104503%_ '1 '#f '#f)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again104525%_ ()
                        (if (let ((__tmp105369
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp105369 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (_%again104525%_)))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id104510%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id104516%_))
                    (let ((_%prototype104536%_
                           (let ((_%$e104529%_
                                  (prototype-table-ref
                                   __interface-prototypes
                                   __interface-prototypes-key
                                   '#f)))
                             (if _%$e104529%_
                                 ((lambda (_%prototype104532%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype104532%_)
                                  _%$e104529%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (try-create-prototype
                                    _%descriptor104501%_
                                    _%klass104507%_
                                    _%obj-klass104513%_))))))
                      ((lambda (_%prototype104538%_ _%obj104539%_)
                         (if _%prototype104538%_ '#t '#f))
                       _%prototype104536%_
                       _%obj104503%_))))))))))
