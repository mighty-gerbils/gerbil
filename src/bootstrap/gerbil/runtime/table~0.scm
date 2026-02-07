(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1770505710)
  (begin
    (declare (not safe))
    (define __table::t.id 'gerbil#__table::t)
    (define __table::t
      (##structure
       ##type-type
       __table::t.id
       'raw-table
       '26
       '#f
       '#(table
          5
          #f
          count
          5
          #f
          free
          5
          #f
          hash
          5
          #f
          test
          5
          #f
          seed
          5
          #f
          lock
          5
          #f)))
    (define raw-table?
      (lambda (_%obj116292%_)
        (if (##structure? _%obj116292%_)
            (##structure-instance-of? _%obj116292%_ __table::t.id)
            '#f)))
    (define &raw-table-table
      (lambda (_%tab116290%_)
        (##unchecked-structure-ref
         _%tab116290%_
         '1
         __table::t
         'raw-table-table)))
    (define &raw-table-count
      (lambda (_%tab116288%_)
        (##unchecked-structure-ref
         _%tab116288%_
         '2
         __table::t
         'raw-table-count)))
    (define &raw-table-free
      (lambda (_%tab116286%_)
        (##unchecked-structure-ref
         _%tab116286%_
         '3
         __table::t
         'raw-table-free)))
    (define &raw-table-hash
      (lambda (_%tab116284%_)
        (##unchecked-structure-ref
         _%tab116284%_
         '4
         __table::t
         'raw-table-hash)))
    (define &raw-table-test
      (lambda (_%tab116282%_)
        (##unchecked-structure-ref
         _%tab116282%_
         '5
         __table::t
         'raw-table-test)))
    (define &raw-table-seed
      (lambda (_%tab116280%_)
        (##unchecked-structure-ref
         _%tab116280%_
         '6
         __table::t
         'raw-table-seed)))
    (define &raw-table-lock
      (lambda (_%tab116278%_)
        (##unchecked-structure-ref
         _%tab116278%_
         '7
         __table::t
         'raw-table-lock)))
    (define &raw-table-table-set!
      (lambda (_%tab116275%_ _%val116276%_)
        (##unchecked-structure-set!
         _%tab116275%_
         _%val116276%_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_%tab116272%_ _%val116273%_)
        (##unchecked-structure-set!
         _%tab116272%_
         _%val116273%_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_%tab116269%_ _%val116270%_)
        (##unchecked-structure-set!
         _%tab116269%_
         _%val116270%_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_%tab116266%_ _%val116267%_)
        (##unchecked-structure-set!
         _%tab116266%_
         _%val116267%_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_%tab116263%_ _%val116264%_)
        (##unchecked-structure-set!
         _%tab116263%_
         _%val116264%_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_%tab116260%_ _%val116261%_)
        (##unchecked-structure-set!
         _%tab116260%_
         _%val116261%_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define &raw-table-lock-set!
      (lambda (_%tab116257%_ _%val116258%_)
        (##unchecked-structure-set!
         _%tab116257%_
         _%val116258%_
         '7
         __table::t
         'raw-table-lock-set!)))
    (define raw-table-size-hint->size
      (lambda (_%size-hint116255%_)
        (if (and (fixnum? _%size-hint116255%_) (##fx> _%size-hint116255%_ '0))
            (##fx* (fxmax '2 (expt '2 (integer-length _%size-hint116255%_)))
                   '4)
            '16)))
    (define make-raw-table__%
      (lambda (_%size-hint116220%_
               _%hash116221%_
               _%test116222%_
               _%seed116223%_
               _%lock116224%_)
        (let* ((_%size116226%_ (raw-table-size-hint->size _%size-hint116220%_))
               (_%table116228%_
                (##make-vector _%size116226%_ (macro-unused-obj))))
          (##structure
           __table::t
           _%table116228%_
           '0
           (##fxquotient _%size116226%_ '2)
           _%hash116221%_
           _%test116222%_
           _%seed116223%_
           _%lock116224%_))))
    (define make-raw-table__0
      (lambda (_%size-hint116234%_ _%hash116235%_ _%test116236%_)
        (let* ((_%seed116238%_ '0) (_%lock116240%_ '#f))
          (make-raw-table__%
           _%size-hint116234%_
           _%hash116235%_
           _%test116236%_
           _%seed116238%_
           _%lock116240%_))))
    (define make-raw-table__1
      (lambda (_%size-hint116242%_
               _%hash116243%_
               _%test116244%_
               _%seed116245%_)
        (let ((_%lock116247%_ '#f))
          (make-raw-table__%
           _%size-hint116242%_
           _%hash116243%_
           _%test116244%_
           _%seed116245%_
           _%lock116247%_))))
    (define make-raw-table
      (lambda _g116293_
        (let ((_g116294_ (##length _g116293_)))
          (cond ((##fx= _g116294_ 3) (apply make-raw-table__0 _g116293_))
                ((##fx= _g116294_ 4) (apply make-raw-table__1 _g116293_))
                ((##fx= _g116294_ 5) (apply make-raw-table__% _g116293_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g116293_))))))
    (define make-raw-table/lock__%
      (lambda (_%size-hint116200%_
               _%hash116201%_
               _%test116202%_
               _%seed116203%_)
        (make-raw-table__%
         _%size-hint116200%_
         _%hash116201%_
         _%test116202%_
         _%seed116203%_
         (vector '0 '#f))))
    (define make-raw-table/lock__0
      (lambda (_%size-hint116208%_ _%hash116209%_ _%test116210%_)
        (let ((_%seed116212%_ '0))
          (make-raw-table/lock__%
           _%size-hint116208%_
           _%hash116209%_
           _%test116210%_
           _%seed116212%_))))
    (define make-raw-table/lock
      (lambda _g116295_
        (let ((_g116296_ (##length _g116295_)))
          (cond ((##fx= _g116296_ 3) (apply make-raw-table/lock__0 _g116295_))
                ((##fx= _g116296_ 4) (apply make-raw-table/lock__% _g116295_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table/lock
                  _g116295_))))))
    (define raw-table-length
      (lambda (_%tab116197%_) (&raw-table-count _%tab116197%_)))
    (define raw-table-length/lock
      (lambda (_%tab116172%_)
        (let ((_%lock116174%_ (&raw-table-lock _%tab116172%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again116179%_ ((_%spin116182%_ '0))
              (if (##fx= (##vector-cas! _%lock116174%_ '0 '1 '0) '0)
                  (##vector-set! _%lock116174%_ '1 (current-thread))
                  (if (##fx< _%spin116182%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again116179%_ (##fx+ _%spin116182%_ '1)))
                      (let ((_%owner116188%_ (##vector-ref _%lock116174%_ '1)))
                        (if (eq? _%owner116188%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner116188%_)
                                (let () (##thread-yield!) (_%again116179%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r116194%_ (&raw-table-count _%tab116172%_)))
            (##vector-set! _%lock116174%_ '1 '#f)
            (##vector-cas! _%lock116174%_ '0 '0 '1)
            _%$r116194%_))))
    (define raw-table-ref
      (lambda (_%tab116124%_ _%key116125%_ _%default116126%_)
        (let ((_%table116128%_ (&raw-table-table _%tab116124%_))
              (_%seed116129%_ (&raw-table-seed _%tab116124%_))
              (_%hash116130%_ (&raw-table-hash _%tab116124%_))
              (_%test116131%_ (&raw-table-test _%tab116124%_)))
          (let* ((_%h116133%_
                  (fxxor (_%hash116130%_ _%key116125%_) _%seed116129%_))
                 (_%size116136%_ (vector-length _%table116128%_))
                 (_%entries116139%_ (##fxquotient _%size116136%_ '2))
                 (_%start116142%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h116133%_ _%entries116139%_)
                   '1)))
            (let _%loop116146%_ ((_%probe116149%_ _%start116142%_)
                                 (_%i116151%_ '1)
                                 (_%deleted116153%_ '#f))
              (let ((_%k116156%_ (vector-ref _%table116128%_ _%probe116149%_)))
                (if (eq? _%k116156%_ (macro-unused-obj))
                    _%default116126%_
                    (if (eq? _%k116156%_ (macro-deleted-obj))
                        (_%loop116146%_
                         (let ((_%next-probe116161%_
                                (fx+ _%start116142%_
                                     _%i116151%_
                                     (fx* _%i116151%_ _%i116151%_))))
                           (##fxmodulo _%next-probe116161%_ _%size116136%_))
                         (##fx+ _%i116151%_ '1)
                         (let ((_%$e116164%_ _%deleted116153%_))
                           (if _%$e116164%_ _%$e116164%_ _%probe116149%_)))
                        (if (_%test116131%_ _%key116125%_ _%k116156%_)
                            (vector-ref
                             _%table116128%_
                             (##fx+ _%probe116149%_ '1))
                            (_%loop116146%_
                             (let ((_%next-probe116169%_
                                    (fx+ _%start116142%_
                                         _%i116151%_
                                         (fx* _%i116151%_ _%i116151%_))))
                               (##fxmodulo
                                _%next-probe116169%_
                                _%size116136%_))
                             (##fx+ _%i116151%_ '1)
                             _%deleted116153%_))))))))))
    (define raw-table-ref/lock
      (lambda (_%tab116097%_ _%key116098%_ _%default116099%_)
        (let ((_%lock116101%_ (&raw-table-lock _%tab116097%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again116106%_ ((_%spin116109%_ '0))
              (if (##fx= (##vector-cas! _%lock116101%_ '0 '1 '0) '0)
                  (##vector-set! _%lock116101%_ '1 (current-thread))
                  (if (##fx< _%spin116109%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again116106%_ (##fx+ _%spin116109%_ '1)))
                      (let ((_%owner116115%_ (##vector-ref _%lock116101%_ '1)))
                        (if (eq? _%owner116115%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner116115%_)
                                (let () (##thread-yield!) (_%again116106%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r116121%_
                 (raw-table-ref
                  _%tab116097%_
                  _%key116098%_
                  _%default116099%_)))
            (##vector-set! _%lock116101%_ '1 '#f)
            (##vector-cas! _%lock116101%_ '0 '0 '1)
            _%$r116121%_))))
    (define raw-table-set!
      (lambda (_%tab116093%_ _%key116094%_ _%value116095%_)
        (if (##fx< (&raw-table-free _%tab116093%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab116093%_))
                    '4))
            (__raw-table-rehash! _%tab116093%_)
            '#!void)
        (__raw-table-set! _%tab116093%_ _%key116094%_ _%value116095%_)))
    (define raw-table-set!/lock
      (lambda (_%tab116066%_ _%key116067%_ _%value116068%_)
        (let ((_%lock116070%_ (&raw-table-lock _%tab116066%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again116075%_ ((_%spin116078%_ '0))
              (if (##fx= (##vector-cas! _%lock116070%_ '0 '1 '0) '0)
                  (##vector-set! _%lock116070%_ '1 (current-thread))
                  (if (##fx< _%spin116078%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again116075%_ (##fx+ _%spin116078%_ '1)))
                      (let ((_%owner116084%_ (##vector-ref _%lock116070%_ '1)))
                        (if (eq? _%owner116084%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner116084%_)
                                (let () (##thread-yield!) (_%again116075%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r116090%_
                 (raw-table-set! _%tab116066%_ _%key116067%_ _%value116068%_)))
            (##vector-set! _%lock116070%_ '1 '#f)
            (##vector-cas! _%lock116070%_ '0 '0 '1)
            _%$r116090%_))))
    (define raw-table-update!
      (lambda (_%tab116061%_ _%key116062%_ _%update116063%_ _%default116064%_)
        (if (##fx< (&raw-table-free _%tab116061%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab116061%_))
                    '4))
            (__raw-table-rehash! _%tab116061%_)
            '#!void)
        (__raw-table-update!
         _%tab116061%_
         _%key116062%_
         _%update116063%_
         _%default116064%_)))
    (define raw-table-update!/lock
      (lambda (_%tab116033%_ _%key116034%_ _%update116035%_ _%default116036%_)
        (let ((_%lock116038%_ (&raw-table-lock _%tab116033%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again116043%_ ((_%spin116046%_ '0))
              (if (##fx= (##vector-cas! _%lock116038%_ '0 '1 '0) '0)
                  (##vector-set! _%lock116038%_ '1 (current-thread))
                  (if (##fx< _%spin116046%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again116043%_ (##fx+ _%spin116046%_ '1)))
                      (let ((_%owner116052%_ (##vector-ref _%lock116038%_ '1)))
                        (if (eq? _%owner116052%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner116052%_)
                                (let () (##thread-yield!) (_%again116043%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r116058%_
                 (raw-table-update!
                  _%tab116033%_
                  _%key116034%_
                  _%update116035%_
                  _%default116036%_)))
            (##vector-set! _%lock116038%_ '1 '#f)
            (##vector-cas! _%lock116038%_ '0 '0 '1)
            _%$r116058%_))))
    (define raw-table-delete!
      (lambda (_%tab115990%_ _%key115991%_)
        (let ((_%table115993%_ (&raw-table-table _%tab115990%_))
              (_%seed115994%_ (&raw-table-seed _%tab115990%_))
              (_%hash115995%_ (&raw-table-hash _%tab115990%_))
              (_%test115996%_ (&raw-table-test _%tab115990%_)))
          (let* ((_%h115998%_
                  (fxxor (_%hash115995%_ _%key115991%_) _%seed115994%_))
                 (_%size116001%_ (vector-length _%table115993%_))
                 (_%entries116004%_ (##fxquotient _%size116001%_ '2))
                 (_%start116007%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h115998%_ _%entries116004%_)
                   '1)))
            (let _%loop116011%_ ((_%probe116014%_ _%start116007%_)
                                 (_%i116016%_ '1))
              (let ((_%k116019%_ (vector-ref _%table115993%_ _%probe116014%_)))
                (if (eq? _%k116019%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k116019%_ (macro-deleted-obj))
                        (_%loop116011%_
                         (let ((_%next-probe116024%_
                                (fx+ _%start116007%_
                                     _%i116016%_
                                     (fx* _%i116016%_ _%i116016%_))))
                           (##fxmodulo _%next-probe116024%_ _%size116001%_))
                         (##fx+ _%i116016%_ '1))
                        (if (_%test115996%_ _%key115991%_ _%k116019%_)
                            (let ()
                              (vector-set!
                               _%table115993%_
                               _%probe116014%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table115993%_
                               (##fx+ _%probe116014%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab115990%_
                                  (##fx- (&raw-table-count _%tab115990%_)
                                         '1)))))
                            (_%loop116011%_
                             (let ((_%next-probe116030%_
                                    (fx+ _%start116007%_
                                         _%i116016%_
                                         (fx* _%i116016%_ _%i116016%_))))
                               (##fxmodulo
                                _%next-probe116030%_
                                _%size116001%_))
                             (##fx+ _%i116016%_ '1)))))))))))
    (define raw-table-delete!/lock
      (lambda (_%tab115964%_ _%key115965%_)
        (let ((_%lock115967%_ (&raw-table-lock _%tab115964%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again115972%_ ((_%spin115975%_ '0))
              (if (##fx= (##vector-cas! _%lock115967%_ '0 '1 '0) '0)
                  (##vector-set! _%lock115967%_ '1 (current-thread))
                  (if (##fx< _%spin115975%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again115972%_ (##fx+ _%spin115975%_ '1)))
                      (let ((_%owner115981%_ (##vector-ref _%lock115967%_ '1)))
                        (if (eq? _%owner115981%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner115981%_)
                                (let () (##thread-yield!) (_%again115972%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r115987%_ (raw-table-delete! _%tab115964%_ _%key115965%_)))
            (##vector-set! _%lock115967%_ '1 '#f)
            (##vector-cas! _%lock115967%_ '0 '0 '1)
            _%$r115987%_))))
    (define raw-table-for-each
      (lambda (_%tab115948%_ _%proc115949%_)
        (let* ((_%table115951%_ (&raw-table-table _%tab115948%_))
               (_%size115953%_ (vector-length _%table115951%_)))
          (let _%loop115956%_ ((_%i115958%_ '0))
            (if (##fx< _%i115958%_ _%size115953%_)
                (begin
                  (let ((_%key115960%_
                         (vector-ref _%table115951%_ _%i115958%_)))
                    (if (if (eq? _%key115960%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key115960%_ (macro-deleted-obj))))
                        (let ((_%value115962%_
                               (vector-ref
                                _%table115951%_
                                (##fx+ _%i115958%_ '1))))
                          (_%proc115949%_ _%key115960%_ _%value115962%_))
                        '#!void))
                  (_%loop115956%_ (##fx+ _%i115958%_ '2)))
                '#!void)))))
    (define raw-table-for-each/lock
      (lambda (_%tab115922%_ _%proc115923%_)
        (let ((_%lock115925%_ (&raw-table-lock _%tab115922%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again115930%_ ((_%spin115933%_ '0))
              (if (##fx= (##vector-cas! _%lock115925%_ '0 '1 '0) '0)
                  (##vector-set! _%lock115925%_ '1 (current-thread))
                  (if (##fx< _%spin115933%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again115930%_ (##fx+ _%spin115933%_ '1)))
                      (let ((_%owner115939%_ (##vector-ref _%lock115925%_ '1)))
                        (if (eq? _%owner115939%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner115939%_)
                                (let () (##thread-yield!) (_%again115930%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r115945%_
                 (raw-table-for-each _%tab115922%_ _%proc115923%_)))
            (##vector-set! _%lock115925%_ '1 '#f)
            (##vector-cas! _%lock115925%_ '0 '0 '1)
            _%$r115945%_))))
    (define raw-table-copy
      (lambda (_%tab115918%_)
        (let ((_%new-tab115920%_ (##structure-copy _%tab115918%_)))
          (&raw-table-table-set!
           _%new-tab115920%_
           (vector-copy (&raw-table-table _%tab115918%_)))
          _%new-tab115920%_)))
    (define raw-table-copy/lock
      (lambda (_%tab115893%_)
        (let ((_%lock115895%_ (&raw-table-lock _%tab115893%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again115900%_ ((_%spin115903%_ '0))
              (if (##fx= (##vector-cas! _%lock115895%_ '0 '1 '0) '0)
                  (##vector-set! _%lock115895%_ '1 (current-thread))
                  (if (##fx< _%spin115903%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again115900%_ (##fx+ _%spin115903%_ '1)))
                      (let ((_%owner115909%_ (##vector-ref _%lock115895%_ '1)))
                        (if (eq? _%owner115909%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner115909%_)
                                (let () (##thread-yield!) (_%again115900%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r115915%_ (raw-table-copy _%tab115893%_)))
            (##vector-set! _%lock115895%_ '1 '#f)
            (##vector-cas! _%lock115895%_ '0 '0 '1)
            _%$r115915%_))))
    (define raw-table-clear!
      (lambda (_%tab115891%_)
        (vector-fill! (&raw-table-table _%tab115891%_) (macro-unused-obj))
        (&raw-table-count-set! _%tab115891%_ '0)
        (&raw-table-free-set!
         _%tab115891%_
         (##fxquotient (vector-length (&raw-table-table _%tab115891%_)) '2))))
    (define raw-table-clear!/lock
      (lambda (_%tab115866%_)
        (let ((_%lock115868%_ (&raw-table-lock _%tab115866%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again115873%_ ((_%spin115876%_ '0))
              (if (##fx= (##vector-cas! _%lock115868%_ '0 '1 '0) '0)
                  (##vector-set! _%lock115868%_ '1 (current-thread))
                  (if (##fx< _%spin115876%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again115873%_ (##fx+ _%spin115876%_ '1)))
                      (let ((_%owner115882%_ (##vector-ref _%lock115868%_ '1)))
                        (if (eq? _%owner115882%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner115882%_)
                                (let () (##thread-yield!) (_%again115873%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r115888%_ (raw-table-clear! _%tab115866%_)))
            (##vector-set! _%lock115868%_ '1 '#f)
            (##vector-cas! _%lock115868%_ '0 '0 '1)
            _%$r115888%_))))
    (define __raw-table-set!
      (lambda (_%tab115816%_ _%key115817%_ _%value115818%_)
        (let ((_%table115820%_ (&raw-table-table _%tab115816%_))
              (_%seed115821%_ (&raw-table-seed _%tab115816%_))
              (_%hash115822%_ (&raw-table-hash _%tab115816%_))
              (_%test115823%_ (&raw-table-test _%tab115816%_)))
          (let* ((_%h115825%_
                  (fxxor (_%hash115822%_ _%key115817%_) _%seed115821%_))
                 (_%size115828%_ (vector-length _%table115820%_))
                 (_%entries115831%_ (##fxquotient _%size115828%_ '2))
                 (_%start115834%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h115825%_ _%entries115831%_)
                   '1)))
            (let _%loop115838%_ ((_%probe115841%_ _%start115834%_)
                                 (_%i115843%_ '1)
                                 (_%deleted115845%_ '#f))
              (let ((_%k115848%_ (vector-ref _%table115820%_ _%probe115841%_)))
                (if (eq? _%k115848%_ (macro-unused-obj))
                    (if _%deleted115845%_
                        (begin
                          (vector-set!
                           _%table115820%_
                           _%deleted115845%_
                           _%key115817%_)
                          (vector-set!
                           _%table115820%_
                           (##fx+ _%deleted115845%_ '1)
                           _%value115818%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab115816%_
                              (##fx+ (&raw-table-count _%tab115816%_) '1)))))
                        (begin
                          (vector-set!
                           _%table115820%_
                           _%probe115841%_
                           _%key115817%_)
                          (vector-set!
                           _%table115820%_
                           (##fx+ _%probe115841%_ '1)
                           _%value115818%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab115816%_
                              (##fx- (&raw-table-free _%tab115816%_) '1))
                             (&raw-table-count-set!
                              _%tab115816%_
                              (##fx+ (&raw-table-count _%tab115816%_) '1))))))
                    (if (eq? _%k115848%_ (macro-deleted-obj))
                        (_%loop115838%_
                         (let ((_%next-probe115855%_
                                (fx+ _%start115834%_
                                     _%i115843%_
                                     (fx* _%i115843%_ _%i115843%_))))
                           (##fxmodulo _%next-probe115855%_ _%size115828%_))
                         (##fx+ _%i115843%_ '1)
                         (let ((_%$e115858%_ _%deleted115845%_))
                           (if _%$e115858%_ _%$e115858%_ _%probe115841%_)))
                        (if (_%test115823%_ _%key115817%_ _%k115848%_)
                            (let ()
                              (vector-set!
                               _%table115820%_
                               _%probe115841%_
                               _%key115817%_)
                              (vector-set!
                               _%table115820%_
                               (##fx+ _%probe115841%_ '1)
                               _%value115818%_))
                            (_%loop115838%_
                             (let ((_%next-probe115863%_
                                    (fx+ _%start115834%_
                                         _%i115843%_
                                         (fx* _%i115843%_ _%i115843%_))))
                               (##fxmodulo
                                _%next-probe115863%_
                                _%size115828%_))
                             (##fx+ _%i115843%_ '1)
                             _%deleted115845%_))))))))))
    (define __raw-table-update!
      (lambda (_%tab115765%_ _%key115766%_ _%update115767%_ _%default115768%_)
        (let ((_%table115770%_ (&raw-table-table _%tab115765%_))
              (_%seed115771%_ (&raw-table-seed _%tab115765%_))
              (_%hash115772%_ (&raw-table-hash _%tab115765%_))
              (_%test115773%_ (&raw-table-test _%tab115765%_)))
          (let* ((_%h115775%_
                  (fxxor (_%hash115772%_ _%key115766%_) _%seed115771%_))
                 (_%size115778%_ (vector-length _%table115770%_))
                 (_%entries115781%_ (##fxquotient _%size115778%_ '2))
                 (_%start115784%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h115775%_ _%entries115781%_)
                   '1)))
            (let _%loop115788%_ ((_%probe115791%_ _%start115784%_)
                                 (_%i115793%_ '1)
                                 (_%deleted115795%_ '#f))
              (let ((_%k115798%_ (vector-ref _%table115770%_ _%probe115791%_)))
                (if (eq? _%k115798%_ (macro-unused-obj))
                    (if _%deleted115795%_
                        (begin
                          (vector-set!
                           _%table115770%_
                           _%deleted115795%_
                           _%key115766%_)
                          (vector-set!
                           _%table115770%_
                           (##fx+ _%deleted115795%_ '1)
                           (_%update115767%_ _%default115768%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab115765%_
                              (##fx+ (&raw-table-count _%tab115765%_) '1)))))
                        (begin
                          (vector-set!
                           _%table115770%_
                           _%probe115791%_
                           _%key115766%_)
                          (vector-set!
                           _%table115770%_
                           (##fx+ _%probe115791%_ '1)
                           (_%update115767%_ _%default115768%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab115765%_
                              (##fx- (&raw-table-free _%tab115765%_) '1))
                             (&raw-table-count-set!
                              _%tab115765%_
                              (##fx+ (&raw-table-count _%tab115765%_) '1))))))
                    (if (eq? _%k115798%_ (macro-deleted-obj))
                        (_%loop115788%_
                         (let ((_%next-probe115805%_
                                (fx+ _%start115784%_
                                     _%i115793%_
                                     (fx* _%i115793%_ _%i115793%_))))
                           (##fxmodulo _%next-probe115805%_ _%size115778%_))
                         (##fx+ _%i115793%_ '1)
                         (let ((_%$e115808%_ _%deleted115795%_))
                           (if _%$e115808%_ _%$e115808%_ _%probe115791%_)))
                        (if (_%test115773%_ _%key115766%_ _%k115798%_)
                            (let ()
                              (vector-set!
                               _%table115770%_
                               _%probe115791%_
                               _%key115766%_)
                              (vector-set!
                               _%table115770%_
                               (##fx+ _%probe115791%_ '1)
                               (_%update115767%_
                                (vector-ref
                                 _%table115770%_
                                 (##fx+ _%probe115791%_ '1)))))
                            (_%loop115788%_
                             (let ((_%next-probe115813%_
                                    (fx+ _%start115784%_
                                         _%i115793%_
                                         (fx* _%i115793%_ _%i115793%_))))
                               (##fxmodulo
                                _%next-probe115813%_
                                _%size115778%_))
                             (##fx+ _%i115793%_ '1)
                             _%deleted115795%_))))))))))
    (define __raw-table-rehash!
      (lambda (_%tab115746%_)
        (let* ((_%old-table115748%_ (&raw-table-table _%tab115746%_))
               (_%old-size115750%_ (vector-length _%old-table115748%_))
               (_%new-size115752%_
                (if (##fx< (&raw-table-count _%tab115746%_)
                           (##fxquotient _%old-size115750%_ '4))
                    (vector-length _%old-table115748%_)
                    (##fx* '2 (vector-length _%old-table115748%_))))
               (_%new-table115754%_
                (##make-vector _%new-size115752%_ (macro-unused-obj))))
          (&raw-table-table-set! _%tab115746%_ _%new-table115754%_)
          (&raw-table-count-set! _%tab115746%_ '0)
          (&raw-table-free-set!
           _%tab115746%_
           (##fxquotient _%new-size115752%_ '2))
          (let _%lp115757%_ ((_%i115759%_ '0))
            (if (##fx< _%i115759%_ _%old-size115750%_)
                (begin
                  (let ((_%key115761%_
                         (vector-ref _%old-table115748%_ _%i115759%_)))
                    (if (if (eq? _%key115761%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key115761%_ (macro-deleted-obj))))
                        (let ((_%value115763%_
                               (vector-ref
                                _%old-table115748%_
                                (##fx+ _%i115759%_ '1))))
                          (__raw-table-set!
                           _%tab115746%_
                           _%key115761%_
                           _%value115763%_))
                        '#!void))
                  (_%lp115757%_ (##fx+ _%i115759%_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_%obj115738%_)
        (let ((_%t115740%_ (##type _%obj115738%_)))
          (if (##fx= (##fxand _%t115740%_ '1) '0)
              (fxand (##type-cast _%obj115738%_ (macro-type-fixnum))
                     (macro-max-fixnum32))
              (if (symbolic? _%obj115738%_)
                  (##symbol-hash _%obj115738%_)
                  (if (procedure? _%obj115738%_)
                      (procedure-hash _%obj115738%_)
                      (fxand (__eq-hash _%obj115738%_)
                             (macro-max-fixnum32))))))))
    (define procedure-hash
      (lambda (_%obj115734%_)
        (let ((_%h115736%_
               (if (##closure? _%obj115734%_)
                   (__eq-hash _%obj115734%_)
                   (##type-cast _%obj115734%_ '0))))
          (fxand _%h115736%_ (macro-max-fixnum32)))))
    (define __eq-hash
      (lambda (_%obj115731%_)
        (declare (not interrupts-enabled))
        (__object->eq-hash _%obj115731%_)))
    (define eqv-hash
      (lambda (_%obj115721%_)
        (letrec ((_%combine115723%_
                  (lambda (_%a115728%_ _%b115729%_)
                    (fxand (##fx* (##fx+ _%a115728%_
                                         (fxarithmetic-shift-left
                                          _%b115729%_
                                          '1))
                                  '331804471)
                           (macro-max-fixnum32))))
                 (_%hash115724%_
                  (lambda (_%obj115726%_)
                    (macro-number-dispatch
                     _%obj115726%_
                     (eq-hash _%obj115726%_)
                     (fxand _%obj115726%_ (macro-max-fixnum32))
                     (modulo _%obj115726%_ '331804481)
                     (_%combine115723%_
                      (_%hash115724%_ (macro-ratnum-numerator _%obj115726%_))
                      (_%hash115724%_
                       (macro-ratnum-denominator _%obj115726%_)))
                     (_%combine115723%_
                      (##u16vector-ref _%obj115726%_ '0)
                      (_%combine115723%_
                       (##u16vector-ref _%obj115726%_ '1)
                       (_%combine115723%_
                        (##u16vector-ref _%obj115726%_ '2)
                        (##u16vector-ref _%obj115726%_ '3))))
                     (_%combine115723%_
                      (_%hash115724%_ (macro-cpxnum-real _%obj115726%_))
                      (_%hash115724%_ (macro-cpxnum-imag _%obj115726%_)))))))
          (_%hash115724%_ _%obj115721%_))))
    (define symbolic?
      (lambda (_%obj115716%_)
        (let ((_%$e115718%_ (symbol? _%obj115716%_)))
          (if _%$e115718%_ _%$e115718%_ (keyword? _%obj115716%_)))))
    (define symbolic-hash
      (lambda (_%obj115714%_) (##symbol-hash _%obj115714%_)))
    (define string-hash
      (lambda (_%obj115712%_) (##string=?-hash _%obj115712%_)))
    (define immediate-hash
      (lambda (_%obj115710%_) (##type-cast _%obj115710%_ (macro-type-fixnum))))
    (define make-eq-table__%
      (lambda (_%size-hint115692%_ _%seed115693%_)
        (make-raw-table__1 _%size-hint115692%_ eq-hash eq? _%seed115693%_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_%size-hint115699%_ '#f) (_%seed115701%_ '0))
          (make-eq-table__% _%size-hint115699%_ _%seed115701%_))))
    (define make-eq-table__1
      (lambda (_%size-hint115703%_)
        (let ((_%seed115705%_ '0))
          (make-eq-table__% _%size-hint115703%_ _%seed115705%_))))
    (define make-eq-table
      (lambda _g116297_
        (let ((_g116298_ (##length _g116297_)))
          (cond ((##fx= _g116298_ 0) (apply make-eq-table__0 _g116297_))
                ((##fx= _g116298_ 1) (apply make-eq-table__1 _g116297_))
                ((##fx= _g116298_ 2) (apply make-eq-table__% _g116297_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g116297_))))))
    (define make-eq-table/lock__%
      (lambda (_%size-hint115672%_ _%seed115674%_)
        (make-raw-table/lock__%
         _%size-hint115672%_
         eq-hash
         eq?
         _%seed115674%_)))
    (define make-eq-table/lock__0
      (lambda ()
        (let* ((_%size-hint115680%_ '#f) (_%seed115682%_ '0))
          (make-eq-table/lock__% _%size-hint115680%_ _%seed115682%_))))
    (define make-eq-table/lock__1
      (lambda (_%size-hint115684%_)
        (let ((_%seed115686%_ '0))
          (make-eq-table/lock__% _%size-hint115684%_ _%seed115686%_))))
    (define make-eq-table/lock
      (lambda _g116299_
        (let ((_g116300_ (##length _g116299_)))
          (cond ((##fx= _g116300_ 0) (apply make-eq-table/lock__0 _g116299_))
                ((##fx= _g116300_ 1) (apply make-eq-table/lock__1 _g116299_))
                ((##fx= _g116300_ 2) (apply make-eq-table/lock__% _g116299_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table/lock
                  _g116299_))))))
    (define eq-table-ref
      (lambda (_%tab115625%_ _%key115626%_ _%default115627%_)
        (let ((_%table115629%_ (&raw-table-table _%tab115625%_))
              (_%seed115630%_ (&raw-table-seed _%tab115625%_)))
          (let* ((_%h115632%_ (fxxor (eq-hash _%key115626%_) _%seed115630%_))
                 (_%size115635%_ (vector-length _%table115629%_))
                 (_%entries115638%_ (##fxquotient _%size115635%_ '2))
                 (_%start115641%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h115632%_ _%entries115638%_)
                   '1)))
            (let _%loop115645%_ ((_%probe115648%_ _%start115641%_)
                                 (_%i115650%_ '1)
                                 (_%deleted115652%_ '#f))
              (let ((_%k115655%_ (vector-ref _%table115629%_ _%probe115648%_)))
                (if (eq? _%k115655%_ (macro-unused-obj))
                    _%default115627%_
                    (if (eq? _%k115655%_ (macro-deleted-obj))
                        (_%loop115645%_
                         (let ((_%next-probe115660%_
                                (fx+ _%start115641%_
                                     _%i115650%_
                                     (fx* _%i115650%_ _%i115650%_))))
                           (##fxmodulo _%next-probe115660%_ _%size115635%_))
                         (##fx+ _%i115650%_ '1)
                         (let ((_%$e115663%_ _%deleted115652%_))
                           (if _%$e115663%_ _%$e115663%_ _%probe115648%_)))
                        (if (eq? _%key115626%_ _%k115655%_)
                            (vector-ref
                             _%table115629%_
                             (##fx+ _%probe115648%_ '1))
                            (_%loop115645%_
                             (let ((_%next-probe115668%_
                                    (fx+ _%start115641%_
                                         _%i115650%_
                                         (fx* _%i115650%_ _%i115650%_))))
                               (##fxmodulo
                                _%next-probe115668%_
                                _%size115635%_))
                             (##fx+ _%i115650%_ '1)
                             _%deleted115652%_))))))))))
    (define eq-table-ref/lock
      (lambda (_%tab115598%_ _%key115599%_ _%default115600%_)
        (let ((_%lock115602%_ (&raw-table-lock _%tab115598%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again115607%_ ((_%spin115610%_ '0))
              (if (##fx= (##vector-cas! _%lock115602%_ '0 '1 '0) '0)
                  (##vector-set! _%lock115602%_ '1 (current-thread))
                  (if (##fx< _%spin115610%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again115607%_ (##fx+ _%spin115610%_ '1)))
                      (let ((_%owner115616%_ (##vector-ref _%lock115602%_ '1)))
                        (if (eq? _%owner115616%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner115616%_)
                                (let () (##thread-yield!) (_%again115607%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r115622%_
                 (eq-table-ref _%tab115598%_ _%key115599%_ _%default115600%_)))
            (##vector-set! _%lock115602%_ '1 '#f)
            (##vector-cas! _%lock115602%_ '0 '0 '1)
            _%$r115622%_))))
    (define __eq-table-set!
      (lambda (_%tab115550%_ _%key115551%_ _%value115552%_)
        (let ((_%table115554%_ (&raw-table-table _%tab115550%_))
              (_%seed115555%_ (&raw-table-seed _%tab115550%_)))
          (let* ((_%h115557%_ (fxxor (eq-hash _%key115551%_) _%seed115555%_))
                 (_%size115560%_ (vector-length _%table115554%_))
                 (_%entries115563%_ (##fxquotient _%size115560%_ '2))
                 (_%start115566%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h115557%_ _%entries115563%_)
                   '1)))
            (let _%loop115570%_ ((_%probe115573%_ _%start115566%_)
                                 (_%i115575%_ '1)
                                 (_%deleted115577%_ '#f))
              (let ((_%k115580%_ (vector-ref _%table115554%_ _%probe115573%_)))
                (if (eq? _%k115580%_ (macro-unused-obj))
                    (if _%deleted115577%_
                        (begin
                          (vector-set!
                           _%table115554%_
                           _%deleted115577%_
                           _%key115551%_)
                          (vector-set!
                           _%table115554%_
                           (##fx+ _%deleted115577%_ '1)
                           _%value115552%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab115550%_
                              (##fx+ (&raw-table-count _%tab115550%_) '1)))))
                        (begin
                          (vector-set!
                           _%table115554%_
                           _%probe115573%_
                           _%key115551%_)
                          (vector-set!
                           _%table115554%_
                           (##fx+ _%probe115573%_ '1)
                           _%value115552%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab115550%_
                              (##fx- (&raw-table-free _%tab115550%_) '1))
                             (&raw-table-count-set!
                              _%tab115550%_
                              (##fx+ (&raw-table-count _%tab115550%_) '1))))))
                    (if (eq? _%k115580%_ (macro-deleted-obj))
                        (_%loop115570%_
                         (let ((_%next-probe115587%_
                                (fx+ _%start115566%_
                                     _%i115575%_
                                     (fx* _%i115575%_ _%i115575%_))))
                           (##fxmodulo _%next-probe115587%_ _%size115560%_))
                         (##fx+ _%i115575%_ '1)
                         (let ((_%$e115590%_ _%deleted115577%_))
                           (if _%$e115590%_ _%$e115590%_ _%probe115573%_)))
                        (if (eq? _%key115551%_ _%k115580%_)
                            (let ()
                              (vector-set!
                               _%table115554%_
                               _%probe115573%_
                               _%key115551%_)
                              (vector-set!
                               _%table115554%_
                               (##fx+ _%probe115573%_ '1)
                               _%value115552%_))
                            (_%loop115570%_
                             (let ((_%next-probe115595%_
                                    (fx+ _%start115566%_
                                         _%i115575%_
                                         (fx* _%i115575%_ _%i115575%_))))
                               (##fxmodulo
                                _%next-probe115595%_
                                _%size115560%_))
                             (##fx+ _%i115575%_ '1)
                             _%deleted115577%_))))))))))
    (define eq-table-set!
      (lambda (_%tab115546%_ _%key115547%_ _%value115548%_)
        (if (##fx< (&raw-table-free _%tab115546%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab115546%_))
                    '4))
            (__raw-table-rehash! _%tab115546%_)
            '#!void)
        (__eq-table-set! _%tab115546%_ _%key115547%_ _%value115548%_)))
    (define eq-table-set!/lock
      (lambda (_%tab115518%_ _%key115519%_ _%value115520%_)
        (let ((_%lock115523%_ (&raw-table-lock _%tab115518%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again115528%_ ((_%spin115531%_ '0))
              (if (##fx= (##vector-cas! _%lock115523%_ '0 '1 '0) '0)
                  (##vector-set! _%lock115523%_ '1 (current-thread))
                  (if (##fx< _%spin115531%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again115528%_ (##fx+ _%spin115531%_ '1)))
                      (let ((_%owner115537%_ (##vector-ref _%lock115523%_ '1)))
                        (if (eq? _%owner115537%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner115537%_)
                                (let () (##thread-yield!) (_%again115528%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r115543%_
                 (eq-table-set! _%tab115518%_ _%key115519%_ _%value115520%_)))
            (##vector-set! _%lock115523%_ '1 '#f)
            (##vector-cas! _%lock115523%_ '0 '0 '1)
            _%$r115543%_))))
    (define __eq-table-update!
      (lambda (_%tab115469%_
               _%key115470%_
               _%eq-table-update!115471%_
               _%default115472%_)
        (let ((_%table115474%_ (&raw-table-table _%tab115469%_))
              (_%seed115475%_ (&raw-table-seed _%tab115469%_)))
          (let* ((_%h115477%_ (fxxor (eq-hash _%key115470%_) _%seed115475%_))
                 (_%size115480%_ (vector-length _%table115474%_))
                 (_%entries115483%_ (##fxquotient _%size115480%_ '2))
                 (_%start115486%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h115477%_ _%entries115483%_)
                   '1)))
            (let _%loop115490%_ ((_%probe115493%_ _%start115486%_)
                                 (_%i115495%_ '1)
                                 (_%deleted115497%_ '#f))
              (let ((_%k115500%_ (vector-ref _%table115474%_ _%probe115493%_)))
                (if (eq? _%k115500%_ (macro-unused-obj))
                    (if _%deleted115497%_
                        (begin
                          (vector-set!
                           _%table115474%_
                           _%deleted115497%_
                           _%key115470%_)
                          (vector-set!
                           _%table115474%_
                           (##fx+ _%deleted115497%_ '1)
                           (_%eq-table-update!115471%_ _%default115472%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab115469%_
                              (##fx+ (&raw-table-count _%tab115469%_) '1)))))
                        (begin
                          (vector-set!
                           _%table115474%_
                           _%probe115493%_
                           _%key115470%_)
                          (vector-set!
                           _%table115474%_
                           (##fx+ _%probe115493%_ '1)
                           (_%eq-table-update!115471%_ _%default115472%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab115469%_
                              (##fx- (&raw-table-free _%tab115469%_) '1))
                             (&raw-table-count-set!
                              _%tab115469%_
                              (##fx+ (&raw-table-count _%tab115469%_) '1))))))
                    (if (eq? _%k115500%_ (macro-deleted-obj))
                        (_%loop115490%_
                         (let ((_%next-probe115507%_
                                (fx+ _%start115486%_
                                     _%i115495%_
                                     (fx* _%i115495%_ _%i115495%_))))
                           (##fxmodulo _%next-probe115507%_ _%size115480%_))
                         (##fx+ _%i115495%_ '1)
                         (let ((_%$e115510%_ _%deleted115497%_))
                           (if _%$e115510%_ _%$e115510%_ _%probe115493%_)))
                        (if (eq? _%key115470%_ _%k115500%_)
                            (let ()
                              (vector-set!
                               _%table115474%_
                               _%probe115493%_
                               _%key115470%_)
                              (vector-set!
                               _%table115474%_
                               (##fx+ _%probe115493%_ '1)
                               (_%eq-table-update!115471%_
                                (vector-ref
                                 _%table115474%_
                                 (##fx+ _%probe115493%_ '1)))))
                            (_%loop115490%_
                             (let ((_%next-probe115515%_
                                    (fx+ _%start115486%_
                                         _%i115495%_
                                         (fx* _%i115495%_ _%i115495%_))))
                               (##fxmodulo
                                _%next-probe115515%_
                                _%size115480%_))
                             (##fx+ _%i115495%_ '1)
                             _%deleted115497%_))))))))))
    (define eq-table-update!
      (lambda (_%tab115464%_
               _%key115465%_
               _%eq-table-update!115466%_
               _%default115467%_)
        (if (##fx< (&raw-table-free _%tab115464%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab115464%_))
                    '4))
            (__raw-table-rehash! _%tab115464%_)
            '#!void)
        (__eq-table-update!
         _%tab115464%_
         _%key115465%_
         _%eq-table-update!115466%_
         _%default115467%_)))
    (define eq-table-update!/lock
      (lambda (_%tab115435%_
               _%key115436%_
               _%eq-table-update!115437%_
               _%default115438%_)
        (let ((_%lock115441%_ (&raw-table-lock _%tab115435%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again115446%_ ((_%spin115449%_ '0))
              (if (##fx= (##vector-cas! _%lock115441%_ '0 '1 '0) '0)
                  (##vector-set! _%lock115441%_ '1 (current-thread))
                  (if (##fx< _%spin115449%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again115446%_ (##fx+ _%spin115449%_ '1)))
                      (let ((_%owner115455%_ (##vector-ref _%lock115441%_ '1)))
                        (if (eq? _%owner115455%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner115455%_)
                                (let () (##thread-yield!) (_%again115446%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r115461%_
                 (_%eq-table-update!115437%_
                  _%tab115435%_
                  _%key115436%_
                  _%eq-table-update!115437%_
                  _%default115438%_)))
            (##vector-set! _%lock115441%_ '1 '#f)
            (##vector-cas! _%lock115441%_ '0 '0 '1)
            _%$r115461%_))))
    (define eq-table-delete!
      (lambda (_%tab115392%_ _%key115393%_)
        (let ((_%table115395%_ (&raw-table-table _%tab115392%_))
              (_%seed115397%_ (&raw-table-seed _%tab115392%_)))
          (let* ((_%h115400%_ (fxxor (eq-hash _%key115393%_) _%seed115397%_))
                 (_%size115403%_ (vector-length _%table115395%_))
                 (_%entries115406%_ (##fxquotient _%size115403%_ '2))
                 (_%start115409%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h115400%_ _%entries115406%_)
                   '1)))
            (let _%loop115413%_ ((_%probe115416%_ _%start115409%_)
                                 (_%i115418%_ '1))
              (let ((_%k115421%_ (vector-ref _%table115395%_ _%probe115416%_)))
                (if (eq? _%k115421%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k115421%_ (macro-deleted-obj))
                        (_%loop115413%_
                         (let ((_%next-probe115426%_
                                (fx+ _%start115409%_
                                     _%i115418%_
                                     (fx* _%i115418%_ _%i115418%_))))
                           (##fxmodulo _%next-probe115426%_ _%size115403%_))
                         (##fx+ _%i115418%_ '1))
                        (if (eq? _%key115393%_ _%k115421%_)
                            (let ()
                              (vector-set!
                               _%table115395%_
                               _%probe115416%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table115395%_
                               (##fx+ _%probe115416%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab115392%_
                                  (##fx- (&raw-table-count _%tab115392%_)
                                         '1)))))
                            (_%loop115413%_
                             (let ((_%next-probe115432%_
                                    (fx+ _%start115409%_
                                         _%i115418%_
                                         (fx* _%i115418%_ _%i115418%_))))
                               (##fxmodulo
                                _%next-probe115432%_
                                _%size115403%_))
                             (##fx+ _%i115418%_ '1)))))))))))
    (define eq-table-delete!/lock
      (lambda (_%tab115364%_ _%key115366%_)
        (let ((_%lock115369%_ (&raw-table-lock _%tab115364%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again115374%_ ((_%spin115377%_ '0))
              (if (##fx= (##vector-cas! _%lock115369%_ '0 '1 '0) '0)
                  (##vector-set! _%lock115369%_ '1 (current-thread))
                  (if (##fx< _%spin115377%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again115374%_ (##fx+ _%spin115377%_ '1)))
                      (let ((_%owner115383%_ (##vector-ref _%lock115369%_ '1)))
                        (if (eq? _%owner115383%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner115383%_)
                                (let () (##thread-yield!) (_%again115374%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r115389%_ (eq-table-delete! _%tab115364%_ _%key115366%_)))
            (##vector-set! _%lock115369%_ '1 '#f)
            (##vector-cas! _%lock115369%_ '0 '0 '1)
            _%$r115389%_))))
    (define make-eqv-table__%
      (lambda (_%size-hint115346%_ _%seed115347%_)
        (make-raw-table__1 _%size-hint115346%_ eqv-hash eqv? _%seed115347%_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_%size-hint115353%_ '#f) (_%seed115355%_ '0))
          (make-eqv-table__% _%size-hint115353%_ _%seed115355%_))))
    (define make-eqv-table__1
      (lambda (_%size-hint115357%_)
        (let ((_%seed115359%_ '0))
          (make-eqv-table__% _%size-hint115357%_ _%seed115359%_))))
    (define make-eqv-table
      (lambda _g116301_
        (let ((_g116302_ (##length _g116301_)))
          (cond ((##fx= _g116302_ 0) (apply make-eqv-table__0 _g116301_))
                ((##fx= _g116302_ 1) (apply make-eqv-table__1 _g116301_))
                ((##fx= _g116302_ 2) (apply make-eqv-table__% _g116301_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g116301_))))))
    (define make-eqv-table/lock__%
      (lambda (_%size-hint115326%_ _%seed115328%_)
        (make-raw-table/lock__%
         _%size-hint115326%_
         eqv-hash
         eqv?
         _%seed115328%_)))
    (define make-eqv-table/lock__0
      (lambda ()
        (let* ((_%size-hint115334%_ '#f) (_%seed115336%_ '0))
          (make-eqv-table/lock__% _%size-hint115334%_ _%seed115336%_))))
    (define make-eqv-table/lock__1
      (lambda (_%size-hint115338%_)
        (let ((_%seed115340%_ '0))
          (make-eqv-table/lock__% _%size-hint115338%_ _%seed115340%_))))
    (define make-eqv-table/lock
      (lambda _g116303_
        (let ((_g116304_ (##length _g116303_)))
          (cond ((##fx= _g116304_ 0) (apply make-eqv-table/lock__0 _g116303_))
                ((##fx= _g116304_ 1) (apply make-eqv-table/lock__1 _g116303_))
                ((##fx= _g116304_ 2) (apply make-eqv-table/lock__% _g116303_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table/lock
                  _g116303_))))))
    (define eqv-table-ref
      (lambda (_%tab115279%_ _%key115280%_ _%default115281%_)
        (let ((_%table115283%_ (&raw-table-table _%tab115279%_))
              (_%seed115284%_ (&raw-table-seed _%tab115279%_)))
          (let* ((_%h115286%_ (fxxor (eqv-hash _%key115280%_) _%seed115284%_))
                 (_%size115289%_ (vector-length _%table115283%_))
                 (_%entries115292%_ (##fxquotient _%size115289%_ '2))
                 (_%start115295%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h115286%_ _%entries115292%_)
                   '1)))
            (let _%loop115299%_ ((_%probe115302%_ _%start115295%_)
                                 (_%i115304%_ '1)
                                 (_%deleted115306%_ '#f))
              (let ((_%k115309%_ (vector-ref _%table115283%_ _%probe115302%_)))
                (if (eq? _%k115309%_ (macro-unused-obj))
                    _%default115281%_
                    (if (eq? _%k115309%_ (macro-deleted-obj))
                        (_%loop115299%_
                         (let ((_%next-probe115314%_
                                (fx+ _%start115295%_
                                     _%i115304%_
                                     (fx* _%i115304%_ _%i115304%_))))
                           (##fxmodulo _%next-probe115314%_ _%size115289%_))
                         (##fx+ _%i115304%_ '1)
                         (let ((_%$e115317%_ _%deleted115306%_))
                           (if _%$e115317%_ _%$e115317%_ _%probe115302%_)))
                        (if (eqv? _%key115280%_ _%k115309%_)
                            (vector-ref
                             _%table115283%_
                             (##fx+ _%probe115302%_ '1))
                            (_%loop115299%_
                             (let ((_%next-probe115322%_
                                    (fx+ _%start115295%_
                                         _%i115304%_
                                         (fx* _%i115304%_ _%i115304%_))))
                               (##fxmodulo
                                _%next-probe115322%_
                                _%size115289%_))
                             (##fx+ _%i115304%_ '1)
                             _%deleted115306%_))))))))))
    (define eqv-table-ref/lock
      (lambda (_%tab115252%_ _%key115253%_ _%default115254%_)
        (let ((_%lock115256%_ (&raw-table-lock _%tab115252%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again115261%_ ((_%spin115264%_ '0))
              (if (##fx= (##vector-cas! _%lock115256%_ '0 '1 '0) '0)
                  (##vector-set! _%lock115256%_ '1 (current-thread))
                  (if (##fx< _%spin115264%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again115261%_ (##fx+ _%spin115264%_ '1)))
                      (let ((_%owner115270%_ (##vector-ref _%lock115256%_ '1)))
                        (if (eq? _%owner115270%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner115270%_)
                                (let () (##thread-yield!) (_%again115261%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r115276%_
                 (eqv-table-ref
                  _%tab115252%_
                  _%key115253%_
                  _%default115254%_)))
            (##vector-set! _%lock115256%_ '1 '#f)
            (##vector-cas! _%lock115256%_ '0 '0 '1)
            _%$r115276%_))))
    (define __eqv-table-set!
      (lambda (_%tab115204%_ _%key115205%_ _%value115206%_)
        (let ((_%table115208%_ (&raw-table-table _%tab115204%_))
              (_%seed115209%_ (&raw-table-seed _%tab115204%_)))
          (let* ((_%h115211%_ (fxxor (eqv-hash _%key115205%_) _%seed115209%_))
                 (_%size115214%_ (vector-length _%table115208%_))
                 (_%entries115217%_ (##fxquotient _%size115214%_ '2))
                 (_%start115220%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h115211%_ _%entries115217%_)
                   '1)))
            (let _%loop115224%_ ((_%probe115227%_ _%start115220%_)
                                 (_%i115229%_ '1)
                                 (_%deleted115231%_ '#f))
              (let ((_%k115234%_ (vector-ref _%table115208%_ _%probe115227%_)))
                (if (eq? _%k115234%_ (macro-unused-obj))
                    (if _%deleted115231%_
                        (begin
                          (vector-set!
                           _%table115208%_
                           _%deleted115231%_
                           _%key115205%_)
                          (vector-set!
                           _%table115208%_
                           (##fx+ _%deleted115231%_ '1)
                           _%value115206%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab115204%_
                              (##fx+ (&raw-table-count _%tab115204%_) '1)))))
                        (begin
                          (vector-set!
                           _%table115208%_
                           _%probe115227%_
                           _%key115205%_)
                          (vector-set!
                           _%table115208%_
                           (##fx+ _%probe115227%_ '1)
                           _%value115206%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab115204%_
                              (##fx- (&raw-table-free _%tab115204%_) '1))
                             (&raw-table-count-set!
                              _%tab115204%_
                              (##fx+ (&raw-table-count _%tab115204%_) '1))))))
                    (if (eq? _%k115234%_ (macro-deleted-obj))
                        (_%loop115224%_
                         (let ((_%next-probe115241%_
                                (fx+ _%start115220%_
                                     _%i115229%_
                                     (fx* _%i115229%_ _%i115229%_))))
                           (##fxmodulo _%next-probe115241%_ _%size115214%_))
                         (##fx+ _%i115229%_ '1)
                         (let ((_%$e115244%_ _%deleted115231%_))
                           (if _%$e115244%_ _%$e115244%_ _%probe115227%_)))
                        (if (eqv? _%key115205%_ _%k115234%_)
                            (let ()
                              (vector-set!
                               _%table115208%_
                               _%probe115227%_
                               _%key115205%_)
                              (vector-set!
                               _%table115208%_
                               (##fx+ _%probe115227%_ '1)
                               _%value115206%_))
                            (_%loop115224%_
                             (let ((_%next-probe115249%_
                                    (fx+ _%start115220%_
                                         _%i115229%_
                                         (fx* _%i115229%_ _%i115229%_))))
                               (##fxmodulo
                                _%next-probe115249%_
                                _%size115214%_))
                             (##fx+ _%i115229%_ '1)
                             _%deleted115231%_))))))))))
    (define eqv-table-set!
      (lambda (_%tab115200%_ _%key115201%_ _%value115202%_)
        (if (##fx< (&raw-table-free _%tab115200%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab115200%_))
                    '4))
            (__raw-table-rehash! _%tab115200%_)
            '#!void)
        (__eqv-table-set! _%tab115200%_ _%key115201%_ _%value115202%_)))
    (define eqv-table-set!/lock
      (lambda (_%tab115172%_ _%key115173%_ _%value115174%_)
        (let ((_%lock115177%_ (&raw-table-lock _%tab115172%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again115182%_ ((_%spin115185%_ '0))
              (if (##fx= (##vector-cas! _%lock115177%_ '0 '1 '0) '0)
                  (##vector-set! _%lock115177%_ '1 (current-thread))
                  (if (##fx< _%spin115185%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again115182%_ (##fx+ _%spin115185%_ '1)))
                      (let ((_%owner115191%_ (##vector-ref _%lock115177%_ '1)))
                        (if (eq? _%owner115191%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner115191%_)
                                (let () (##thread-yield!) (_%again115182%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r115197%_
                 (eqv-table-set! _%tab115172%_ _%key115173%_ _%value115174%_)))
            (##vector-set! _%lock115177%_ '1 '#f)
            (##vector-cas! _%lock115177%_ '0 '0 '1)
            _%$r115197%_))))
    (define __eqv-table-update!
      (lambda (_%tab115123%_
               _%key115124%_
               _%eqv-table-update!115125%_
               _%default115126%_)
        (let ((_%table115128%_ (&raw-table-table _%tab115123%_))
              (_%seed115129%_ (&raw-table-seed _%tab115123%_)))
          (let* ((_%h115131%_ (fxxor (eqv-hash _%key115124%_) _%seed115129%_))
                 (_%size115134%_ (vector-length _%table115128%_))
                 (_%entries115137%_ (##fxquotient _%size115134%_ '2))
                 (_%start115140%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h115131%_ _%entries115137%_)
                   '1)))
            (let _%loop115144%_ ((_%probe115147%_ _%start115140%_)
                                 (_%i115149%_ '1)
                                 (_%deleted115151%_ '#f))
              (let ((_%k115154%_ (vector-ref _%table115128%_ _%probe115147%_)))
                (if (eq? _%k115154%_ (macro-unused-obj))
                    (if _%deleted115151%_
                        (begin
                          (vector-set!
                           _%table115128%_
                           _%deleted115151%_
                           _%key115124%_)
                          (vector-set!
                           _%table115128%_
                           (##fx+ _%deleted115151%_ '1)
                           (_%eqv-table-update!115125%_ _%default115126%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab115123%_
                              (##fx+ (&raw-table-count _%tab115123%_) '1)))))
                        (begin
                          (vector-set!
                           _%table115128%_
                           _%probe115147%_
                           _%key115124%_)
                          (vector-set!
                           _%table115128%_
                           (##fx+ _%probe115147%_ '1)
                           (_%eqv-table-update!115125%_ _%default115126%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab115123%_
                              (##fx- (&raw-table-free _%tab115123%_) '1))
                             (&raw-table-count-set!
                              _%tab115123%_
                              (##fx+ (&raw-table-count _%tab115123%_) '1))))))
                    (if (eq? _%k115154%_ (macro-deleted-obj))
                        (_%loop115144%_
                         (let ((_%next-probe115161%_
                                (fx+ _%start115140%_
                                     _%i115149%_
                                     (fx* _%i115149%_ _%i115149%_))))
                           (##fxmodulo _%next-probe115161%_ _%size115134%_))
                         (##fx+ _%i115149%_ '1)
                         (let ((_%$e115164%_ _%deleted115151%_))
                           (if _%$e115164%_ _%$e115164%_ _%probe115147%_)))
                        (if (eqv? _%key115124%_ _%k115154%_)
                            (let ()
                              (vector-set!
                               _%table115128%_
                               _%probe115147%_
                               _%key115124%_)
                              (vector-set!
                               _%table115128%_
                               (##fx+ _%probe115147%_ '1)
                               (_%eqv-table-update!115125%_
                                (vector-ref
                                 _%table115128%_
                                 (##fx+ _%probe115147%_ '1)))))
                            (_%loop115144%_
                             (let ((_%next-probe115169%_
                                    (fx+ _%start115140%_
                                         _%i115149%_
                                         (fx* _%i115149%_ _%i115149%_))))
                               (##fxmodulo
                                _%next-probe115169%_
                                _%size115134%_))
                             (##fx+ _%i115149%_ '1)
                             _%deleted115151%_))))))))))
    (define eqv-table-update!
      (lambda (_%tab115118%_
               _%key115119%_
               _%eqv-table-update!115120%_
               _%default115121%_)
        (if (##fx< (&raw-table-free _%tab115118%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab115118%_))
                    '4))
            (__raw-table-rehash! _%tab115118%_)
            '#!void)
        (__eqv-table-update!
         _%tab115118%_
         _%key115119%_
         _%eqv-table-update!115120%_
         _%default115121%_)))
    (define eqv-table-update!/lock
      (lambda (_%tab115089%_
               _%key115090%_
               _%eqv-table-update!115091%_
               _%default115092%_)
        (let ((_%lock115095%_ (&raw-table-lock _%tab115089%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again115100%_ ((_%spin115103%_ '0))
              (if (##fx= (##vector-cas! _%lock115095%_ '0 '1 '0) '0)
                  (##vector-set! _%lock115095%_ '1 (current-thread))
                  (if (##fx< _%spin115103%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again115100%_ (##fx+ _%spin115103%_ '1)))
                      (let ((_%owner115109%_ (##vector-ref _%lock115095%_ '1)))
                        (if (eq? _%owner115109%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner115109%_)
                                (let () (##thread-yield!) (_%again115100%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r115115%_
                 (_%eqv-table-update!115091%_
                  _%tab115089%_
                  _%key115090%_
                  _%eqv-table-update!115091%_
                  _%default115092%_)))
            (##vector-set! _%lock115095%_ '1 '#f)
            (##vector-cas! _%lock115095%_ '0 '0 '1)
            _%$r115115%_))))
    (define eqv-table-delete!
      (lambda (_%tab115046%_ _%key115047%_)
        (let ((_%table115049%_ (&raw-table-table _%tab115046%_))
              (_%seed115051%_ (&raw-table-seed _%tab115046%_)))
          (let* ((_%h115054%_ (fxxor (eqv-hash _%key115047%_) _%seed115051%_))
                 (_%size115057%_ (vector-length _%table115049%_))
                 (_%entries115060%_ (##fxquotient _%size115057%_ '2))
                 (_%start115063%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h115054%_ _%entries115060%_)
                   '1)))
            (let _%loop115067%_ ((_%probe115070%_ _%start115063%_)
                                 (_%i115072%_ '1))
              (let ((_%k115075%_ (vector-ref _%table115049%_ _%probe115070%_)))
                (if (eq? _%k115075%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k115075%_ (macro-deleted-obj))
                        (_%loop115067%_
                         (let ((_%next-probe115080%_
                                (fx+ _%start115063%_
                                     _%i115072%_
                                     (fx* _%i115072%_ _%i115072%_))))
                           (##fxmodulo _%next-probe115080%_ _%size115057%_))
                         (##fx+ _%i115072%_ '1))
                        (if (eqv? _%key115047%_ _%k115075%_)
                            (let ()
                              (vector-set!
                               _%table115049%_
                               _%probe115070%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table115049%_
                               (##fx+ _%probe115070%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab115046%_
                                  (##fx- (&raw-table-count _%tab115046%_)
                                         '1)))))
                            (_%loop115067%_
                             (let ((_%next-probe115086%_
                                    (fx+ _%start115063%_
                                         _%i115072%_
                                         (fx* _%i115072%_ _%i115072%_))))
                               (##fxmodulo
                                _%next-probe115086%_
                                _%size115057%_))
                             (##fx+ _%i115072%_ '1)))))))))))
    (define eqv-table-delete!/lock
      (lambda (_%tab115018%_ _%key115020%_)
        (let ((_%lock115023%_ (&raw-table-lock _%tab115018%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again115028%_ ((_%spin115031%_ '0))
              (if (##fx= (##vector-cas! _%lock115023%_ '0 '1 '0) '0)
                  (##vector-set! _%lock115023%_ '1 (current-thread))
                  (if (##fx< _%spin115031%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again115028%_ (##fx+ _%spin115031%_ '1)))
                      (let ((_%owner115037%_ (##vector-ref _%lock115023%_ '1)))
                        (if (eq? _%owner115037%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner115037%_)
                                (let () (##thread-yield!) (_%again115028%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r115043%_ (eqv-table-delete! _%tab115018%_ _%key115020%_)))
            (##vector-set! _%lock115023%_ '1 '#f)
            (##vector-cas! _%lock115023%_ '0 '0 '1)
            _%$r115043%_))))
    (define make-symbolic-table__%
      (lambda (_%size-hint115000%_ _%seed115001%_)
        (make-raw-table__1
         _%size-hint115000%_
         symbolic-hash
         eq?
         _%seed115001%_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_%size-hint115007%_ '#f) (_%seed115009%_ '0))
          (make-symbolic-table__% _%size-hint115007%_ _%seed115009%_))))
    (define make-symbolic-table__1
      (lambda (_%size-hint115011%_)
        (let ((_%seed115013%_ '0))
          (make-symbolic-table__% _%size-hint115011%_ _%seed115013%_))))
    (define make-symbolic-table
      (lambda _g116305_
        (let ((_g116306_ (##length _g116305_)))
          (cond ((##fx= _g116306_ 0) (apply make-symbolic-table__0 _g116305_))
                ((##fx= _g116306_ 1) (apply make-symbolic-table__1 _g116305_))
                ((##fx= _g116306_ 2) (apply make-symbolic-table__% _g116305_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g116305_))))))
    (define make-symbolic-table/lock__%
      (lambda (_%size-hint114980%_ _%seed114982%_)
        (make-raw-table/lock__%
         _%size-hint114980%_
         symbolic-hash
         eq?
         _%seed114982%_)))
    (define make-symbolic-table/lock__0
      (lambda ()
        (let* ((_%size-hint114988%_ '#f) (_%seed114990%_ '0))
          (make-symbolic-table/lock__% _%size-hint114988%_ _%seed114990%_))))
    (define make-symbolic-table/lock__1
      (lambda (_%size-hint114992%_)
        (let ((_%seed114994%_ '0))
          (make-symbolic-table/lock__% _%size-hint114992%_ _%seed114994%_))))
    (define make-symbolic-table/lock
      (lambda _g116307_
        (let ((_g116308_ (##length _g116307_)))
          (cond ((##fx= _g116308_ 0)
                 (apply make-symbolic-table/lock__0 _g116307_))
                ((##fx= _g116308_ 1)
                 (apply make-symbolic-table/lock__1 _g116307_))
                ((##fx= _g116308_ 2)
                 (apply make-symbolic-table/lock__% _g116307_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table/lock
                  _g116307_))))))
    (define symbolic-table-ref
      (lambda (_%tab114933%_ _%key114934%_ _%default114935%_)
        (let ((_%table114937%_ (&raw-table-table _%tab114933%_))
              (_%seed114938%_ (&raw-table-seed _%tab114933%_)))
          (let* ((_%h114940%_
                  (fxxor (##symbol-hash _%key114934%_) _%seed114938%_))
                 (_%size114943%_ (vector-length _%table114937%_))
                 (_%entries114946%_ (##fxquotient _%size114943%_ '2))
                 (_%start114949%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h114940%_ _%entries114946%_)
                   '1)))
            (let _%loop114953%_ ((_%probe114956%_ _%start114949%_)
                                 (_%i114958%_ '1)
                                 (_%deleted114960%_ '#f))
              (let ((_%k114963%_ (vector-ref _%table114937%_ _%probe114956%_)))
                (if (eq? _%k114963%_ (macro-unused-obj))
                    _%default114935%_
                    (if (eq? _%k114963%_ (macro-deleted-obj))
                        (_%loop114953%_
                         (let ((_%next-probe114968%_
                                (fx+ _%start114949%_
                                     _%i114958%_
                                     (fx* _%i114958%_ _%i114958%_))))
                           (##fxmodulo _%next-probe114968%_ _%size114943%_))
                         (##fx+ _%i114958%_ '1)
                         (let ((_%$e114971%_ _%deleted114960%_))
                           (if _%$e114971%_ _%$e114971%_ _%probe114956%_)))
                        (if (eq? _%key114934%_ _%k114963%_)
                            (vector-ref
                             _%table114937%_
                             (##fx+ _%probe114956%_ '1))
                            (_%loop114953%_
                             (let ((_%next-probe114976%_
                                    (fx+ _%start114949%_
                                         _%i114958%_
                                         (fx* _%i114958%_ _%i114958%_))))
                               (##fxmodulo
                                _%next-probe114976%_
                                _%size114943%_))
                             (##fx+ _%i114958%_ '1)
                             _%deleted114960%_))))))))))
    (define symbolic-table-ref/lock
      (lambda (_%tab114906%_ _%key114907%_ _%default114908%_)
        (let ((_%lock114910%_ (&raw-table-lock _%tab114906%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again114915%_ ((_%spin114918%_ '0))
              (if (##fx= (##vector-cas! _%lock114910%_ '0 '1 '0) '0)
                  (##vector-set! _%lock114910%_ '1 (current-thread))
                  (if (##fx< _%spin114918%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again114915%_ (##fx+ _%spin114918%_ '1)))
                      (let ((_%owner114924%_ (##vector-ref _%lock114910%_ '1)))
                        (if (eq? _%owner114924%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner114924%_)
                                (let () (##thread-yield!) (_%again114915%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r114930%_
                 (symbolic-table-ref
                  _%tab114906%_
                  _%key114907%_
                  _%default114908%_)))
            (##vector-set! _%lock114910%_ '1 '#f)
            (##vector-cas! _%lock114910%_ '0 '0 '1)
            _%$r114930%_))))
    (define __symbolic-table-set!
      (lambda (_%tab114858%_ _%key114859%_ _%value114860%_)
        (let ((_%table114862%_ (&raw-table-table _%tab114858%_))
              (_%seed114863%_ (&raw-table-seed _%tab114858%_)))
          (let* ((_%h114865%_
                  (fxxor (##symbol-hash _%key114859%_) _%seed114863%_))
                 (_%size114868%_ (vector-length _%table114862%_))
                 (_%entries114871%_ (##fxquotient _%size114868%_ '2))
                 (_%start114874%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h114865%_ _%entries114871%_)
                   '1)))
            (let _%loop114878%_ ((_%probe114881%_ _%start114874%_)
                                 (_%i114883%_ '1)
                                 (_%deleted114885%_ '#f))
              (let ((_%k114888%_ (vector-ref _%table114862%_ _%probe114881%_)))
                (if (eq? _%k114888%_ (macro-unused-obj))
                    (if _%deleted114885%_
                        (begin
                          (vector-set!
                           _%table114862%_
                           _%deleted114885%_
                           _%key114859%_)
                          (vector-set!
                           _%table114862%_
                           (##fx+ _%deleted114885%_ '1)
                           _%value114860%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab114858%_
                              (##fx+ (&raw-table-count _%tab114858%_) '1)))))
                        (begin
                          (vector-set!
                           _%table114862%_
                           _%probe114881%_
                           _%key114859%_)
                          (vector-set!
                           _%table114862%_
                           (##fx+ _%probe114881%_ '1)
                           _%value114860%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab114858%_
                              (##fx- (&raw-table-free _%tab114858%_) '1))
                             (&raw-table-count-set!
                              _%tab114858%_
                              (##fx+ (&raw-table-count _%tab114858%_) '1))))))
                    (if (eq? _%k114888%_ (macro-deleted-obj))
                        (_%loop114878%_
                         (let ((_%next-probe114895%_
                                (fx+ _%start114874%_
                                     _%i114883%_
                                     (fx* _%i114883%_ _%i114883%_))))
                           (##fxmodulo _%next-probe114895%_ _%size114868%_))
                         (##fx+ _%i114883%_ '1)
                         (let ((_%$e114898%_ _%deleted114885%_))
                           (if _%$e114898%_ _%$e114898%_ _%probe114881%_)))
                        (if (eq? _%key114859%_ _%k114888%_)
                            (let ()
                              (vector-set!
                               _%table114862%_
                               _%probe114881%_
                               _%key114859%_)
                              (vector-set!
                               _%table114862%_
                               (##fx+ _%probe114881%_ '1)
                               _%value114860%_))
                            (_%loop114878%_
                             (let ((_%next-probe114903%_
                                    (fx+ _%start114874%_
                                         _%i114883%_
                                         (fx* _%i114883%_ _%i114883%_))))
                               (##fxmodulo
                                _%next-probe114903%_
                                _%size114868%_))
                             (##fx+ _%i114883%_ '1)
                             _%deleted114885%_))))))))))
    (define symbolic-table-set!
      (lambda (_%tab114854%_ _%key114855%_ _%value114856%_)
        (if (##fx< (&raw-table-free _%tab114854%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab114854%_))
                    '4))
            (__raw-table-rehash! _%tab114854%_)
            '#!void)
        (__symbolic-table-set! _%tab114854%_ _%key114855%_ _%value114856%_)))
    (define symbolic-table-set!/lock
      (lambda (_%tab114826%_ _%key114827%_ _%value114828%_)
        (let ((_%lock114831%_ (&raw-table-lock _%tab114826%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again114836%_ ((_%spin114839%_ '0))
              (if (##fx= (##vector-cas! _%lock114831%_ '0 '1 '0) '0)
                  (##vector-set! _%lock114831%_ '1 (current-thread))
                  (if (##fx< _%spin114839%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again114836%_ (##fx+ _%spin114839%_ '1)))
                      (let ((_%owner114845%_ (##vector-ref _%lock114831%_ '1)))
                        (if (eq? _%owner114845%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner114845%_)
                                (let () (##thread-yield!) (_%again114836%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r114851%_
                 (symbolic-table-set!
                  _%tab114826%_
                  _%key114827%_
                  _%value114828%_)))
            (##vector-set! _%lock114831%_ '1 '#f)
            (##vector-cas! _%lock114831%_ '0 '0 '1)
            _%$r114851%_))))
    (define __symbolic-table-update!
      (lambda (_%tab114777%_
               _%key114778%_
               _%symbolic-table-update!114779%_
               _%default114780%_)
        (let ((_%table114782%_ (&raw-table-table _%tab114777%_))
              (_%seed114783%_ (&raw-table-seed _%tab114777%_)))
          (let* ((_%h114785%_
                  (fxxor (##symbol-hash _%key114778%_) _%seed114783%_))
                 (_%size114788%_ (vector-length _%table114782%_))
                 (_%entries114791%_ (##fxquotient _%size114788%_ '2))
                 (_%start114794%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h114785%_ _%entries114791%_)
                   '1)))
            (let _%loop114798%_ ((_%probe114801%_ _%start114794%_)
                                 (_%i114803%_ '1)
                                 (_%deleted114805%_ '#f))
              (let ((_%k114808%_ (vector-ref _%table114782%_ _%probe114801%_)))
                (if (eq? _%k114808%_ (macro-unused-obj))
                    (if _%deleted114805%_
                        (begin
                          (vector-set!
                           _%table114782%_
                           _%deleted114805%_
                           _%key114778%_)
                          (vector-set!
                           _%table114782%_
                           (##fx+ _%deleted114805%_ '1)
                           (_%symbolic-table-update!114779%_
                            _%default114780%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab114777%_
                              (##fx+ (&raw-table-count _%tab114777%_) '1)))))
                        (begin
                          (vector-set!
                           _%table114782%_
                           _%probe114801%_
                           _%key114778%_)
                          (vector-set!
                           _%table114782%_
                           (##fx+ _%probe114801%_ '1)
                           (_%symbolic-table-update!114779%_
                            _%default114780%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab114777%_
                              (##fx- (&raw-table-free _%tab114777%_) '1))
                             (&raw-table-count-set!
                              _%tab114777%_
                              (##fx+ (&raw-table-count _%tab114777%_) '1))))))
                    (if (eq? _%k114808%_ (macro-deleted-obj))
                        (_%loop114798%_
                         (let ((_%next-probe114815%_
                                (fx+ _%start114794%_
                                     _%i114803%_
                                     (fx* _%i114803%_ _%i114803%_))))
                           (##fxmodulo _%next-probe114815%_ _%size114788%_))
                         (##fx+ _%i114803%_ '1)
                         (let ((_%$e114818%_ _%deleted114805%_))
                           (if _%$e114818%_ _%$e114818%_ _%probe114801%_)))
                        (if (eq? _%key114778%_ _%k114808%_)
                            (let ()
                              (vector-set!
                               _%table114782%_
                               _%probe114801%_
                               _%key114778%_)
                              (vector-set!
                               _%table114782%_
                               (##fx+ _%probe114801%_ '1)
                               (_%symbolic-table-update!114779%_
                                (vector-ref
                                 _%table114782%_
                                 (##fx+ _%probe114801%_ '1)))))
                            (_%loop114798%_
                             (let ((_%next-probe114823%_
                                    (fx+ _%start114794%_
                                         _%i114803%_
                                         (fx* _%i114803%_ _%i114803%_))))
                               (##fxmodulo
                                _%next-probe114823%_
                                _%size114788%_))
                             (##fx+ _%i114803%_ '1)
                             _%deleted114805%_))))))))))
    (define symbolic-table-update!
      (lambda (_%tab114772%_
               _%key114773%_
               _%symbolic-table-update!114774%_
               _%default114775%_)
        (if (##fx< (&raw-table-free _%tab114772%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab114772%_))
                    '4))
            (__raw-table-rehash! _%tab114772%_)
            '#!void)
        (__symbolic-table-update!
         _%tab114772%_
         _%key114773%_
         _%symbolic-table-update!114774%_
         _%default114775%_)))
    (define symbolic-table-update!/lock
      (lambda (_%tab114743%_
               _%key114744%_
               _%symbolic-table-update!114745%_
               _%default114746%_)
        (let ((_%lock114749%_ (&raw-table-lock _%tab114743%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again114754%_ ((_%spin114757%_ '0))
              (if (##fx= (##vector-cas! _%lock114749%_ '0 '1 '0) '0)
                  (##vector-set! _%lock114749%_ '1 (current-thread))
                  (if (##fx< _%spin114757%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again114754%_ (##fx+ _%spin114757%_ '1)))
                      (let ((_%owner114763%_ (##vector-ref _%lock114749%_ '1)))
                        (if (eq? _%owner114763%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner114763%_)
                                (let () (##thread-yield!) (_%again114754%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r114769%_
                 (_%symbolic-table-update!114745%_
                  _%tab114743%_
                  _%key114744%_
                  _%symbolic-table-update!114745%_
                  _%default114746%_)))
            (##vector-set! _%lock114749%_ '1 '#f)
            (##vector-cas! _%lock114749%_ '0 '0 '1)
            _%$r114769%_))))
    (define symbolic-table-delete!
      (lambda (_%tab114700%_ _%key114701%_)
        (let ((_%table114703%_ (&raw-table-table _%tab114700%_))
              (_%seed114705%_ (&raw-table-seed _%tab114700%_)))
          (let* ((_%h114708%_
                  (fxxor (##symbol-hash _%key114701%_) _%seed114705%_))
                 (_%size114711%_ (vector-length _%table114703%_))
                 (_%entries114714%_ (##fxquotient _%size114711%_ '2))
                 (_%start114717%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h114708%_ _%entries114714%_)
                   '1)))
            (let _%loop114721%_ ((_%probe114724%_ _%start114717%_)
                                 (_%i114726%_ '1))
              (let ((_%k114729%_ (vector-ref _%table114703%_ _%probe114724%_)))
                (if (eq? _%k114729%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k114729%_ (macro-deleted-obj))
                        (_%loop114721%_
                         (let ((_%next-probe114734%_
                                (fx+ _%start114717%_
                                     _%i114726%_
                                     (fx* _%i114726%_ _%i114726%_))))
                           (##fxmodulo _%next-probe114734%_ _%size114711%_))
                         (##fx+ _%i114726%_ '1))
                        (if (eq? _%key114701%_ _%k114729%_)
                            (let ()
                              (vector-set!
                               _%table114703%_
                               _%probe114724%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table114703%_
                               (##fx+ _%probe114724%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab114700%_
                                  (##fx- (&raw-table-count _%tab114700%_)
                                         '1)))))
                            (_%loop114721%_
                             (let ((_%next-probe114740%_
                                    (fx+ _%start114717%_
                                         _%i114726%_
                                         (fx* _%i114726%_ _%i114726%_))))
                               (##fxmodulo
                                _%next-probe114740%_
                                _%size114711%_))
                             (##fx+ _%i114726%_ '1)))))))))))
    (define symbolic-table-delete!/lock
      (lambda (_%tab114672%_ _%key114674%_)
        (let ((_%lock114677%_ (&raw-table-lock _%tab114672%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again114682%_ ((_%spin114685%_ '0))
              (if (##fx= (##vector-cas! _%lock114677%_ '0 '1 '0) '0)
                  (##vector-set! _%lock114677%_ '1 (current-thread))
                  (if (##fx< _%spin114685%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again114682%_ (##fx+ _%spin114685%_ '1)))
                      (let ((_%owner114691%_ (##vector-ref _%lock114677%_ '1)))
                        (if (eq? _%owner114691%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner114691%_)
                                (let () (##thread-yield!) (_%again114682%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r114697%_
                 (symbolic-table-delete! _%tab114672%_ _%key114674%_)))
            (##vector-set! _%lock114677%_ '1 '#f)
            (##vector-cas! _%lock114677%_ '0 '0 '1)
            _%$r114697%_))))
    (define make-string-table__%
      (lambda (_%size-hint114654%_ _%seed114655%_)
        (make-raw-table__1
         _%size-hint114654%_
         string-hash
         ##string=?
         _%seed114655%_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_%size-hint114661%_ '#f) (_%seed114663%_ '0))
          (make-string-table__% _%size-hint114661%_ _%seed114663%_))))
    (define make-string-table__1
      (lambda (_%size-hint114665%_)
        (let ((_%seed114667%_ '0))
          (make-string-table__% _%size-hint114665%_ _%seed114667%_))))
    (define make-string-table
      (lambda _g116309_
        (let ((_g116310_ (##length _g116309_)))
          (cond ((##fx= _g116310_ 0) (apply make-string-table__0 _g116309_))
                ((##fx= _g116310_ 1) (apply make-string-table__1 _g116309_))
                ((##fx= _g116310_ 2) (apply make-string-table__% _g116309_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g116309_))))))
    (define make-string-table/lock__%
      (lambda (_%size-hint114634%_ _%seed114636%_)
        (make-raw-table/lock__%
         _%size-hint114634%_
         string-hash
         ##string=?
         _%seed114636%_)))
    (define make-string-table/lock__0
      (lambda ()
        (let* ((_%size-hint114642%_ '#f) (_%seed114644%_ '0))
          (make-string-table/lock__% _%size-hint114642%_ _%seed114644%_))))
    (define make-string-table/lock__1
      (lambda (_%size-hint114646%_)
        (let ((_%seed114648%_ '0))
          (make-string-table/lock__% _%size-hint114646%_ _%seed114648%_))))
    (define make-string-table/lock
      (lambda _g116311_
        (let ((_g116312_ (##length _g116311_)))
          (cond ((##fx= _g116312_ 0)
                 (apply make-string-table/lock__0 _g116311_))
                ((##fx= _g116312_ 1)
                 (apply make-string-table/lock__1 _g116311_))
                ((##fx= _g116312_ 2)
                 (apply make-string-table/lock__% _g116311_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table/lock
                  _g116311_))))))
    (define string-table-ref
      (lambda (_%tab114587%_ _%key114588%_ _%default114589%_)
        (let ((_%table114591%_ (&raw-table-table _%tab114587%_))
              (_%seed114592%_ (&raw-table-seed _%tab114587%_)))
          (let* ((_%h114594%_
                  (fxxor (##string=?-hash _%key114588%_) _%seed114592%_))
                 (_%size114597%_ (vector-length _%table114591%_))
                 (_%entries114600%_ (##fxquotient _%size114597%_ '2))
                 (_%start114603%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h114594%_ _%entries114600%_)
                   '1)))
            (let _%loop114607%_ ((_%probe114610%_ _%start114603%_)
                                 (_%i114612%_ '1)
                                 (_%deleted114614%_ '#f))
              (let ((_%k114617%_ (vector-ref _%table114591%_ _%probe114610%_)))
                (if (eq? _%k114617%_ (macro-unused-obj))
                    _%default114589%_
                    (if (eq? _%k114617%_ (macro-deleted-obj))
                        (_%loop114607%_
                         (let ((_%next-probe114622%_
                                (fx+ _%start114603%_
                                     _%i114612%_
                                     (fx* _%i114612%_ _%i114612%_))))
                           (##fxmodulo _%next-probe114622%_ _%size114597%_))
                         (##fx+ _%i114612%_ '1)
                         (let ((_%$e114625%_ _%deleted114614%_))
                           (if _%$e114625%_ _%$e114625%_ _%probe114610%_)))
                        (if (##string=? _%key114588%_ _%k114617%_)
                            (vector-ref
                             _%table114591%_
                             (##fx+ _%probe114610%_ '1))
                            (_%loop114607%_
                             (let ((_%next-probe114630%_
                                    (fx+ _%start114603%_
                                         _%i114612%_
                                         (fx* _%i114612%_ _%i114612%_))))
                               (##fxmodulo
                                _%next-probe114630%_
                                _%size114597%_))
                             (##fx+ _%i114612%_ '1)
                             _%deleted114614%_))))))))))
    (define string-table-ref/lock
      (lambda (_%tab114560%_ _%key114561%_ _%default114562%_)
        (let ((_%lock114564%_ (&raw-table-lock _%tab114560%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again114569%_ ((_%spin114572%_ '0))
              (if (##fx= (##vector-cas! _%lock114564%_ '0 '1 '0) '0)
                  (##vector-set! _%lock114564%_ '1 (current-thread))
                  (if (##fx< _%spin114572%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again114569%_ (##fx+ _%spin114572%_ '1)))
                      (let ((_%owner114578%_ (##vector-ref _%lock114564%_ '1)))
                        (if (eq? _%owner114578%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner114578%_)
                                (let () (##thread-yield!) (_%again114569%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r114584%_
                 (string-table-ref
                  _%tab114560%_
                  _%key114561%_
                  _%default114562%_)))
            (##vector-set! _%lock114564%_ '1 '#f)
            (##vector-cas! _%lock114564%_ '0 '0 '1)
            _%$r114584%_))))
    (define __string-table-set!
      (lambda (_%tab114512%_ _%key114513%_ _%value114514%_)
        (let ((_%table114516%_ (&raw-table-table _%tab114512%_))
              (_%seed114517%_ (&raw-table-seed _%tab114512%_)))
          (let* ((_%h114519%_
                  (fxxor (##string=?-hash _%key114513%_) _%seed114517%_))
                 (_%size114522%_ (vector-length _%table114516%_))
                 (_%entries114525%_ (##fxquotient _%size114522%_ '2))
                 (_%start114528%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h114519%_ _%entries114525%_)
                   '1)))
            (let _%loop114532%_ ((_%probe114535%_ _%start114528%_)
                                 (_%i114537%_ '1)
                                 (_%deleted114539%_ '#f))
              (let ((_%k114542%_ (vector-ref _%table114516%_ _%probe114535%_)))
                (if (eq? _%k114542%_ (macro-unused-obj))
                    (if _%deleted114539%_
                        (begin
                          (vector-set!
                           _%table114516%_
                           _%deleted114539%_
                           _%key114513%_)
                          (vector-set!
                           _%table114516%_
                           (##fx+ _%deleted114539%_ '1)
                           _%value114514%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab114512%_
                              (##fx+ (&raw-table-count _%tab114512%_) '1)))))
                        (begin
                          (vector-set!
                           _%table114516%_
                           _%probe114535%_
                           _%key114513%_)
                          (vector-set!
                           _%table114516%_
                           (##fx+ _%probe114535%_ '1)
                           _%value114514%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab114512%_
                              (##fx- (&raw-table-free _%tab114512%_) '1))
                             (&raw-table-count-set!
                              _%tab114512%_
                              (##fx+ (&raw-table-count _%tab114512%_) '1))))))
                    (if (eq? _%k114542%_ (macro-deleted-obj))
                        (_%loop114532%_
                         (let ((_%next-probe114549%_
                                (fx+ _%start114528%_
                                     _%i114537%_
                                     (fx* _%i114537%_ _%i114537%_))))
                           (##fxmodulo _%next-probe114549%_ _%size114522%_))
                         (##fx+ _%i114537%_ '1)
                         (let ((_%$e114552%_ _%deleted114539%_))
                           (if _%$e114552%_ _%$e114552%_ _%probe114535%_)))
                        (if (##string=? _%key114513%_ _%k114542%_)
                            (let ()
                              (vector-set!
                               _%table114516%_
                               _%probe114535%_
                               _%key114513%_)
                              (vector-set!
                               _%table114516%_
                               (##fx+ _%probe114535%_ '1)
                               _%value114514%_))
                            (_%loop114532%_
                             (let ((_%next-probe114557%_
                                    (fx+ _%start114528%_
                                         _%i114537%_
                                         (fx* _%i114537%_ _%i114537%_))))
                               (##fxmodulo
                                _%next-probe114557%_
                                _%size114522%_))
                             (##fx+ _%i114537%_ '1)
                             _%deleted114539%_))))))))))
    (define string-table-set!
      (lambda (_%tab114508%_ _%key114509%_ _%value114510%_)
        (if (##fx< (&raw-table-free _%tab114508%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab114508%_))
                    '4))
            (__raw-table-rehash! _%tab114508%_)
            '#!void)
        (__string-table-set! _%tab114508%_ _%key114509%_ _%value114510%_)))
    (define string-table-set!/lock
      (lambda (_%tab114480%_ _%key114481%_ _%value114482%_)
        (let ((_%lock114485%_ (&raw-table-lock _%tab114480%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again114490%_ ((_%spin114493%_ '0))
              (if (##fx= (##vector-cas! _%lock114485%_ '0 '1 '0) '0)
                  (##vector-set! _%lock114485%_ '1 (current-thread))
                  (if (##fx< _%spin114493%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again114490%_ (##fx+ _%spin114493%_ '1)))
                      (let ((_%owner114499%_ (##vector-ref _%lock114485%_ '1)))
                        (if (eq? _%owner114499%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner114499%_)
                                (let () (##thread-yield!) (_%again114490%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r114505%_
                 (string-table-set!
                  _%tab114480%_
                  _%key114481%_
                  _%value114482%_)))
            (##vector-set! _%lock114485%_ '1 '#f)
            (##vector-cas! _%lock114485%_ '0 '0 '1)
            _%$r114505%_))))
    (define __string-table-update!
      (lambda (_%tab114431%_
               _%key114432%_
               _%string-table-update!114433%_
               _%default114434%_)
        (let ((_%table114436%_ (&raw-table-table _%tab114431%_))
              (_%seed114437%_ (&raw-table-seed _%tab114431%_)))
          (let* ((_%h114439%_
                  (fxxor (##string=?-hash _%key114432%_) _%seed114437%_))
                 (_%size114442%_ (vector-length _%table114436%_))
                 (_%entries114445%_ (##fxquotient _%size114442%_ '2))
                 (_%start114448%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h114439%_ _%entries114445%_)
                   '1)))
            (let _%loop114452%_ ((_%probe114455%_ _%start114448%_)
                                 (_%i114457%_ '1)
                                 (_%deleted114459%_ '#f))
              (let ((_%k114462%_ (vector-ref _%table114436%_ _%probe114455%_)))
                (if (eq? _%k114462%_ (macro-unused-obj))
                    (if _%deleted114459%_
                        (begin
                          (vector-set!
                           _%table114436%_
                           _%deleted114459%_
                           _%key114432%_)
                          (vector-set!
                           _%table114436%_
                           (##fx+ _%deleted114459%_ '1)
                           (_%string-table-update!114433%_ _%default114434%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab114431%_
                              (##fx+ (&raw-table-count _%tab114431%_) '1)))))
                        (begin
                          (vector-set!
                           _%table114436%_
                           _%probe114455%_
                           _%key114432%_)
                          (vector-set!
                           _%table114436%_
                           (##fx+ _%probe114455%_ '1)
                           (_%string-table-update!114433%_ _%default114434%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab114431%_
                              (##fx- (&raw-table-free _%tab114431%_) '1))
                             (&raw-table-count-set!
                              _%tab114431%_
                              (##fx+ (&raw-table-count _%tab114431%_) '1))))))
                    (if (eq? _%k114462%_ (macro-deleted-obj))
                        (_%loop114452%_
                         (let ((_%next-probe114469%_
                                (fx+ _%start114448%_
                                     _%i114457%_
                                     (fx* _%i114457%_ _%i114457%_))))
                           (##fxmodulo _%next-probe114469%_ _%size114442%_))
                         (##fx+ _%i114457%_ '1)
                         (let ((_%$e114472%_ _%deleted114459%_))
                           (if _%$e114472%_ _%$e114472%_ _%probe114455%_)))
                        (if (##string=? _%key114432%_ _%k114462%_)
                            (let ()
                              (vector-set!
                               _%table114436%_
                               _%probe114455%_
                               _%key114432%_)
                              (vector-set!
                               _%table114436%_
                               (##fx+ _%probe114455%_ '1)
                               (_%string-table-update!114433%_
                                (vector-ref
                                 _%table114436%_
                                 (##fx+ _%probe114455%_ '1)))))
                            (_%loop114452%_
                             (let ((_%next-probe114477%_
                                    (fx+ _%start114448%_
                                         _%i114457%_
                                         (fx* _%i114457%_ _%i114457%_))))
                               (##fxmodulo
                                _%next-probe114477%_
                                _%size114442%_))
                             (##fx+ _%i114457%_ '1)
                             _%deleted114459%_))))))))))
    (define string-table-update!
      (lambda (_%tab114426%_
               _%key114427%_
               _%string-table-update!114428%_
               _%default114429%_)
        (if (##fx< (&raw-table-free _%tab114426%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab114426%_))
                    '4))
            (__raw-table-rehash! _%tab114426%_)
            '#!void)
        (__string-table-update!
         _%tab114426%_
         _%key114427%_
         _%string-table-update!114428%_
         _%default114429%_)))
    (define string-table-update!/lock
      (lambda (_%tab114397%_
               _%key114398%_
               _%string-table-update!114399%_
               _%default114400%_)
        (let ((_%lock114403%_ (&raw-table-lock _%tab114397%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again114408%_ ((_%spin114411%_ '0))
              (if (##fx= (##vector-cas! _%lock114403%_ '0 '1 '0) '0)
                  (##vector-set! _%lock114403%_ '1 (current-thread))
                  (if (##fx< _%spin114411%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again114408%_ (##fx+ _%spin114411%_ '1)))
                      (let ((_%owner114417%_ (##vector-ref _%lock114403%_ '1)))
                        (if (eq? _%owner114417%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner114417%_)
                                (let () (##thread-yield!) (_%again114408%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r114423%_
                 (_%string-table-update!114399%_
                  _%tab114397%_
                  _%key114398%_
                  _%string-table-update!114399%_
                  _%default114400%_)))
            (##vector-set! _%lock114403%_ '1 '#f)
            (##vector-cas! _%lock114403%_ '0 '0 '1)
            _%$r114423%_))))
    (define string-table-delete!
      (lambda (_%tab114354%_ _%key114355%_)
        (let ((_%table114357%_ (&raw-table-table _%tab114354%_))
              (_%seed114359%_ (&raw-table-seed _%tab114354%_)))
          (let* ((_%h114362%_
                  (fxxor (##string=?-hash _%key114355%_) _%seed114359%_))
                 (_%size114365%_ (vector-length _%table114357%_))
                 (_%entries114368%_ (##fxquotient _%size114365%_ '2))
                 (_%start114371%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h114362%_ _%entries114368%_)
                   '1)))
            (let _%loop114375%_ ((_%probe114378%_ _%start114371%_)
                                 (_%i114380%_ '1))
              (let ((_%k114383%_ (vector-ref _%table114357%_ _%probe114378%_)))
                (if (eq? _%k114383%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k114383%_ (macro-deleted-obj))
                        (_%loop114375%_
                         (let ((_%next-probe114388%_
                                (fx+ _%start114371%_
                                     _%i114380%_
                                     (fx* _%i114380%_ _%i114380%_))))
                           (##fxmodulo _%next-probe114388%_ _%size114365%_))
                         (##fx+ _%i114380%_ '1))
                        (if (##string=? _%key114355%_ _%k114383%_)
                            (let ()
                              (vector-set!
                               _%table114357%_
                               _%probe114378%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table114357%_
                               (##fx+ _%probe114378%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab114354%_
                                  (##fx- (&raw-table-count _%tab114354%_)
                                         '1)))))
                            (_%loop114375%_
                             (let ((_%next-probe114394%_
                                    (fx+ _%start114371%_
                                         _%i114380%_
                                         (fx* _%i114380%_ _%i114380%_))))
                               (##fxmodulo
                                _%next-probe114394%_
                                _%size114365%_))
                             (##fx+ _%i114380%_ '1)))))))))))
    (define string-table-delete!/lock
      (lambda (_%tab114326%_ _%key114328%_)
        (let ((_%lock114331%_ (&raw-table-lock _%tab114326%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again114336%_ ((_%spin114339%_ '0))
              (if (##fx= (##vector-cas! _%lock114331%_ '0 '1 '0) '0)
                  (##vector-set! _%lock114331%_ '1 (current-thread))
                  (if (##fx< _%spin114339%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again114336%_ (##fx+ _%spin114339%_ '1)))
                      (let ((_%owner114345%_ (##vector-ref _%lock114331%_ '1)))
                        (if (eq? _%owner114345%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner114345%_)
                                (let () (##thread-yield!) (_%again114336%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r114351%_
                 (string-table-delete! _%tab114326%_ _%key114328%_)))
            (##vector-set! _%lock114331%_ '1 '#f)
            (##vector-cas! _%lock114331%_ '0 '0 '1)
            _%$r114351%_))))
    (define make-immediate-table__%
      (lambda (_%size-hint114308%_ _%seed114309%_)
        (make-raw-table__1
         _%size-hint114308%_
         immediate-hash
         eq?
         _%seed114309%_)))
    (define make-immediate-table__0
      (lambda ()
        (let* ((_%size-hint114315%_ '#f) (_%seed114317%_ '0))
          (make-immediate-table__% _%size-hint114315%_ _%seed114317%_))))
    (define make-immediate-table__1
      (lambda (_%size-hint114319%_)
        (let ((_%seed114321%_ '0))
          (make-immediate-table__% _%size-hint114319%_ _%seed114321%_))))
    (define make-immediate-table
      (lambda _g116313_
        (let ((_g116314_ (##length _g116313_)))
          (cond ((##fx= _g116314_ 0) (apply make-immediate-table__0 _g116313_))
                ((##fx= _g116314_ 1) (apply make-immediate-table__1 _g116313_))
                ((##fx= _g116314_ 2) (apply make-immediate-table__% _g116313_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table
                  _g116313_))))))
    (define make-immediate-table/lock__%
      (lambda (_%size-hint114288%_ _%seed114290%_)
        (make-raw-table/lock__%
         _%size-hint114288%_
         immediate-hash
         eq?
         _%seed114290%_)))
    (define make-immediate-table/lock__0
      (lambda ()
        (let* ((_%size-hint114296%_ '#f) (_%seed114298%_ '0))
          (make-immediate-table/lock__% _%size-hint114296%_ _%seed114298%_))))
    (define make-immediate-table/lock__1
      (lambda (_%size-hint114300%_)
        (let ((_%seed114302%_ '0))
          (make-immediate-table/lock__% _%size-hint114300%_ _%seed114302%_))))
    (define make-immediate-table/lock
      (lambda _g116315_
        (let ((_g116316_ (##length _g116315_)))
          (cond ((##fx= _g116316_ 0)
                 (apply make-immediate-table/lock__0 _g116315_))
                ((##fx= _g116316_ 1)
                 (apply make-immediate-table/lock__1 _g116315_))
                ((##fx= _g116316_ 2)
                 (apply make-immediate-table/lock__% _g116315_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table/lock
                  _g116315_))))))
    (define immediate-table-ref
      (lambda (_%tab114241%_ _%key114242%_ _%default114243%_)
        (let ((_%table114245%_ (&raw-table-table _%tab114241%_))
              (_%seed114246%_ (&raw-table-seed _%tab114241%_)))
          (let* ((_%h114248%_
                  (fxxor (immediate-hash _%key114242%_) _%seed114246%_))
                 (_%size114251%_ (vector-length _%table114245%_))
                 (_%entries114254%_ (##fxquotient _%size114251%_ '2))
                 (_%start114257%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h114248%_ _%entries114254%_)
                   '1)))
            (let _%loop114261%_ ((_%probe114264%_ _%start114257%_)
                                 (_%i114266%_ '1)
                                 (_%deleted114268%_ '#f))
              (let ((_%k114271%_ (vector-ref _%table114245%_ _%probe114264%_)))
                (if (eq? _%k114271%_ (macro-unused-obj))
                    _%default114243%_
                    (if (eq? _%k114271%_ (macro-deleted-obj))
                        (_%loop114261%_
                         (let ((_%next-probe114276%_
                                (fx+ _%start114257%_
                                     _%i114266%_
                                     (fx* _%i114266%_ _%i114266%_))))
                           (##fxmodulo _%next-probe114276%_ _%size114251%_))
                         (##fx+ _%i114266%_ '1)
                         (let ((_%$e114279%_ _%deleted114268%_))
                           (if _%$e114279%_ _%$e114279%_ _%probe114264%_)))
                        (if (eq? _%key114242%_ _%k114271%_)
                            (vector-ref
                             _%table114245%_
                             (##fx+ _%probe114264%_ '1))
                            (_%loop114261%_
                             (let ((_%next-probe114284%_
                                    (fx+ _%start114257%_
                                         _%i114266%_
                                         (fx* _%i114266%_ _%i114266%_))))
                               (##fxmodulo
                                _%next-probe114284%_
                                _%size114251%_))
                             (##fx+ _%i114266%_ '1)
                             _%deleted114268%_))))))))))
    (define immediate-table-ref/lock
      (lambda (_%tab114214%_ _%key114215%_ _%default114216%_)
        (let ((_%lock114218%_ (&raw-table-lock _%tab114214%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again114223%_ ((_%spin114226%_ '0))
              (if (##fx= (##vector-cas! _%lock114218%_ '0 '1 '0) '0)
                  (##vector-set! _%lock114218%_ '1 (current-thread))
                  (if (##fx< _%spin114226%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again114223%_ (##fx+ _%spin114226%_ '1)))
                      (let ((_%owner114232%_ (##vector-ref _%lock114218%_ '1)))
                        (if (eq? _%owner114232%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner114232%_)
                                (let () (##thread-yield!) (_%again114223%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r114238%_
                 (immediate-table-ref
                  _%tab114214%_
                  _%key114215%_
                  _%default114216%_)))
            (##vector-set! _%lock114218%_ '1 '#f)
            (##vector-cas! _%lock114218%_ '0 '0 '1)
            _%$r114238%_))))
    (define __immediate-table-set!
      (lambda (_%tab114166%_ _%key114167%_ _%value114168%_)
        (let ((_%table114170%_ (&raw-table-table _%tab114166%_))
              (_%seed114171%_ (&raw-table-seed _%tab114166%_)))
          (let* ((_%h114173%_
                  (fxxor (immediate-hash _%key114167%_) _%seed114171%_))
                 (_%size114176%_ (vector-length _%table114170%_))
                 (_%entries114179%_ (##fxquotient _%size114176%_ '2))
                 (_%start114182%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h114173%_ _%entries114179%_)
                   '1)))
            (let _%loop114186%_ ((_%probe114189%_ _%start114182%_)
                                 (_%i114191%_ '1)
                                 (_%deleted114193%_ '#f))
              (let ((_%k114196%_ (vector-ref _%table114170%_ _%probe114189%_)))
                (if (eq? _%k114196%_ (macro-unused-obj))
                    (if _%deleted114193%_
                        (begin
                          (vector-set!
                           _%table114170%_
                           _%deleted114193%_
                           _%key114167%_)
                          (vector-set!
                           _%table114170%_
                           (##fx+ _%deleted114193%_ '1)
                           _%value114168%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab114166%_
                              (##fx+ (&raw-table-count _%tab114166%_) '1)))))
                        (begin
                          (vector-set!
                           _%table114170%_
                           _%probe114189%_
                           _%key114167%_)
                          (vector-set!
                           _%table114170%_
                           (##fx+ _%probe114189%_ '1)
                           _%value114168%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab114166%_
                              (##fx- (&raw-table-free _%tab114166%_) '1))
                             (&raw-table-count-set!
                              _%tab114166%_
                              (##fx+ (&raw-table-count _%tab114166%_) '1))))))
                    (if (eq? _%k114196%_ (macro-deleted-obj))
                        (_%loop114186%_
                         (let ((_%next-probe114203%_
                                (fx+ _%start114182%_
                                     _%i114191%_
                                     (fx* _%i114191%_ _%i114191%_))))
                           (##fxmodulo _%next-probe114203%_ _%size114176%_))
                         (##fx+ _%i114191%_ '1)
                         (let ((_%$e114206%_ _%deleted114193%_))
                           (if _%$e114206%_ _%$e114206%_ _%probe114189%_)))
                        (if (eq? _%key114167%_ _%k114196%_)
                            (let ()
                              (vector-set!
                               _%table114170%_
                               _%probe114189%_
                               _%key114167%_)
                              (vector-set!
                               _%table114170%_
                               (##fx+ _%probe114189%_ '1)
                               _%value114168%_))
                            (_%loop114186%_
                             (let ((_%next-probe114211%_
                                    (fx+ _%start114182%_
                                         _%i114191%_
                                         (fx* _%i114191%_ _%i114191%_))))
                               (##fxmodulo
                                _%next-probe114211%_
                                _%size114176%_))
                             (##fx+ _%i114191%_ '1)
                             _%deleted114193%_))))))))))
    (define immediate-table-set!
      (lambda (_%tab114162%_ _%key114163%_ _%value114164%_)
        (if (##fx< (&raw-table-free _%tab114162%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab114162%_))
                    '4))
            (__raw-table-rehash! _%tab114162%_)
            '#!void)
        (__immediate-table-set! _%tab114162%_ _%key114163%_ _%value114164%_)))
    (define immediate-table-set!/lock
      (lambda (_%tab114134%_ _%key114135%_ _%value114136%_)
        (let ((_%lock114139%_ (&raw-table-lock _%tab114134%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again114144%_ ((_%spin114147%_ '0))
              (if (##fx= (##vector-cas! _%lock114139%_ '0 '1 '0) '0)
                  (##vector-set! _%lock114139%_ '1 (current-thread))
                  (if (##fx< _%spin114147%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again114144%_ (##fx+ _%spin114147%_ '1)))
                      (let ((_%owner114153%_ (##vector-ref _%lock114139%_ '1)))
                        (if (eq? _%owner114153%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner114153%_)
                                (let () (##thread-yield!) (_%again114144%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r114159%_
                 (immediate-table-set!
                  _%tab114134%_
                  _%key114135%_
                  _%value114136%_)))
            (##vector-set! _%lock114139%_ '1 '#f)
            (##vector-cas! _%lock114139%_ '0 '0 '1)
            _%$r114159%_))))
    (define __immediate-table-update!
      (lambda (_%tab114085%_
               _%key114086%_
               _%immediate-table-update!114087%_
               _%default114088%_)
        (let ((_%table114090%_ (&raw-table-table _%tab114085%_))
              (_%seed114091%_ (&raw-table-seed _%tab114085%_)))
          (let* ((_%h114093%_
                  (fxxor (immediate-hash _%key114086%_) _%seed114091%_))
                 (_%size114096%_ (vector-length _%table114090%_))
                 (_%entries114099%_ (##fxquotient _%size114096%_ '2))
                 (_%start114102%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h114093%_ _%entries114099%_)
                   '1)))
            (let _%loop114106%_ ((_%probe114109%_ _%start114102%_)
                                 (_%i114111%_ '1)
                                 (_%deleted114113%_ '#f))
              (let ((_%k114116%_ (vector-ref _%table114090%_ _%probe114109%_)))
                (if (eq? _%k114116%_ (macro-unused-obj))
                    (if _%deleted114113%_
                        (begin
                          (vector-set!
                           _%table114090%_
                           _%deleted114113%_
                           _%key114086%_)
                          (vector-set!
                           _%table114090%_
                           (##fx+ _%deleted114113%_ '1)
                           (_%immediate-table-update!114087%_
                            _%default114088%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab114085%_
                              (##fx+ (&raw-table-count _%tab114085%_) '1)))))
                        (begin
                          (vector-set!
                           _%table114090%_
                           _%probe114109%_
                           _%key114086%_)
                          (vector-set!
                           _%table114090%_
                           (##fx+ _%probe114109%_ '1)
                           (_%immediate-table-update!114087%_
                            _%default114088%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab114085%_
                              (##fx- (&raw-table-free _%tab114085%_) '1))
                             (&raw-table-count-set!
                              _%tab114085%_
                              (##fx+ (&raw-table-count _%tab114085%_) '1))))))
                    (if (eq? _%k114116%_ (macro-deleted-obj))
                        (_%loop114106%_
                         (let ((_%next-probe114123%_
                                (fx+ _%start114102%_
                                     _%i114111%_
                                     (fx* _%i114111%_ _%i114111%_))))
                           (##fxmodulo _%next-probe114123%_ _%size114096%_))
                         (##fx+ _%i114111%_ '1)
                         (let ((_%$e114126%_ _%deleted114113%_))
                           (if _%$e114126%_ _%$e114126%_ _%probe114109%_)))
                        (if (eq? _%key114086%_ _%k114116%_)
                            (let ()
                              (vector-set!
                               _%table114090%_
                               _%probe114109%_
                               _%key114086%_)
                              (vector-set!
                               _%table114090%_
                               (##fx+ _%probe114109%_ '1)
                               (_%immediate-table-update!114087%_
                                (vector-ref
                                 _%table114090%_
                                 (##fx+ _%probe114109%_ '1)))))
                            (_%loop114106%_
                             (let ((_%next-probe114131%_
                                    (fx+ _%start114102%_
                                         _%i114111%_
                                         (fx* _%i114111%_ _%i114111%_))))
                               (##fxmodulo
                                _%next-probe114131%_
                                _%size114096%_))
                             (##fx+ _%i114111%_ '1)
                             _%deleted114113%_))))))))))
    (define immediate-table-update!
      (lambda (_%tab114080%_
               _%key114081%_
               _%immediate-table-update!114082%_
               _%default114083%_)
        (if (##fx< (&raw-table-free _%tab114080%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab114080%_))
                    '4))
            (__raw-table-rehash! _%tab114080%_)
            '#!void)
        (__immediate-table-update!
         _%tab114080%_
         _%key114081%_
         _%immediate-table-update!114082%_
         _%default114083%_)))
    (define immediate-table-update!/lock
      (lambda (_%tab114051%_
               _%key114052%_
               _%immediate-table-update!114053%_
               _%default114054%_)
        (let ((_%lock114057%_ (&raw-table-lock _%tab114051%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again114062%_ ((_%spin114065%_ '0))
              (if (##fx= (##vector-cas! _%lock114057%_ '0 '1 '0) '0)
                  (##vector-set! _%lock114057%_ '1 (current-thread))
                  (if (##fx< _%spin114065%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again114062%_ (##fx+ _%spin114065%_ '1)))
                      (let ((_%owner114071%_ (##vector-ref _%lock114057%_ '1)))
                        (if (eq? _%owner114071%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner114071%_)
                                (let () (##thread-yield!) (_%again114062%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r114077%_
                 (_%immediate-table-update!114053%_
                  _%tab114051%_
                  _%key114052%_
                  _%immediate-table-update!114053%_
                  _%default114054%_)))
            (##vector-set! _%lock114057%_ '1 '#f)
            (##vector-cas! _%lock114057%_ '0 '0 '1)
            _%$r114077%_))))
    (define immediate-table-delete!
      (lambda (_%tab114008%_ _%key114009%_)
        (let ((_%table114011%_ (&raw-table-table _%tab114008%_))
              (_%seed114013%_ (&raw-table-seed _%tab114008%_)))
          (let* ((_%h114016%_
                  (fxxor (immediate-hash _%key114009%_) _%seed114013%_))
                 (_%size114019%_ (vector-length _%table114011%_))
                 (_%entries114022%_ (##fxquotient _%size114019%_ '2))
                 (_%start114025%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h114016%_ _%entries114022%_)
                   '1)))
            (let _%loop114029%_ ((_%probe114032%_ _%start114025%_)
                                 (_%i114034%_ '1))
              (let ((_%k114037%_ (vector-ref _%table114011%_ _%probe114032%_)))
                (if (eq? _%k114037%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k114037%_ (macro-deleted-obj))
                        (_%loop114029%_
                         (let ((_%next-probe114042%_
                                (fx+ _%start114025%_
                                     _%i114034%_
                                     (fx* _%i114034%_ _%i114034%_))))
                           (##fxmodulo _%next-probe114042%_ _%size114019%_))
                         (##fx+ _%i114034%_ '1))
                        (if (eq? _%key114009%_ _%k114037%_)
                            (let ()
                              (vector-set!
                               _%table114011%_
                               _%probe114032%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table114011%_
                               (##fx+ _%probe114032%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab114008%_
                                  (##fx- (&raw-table-count _%tab114008%_)
                                         '1)))))
                            (_%loop114029%_
                             (let ((_%next-probe114048%_
                                    (fx+ _%start114025%_
                                         _%i114034%_
                                         (fx* _%i114034%_ _%i114034%_))))
                               (##fxmodulo
                                _%next-probe114048%_
                                _%size114019%_))
                             (##fx+ _%i114034%_ '1)))))))))))
    (define immediate-table-delete!/lock
      (lambda (_%tab113980%_ _%key113982%_)
        (let ((_%lock113985%_ (&raw-table-lock _%tab113980%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again113990%_ ((_%spin113993%_ '0))
              (if (##fx= (##vector-cas! _%lock113985%_ '0 '1 '0) '0)
                  (##vector-set! _%lock113985%_ '1 (current-thread))
                  (if (##fx< _%spin113993%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again113990%_ (##fx+ _%spin113993%_ '1)))
                      (let ((_%owner113999%_ (##vector-ref _%lock113985%_ '1)))
                        (if (eq? _%owner113999%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner113999%_)
                                (let () (##thread-yield!) (_%again113990%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r114005%_
                 (immediate-table-delete! _%tab113980%_ _%key113982%_)))
            (##vector-set! _%lock113985%_ '1 '#f)
            (##vector-cas! _%lock113985%_ '0 '0 '1)
            _%$r114005%_))))
    (define unused-obj (values (macro-unused-obj)))
    (define __gc-table::t.id 'gerbil#__gc-table::t)
    (define __gc-table::t
      (##structure
       ##type-type
       __gc-table::t.id
       'gc-table
       '26
       '#f
       '#(gcht 5 #f immediate 5 #f lock 5 #f)))
    (define __gc-table-loads '#f64(.45 .6363961030678927 .9))
    (define &gc-table-gcht
      (lambda (_%tab113978%_)
        (##unchecked-structure-ref
         _%tab113978%_
         '1
         __gc-table::t
         'gc-table-gcht)))
    (define &gc-table-immediate
      (lambda (_%tab113976%_)
        (##unchecked-structure-ref
         _%tab113976%_
         '2
         __gc-table::t
         'gc-table-immediate)))
    (define &gc-table-lock
      (lambda (_%tab113974%_)
        (##unchecked-structure-ref
         _%tab113974%_
         '3
         __gc-table::t
         'gc-table-lock)))
    (define &gc-table-gcht-set!
      (lambda (_%tab113971%_ _%val113972%_)
        (##unchecked-structure-set!
         _%tab113971%_
         _%val113972%_
         '1
         __gc-table::t
         'gc-table-gcht-set!)))
    (define &gc-table-immediate-set!
      (lambda (_%tab113968%_ _%val113969%_)
        (##unchecked-structure-set!
         _%tab113968%_
         _%val113969%_
         '2
         __gc-table::t
         'gc-table-immediate-set!)))
    (define &gc-table-lock-set!
      (lambda (_%tab113965%_ _%val113966%_)
        (##unchecked-structure-set!
         _%tab113965%_
         _%val113966%_
         '3
         __gc-table::t
         'gc-table-lock-set!)))
    (define make-gc-table__%
      (lambda (_%size-hint113929%_
               _%klass113930%_
               _%flags113931%_
               _%lock113932%_)
        (let ((_%gcht113934%_
               (__gc-table-new
                (if (fixnum? _%size-hint113929%_) _%size-hint113929%_ '16)
                _%flags113931%_)))
          (##structure _%klass113930%_ _%gcht113934%_ '#f _%lock113932%_))))
    (define make-gc-table__0
      (lambda (_%size-hint113939%_)
        (let* ((_%klass113941%_ __gc-table::t)
               (_%flags113943%_ '0)
               (_%lock113945%_ '#f))
          (make-gc-table__%
           _%size-hint113939%_
           _%klass113941%_
           _%flags113943%_
           _%lock113945%_))))
    (define make-gc-table__1
      (lambda (_%size-hint113947%_ _%klass113948%_)
        (let* ((_%flags113950%_ '0) (_%lock113952%_ '#f))
          (make-gc-table__%
           _%size-hint113947%_
           _%klass113948%_
           _%flags113950%_
           _%lock113952%_))))
    (define make-gc-table__2
      (lambda (_%size-hint113954%_ _%klass113955%_ _%flags113956%_)
        (let ((_%lock113958%_ '#f))
          (make-gc-table__%
           _%size-hint113954%_
           _%klass113955%_
           _%flags113956%_
           _%lock113958%_))))
    (define make-gc-table
      (lambda _g116317_
        (let ((_g116318_ (##length _g116317_)))
          (cond ((##fx= _g116318_ 1) (apply make-gc-table__0 _g116317_))
                ((##fx= _g116318_ 2) (apply make-gc-table__1 _g116317_))
                ((##fx= _g116318_ 3) (apply make-gc-table__2 _g116317_))
                ((##fx= _g116318_ 4) (apply make-gc-table__% _g116317_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table
                  _g116317_))))))
    (define make-gc-table/lock__%
      (lambda (_%size-hint113906%_ _%klass113907%_ _%flags113908%_)
        (make-gc-table__%
         _%size-hint113906%_
         _%klass113907%_
         _%flags113908%_
         (vector '0 '#f))))
    (define make-gc-table/lock__0
      (lambda (_%size-hint113913%_)
        (let* ((_%klass113915%_ __gc-table::t) (_%flags113917%_ '0))
          (make-gc-table/lock__%
           _%size-hint113913%_
           _%klass113915%_
           _%flags113917%_))))
    (define make-gc-table/lock__1
      (lambda (_%size-hint113919%_ _%klass113920%_)
        (let ((_%flags113922%_ '0))
          (make-gc-table/lock__%
           _%size-hint113919%_
           _%klass113920%_
           _%flags113922%_))))
    (define make-gc-table/lock
      (lambda _g116319_
        (let ((_g116320_ (##length _g116319_)))
          (cond ((##fx= _g116320_ 1) (apply make-gc-table/lock__0 _g116319_))
                ((##fx= _g116320_ 2) (apply make-gc-table/lock__1 _g116319_))
                ((##fx= _g116320_ 3) (apply make-gc-table/lock__% _g116319_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table/lock
                  _g116319_))))))
    (define __gc-table-immediate
      (lambda (_%tab113897%_)
        (let ((_%$e113899%_ (&gc-table-immediate _%tab113897%_)))
          (if _%$e113899%_
              _%$e113899%_
              (let ((_%immediate113903%_ (make-immediate-table__% '#f '0)))
                (&gc-table-immediate-set! _%tab113897%_ _%immediate113903%_)
                _%immediate113903%_)))))
    (define __gc-table-new
      (lambda (_%size113887%_ _%flags113888%_)
        (let* ((_%flags113890%_
                (##fxand _%flags113888%_
                         (fxnot (macro-gc-hash-table-flag-need-rehash))))
               (_%flags113892%_
                (fxior _%flags113890%_
                       (macro-gc-hash-table-flag-mem-alloc-keys)))
               (_%gcht113894%_
                (##gc-hash-table-allocate
                 _%size113887%_
                 _%flags113892%_
                 __gc-table-loads)))
          _%gcht113894%_)))
    (define __gc-table-e
      (lambda (_%tab113882%_)
        (declare (not interrupts-enabled))
        (let ((_%gcht113885%_ (&gc-table-gcht _%tab113882%_)))
          (if (##fx= '0
                     (fxand (macro-gc-hash-table-flags _%gcht113885%_)
                            (macro-gc-hash-table-flag-need-rehash)))
              _%gcht113885%_
              (begin
                (__gc-table-rehash! _%tab113882%_)
                (&gc-table-gcht _%tab113882%_))))))
    (define __gc-table-rehash!
      (lambda (_%tab113873%_)
        (let* ((_%old-table113875%_ (&gc-table-gcht _%tab113873%_))
               (_%new-table113877%_
                (##gc-hash-table-resize! _%old-table113875%_ __gc-table-loads))
               (_%gcht113879%_
                (##gc-hash-table-rehash!
                 _%old-table113875%_
                 _%new-table113877%_)))
          (&gc-table-gcht-set! _%tab113873%_ _%gcht113879%_))))
    (define gc-table-ref
      (lambda (_%tab113857%_ _%key113858%_ _%default113859%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key113858%_)
            (let* ((_%gcht113863%_ (__gc-table-e _%tab113857%_))
                   (_%value113865%_
                    (##gc-hash-table-ref _%gcht113863%_ _%key113858%_)))
              (if (eq? _%value113865%_ (macro-unused-obj))
                  _%default113859%_
                  _%value113865%_))
            (let ((_%$e113867%_ (&gc-table-immediate _%tab113857%_)))
              (if _%$e113867%_
                  ((lambda (_%immediate113870%_)
                     (immediate-table-ref
                      _%immediate113870%_
                      _%key113858%_
                      _%default113859%_))
                   _%$e113867%_)
                  _%default113859%_)))))
    (define gc-table-ref/lock
      (lambda (_%tab113833%_ _%key113834%_ _%default113835%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again113839%_ ((_%spin113842%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab113833%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab113833%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin113842%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again113839%_ (##fx+ _%spin113842%_ '1)))
                    (let ((_%owner113848%_
                           (##vector-ref (&gc-table-lock _%tab113833%_) '1)))
                      (if (eq? _%owner113848%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner113848%_)
                              (let () (##thread-yield!) (_%again113839%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r113854%_
               (gc-table-ref _%tab113833%_ _%key113834%_ _%default113835%_)))
          (##vector-set! (&gc-table-lock _%tab113833%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab113833%_) '0 '0 '1)
          _%$r113854%_)))
    (define gc-table-set!
      (lambda (_%tab113826%_ _%key113827%_ _%value113828%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key113827%_)
            (let ((_%gcht113831%_ (__gc-table-e _%tab113826%_)))
              (if (##gc-hash-table-set!
                   _%gcht113831%_
                   _%key113827%_
                   _%value113828%_)
                  (begin
                    (__gc-table-rehash! _%tab113826%_)
                    (gc-table-set!
                     _%tab113826%_
                     _%key113827%_
                     _%value113828%_))
                  '#!void))
            (immediate-table-set!
             (__gc-table-immediate _%tab113826%_)
             _%key113827%_
             _%value113828%_))))
    (define gc-table-set/lock!
      (lambda (_%tab113802%_ _%key113803%_ _%value113804%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again113808%_ ((_%spin113811%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab113802%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab113802%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin113811%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again113808%_ (##fx+ _%spin113811%_ '1)))
                    (let ((_%owner113817%_
                           (##vector-ref (&gc-table-lock _%tab113802%_) '1)))
                      (if (eq? _%owner113817%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner113817%_)
                              (let () (##thread-yield!) (_%again113808%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r113823%_
               (gc-table-set! _%tab113802%_ _%key113803%_ _%value113804%_)))
          (##vector-set! (&gc-table-lock _%tab113802%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab113802%_) '0 '0 '1)
          _%$r113823%_)))
    (define gc-table-update!
      (lambda (_%tab113795%_ _%key113796%_ _%update113797%_ _%default113798%_)
        (if (##mem-allocated? _%key113796%_)
            (let ((_%value113800%_
                   (gc-table-ref
                    _%tab113795%_
                    _%key113796%_
                    _%default113798%_)))
              (gc-table-set!
               _%tab113795%_
               _%key113796%_
               (_%update113797%_ _%value113800%_)))
            (immediate-table-update!
             (__gc-table-immediate _%tab113795%_)
             _%key113796%_
             _%update113797%_
             _%default113798%_))))
    (define gc-table-update!/lock
      (lambda (_%tab113770%_ _%key113771%_ _%update113772%_ _%default113773%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again113777%_ ((_%spin113780%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab113770%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab113770%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin113780%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again113777%_ (##fx+ _%spin113780%_ '1)))
                    (let ((_%owner113786%_
                           (##vector-ref (&gc-table-lock _%tab113770%_) '1)))
                      (if (eq? _%owner113786%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner113786%_)
                              (let () (##thread-yield!) (_%again113777%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r113792%_
               (gc-table-update!
                _%tab113770%_
                _%key113771%_
                _%update113772%_
                _%default113773%_)))
          (##vector-set! (&gc-table-lock _%tab113770%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab113770%_) '0 '0 '1)
          _%$r113792%_)))
    (define gc-table-delete!
      (lambda (_%tab113758%_ _%key113759%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key113759%_)
            (let ((_%gcht113763%_ (__gc-table-e _%tab113758%_)))
              (if (##gc-hash-table-set!
                   _%gcht113763%_
                   _%key113759%_
                   (macro-absent-obj))
                  (begin
                    (__gc-table-rehash! _%tab113758%_)
                    (gc-table-delete! _%tab113758%_ _%key113759%_))
                  '#!void))
            (let ((_%$e113765%_ (&gc-table-immediate _%tab113758%_)))
              (if _%$e113765%_
                  ((lambda (_%immediate113768%_)
                     (immediate-table-delete!
                      _%immediate113768%_
                      _%key113759%_))
                   _%$e113765%_)
                  '#!void)))))
    (define gc-table-delete!/lock
      (lambda (_%tab113735%_ _%key113736%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again113740%_ ((_%spin113743%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab113735%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab113735%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin113743%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again113740%_ (##fx+ _%spin113743%_ '1)))
                    (let ((_%owner113749%_
                           (##vector-ref (&gc-table-lock _%tab113735%_) '1)))
                      (if (eq? _%owner113749%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner113749%_)
                              (let () (##thread-yield!) (_%again113740%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r113755%_ (gc-table-delete! _%tab113735%_ _%key113736%_)))
          (##vector-set! (&gc-table-lock _%tab113735%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab113735%_) '0 '0 '1)
          _%$r113755%_)))
    (define gc-table-for-each
      (lambda (_%tab113724%_ _%proc113725%_)
        (declare (not interrupts-enabled))
        (begin
          (let ((_%gcht113728%_ (__gc-table-e _%tab113724%_)))
            (##gc-hash-table-for-each _%proc113725%_ _%gcht113728%_))
          (let ((_%$e113730%_ (&gc-table-immediate _%tab113724%_)))
            (if _%$e113730%_
                ((lambda (_%immediate113733%_)
                   (raw-table-for-each _%immediate113733%_ _%proc113725%_))
                 _%$e113730%_)
                '#!void)))))
    (define gc-table-for-each/lock
      (lambda (_%tab113701%_ _%proc113702%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again113706%_ ((_%spin113709%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab113701%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab113701%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin113709%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again113706%_ (##fx+ _%spin113709%_ '1)))
                    (let ((_%owner113715%_
                           (##vector-ref (&gc-table-lock _%tab113701%_) '1)))
                      (if (eq? _%owner113715%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner113715%_)
                              (let () (##thread-yield!) (_%again113706%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r113721%_ (gc-table-for-each _%tab113701%_ _%proc113702%_)))
          (##vector-set! (&gc-table-lock _%tab113701%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab113701%_) '0 '0 '1)
          _%$r113721%_)))
    (define gc-table-copy
      (lambda (_%tab113689%_)
        (let* ((_%gcht113691%_ (__gc-table-e _%tab113689%_))
               (_%new-table113693%_
                (__gc-table-new
                 (macro-gc-hash-table-count _%gcht113691%_)
                 (macro-gc-hash-table-flags _%gcht113691%_)))
               (_%result113695%_
                (##structure
                 (##structure-type _%tab113689%_)
                 _%new-table113693%_
                 '#f)))
          (gc-table-for-each
           _%tab113689%_
           (lambda (_%k113698%_ _%v113699%_)
             (gc-table-set! _%result113695%_ _%k113698%_ _%v113699%_)))
          _%result113695%_)))
    (define gc-table-copy/lock
      (lambda (_%tab113667%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again113671%_ ((_%spin113674%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab113667%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab113667%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin113674%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again113671%_ (##fx+ _%spin113674%_ '1)))
                    (let ((_%owner113680%_
                           (##vector-ref (&gc-table-lock _%tab113667%_) '1)))
                      (if (eq? _%owner113680%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner113680%_)
                              (let () (##thread-yield!) (_%again113671%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r113686%_ (gc-table-copy _%tab113667%_)))
          (##vector-set! (&gc-table-lock _%tab113667%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab113667%_) '0 '0 '1)
          _%$r113686%_)))
    (define gc-table-clear!
      (lambda (_%tab113660%_)
        (let* ((_%gcht113662%_ (__gc-table-e _%tab113660%_))
               (_%new-table113664%_
                (__gc-table-new
                 '16
                 (macro-gc-hash-table-flags _%gcht113662%_))))
          (&gc-table-gcht-set! _%tab113660%_ _%new-table113664%_)
          (&gc-table-immediate-set! _%tab113660%_ '#f))))
    (define gc-table-clear!/lock
      (lambda (_%tab113638%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again113642%_ ((_%spin113645%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab113638%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab113638%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin113645%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again113642%_ (##fx+ _%spin113645%_ '1)))
                    (let ((_%owner113651%_
                           (##vector-ref (&gc-table-lock _%tab113638%_) '1)))
                      (if (eq? _%owner113651%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner113651%_)
                              (let () (##thread-yield!) (_%again113642%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r113657%_ (gc-table-clear! _%tab113638%_)))
          (##vector-set! (&gc-table-lock _%tab113638%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab113638%_) '0 '0 '1)
          _%$r113657%_)))
    (define gc-table-length
      (lambda (_%tab113630%_)
        (let ((_%gcht113632%_ (__gc-table-e _%tab113630%_)))
          (fx+ (macro-gc-hash-table-count _%gcht113632%_)
               (let ((_%$e113634%_ (&gc-table-immediate _%tab113630%_)))
                 (if _%$e113634%_ (&raw-table-count _%$e113634%_) '0))))))
    (define gc-table-length/lock
      (lambda (_%tab113608%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again113612%_ ((_%spin113615%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab113608%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab113608%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin113615%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again113612%_ (##fx+ _%spin113615%_ '1)))
                    (let ((_%owner113621%_
                           (##vector-ref (&gc-table-lock _%tab113608%_) '1)))
                      (if (eq? _%owner113621%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner113621%_)
                              (let () (##thread-yield!) (_%again113612%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r113627%_ (gc-table-length _%tab113608%_)))
          (##vector-set! (&gc-table-lock _%tab113608%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab113608%_) '0 '0 '1)
          _%$r113627%_)))
    (define __object-eq-hash-lock (vector '0 '#f))
    (define __object-eq-hash-next '0)
    (define __object-eq-hash
      (make-gc-table__2
       '1024
       __gc-table::t
       (macro-gc-hash-table-flag-weak-keys)))
    (define __object->eq-hash
      (lambda (_%obj113578%_)
        (declare (not interrupts-enabled))
        (begin
          (let ()
            (declare (not interrupts-enabled))
            (let _%again113583%_ ((_%spin113586%_ '0))
              (if (##fx= (##vector-cas! __object-eq-hash-lock '0 '1 '0) '0)
                  (##vector-set! __object-eq-hash-lock '1 (current-thread))
                  (if (##fx< _%spin113586%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again113583%_ (##fx+ _%spin113586%_ '1)))
                      (let ((_%owner113592%_
                             (##vector-ref __object-eq-hash-lock '1)))
                        (if (eq? _%owner113592%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner113592%_)
                                (let () (##thread-yield!) (_%again113583%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r113605%_
                 (let ((_%val113598%_
                        (gc-table-ref __object-eq-hash _%obj113578%_ '#f)))
                   (if _%val113598%_
                       _%val113598%_
                       (let ((_%h113600%_
                              (fxand __object-eq-hash (macro-max-fixnum32))))
                         (set! __object-eq-hash-next
                               (let ((_%$e113602%_
                                      (##fx+? __object-eq-hash-next '1)))
                                 (if _%$e113602%_ _%$e113602%_ '0)))
                         (gc-table-set!
                          __object-eq-hash
                          _%obj113578%_
                          _%h113600%_)
                         _%h113600%_)))))
            (##vector-set! __object-eq-hash-lock '1 '#f)
            (##vector-cas! __object-eq-hash-lock '0 '0 '1)
            _%$r113605%_))))))
