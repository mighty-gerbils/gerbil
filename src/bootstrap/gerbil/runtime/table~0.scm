(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1770342545)
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
    (define &raw-table-table
      (lambda (_%tab115200%_)
        (##unchecked-structure-ref
         _%tab115200%_
         '1
         __table::t
         'raw-table-table)))
    (define &raw-table-count
      (lambda (_%tab115198%_)
        (##unchecked-structure-ref
         _%tab115198%_
         '2
         __table::t
         'raw-table-count)))
    (define &raw-table-free
      (lambda (_%tab115196%_)
        (##unchecked-structure-ref
         _%tab115196%_
         '3
         __table::t
         'raw-table-free)))
    (define &raw-table-hash
      (lambda (_%tab115194%_)
        (##unchecked-structure-ref
         _%tab115194%_
         '4
         __table::t
         'raw-table-hash)))
    (define &raw-table-test
      (lambda (_%tab115192%_)
        (##unchecked-structure-ref
         _%tab115192%_
         '5
         __table::t
         'raw-table-test)))
    (define &raw-table-seed
      (lambda (_%tab115190%_)
        (##unchecked-structure-ref
         _%tab115190%_
         '6
         __table::t
         'raw-table-seed)))
    (define &raw-table-lock
      (lambda (_%tab115188%_)
        (##unchecked-structure-ref
         _%tab115188%_
         '7
         __table::t
         'raw-table-lock)))
    (define &raw-table-table-set!
      (lambda (_%tab115185%_ _%val115186%_)
        (##unchecked-structure-set!
         _%tab115185%_
         _%val115186%_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_%tab115182%_ _%val115183%_)
        (##unchecked-structure-set!
         _%tab115182%_
         _%val115183%_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_%tab115179%_ _%val115180%_)
        (##unchecked-structure-set!
         _%tab115179%_
         _%val115180%_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_%tab115176%_ _%val115177%_)
        (##unchecked-structure-set!
         _%tab115176%_
         _%val115177%_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_%tab115173%_ _%val115174%_)
        (##unchecked-structure-set!
         _%tab115173%_
         _%val115174%_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_%tab115170%_ _%val115171%_)
        (##unchecked-structure-set!
         _%tab115170%_
         _%val115171%_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define &raw-table-lock-set!
      (lambda (_%tab115167%_ _%val115168%_)
        (##unchecked-structure-set!
         _%tab115167%_
         _%val115168%_
         '7
         __table::t
         'raw-table-lock-set!)))
    (define raw-table-size-hint->size
      (lambda (_%size-hint115165%_)
        (if (and (fixnum? _%size-hint115165%_) (##fx> _%size-hint115165%_ '0))
            (##fx* (fxmax '2 (expt '2 (integer-length _%size-hint115165%_)))
                   '4)
            '16)))
    (define make-raw-table__%
      (lambda (_%size-hint115130%_
               _%hash115131%_
               _%test115132%_
               _%seed115133%_
               _%lock115134%_)
        (let* ((_%size115136%_ (raw-table-size-hint->size _%size-hint115130%_))
               (_%table115138%_
                (##make-vector _%size115136%_ (macro-unused-obj))))
          (##structure
           __table::t
           _%table115138%_
           '0
           (##fxquotient _%size115136%_ '2)
           _%hash115131%_
           _%test115132%_
           _%seed115133%_
           _%lock115134%_))))
    (define make-raw-table__0
      (lambda (_%size-hint115144%_ _%hash115145%_ _%test115146%_)
        (let* ((_%seed115148%_ '0) (_%lock115150%_ '#f))
          (make-raw-table__%
           _%size-hint115144%_
           _%hash115145%_
           _%test115146%_
           _%seed115148%_
           _%lock115150%_))))
    (define make-raw-table__1
      (lambda (_%size-hint115152%_
               _%hash115153%_
               _%test115154%_
               _%seed115155%_)
        (let ((_%lock115157%_ '#f))
          (make-raw-table__%
           _%size-hint115152%_
           _%hash115153%_
           _%test115154%_
           _%seed115155%_
           _%lock115157%_))))
    (define make-raw-table
      (lambda _g115201_
        (let ((_g115202_ (##length _g115201_)))
          (cond ((##fx= _g115202_ 3) (apply make-raw-table__0 _g115201_))
                ((##fx= _g115202_ 4) (apply make-raw-table__1 _g115201_))
                ((##fx= _g115202_ 5) (apply make-raw-table__% _g115201_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g115201_))))))
    (define make-raw-table/lock__%
      (lambda (_%size-hint115110%_
               _%hash115111%_
               _%test115112%_
               _%seed115113%_)
        (make-raw-table__%
         _%size-hint115110%_
         _%hash115111%_
         _%test115112%_
         _%seed115113%_
         (vector '0 '#f))))
    (define make-raw-table/lock__0
      (lambda (_%size-hint115118%_ _%hash115119%_ _%test115120%_)
        (let ((_%seed115122%_ '0))
          (make-raw-table/lock__%
           _%size-hint115118%_
           _%hash115119%_
           _%test115120%_
           _%seed115122%_))))
    (define make-raw-table/lock
      (lambda _g115203_
        (let ((_g115204_ (##length _g115203_)))
          (cond ((##fx= _g115204_ 3) (apply make-raw-table/lock__0 _g115203_))
                ((##fx= _g115204_ 4) (apply make-raw-table/lock__% _g115203_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table/lock
                  _g115203_))))))
    (define raw-table-length
      (lambda (_%tab115107%_) (&raw-table-count _%tab115107%_)))
    (define raw-table-length/lock
      (lambda (_%tab115082%_)
        (let ((_%lock115084%_ (&raw-table-lock _%tab115082%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again115089%_ ((_%spin115092%_ '0))
              (if (##fx= (##vector-cas! _%lock115084%_ '0 '1 '0) '0)
                  (##vector-set! _%lock115084%_ '1 (current-thread))
                  (if (##fx< _%spin115092%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again115089%_ (##fx+ _%spin115092%_ '1)))
                      (let ((_%owner115098%_ (##vector-ref _%lock115084%_ '1)))
                        (if (eq? _%owner115098%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner115098%_)
                                (let () (##thread-yield!) (_%again115089%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r115104%_ (&raw-table-count _%tab115082%_)))
            (##vector-set! _%lock115084%_ '1 '#f)
            (##vector-cas! _%lock115084%_ '0 '0 '1)
            _%$r115104%_))))
    (define raw-table-ref
      (lambda (_%tab115034%_ _%key115035%_ _%default115036%_)
        (let ((_%table115038%_ (&raw-table-table _%tab115034%_))
              (_%seed115039%_ (&raw-table-seed _%tab115034%_))
              (_%hash115040%_ (&raw-table-hash _%tab115034%_))
              (_%test115041%_ (&raw-table-test _%tab115034%_)))
          (let* ((_%h115043%_
                  (fxxor (_%hash115040%_ _%key115035%_) _%seed115039%_))
                 (_%size115046%_ (vector-length _%table115038%_))
                 (_%entries115049%_ (##fxquotient _%size115046%_ '2))
                 (_%start115052%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h115043%_ _%entries115049%_)
                   '1)))
            (let _%loop115056%_ ((_%probe115059%_ _%start115052%_)
                                 (_%i115061%_ '1)
                                 (_%deleted115063%_ '#f))
              (let ((_%k115066%_ (vector-ref _%table115038%_ _%probe115059%_)))
                (if (eq? _%k115066%_ (macro-unused-obj))
                    _%default115036%_
                    (if (eq? _%k115066%_ (macro-deleted-obj))
                        (_%loop115056%_
                         (let ((_%next-probe115071%_
                                (fx+ _%start115052%_
                                     _%i115061%_
                                     (fx* _%i115061%_ _%i115061%_))))
                           (##fxmodulo _%next-probe115071%_ _%size115046%_))
                         (##fx+ _%i115061%_ '1)
                         (let ((_%$e115074%_ _%deleted115063%_))
                           (if _%$e115074%_ _%$e115074%_ _%probe115059%_)))
                        (if (_%test115041%_ _%key115035%_ _%k115066%_)
                            (vector-ref
                             _%table115038%_
                             (##fx+ _%probe115059%_ '1))
                            (_%loop115056%_
                             (let ((_%next-probe115079%_
                                    (fx+ _%start115052%_
                                         _%i115061%_
                                         (fx* _%i115061%_ _%i115061%_))))
                               (##fxmodulo
                                _%next-probe115079%_
                                _%size115046%_))
                             (##fx+ _%i115061%_ '1)
                             _%deleted115063%_))))))))))
    (define raw-table-ref/lock
      (lambda (_%tab115007%_ _%key115008%_ _%default115009%_)
        (let ((_%lock115011%_ (&raw-table-lock _%tab115007%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again115016%_ ((_%spin115019%_ '0))
              (if (##fx= (##vector-cas! _%lock115011%_ '0 '1 '0) '0)
                  (##vector-set! _%lock115011%_ '1 (current-thread))
                  (if (##fx< _%spin115019%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again115016%_ (##fx+ _%spin115019%_ '1)))
                      (let ((_%owner115025%_ (##vector-ref _%lock115011%_ '1)))
                        (if (eq? _%owner115025%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner115025%_)
                                (let () (##thread-yield!) (_%again115016%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r115031%_
                 (raw-table-ref
                  _%tab115007%_
                  _%key115008%_
                  _%default115009%_)))
            (##vector-set! _%lock115011%_ '1 '#f)
            (##vector-cas! _%lock115011%_ '0 '0 '1)
            _%$r115031%_))))
    (define raw-table-set!
      (lambda (_%tab115003%_ _%key115004%_ _%value115005%_)
        (if (##fx< (&raw-table-free _%tab115003%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab115003%_))
                    '4))
            (__raw-table-rehash! _%tab115003%_)
            '#!void)
        (__raw-table-set! _%tab115003%_ _%key115004%_ _%value115005%_)))
    (define raw-table-set!/lock
      (lambda (_%tab114976%_ _%key114977%_ _%value114978%_)
        (let ((_%lock114980%_ (&raw-table-lock _%tab114976%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again114985%_ ((_%spin114988%_ '0))
              (if (##fx= (##vector-cas! _%lock114980%_ '0 '1 '0) '0)
                  (##vector-set! _%lock114980%_ '1 (current-thread))
                  (if (##fx< _%spin114988%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again114985%_ (##fx+ _%spin114988%_ '1)))
                      (let ((_%owner114994%_ (##vector-ref _%lock114980%_ '1)))
                        (if (eq? _%owner114994%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner114994%_)
                                (let () (##thread-yield!) (_%again114985%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r115000%_
                 (raw-table-set! _%tab114976%_ _%key114977%_ _%value114978%_)))
            (##vector-set! _%lock114980%_ '1 '#f)
            (##vector-cas! _%lock114980%_ '0 '0 '1)
            _%$r115000%_))))
    (define raw-table-update!
      (lambda (_%tab114971%_ _%key114972%_ _%update114973%_ _%default114974%_)
        (if (##fx< (&raw-table-free _%tab114971%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab114971%_))
                    '4))
            (__raw-table-rehash! _%tab114971%_)
            '#!void)
        (__raw-table-update!
         _%tab114971%_
         _%key114972%_
         _%update114973%_
         _%default114974%_)))
    (define raw-table-update!/lock
      (lambda (_%tab114943%_ _%key114944%_ _%update114945%_ _%default114946%_)
        (let ((_%lock114948%_ (&raw-table-lock _%tab114943%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again114953%_ ((_%spin114956%_ '0))
              (if (##fx= (##vector-cas! _%lock114948%_ '0 '1 '0) '0)
                  (##vector-set! _%lock114948%_ '1 (current-thread))
                  (if (##fx< _%spin114956%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again114953%_ (##fx+ _%spin114956%_ '1)))
                      (let ((_%owner114962%_ (##vector-ref _%lock114948%_ '1)))
                        (if (eq? _%owner114962%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner114962%_)
                                (let () (##thread-yield!) (_%again114953%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r114968%_
                 (raw-table-update!
                  _%tab114943%_
                  _%key114944%_
                  _%update114945%_
                  _%default114946%_)))
            (##vector-set! _%lock114948%_ '1 '#f)
            (##vector-cas! _%lock114948%_ '0 '0 '1)
            _%$r114968%_))))
    (define raw-table-delete!
      (lambda (_%tab114900%_ _%key114901%_)
        (let ((_%table114903%_ (&raw-table-table _%tab114900%_))
              (_%seed114904%_ (&raw-table-seed _%tab114900%_))
              (_%hash114905%_ (&raw-table-hash _%tab114900%_))
              (_%test114906%_ (&raw-table-test _%tab114900%_)))
          (let* ((_%h114908%_
                  (fxxor (_%hash114905%_ _%key114901%_) _%seed114904%_))
                 (_%size114911%_ (vector-length _%table114903%_))
                 (_%entries114914%_ (##fxquotient _%size114911%_ '2))
                 (_%start114917%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h114908%_ _%entries114914%_)
                   '1)))
            (let _%loop114921%_ ((_%probe114924%_ _%start114917%_)
                                 (_%i114926%_ '1))
              (let ((_%k114929%_ (vector-ref _%table114903%_ _%probe114924%_)))
                (if (eq? _%k114929%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k114929%_ (macro-deleted-obj))
                        (_%loop114921%_
                         (let ((_%next-probe114934%_
                                (fx+ _%start114917%_
                                     _%i114926%_
                                     (fx* _%i114926%_ _%i114926%_))))
                           (##fxmodulo _%next-probe114934%_ _%size114911%_))
                         (##fx+ _%i114926%_ '1))
                        (if (_%test114906%_ _%key114901%_ _%k114929%_)
                            (let ()
                              (vector-set!
                               _%table114903%_
                               _%probe114924%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table114903%_
                               (##fx+ _%probe114924%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab114900%_
                                  (##fx- (&raw-table-count _%tab114900%_)
                                         '1)))))
                            (_%loop114921%_
                             (let ((_%next-probe114940%_
                                    (fx+ _%start114917%_
                                         _%i114926%_
                                         (fx* _%i114926%_ _%i114926%_))))
                               (##fxmodulo
                                _%next-probe114940%_
                                _%size114911%_))
                             (##fx+ _%i114926%_ '1)))))))))))
    (define raw-table-delete!/lock
      (lambda (_%tab114874%_ _%key114875%_)
        (let ((_%lock114877%_ (&raw-table-lock _%tab114874%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again114882%_ ((_%spin114885%_ '0))
              (if (##fx= (##vector-cas! _%lock114877%_ '0 '1 '0) '0)
                  (##vector-set! _%lock114877%_ '1 (current-thread))
                  (if (##fx< _%spin114885%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again114882%_ (##fx+ _%spin114885%_ '1)))
                      (let ((_%owner114891%_ (##vector-ref _%lock114877%_ '1)))
                        (if (eq? _%owner114891%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner114891%_)
                                (let () (##thread-yield!) (_%again114882%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r114897%_ (raw-table-delete! _%tab114874%_ _%key114875%_)))
            (##vector-set! _%lock114877%_ '1 '#f)
            (##vector-cas! _%lock114877%_ '0 '0 '1)
            _%$r114897%_))))
    (define raw-table-for-each
      (lambda (_%tab114858%_ _%proc114859%_)
        (let* ((_%table114861%_ (&raw-table-table _%tab114858%_))
               (_%size114863%_ (vector-length _%table114861%_)))
          (let _%loop114866%_ ((_%i114868%_ '0))
            (if (##fx< _%i114868%_ _%size114863%_)
                (begin
                  (let ((_%key114870%_
                         (vector-ref _%table114861%_ _%i114868%_)))
                    (if (if (eq? _%key114870%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key114870%_ (macro-deleted-obj))))
                        (let ((_%value114872%_
                               (vector-ref
                                _%table114861%_
                                (##fx+ _%i114868%_ '1))))
                          (_%proc114859%_ _%key114870%_ _%value114872%_))
                        '#!void))
                  (_%loop114866%_ (##fx+ _%i114868%_ '2)))
                '#!void)))))
    (define raw-table-for-each/lock
      (lambda (_%tab114832%_ _%proc114833%_)
        (let ((_%lock114835%_ (&raw-table-lock _%tab114832%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again114840%_ ((_%spin114843%_ '0))
              (if (##fx= (##vector-cas! _%lock114835%_ '0 '1 '0) '0)
                  (##vector-set! _%lock114835%_ '1 (current-thread))
                  (if (##fx< _%spin114843%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again114840%_ (##fx+ _%spin114843%_ '1)))
                      (let ((_%owner114849%_ (##vector-ref _%lock114835%_ '1)))
                        (if (eq? _%owner114849%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner114849%_)
                                (let () (##thread-yield!) (_%again114840%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r114855%_
                 (raw-table-for-each _%tab114832%_ _%proc114833%_)))
            (##vector-set! _%lock114835%_ '1 '#f)
            (##vector-cas! _%lock114835%_ '0 '0 '1)
            _%$r114855%_))))
    (define raw-table-copy
      (lambda (_%tab114828%_)
        (let ((_%new-tab114830%_ (##structure-copy _%tab114828%_)))
          (&raw-table-table-set!
           _%new-tab114830%_
           (vector-copy (&raw-table-table _%tab114828%_)))
          _%new-tab114830%_)))
    (define raw-table-copy/lock
      (lambda (_%tab114803%_)
        (let ((_%lock114805%_ (&raw-table-lock _%tab114803%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again114810%_ ((_%spin114813%_ '0))
              (if (##fx= (##vector-cas! _%lock114805%_ '0 '1 '0) '0)
                  (##vector-set! _%lock114805%_ '1 (current-thread))
                  (if (##fx< _%spin114813%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again114810%_ (##fx+ _%spin114813%_ '1)))
                      (let ((_%owner114819%_ (##vector-ref _%lock114805%_ '1)))
                        (if (eq? _%owner114819%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner114819%_)
                                (let () (##thread-yield!) (_%again114810%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r114825%_ (raw-table-copy _%tab114803%_)))
            (##vector-set! _%lock114805%_ '1 '#f)
            (##vector-cas! _%lock114805%_ '0 '0 '1)
            _%$r114825%_))))
    (define raw-table-clear!
      (lambda (_%tab114801%_)
        (vector-fill! (&raw-table-table _%tab114801%_) (macro-unused-obj))
        (&raw-table-count-set! _%tab114801%_ '0)
        (&raw-table-free-set!
         _%tab114801%_
         (##fxquotient (vector-length (&raw-table-table _%tab114801%_)) '2))))
    (define raw-table-clear!/lock
      (lambda (_%tab114776%_)
        (let ((_%lock114778%_ (&raw-table-lock _%tab114776%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again114783%_ ((_%spin114786%_ '0))
              (if (##fx= (##vector-cas! _%lock114778%_ '0 '1 '0) '0)
                  (##vector-set! _%lock114778%_ '1 (current-thread))
                  (if (##fx< _%spin114786%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again114783%_ (##fx+ _%spin114786%_ '1)))
                      (let ((_%owner114792%_ (##vector-ref _%lock114778%_ '1)))
                        (if (eq? _%owner114792%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner114792%_)
                                (let () (##thread-yield!) (_%again114783%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r114798%_ (raw-table-clear! _%tab114776%_)))
            (##vector-set! _%lock114778%_ '1 '#f)
            (##vector-cas! _%lock114778%_ '0 '0 '1)
            _%$r114798%_))))
    (define __raw-table-set!
      (lambda (_%tab114726%_ _%key114727%_ _%value114728%_)
        (let ((_%table114730%_ (&raw-table-table _%tab114726%_))
              (_%seed114731%_ (&raw-table-seed _%tab114726%_))
              (_%hash114732%_ (&raw-table-hash _%tab114726%_))
              (_%test114733%_ (&raw-table-test _%tab114726%_)))
          (let* ((_%h114735%_
                  (fxxor (_%hash114732%_ _%key114727%_) _%seed114731%_))
                 (_%size114738%_ (vector-length _%table114730%_))
                 (_%entries114741%_ (##fxquotient _%size114738%_ '2))
                 (_%start114744%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h114735%_ _%entries114741%_)
                   '1)))
            (let _%loop114748%_ ((_%probe114751%_ _%start114744%_)
                                 (_%i114753%_ '1)
                                 (_%deleted114755%_ '#f))
              (let ((_%k114758%_ (vector-ref _%table114730%_ _%probe114751%_)))
                (if (eq? _%k114758%_ (macro-unused-obj))
                    (if _%deleted114755%_
                        (begin
                          (vector-set!
                           _%table114730%_
                           _%deleted114755%_
                           _%key114727%_)
                          (vector-set!
                           _%table114730%_
                           (##fx+ _%deleted114755%_ '1)
                           _%value114728%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab114726%_
                              (##fx+ (&raw-table-count _%tab114726%_) '1)))))
                        (begin
                          (vector-set!
                           _%table114730%_
                           _%probe114751%_
                           _%key114727%_)
                          (vector-set!
                           _%table114730%_
                           (##fx+ _%probe114751%_ '1)
                           _%value114728%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab114726%_
                              (##fx- (&raw-table-free _%tab114726%_) '1))
                             (&raw-table-count-set!
                              _%tab114726%_
                              (##fx+ (&raw-table-count _%tab114726%_) '1))))))
                    (if (eq? _%k114758%_ (macro-deleted-obj))
                        (_%loop114748%_
                         (let ((_%next-probe114765%_
                                (fx+ _%start114744%_
                                     _%i114753%_
                                     (fx* _%i114753%_ _%i114753%_))))
                           (##fxmodulo _%next-probe114765%_ _%size114738%_))
                         (##fx+ _%i114753%_ '1)
                         (let ((_%$e114768%_ _%deleted114755%_))
                           (if _%$e114768%_ _%$e114768%_ _%probe114751%_)))
                        (if (_%test114733%_ _%key114727%_ _%k114758%_)
                            (let ()
                              (vector-set!
                               _%table114730%_
                               _%probe114751%_
                               _%key114727%_)
                              (vector-set!
                               _%table114730%_
                               (##fx+ _%probe114751%_ '1)
                               _%value114728%_))
                            (_%loop114748%_
                             (let ((_%next-probe114773%_
                                    (fx+ _%start114744%_
                                         _%i114753%_
                                         (fx* _%i114753%_ _%i114753%_))))
                               (##fxmodulo
                                _%next-probe114773%_
                                _%size114738%_))
                             (##fx+ _%i114753%_ '1)
                             _%deleted114755%_))))))))))
    (define __raw-table-update!
      (lambda (_%tab114675%_ _%key114676%_ _%update114677%_ _%default114678%_)
        (let ((_%table114680%_ (&raw-table-table _%tab114675%_))
              (_%seed114681%_ (&raw-table-seed _%tab114675%_))
              (_%hash114682%_ (&raw-table-hash _%tab114675%_))
              (_%test114683%_ (&raw-table-test _%tab114675%_)))
          (let* ((_%h114685%_
                  (fxxor (_%hash114682%_ _%key114676%_) _%seed114681%_))
                 (_%size114688%_ (vector-length _%table114680%_))
                 (_%entries114691%_ (##fxquotient _%size114688%_ '2))
                 (_%start114694%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h114685%_ _%entries114691%_)
                   '1)))
            (let _%loop114698%_ ((_%probe114701%_ _%start114694%_)
                                 (_%i114703%_ '1)
                                 (_%deleted114705%_ '#f))
              (let ((_%k114708%_ (vector-ref _%table114680%_ _%probe114701%_)))
                (if (eq? _%k114708%_ (macro-unused-obj))
                    (if _%deleted114705%_
                        (begin
                          (vector-set!
                           _%table114680%_
                           _%deleted114705%_
                           _%key114676%_)
                          (vector-set!
                           _%table114680%_
                           (##fx+ _%deleted114705%_ '1)
                           (_%update114677%_ _%default114678%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab114675%_
                              (##fx+ (&raw-table-count _%tab114675%_) '1)))))
                        (begin
                          (vector-set!
                           _%table114680%_
                           _%probe114701%_
                           _%key114676%_)
                          (vector-set!
                           _%table114680%_
                           (##fx+ _%probe114701%_ '1)
                           (_%update114677%_ _%default114678%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab114675%_
                              (##fx- (&raw-table-free _%tab114675%_) '1))
                             (&raw-table-count-set!
                              _%tab114675%_
                              (##fx+ (&raw-table-count _%tab114675%_) '1))))))
                    (if (eq? _%k114708%_ (macro-deleted-obj))
                        (_%loop114698%_
                         (let ((_%next-probe114715%_
                                (fx+ _%start114694%_
                                     _%i114703%_
                                     (fx* _%i114703%_ _%i114703%_))))
                           (##fxmodulo _%next-probe114715%_ _%size114688%_))
                         (##fx+ _%i114703%_ '1)
                         (let ((_%$e114718%_ _%deleted114705%_))
                           (if _%$e114718%_ _%$e114718%_ _%probe114701%_)))
                        (if (_%test114683%_ _%key114676%_ _%k114708%_)
                            (let ()
                              (vector-set!
                               _%table114680%_
                               _%probe114701%_
                               _%key114676%_)
                              (vector-set!
                               _%table114680%_
                               (##fx+ _%probe114701%_ '1)
                               (_%update114677%_
                                (vector-ref
                                 _%table114680%_
                                 (##fx+ _%probe114701%_ '1)))))
                            (_%loop114698%_
                             (let ((_%next-probe114723%_
                                    (fx+ _%start114694%_
                                         _%i114703%_
                                         (fx* _%i114703%_ _%i114703%_))))
                               (##fxmodulo
                                _%next-probe114723%_
                                _%size114688%_))
                             (##fx+ _%i114703%_ '1)
                             _%deleted114705%_))))))))))
    (define __raw-table-rehash!
      (lambda (_%tab114656%_)
        (let* ((_%old-table114658%_ (&raw-table-table _%tab114656%_))
               (_%old-size114660%_ (vector-length _%old-table114658%_))
               (_%new-size114662%_
                (if (##fx< (&raw-table-count _%tab114656%_)
                           (##fxquotient _%old-size114660%_ '4))
                    (vector-length _%old-table114658%_)
                    (##fx* '2 (vector-length _%old-table114658%_))))
               (_%new-table114664%_
                (##make-vector _%new-size114662%_ (macro-unused-obj))))
          (&raw-table-table-set! _%tab114656%_ _%new-table114664%_)
          (&raw-table-count-set! _%tab114656%_ '0)
          (&raw-table-free-set!
           _%tab114656%_
           (##fxquotient _%new-size114662%_ '2))
          (let _%lp114667%_ ((_%i114669%_ '0))
            (if (##fx< _%i114669%_ _%old-size114660%_)
                (begin
                  (let ((_%key114671%_
                         (vector-ref _%old-table114658%_ _%i114669%_)))
                    (if (if (eq? _%key114671%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key114671%_ (macro-deleted-obj))))
                        (let ((_%value114673%_
                               (vector-ref
                                _%old-table114658%_
                                (##fx+ _%i114669%_ '1))))
                          (__raw-table-set!
                           _%tab114656%_
                           _%key114671%_
                           _%value114673%_))
                        '#!void))
                  (_%lp114667%_ (##fx+ _%i114669%_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_%obj114648%_)
        (let ((_%t114650%_ (##type _%obj114648%_)))
          (if (##fx= (##fxand _%t114650%_ '1) '0)
              (fxand (##type-cast _%obj114648%_ (macro-type-fixnum))
                     (macro-max-fixnum32))
              (if (symbolic? _%obj114648%_)
                  (##symbol-hash _%obj114648%_)
                  (if (procedure? _%obj114648%_)
                      (procedure-hash _%obj114648%_)
                      (fxand (__eq-hash _%obj114648%_)
                             (macro-max-fixnum32))))))))
    (define procedure-hash
      (lambda (_%obj114644%_)
        (let ((_%h114646%_
               (if (##closure? _%obj114644%_)
                   (__eq-hash _%obj114644%_)
                   (##type-cast _%obj114644%_ '0))))
          (fxand _%h114646%_ (macro-max-fixnum32)))))
    (define __eq-hash
      (lambda (_%obj114641%_)
        (declare (not interrupts-enabled))
        (__object->eq-hash _%obj114641%_)))
    (define eqv-hash
      (lambda (_%obj114631%_)
        (letrec ((_%combine114633%_
                  (lambda (_%a114638%_ _%b114639%_)
                    (fxand (##fx* (##fx+ _%a114638%_
                                         (fxarithmetic-shift-left
                                          _%b114639%_
                                          '1))
                                  '331804471)
                           (macro-max-fixnum32))))
                 (_%hash114634%_
                  (lambda (_%obj114636%_)
                    (macro-number-dispatch
                     _%obj114636%_
                     (eq-hash _%obj114636%_)
                     (fxand _%obj114636%_ (macro-max-fixnum32))
                     (modulo _%obj114636%_ '331804481)
                     (_%combine114633%_
                      (_%hash114634%_ (macro-ratnum-numerator _%obj114636%_))
                      (_%hash114634%_
                       (macro-ratnum-denominator _%obj114636%_)))
                     (_%combine114633%_
                      (##u16vector-ref _%obj114636%_ '0)
                      (_%combine114633%_
                       (##u16vector-ref _%obj114636%_ '1)
                       (_%combine114633%_
                        (##u16vector-ref _%obj114636%_ '2)
                        (##u16vector-ref _%obj114636%_ '3))))
                     (_%combine114633%_
                      (_%hash114634%_ (macro-cpxnum-real _%obj114636%_))
                      (_%hash114634%_ (macro-cpxnum-imag _%obj114636%_)))))))
          (_%hash114634%_ _%obj114631%_))))
    (define symbolic?
      (lambda (_%obj114626%_)
        (let ((_%$e114628%_ (symbol? _%obj114626%_)))
          (if _%$e114628%_ _%$e114628%_ (keyword? _%obj114626%_)))))
    (define symbolic-hash
      (lambda (_%obj114624%_) (##symbol-hash _%obj114624%_)))
    (define string-hash
      (lambda (_%obj114622%_) (##string=?-hash _%obj114622%_)))
    (define immediate-hash
      (lambda (_%obj114620%_) (##type-cast _%obj114620%_ (macro-type-fixnum))))
    (define make-eq-table__%
      (lambda (_%size-hint114602%_ _%seed114603%_)
        (make-raw-table__1 _%size-hint114602%_ eq-hash eq? _%seed114603%_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_%size-hint114609%_ '#f) (_%seed114611%_ '0))
          (make-eq-table__% _%size-hint114609%_ _%seed114611%_))))
    (define make-eq-table__1
      (lambda (_%size-hint114613%_)
        (let ((_%seed114615%_ '0))
          (make-eq-table__% _%size-hint114613%_ _%seed114615%_))))
    (define make-eq-table
      (lambda _g115205_
        (let ((_g115206_ (##length _g115205_)))
          (cond ((##fx= _g115206_ 0) (apply make-eq-table__0 _g115205_))
                ((##fx= _g115206_ 1) (apply make-eq-table__1 _g115205_))
                ((##fx= _g115206_ 2) (apply make-eq-table__% _g115205_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g115205_))))))
    (define make-eq-table/lock__%
      (lambda (_%size-hint114582%_ _%seed114584%_)
        (make-raw-table/lock__%
         _%size-hint114582%_
         eq-hash
         eq?
         _%seed114584%_)))
    (define make-eq-table/lock__0
      (lambda ()
        (let* ((_%size-hint114590%_ '#f) (_%seed114592%_ '0))
          (make-eq-table/lock__% _%size-hint114590%_ _%seed114592%_))))
    (define make-eq-table/lock__1
      (lambda (_%size-hint114594%_)
        (let ((_%seed114596%_ '0))
          (make-eq-table/lock__% _%size-hint114594%_ _%seed114596%_))))
    (define make-eq-table/lock
      (lambda _g115207_
        (let ((_g115208_ (##length _g115207_)))
          (cond ((##fx= _g115208_ 0) (apply make-eq-table/lock__0 _g115207_))
                ((##fx= _g115208_ 1) (apply make-eq-table/lock__1 _g115207_))
                ((##fx= _g115208_ 2) (apply make-eq-table/lock__% _g115207_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table/lock
                  _g115207_))))))
    (define eq-table-ref
      (lambda (_%tab114535%_ _%key114536%_ _%default114537%_)
        (let ((_%table114539%_ (&raw-table-table _%tab114535%_))
              (_%seed114540%_ (&raw-table-seed _%tab114535%_)))
          (let* ((_%h114542%_ (fxxor (eq-hash _%key114536%_) _%seed114540%_))
                 (_%size114545%_ (vector-length _%table114539%_))
                 (_%entries114548%_ (##fxquotient _%size114545%_ '2))
                 (_%start114551%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h114542%_ _%entries114548%_)
                   '1)))
            (let _%loop114555%_ ((_%probe114558%_ _%start114551%_)
                                 (_%i114560%_ '1)
                                 (_%deleted114562%_ '#f))
              (let ((_%k114565%_ (vector-ref _%table114539%_ _%probe114558%_)))
                (if (eq? _%k114565%_ (macro-unused-obj))
                    _%default114537%_
                    (if (eq? _%k114565%_ (macro-deleted-obj))
                        (_%loop114555%_
                         (let ((_%next-probe114570%_
                                (fx+ _%start114551%_
                                     _%i114560%_
                                     (fx* _%i114560%_ _%i114560%_))))
                           (##fxmodulo _%next-probe114570%_ _%size114545%_))
                         (##fx+ _%i114560%_ '1)
                         (let ((_%$e114573%_ _%deleted114562%_))
                           (if _%$e114573%_ _%$e114573%_ _%probe114558%_)))
                        (if (eq? _%key114536%_ _%k114565%_)
                            (vector-ref
                             _%table114539%_
                             (##fx+ _%probe114558%_ '1))
                            (_%loop114555%_
                             (let ((_%next-probe114578%_
                                    (fx+ _%start114551%_
                                         _%i114560%_
                                         (fx* _%i114560%_ _%i114560%_))))
                               (##fxmodulo
                                _%next-probe114578%_
                                _%size114545%_))
                             (##fx+ _%i114560%_ '1)
                             _%deleted114562%_))))))))))
    (define eq-table-ref/lock
      (lambda (_%tab114508%_ _%key114509%_ _%default114510%_)
        (let ((_%lock114512%_ (&raw-table-lock _%tab114508%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again114517%_ ((_%spin114520%_ '0))
              (if (##fx= (##vector-cas! _%lock114512%_ '0 '1 '0) '0)
                  (##vector-set! _%lock114512%_ '1 (current-thread))
                  (if (##fx< _%spin114520%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again114517%_ (##fx+ _%spin114520%_ '1)))
                      (let ((_%owner114526%_ (##vector-ref _%lock114512%_ '1)))
                        (if (eq? _%owner114526%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner114526%_)
                                (let () (##thread-yield!) (_%again114517%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r114532%_
                 (eq-table-ref _%tab114508%_ _%key114509%_ _%default114510%_)))
            (##vector-set! _%lock114512%_ '1 '#f)
            (##vector-cas! _%lock114512%_ '0 '0 '1)
            _%$r114532%_))))
    (define __eq-table-set!
      (lambda (_%tab114460%_ _%key114461%_ _%value114462%_)
        (let ((_%table114464%_ (&raw-table-table _%tab114460%_))
              (_%seed114465%_ (&raw-table-seed _%tab114460%_)))
          (let* ((_%h114467%_ (fxxor (eq-hash _%key114461%_) _%seed114465%_))
                 (_%size114470%_ (vector-length _%table114464%_))
                 (_%entries114473%_ (##fxquotient _%size114470%_ '2))
                 (_%start114476%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h114467%_ _%entries114473%_)
                   '1)))
            (let _%loop114480%_ ((_%probe114483%_ _%start114476%_)
                                 (_%i114485%_ '1)
                                 (_%deleted114487%_ '#f))
              (let ((_%k114490%_ (vector-ref _%table114464%_ _%probe114483%_)))
                (if (eq? _%k114490%_ (macro-unused-obj))
                    (if _%deleted114487%_
                        (begin
                          (vector-set!
                           _%table114464%_
                           _%deleted114487%_
                           _%key114461%_)
                          (vector-set!
                           _%table114464%_
                           (##fx+ _%deleted114487%_ '1)
                           _%value114462%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab114460%_
                              (##fx+ (&raw-table-count _%tab114460%_) '1)))))
                        (begin
                          (vector-set!
                           _%table114464%_
                           _%probe114483%_
                           _%key114461%_)
                          (vector-set!
                           _%table114464%_
                           (##fx+ _%probe114483%_ '1)
                           _%value114462%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab114460%_
                              (##fx- (&raw-table-free _%tab114460%_) '1))
                             (&raw-table-count-set!
                              _%tab114460%_
                              (##fx+ (&raw-table-count _%tab114460%_) '1))))))
                    (if (eq? _%k114490%_ (macro-deleted-obj))
                        (_%loop114480%_
                         (let ((_%next-probe114497%_
                                (fx+ _%start114476%_
                                     _%i114485%_
                                     (fx* _%i114485%_ _%i114485%_))))
                           (##fxmodulo _%next-probe114497%_ _%size114470%_))
                         (##fx+ _%i114485%_ '1)
                         (let ((_%$e114500%_ _%deleted114487%_))
                           (if _%$e114500%_ _%$e114500%_ _%probe114483%_)))
                        (if (eq? _%key114461%_ _%k114490%_)
                            (let ()
                              (vector-set!
                               _%table114464%_
                               _%probe114483%_
                               _%key114461%_)
                              (vector-set!
                               _%table114464%_
                               (##fx+ _%probe114483%_ '1)
                               _%value114462%_))
                            (_%loop114480%_
                             (let ((_%next-probe114505%_
                                    (fx+ _%start114476%_
                                         _%i114485%_
                                         (fx* _%i114485%_ _%i114485%_))))
                               (##fxmodulo
                                _%next-probe114505%_
                                _%size114470%_))
                             (##fx+ _%i114485%_ '1)
                             _%deleted114487%_))))))))))
    (define eq-table-set!
      (lambda (_%tab114456%_ _%key114457%_ _%value114458%_)
        (if (##fx< (&raw-table-free _%tab114456%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab114456%_))
                    '4))
            (__raw-table-rehash! _%tab114456%_)
            '#!void)
        (__eq-table-set! _%tab114456%_ _%key114457%_ _%value114458%_)))
    (define eq-table-set!/lock
      (lambda (_%tab114428%_ _%key114429%_ _%value114430%_)
        (let ((_%lock114433%_ (&raw-table-lock _%tab114428%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again114438%_ ((_%spin114441%_ '0))
              (if (##fx= (##vector-cas! _%lock114433%_ '0 '1 '0) '0)
                  (##vector-set! _%lock114433%_ '1 (current-thread))
                  (if (##fx< _%spin114441%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again114438%_ (##fx+ _%spin114441%_ '1)))
                      (let ((_%owner114447%_ (##vector-ref _%lock114433%_ '1)))
                        (if (eq? _%owner114447%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner114447%_)
                                (let () (##thread-yield!) (_%again114438%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r114453%_
                 (eq-table-set! _%tab114428%_ _%key114429%_ _%value114430%_)))
            (##vector-set! _%lock114433%_ '1 '#f)
            (##vector-cas! _%lock114433%_ '0 '0 '1)
            _%$r114453%_))))
    (define __eq-table-update!
      (lambda (_%tab114379%_
               _%key114380%_
               _%eq-table-update!114381%_
               _%default114382%_)
        (let ((_%table114384%_ (&raw-table-table _%tab114379%_))
              (_%seed114385%_ (&raw-table-seed _%tab114379%_)))
          (let* ((_%h114387%_ (fxxor (eq-hash _%key114380%_) _%seed114385%_))
                 (_%size114390%_ (vector-length _%table114384%_))
                 (_%entries114393%_ (##fxquotient _%size114390%_ '2))
                 (_%start114396%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h114387%_ _%entries114393%_)
                   '1)))
            (let _%loop114400%_ ((_%probe114403%_ _%start114396%_)
                                 (_%i114405%_ '1)
                                 (_%deleted114407%_ '#f))
              (let ((_%k114410%_ (vector-ref _%table114384%_ _%probe114403%_)))
                (if (eq? _%k114410%_ (macro-unused-obj))
                    (if _%deleted114407%_
                        (begin
                          (vector-set!
                           _%table114384%_
                           _%deleted114407%_
                           _%key114380%_)
                          (vector-set!
                           _%table114384%_
                           (##fx+ _%deleted114407%_ '1)
                           (_%eq-table-update!114381%_ _%default114382%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab114379%_
                              (##fx+ (&raw-table-count _%tab114379%_) '1)))))
                        (begin
                          (vector-set!
                           _%table114384%_
                           _%probe114403%_
                           _%key114380%_)
                          (vector-set!
                           _%table114384%_
                           (##fx+ _%probe114403%_ '1)
                           (_%eq-table-update!114381%_ _%default114382%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab114379%_
                              (##fx- (&raw-table-free _%tab114379%_) '1))
                             (&raw-table-count-set!
                              _%tab114379%_
                              (##fx+ (&raw-table-count _%tab114379%_) '1))))))
                    (if (eq? _%k114410%_ (macro-deleted-obj))
                        (_%loop114400%_
                         (let ((_%next-probe114417%_
                                (fx+ _%start114396%_
                                     _%i114405%_
                                     (fx* _%i114405%_ _%i114405%_))))
                           (##fxmodulo _%next-probe114417%_ _%size114390%_))
                         (##fx+ _%i114405%_ '1)
                         (let ((_%$e114420%_ _%deleted114407%_))
                           (if _%$e114420%_ _%$e114420%_ _%probe114403%_)))
                        (if (eq? _%key114380%_ _%k114410%_)
                            (let ()
                              (vector-set!
                               _%table114384%_
                               _%probe114403%_
                               _%key114380%_)
                              (vector-set!
                               _%table114384%_
                               (##fx+ _%probe114403%_ '1)
                               (_%eq-table-update!114381%_
                                (vector-ref
                                 _%table114384%_
                                 (##fx+ _%probe114403%_ '1)))))
                            (_%loop114400%_
                             (let ((_%next-probe114425%_
                                    (fx+ _%start114396%_
                                         _%i114405%_
                                         (fx* _%i114405%_ _%i114405%_))))
                               (##fxmodulo
                                _%next-probe114425%_
                                _%size114390%_))
                             (##fx+ _%i114405%_ '1)
                             _%deleted114407%_))))))))))
    (define eq-table-update!
      (lambda (_%tab114374%_
               _%key114375%_
               _%eq-table-update!114376%_
               _%default114377%_)
        (if (##fx< (&raw-table-free _%tab114374%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab114374%_))
                    '4))
            (__raw-table-rehash! _%tab114374%_)
            '#!void)
        (__eq-table-update!
         _%tab114374%_
         _%key114375%_
         _%eq-table-update!114376%_
         _%default114377%_)))
    (define eq-table-update!/lock
      (lambda (_%tab114345%_
               _%key114346%_
               _%eq-table-update!114347%_
               _%default114348%_)
        (let ((_%lock114351%_ (&raw-table-lock _%tab114345%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again114356%_ ((_%spin114359%_ '0))
              (if (##fx= (##vector-cas! _%lock114351%_ '0 '1 '0) '0)
                  (##vector-set! _%lock114351%_ '1 (current-thread))
                  (if (##fx< _%spin114359%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again114356%_ (##fx+ _%spin114359%_ '1)))
                      (let ((_%owner114365%_ (##vector-ref _%lock114351%_ '1)))
                        (if (eq? _%owner114365%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner114365%_)
                                (let () (##thread-yield!) (_%again114356%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r114371%_
                 (_%eq-table-update!114347%_
                  _%tab114345%_
                  _%key114346%_
                  _%eq-table-update!114347%_
                  _%default114348%_)))
            (##vector-set! _%lock114351%_ '1 '#f)
            (##vector-cas! _%lock114351%_ '0 '0 '1)
            _%$r114371%_))))
    (define eq-table-delete!
      (lambda (_%tab114302%_ _%key114303%_)
        (let ((_%table114305%_ (&raw-table-table _%tab114302%_))
              (_%seed114307%_ (&raw-table-seed _%tab114302%_)))
          (let* ((_%h114310%_ (fxxor (eq-hash _%key114303%_) _%seed114307%_))
                 (_%size114313%_ (vector-length _%table114305%_))
                 (_%entries114316%_ (##fxquotient _%size114313%_ '2))
                 (_%start114319%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h114310%_ _%entries114316%_)
                   '1)))
            (let _%loop114323%_ ((_%probe114326%_ _%start114319%_)
                                 (_%i114328%_ '1))
              (let ((_%k114331%_ (vector-ref _%table114305%_ _%probe114326%_)))
                (if (eq? _%k114331%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k114331%_ (macro-deleted-obj))
                        (_%loop114323%_
                         (let ((_%next-probe114336%_
                                (fx+ _%start114319%_
                                     _%i114328%_
                                     (fx* _%i114328%_ _%i114328%_))))
                           (##fxmodulo _%next-probe114336%_ _%size114313%_))
                         (##fx+ _%i114328%_ '1))
                        (if (eq? _%key114303%_ _%k114331%_)
                            (let ()
                              (vector-set!
                               _%table114305%_
                               _%probe114326%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table114305%_
                               (##fx+ _%probe114326%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab114302%_
                                  (##fx- (&raw-table-count _%tab114302%_)
                                         '1)))))
                            (_%loop114323%_
                             (let ((_%next-probe114342%_
                                    (fx+ _%start114319%_
                                         _%i114328%_
                                         (fx* _%i114328%_ _%i114328%_))))
                               (##fxmodulo
                                _%next-probe114342%_
                                _%size114313%_))
                             (##fx+ _%i114328%_ '1)))))))))))
    (define eq-table-delete!/lock
      (lambda (_%tab114274%_ _%key114276%_)
        (let ((_%lock114279%_ (&raw-table-lock _%tab114274%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again114284%_ ((_%spin114287%_ '0))
              (if (##fx= (##vector-cas! _%lock114279%_ '0 '1 '0) '0)
                  (##vector-set! _%lock114279%_ '1 (current-thread))
                  (if (##fx< _%spin114287%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again114284%_ (##fx+ _%spin114287%_ '1)))
                      (let ((_%owner114293%_ (##vector-ref _%lock114279%_ '1)))
                        (if (eq? _%owner114293%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner114293%_)
                                (let () (##thread-yield!) (_%again114284%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r114299%_ (eq-table-delete! _%tab114274%_ _%key114276%_)))
            (##vector-set! _%lock114279%_ '1 '#f)
            (##vector-cas! _%lock114279%_ '0 '0 '1)
            _%$r114299%_))))
    (define make-eqv-table__%
      (lambda (_%size-hint114256%_ _%seed114257%_)
        (make-raw-table__1 _%size-hint114256%_ eqv-hash eqv? _%seed114257%_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_%size-hint114263%_ '#f) (_%seed114265%_ '0))
          (make-eqv-table__% _%size-hint114263%_ _%seed114265%_))))
    (define make-eqv-table__1
      (lambda (_%size-hint114267%_)
        (let ((_%seed114269%_ '0))
          (make-eqv-table__% _%size-hint114267%_ _%seed114269%_))))
    (define make-eqv-table
      (lambda _g115209_
        (let ((_g115210_ (##length _g115209_)))
          (cond ((##fx= _g115210_ 0) (apply make-eqv-table__0 _g115209_))
                ((##fx= _g115210_ 1) (apply make-eqv-table__1 _g115209_))
                ((##fx= _g115210_ 2) (apply make-eqv-table__% _g115209_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g115209_))))))
    (define make-eqv-table/lock__%
      (lambda (_%size-hint114236%_ _%seed114238%_)
        (make-raw-table/lock__%
         _%size-hint114236%_
         eqv-hash
         eqv?
         _%seed114238%_)))
    (define make-eqv-table/lock__0
      (lambda ()
        (let* ((_%size-hint114244%_ '#f) (_%seed114246%_ '0))
          (make-eqv-table/lock__% _%size-hint114244%_ _%seed114246%_))))
    (define make-eqv-table/lock__1
      (lambda (_%size-hint114248%_)
        (let ((_%seed114250%_ '0))
          (make-eqv-table/lock__% _%size-hint114248%_ _%seed114250%_))))
    (define make-eqv-table/lock
      (lambda _g115211_
        (let ((_g115212_ (##length _g115211_)))
          (cond ((##fx= _g115212_ 0) (apply make-eqv-table/lock__0 _g115211_))
                ((##fx= _g115212_ 1) (apply make-eqv-table/lock__1 _g115211_))
                ((##fx= _g115212_ 2) (apply make-eqv-table/lock__% _g115211_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table/lock
                  _g115211_))))))
    (define eqv-table-ref
      (lambda (_%tab114189%_ _%key114190%_ _%default114191%_)
        (let ((_%table114193%_ (&raw-table-table _%tab114189%_))
              (_%seed114194%_ (&raw-table-seed _%tab114189%_)))
          (let* ((_%h114196%_ (fxxor (eqv-hash _%key114190%_) _%seed114194%_))
                 (_%size114199%_ (vector-length _%table114193%_))
                 (_%entries114202%_ (##fxquotient _%size114199%_ '2))
                 (_%start114205%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h114196%_ _%entries114202%_)
                   '1)))
            (let _%loop114209%_ ((_%probe114212%_ _%start114205%_)
                                 (_%i114214%_ '1)
                                 (_%deleted114216%_ '#f))
              (let ((_%k114219%_ (vector-ref _%table114193%_ _%probe114212%_)))
                (if (eq? _%k114219%_ (macro-unused-obj))
                    _%default114191%_
                    (if (eq? _%k114219%_ (macro-deleted-obj))
                        (_%loop114209%_
                         (let ((_%next-probe114224%_
                                (fx+ _%start114205%_
                                     _%i114214%_
                                     (fx* _%i114214%_ _%i114214%_))))
                           (##fxmodulo _%next-probe114224%_ _%size114199%_))
                         (##fx+ _%i114214%_ '1)
                         (let ((_%$e114227%_ _%deleted114216%_))
                           (if _%$e114227%_ _%$e114227%_ _%probe114212%_)))
                        (if (eqv? _%key114190%_ _%k114219%_)
                            (vector-ref
                             _%table114193%_
                             (##fx+ _%probe114212%_ '1))
                            (_%loop114209%_
                             (let ((_%next-probe114232%_
                                    (fx+ _%start114205%_
                                         _%i114214%_
                                         (fx* _%i114214%_ _%i114214%_))))
                               (##fxmodulo
                                _%next-probe114232%_
                                _%size114199%_))
                             (##fx+ _%i114214%_ '1)
                             _%deleted114216%_))))))))))
    (define eqv-table-ref/lock
      (lambda (_%tab114162%_ _%key114163%_ _%default114164%_)
        (let ((_%lock114166%_ (&raw-table-lock _%tab114162%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again114171%_ ((_%spin114174%_ '0))
              (if (##fx= (##vector-cas! _%lock114166%_ '0 '1 '0) '0)
                  (##vector-set! _%lock114166%_ '1 (current-thread))
                  (if (##fx< _%spin114174%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again114171%_ (##fx+ _%spin114174%_ '1)))
                      (let ((_%owner114180%_ (##vector-ref _%lock114166%_ '1)))
                        (if (eq? _%owner114180%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner114180%_)
                                (let () (##thread-yield!) (_%again114171%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r114186%_
                 (eqv-table-ref
                  _%tab114162%_
                  _%key114163%_
                  _%default114164%_)))
            (##vector-set! _%lock114166%_ '1 '#f)
            (##vector-cas! _%lock114166%_ '0 '0 '1)
            _%$r114186%_))))
    (define __eqv-table-set!
      (lambda (_%tab114114%_ _%key114115%_ _%value114116%_)
        (let ((_%table114118%_ (&raw-table-table _%tab114114%_))
              (_%seed114119%_ (&raw-table-seed _%tab114114%_)))
          (let* ((_%h114121%_ (fxxor (eqv-hash _%key114115%_) _%seed114119%_))
                 (_%size114124%_ (vector-length _%table114118%_))
                 (_%entries114127%_ (##fxquotient _%size114124%_ '2))
                 (_%start114130%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h114121%_ _%entries114127%_)
                   '1)))
            (let _%loop114134%_ ((_%probe114137%_ _%start114130%_)
                                 (_%i114139%_ '1)
                                 (_%deleted114141%_ '#f))
              (let ((_%k114144%_ (vector-ref _%table114118%_ _%probe114137%_)))
                (if (eq? _%k114144%_ (macro-unused-obj))
                    (if _%deleted114141%_
                        (begin
                          (vector-set!
                           _%table114118%_
                           _%deleted114141%_
                           _%key114115%_)
                          (vector-set!
                           _%table114118%_
                           (##fx+ _%deleted114141%_ '1)
                           _%value114116%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab114114%_
                              (##fx+ (&raw-table-count _%tab114114%_) '1)))))
                        (begin
                          (vector-set!
                           _%table114118%_
                           _%probe114137%_
                           _%key114115%_)
                          (vector-set!
                           _%table114118%_
                           (##fx+ _%probe114137%_ '1)
                           _%value114116%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab114114%_
                              (##fx- (&raw-table-free _%tab114114%_) '1))
                             (&raw-table-count-set!
                              _%tab114114%_
                              (##fx+ (&raw-table-count _%tab114114%_) '1))))))
                    (if (eq? _%k114144%_ (macro-deleted-obj))
                        (_%loop114134%_
                         (let ((_%next-probe114151%_
                                (fx+ _%start114130%_
                                     _%i114139%_
                                     (fx* _%i114139%_ _%i114139%_))))
                           (##fxmodulo _%next-probe114151%_ _%size114124%_))
                         (##fx+ _%i114139%_ '1)
                         (let ((_%$e114154%_ _%deleted114141%_))
                           (if _%$e114154%_ _%$e114154%_ _%probe114137%_)))
                        (if (eqv? _%key114115%_ _%k114144%_)
                            (let ()
                              (vector-set!
                               _%table114118%_
                               _%probe114137%_
                               _%key114115%_)
                              (vector-set!
                               _%table114118%_
                               (##fx+ _%probe114137%_ '1)
                               _%value114116%_))
                            (_%loop114134%_
                             (let ((_%next-probe114159%_
                                    (fx+ _%start114130%_
                                         _%i114139%_
                                         (fx* _%i114139%_ _%i114139%_))))
                               (##fxmodulo
                                _%next-probe114159%_
                                _%size114124%_))
                             (##fx+ _%i114139%_ '1)
                             _%deleted114141%_))))))))))
    (define eqv-table-set!
      (lambda (_%tab114110%_ _%key114111%_ _%value114112%_)
        (if (##fx< (&raw-table-free _%tab114110%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab114110%_))
                    '4))
            (__raw-table-rehash! _%tab114110%_)
            '#!void)
        (__eqv-table-set! _%tab114110%_ _%key114111%_ _%value114112%_)))
    (define eqv-table-set!/lock
      (lambda (_%tab114082%_ _%key114083%_ _%value114084%_)
        (let ((_%lock114087%_ (&raw-table-lock _%tab114082%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again114092%_ ((_%spin114095%_ '0))
              (if (##fx= (##vector-cas! _%lock114087%_ '0 '1 '0) '0)
                  (##vector-set! _%lock114087%_ '1 (current-thread))
                  (if (##fx< _%spin114095%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again114092%_ (##fx+ _%spin114095%_ '1)))
                      (let ((_%owner114101%_ (##vector-ref _%lock114087%_ '1)))
                        (if (eq? _%owner114101%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner114101%_)
                                (let () (##thread-yield!) (_%again114092%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r114107%_
                 (eqv-table-set! _%tab114082%_ _%key114083%_ _%value114084%_)))
            (##vector-set! _%lock114087%_ '1 '#f)
            (##vector-cas! _%lock114087%_ '0 '0 '1)
            _%$r114107%_))))
    (define __eqv-table-update!
      (lambda (_%tab114033%_
               _%key114034%_
               _%eqv-table-update!114035%_
               _%default114036%_)
        (let ((_%table114038%_ (&raw-table-table _%tab114033%_))
              (_%seed114039%_ (&raw-table-seed _%tab114033%_)))
          (let* ((_%h114041%_ (fxxor (eqv-hash _%key114034%_) _%seed114039%_))
                 (_%size114044%_ (vector-length _%table114038%_))
                 (_%entries114047%_ (##fxquotient _%size114044%_ '2))
                 (_%start114050%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h114041%_ _%entries114047%_)
                   '1)))
            (let _%loop114054%_ ((_%probe114057%_ _%start114050%_)
                                 (_%i114059%_ '1)
                                 (_%deleted114061%_ '#f))
              (let ((_%k114064%_ (vector-ref _%table114038%_ _%probe114057%_)))
                (if (eq? _%k114064%_ (macro-unused-obj))
                    (if _%deleted114061%_
                        (begin
                          (vector-set!
                           _%table114038%_
                           _%deleted114061%_
                           _%key114034%_)
                          (vector-set!
                           _%table114038%_
                           (##fx+ _%deleted114061%_ '1)
                           (_%eqv-table-update!114035%_ _%default114036%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab114033%_
                              (##fx+ (&raw-table-count _%tab114033%_) '1)))))
                        (begin
                          (vector-set!
                           _%table114038%_
                           _%probe114057%_
                           _%key114034%_)
                          (vector-set!
                           _%table114038%_
                           (##fx+ _%probe114057%_ '1)
                           (_%eqv-table-update!114035%_ _%default114036%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab114033%_
                              (##fx- (&raw-table-free _%tab114033%_) '1))
                             (&raw-table-count-set!
                              _%tab114033%_
                              (##fx+ (&raw-table-count _%tab114033%_) '1))))))
                    (if (eq? _%k114064%_ (macro-deleted-obj))
                        (_%loop114054%_
                         (let ((_%next-probe114071%_
                                (fx+ _%start114050%_
                                     _%i114059%_
                                     (fx* _%i114059%_ _%i114059%_))))
                           (##fxmodulo _%next-probe114071%_ _%size114044%_))
                         (##fx+ _%i114059%_ '1)
                         (let ((_%$e114074%_ _%deleted114061%_))
                           (if _%$e114074%_ _%$e114074%_ _%probe114057%_)))
                        (if (eqv? _%key114034%_ _%k114064%_)
                            (let ()
                              (vector-set!
                               _%table114038%_
                               _%probe114057%_
                               _%key114034%_)
                              (vector-set!
                               _%table114038%_
                               (##fx+ _%probe114057%_ '1)
                               (_%eqv-table-update!114035%_
                                (vector-ref
                                 _%table114038%_
                                 (##fx+ _%probe114057%_ '1)))))
                            (_%loop114054%_
                             (let ((_%next-probe114079%_
                                    (fx+ _%start114050%_
                                         _%i114059%_
                                         (fx* _%i114059%_ _%i114059%_))))
                               (##fxmodulo
                                _%next-probe114079%_
                                _%size114044%_))
                             (##fx+ _%i114059%_ '1)
                             _%deleted114061%_))))))))))
    (define eqv-table-update!
      (lambda (_%tab114028%_
               _%key114029%_
               _%eqv-table-update!114030%_
               _%default114031%_)
        (if (##fx< (&raw-table-free _%tab114028%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab114028%_))
                    '4))
            (__raw-table-rehash! _%tab114028%_)
            '#!void)
        (__eqv-table-update!
         _%tab114028%_
         _%key114029%_
         _%eqv-table-update!114030%_
         _%default114031%_)))
    (define eqv-table-update!/lock
      (lambda (_%tab113999%_
               _%key114000%_
               _%eqv-table-update!114001%_
               _%default114002%_)
        (let ((_%lock114005%_ (&raw-table-lock _%tab113999%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again114010%_ ((_%spin114013%_ '0))
              (if (##fx= (##vector-cas! _%lock114005%_ '0 '1 '0) '0)
                  (##vector-set! _%lock114005%_ '1 (current-thread))
                  (if (##fx< _%spin114013%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again114010%_ (##fx+ _%spin114013%_ '1)))
                      (let ((_%owner114019%_ (##vector-ref _%lock114005%_ '1)))
                        (if (eq? _%owner114019%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner114019%_)
                                (let () (##thread-yield!) (_%again114010%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r114025%_
                 (_%eqv-table-update!114001%_
                  _%tab113999%_
                  _%key114000%_
                  _%eqv-table-update!114001%_
                  _%default114002%_)))
            (##vector-set! _%lock114005%_ '1 '#f)
            (##vector-cas! _%lock114005%_ '0 '0 '1)
            _%$r114025%_))))
    (define eqv-table-delete!
      (lambda (_%tab113956%_ _%key113957%_)
        (let ((_%table113959%_ (&raw-table-table _%tab113956%_))
              (_%seed113961%_ (&raw-table-seed _%tab113956%_)))
          (let* ((_%h113964%_ (fxxor (eqv-hash _%key113957%_) _%seed113961%_))
                 (_%size113967%_ (vector-length _%table113959%_))
                 (_%entries113970%_ (##fxquotient _%size113967%_ '2))
                 (_%start113973%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h113964%_ _%entries113970%_)
                   '1)))
            (let _%loop113977%_ ((_%probe113980%_ _%start113973%_)
                                 (_%i113982%_ '1))
              (let ((_%k113985%_ (vector-ref _%table113959%_ _%probe113980%_)))
                (if (eq? _%k113985%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k113985%_ (macro-deleted-obj))
                        (_%loop113977%_
                         (let ((_%next-probe113990%_
                                (fx+ _%start113973%_
                                     _%i113982%_
                                     (fx* _%i113982%_ _%i113982%_))))
                           (##fxmodulo _%next-probe113990%_ _%size113967%_))
                         (##fx+ _%i113982%_ '1))
                        (if (eqv? _%key113957%_ _%k113985%_)
                            (let ()
                              (vector-set!
                               _%table113959%_
                               _%probe113980%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table113959%_
                               (##fx+ _%probe113980%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab113956%_
                                  (##fx- (&raw-table-count _%tab113956%_)
                                         '1)))))
                            (_%loop113977%_
                             (let ((_%next-probe113996%_
                                    (fx+ _%start113973%_
                                         _%i113982%_
                                         (fx* _%i113982%_ _%i113982%_))))
                               (##fxmodulo
                                _%next-probe113996%_
                                _%size113967%_))
                             (##fx+ _%i113982%_ '1)))))))))))
    (define eqv-table-delete!/lock
      (lambda (_%tab113928%_ _%key113930%_)
        (let ((_%lock113933%_ (&raw-table-lock _%tab113928%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again113938%_ ((_%spin113941%_ '0))
              (if (##fx= (##vector-cas! _%lock113933%_ '0 '1 '0) '0)
                  (##vector-set! _%lock113933%_ '1 (current-thread))
                  (if (##fx< _%spin113941%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again113938%_ (##fx+ _%spin113941%_ '1)))
                      (let ((_%owner113947%_ (##vector-ref _%lock113933%_ '1)))
                        (if (eq? _%owner113947%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner113947%_)
                                (let () (##thread-yield!) (_%again113938%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r113953%_ (eqv-table-delete! _%tab113928%_ _%key113930%_)))
            (##vector-set! _%lock113933%_ '1 '#f)
            (##vector-cas! _%lock113933%_ '0 '0 '1)
            _%$r113953%_))))
    (define make-symbolic-table__%
      (lambda (_%size-hint113910%_ _%seed113911%_)
        (make-raw-table__1
         _%size-hint113910%_
         symbolic-hash
         eq?
         _%seed113911%_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_%size-hint113917%_ '#f) (_%seed113919%_ '0))
          (make-symbolic-table__% _%size-hint113917%_ _%seed113919%_))))
    (define make-symbolic-table__1
      (lambda (_%size-hint113921%_)
        (let ((_%seed113923%_ '0))
          (make-symbolic-table__% _%size-hint113921%_ _%seed113923%_))))
    (define make-symbolic-table
      (lambda _g115213_
        (let ((_g115214_ (##length _g115213_)))
          (cond ((##fx= _g115214_ 0) (apply make-symbolic-table__0 _g115213_))
                ((##fx= _g115214_ 1) (apply make-symbolic-table__1 _g115213_))
                ((##fx= _g115214_ 2) (apply make-symbolic-table__% _g115213_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g115213_))))))
    (define make-symbolic-table/lock__%
      (lambda (_%size-hint113890%_ _%seed113892%_)
        (make-raw-table/lock__%
         _%size-hint113890%_
         symbolic-hash
         eq?
         _%seed113892%_)))
    (define make-symbolic-table/lock__0
      (lambda ()
        (let* ((_%size-hint113898%_ '#f) (_%seed113900%_ '0))
          (make-symbolic-table/lock__% _%size-hint113898%_ _%seed113900%_))))
    (define make-symbolic-table/lock__1
      (lambda (_%size-hint113902%_)
        (let ((_%seed113904%_ '0))
          (make-symbolic-table/lock__% _%size-hint113902%_ _%seed113904%_))))
    (define make-symbolic-table/lock
      (lambda _g115215_
        (let ((_g115216_ (##length _g115215_)))
          (cond ((##fx= _g115216_ 0)
                 (apply make-symbolic-table/lock__0 _g115215_))
                ((##fx= _g115216_ 1)
                 (apply make-symbolic-table/lock__1 _g115215_))
                ((##fx= _g115216_ 2)
                 (apply make-symbolic-table/lock__% _g115215_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table/lock
                  _g115215_))))))
    (define symbolic-table-ref
      (lambda (_%tab113843%_ _%key113844%_ _%default113845%_)
        (let ((_%table113847%_ (&raw-table-table _%tab113843%_))
              (_%seed113848%_ (&raw-table-seed _%tab113843%_)))
          (let* ((_%h113850%_
                  (fxxor (##symbol-hash _%key113844%_) _%seed113848%_))
                 (_%size113853%_ (vector-length _%table113847%_))
                 (_%entries113856%_ (##fxquotient _%size113853%_ '2))
                 (_%start113859%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h113850%_ _%entries113856%_)
                   '1)))
            (let _%loop113863%_ ((_%probe113866%_ _%start113859%_)
                                 (_%i113868%_ '1)
                                 (_%deleted113870%_ '#f))
              (let ((_%k113873%_ (vector-ref _%table113847%_ _%probe113866%_)))
                (if (eq? _%k113873%_ (macro-unused-obj))
                    _%default113845%_
                    (if (eq? _%k113873%_ (macro-deleted-obj))
                        (_%loop113863%_
                         (let ((_%next-probe113878%_
                                (fx+ _%start113859%_
                                     _%i113868%_
                                     (fx* _%i113868%_ _%i113868%_))))
                           (##fxmodulo _%next-probe113878%_ _%size113853%_))
                         (##fx+ _%i113868%_ '1)
                         (let ((_%$e113881%_ _%deleted113870%_))
                           (if _%$e113881%_ _%$e113881%_ _%probe113866%_)))
                        (if (eq? _%key113844%_ _%k113873%_)
                            (vector-ref
                             _%table113847%_
                             (##fx+ _%probe113866%_ '1))
                            (_%loop113863%_
                             (let ((_%next-probe113886%_
                                    (fx+ _%start113859%_
                                         _%i113868%_
                                         (fx* _%i113868%_ _%i113868%_))))
                               (##fxmodulo
                                _%next-probe113886%_
                                _%size113853%_))
                             (##fx+ _%i113868%_ '1)
                             _%deleted113870%_))))))))))
    (define symbolic-table-ref/lock
      (lambda (_%tab113816%_ _%key113817%_ _%default113818%_)
        (let ((_%lock113820%_ (&raw-table-lock _%tab113816%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again113825%_ ((_%spin113828%_ '0))
              (if (##fx= (##vector-cas! _%lock113820%_ '0 '1 '0) '0)
                  (##vector-set! _%lock113820%_ '1 (current-thread))
                  (if (##fx< _%spin113828%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again113825%_ (##fx+ _%spin113828%_ '1)))
                      (let ((_%owner113834%_ (##vector-ref _%lock113820%_ '1)))
                        (if (eq? _%owner113834%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner113834%_)
                                (let () (##thread-yield!) (_%again113825%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r113840%_
                 (symbolic-table-ref
                  _%tab113816%_
                  _%key113817%_
                  _%default113818%_)))
            (##vector-set! _%lock113820%_ '1 '#f)
            (##vector-cas! _%lock113820%_ '0 '0 '1)
            _%$r113840%_))))
    (define __symbolic-table-set!
      (lambda (_%tab113768%_ _%key113769%_ _%value113770%_)
        (let ((_%table113772%_ (&raw-table-table _%tab113768%_))
              (_%seed113773%_ (&raw-table-seed _%tab113768%_)))
          (let* ((_%h113775%_
                  (fxxor (##symbol-hash _%key113769%_) _%seed113773%_))
                 (_%size113778%_ (vector-length _%table113772%_))
                 (_%entries113781%_ (##fxquotient _%size113778%_ '2))
                 (_%start113784%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h113775%_ _%entries113781%_)
                   '1)))
            (let _%loop113788%_ ((_%probe113791%_ _%start113784%_)
                                 (_%i113793%_ '1)
                                 (_%deleted113795%_ '#f))
              (let ((_%k113798%_ (vector-ref _%table113772%_ _%probe113791%_)))
                (if (eq? _%k113798%_ (macro-unused-obj))
                    (if _%deleted113795%_
                        (begin
                          (vector-set!
                           _%table113772%_
                           _%deleted113795%_
                           _%key113769%_)
                          (vector-set!
                           _%table113772%_
                           (##fx+ _%deleted113795%_ '1)
                           _%value113770%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab113768%_
                              (##fx+ (&raw-table-count _%tab113768%_) '1)))))
                        (begin
                          (vector-set!
                           _%table113772%_
                           _%probe113791%_
                           _%key113769%_)
                          (vector-set!
                           _%table113772%_
                           (##fx+ _%probe113791%_ '1)
                           _%value113770%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab113768%_
                              (##fx- (&raw-table-free _%tab113768%_) '1))
                             (&raw-table-count-set!
                              _%tab113768%_
                              (##fx+ (&raw-table-count _%tab113768%_) '1))))))
                    (if (eq? _%k113798%_ (macro-deleted-obj))
                        (_%loop113788%_
                         (let ((_%next-probe113805%_
                                (fx+ _%start113784%_
                                     _%i113793%_
                                     (fx* _%i113793%_ _%i113793%_))))
                           (##fxmodulo _%next-probe113805%_ _%size113778%_))
                         (##fx+ _%i113793%_ '1)
                         (let ((_%$e113808%_ _%deleted113795%_))
                           (if _%$e113808%_ _%$e113808%_ _%probe113791%_)))
                        (if (eq? _%key113769%_ _%k113798%_)
                            (let ()
                              (vector-set!
                               _%table113772%_
                               _%probe113791%_
                               _%key113769%_)
                              (vector-set!
                               _%table113772%_
                               (##fx+ _%probe113791%_ '1)
                               _%value113770%_))
                            (_%loop113788%_
                             (let ((_%next-probe113813%_
                                    (fx+ _%start113784%_
                                         _%i113793%_
                                         (fx* _%i113793%_ _%i113793%_))))
                               (##fxmodulo
                                _%next-probe113813%_
                                _%size113778%_))
                             (##fx+ _%i113793%_ '1)
                             _%deleted113795%_))))))))))
    (define symbolic-table-set!
      (lambda (_%tab113764%_ _%key113765%_ _%value113766%_)
        (if (##fx< (&raw-table-free _%tab113764%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab113764%_))
                    '4))
            (__raw-table-rehash! _%tab113764%_)
            '#!void)
        (__symbolic-table-set! _%tab113764%_ _%key113765%_ _%value113766%_)))
    (define symbolic-table-set!/lock
      (lambda (_%tab113736%_ _%key113737%_ _%value113738%_)
        (let ((_%lock113741%_ (&raw-table-lock _%tab113736%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again113746%_ ((_%spin113749%_ '0))
              (if (##fx= (##vector-cas! _%lock113741%_ '0 '1 '0) '0)
                  (##vector-set! _%lock113741%_ '1 (current-thread))
                  (if (##fx< _%spin113749%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again113746%_ (##fx+ _%spin113749%_ '1)))
                      (let ((_%owner113755%_ (##vector-ref _%lock113741%_ '1)))
                        (if (eq? _%owner113755%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner113755%_)
                                (let () (##thread-yield!) (_%again113746%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r113761%_
                 (symbolic-table-set!
                  _%tab113736%_
                  _%key113737%_
                  _%value113738%_)))
            (##vector-set! _%lock113741%_ '1 '#f)
            (##vector-cas! _%lock113741%_ '0 '0 '1)
            _%$r113761%_))))
    (define __symbolic-table-update!
      (lambda (_%tab113687%_
               _%key113688%_
               _%symbolic-table-update!113689%_
               _%default113690%_)
        (let ((_%table113692%_ (&raw-table-table _%tab113687%_))
              (_%seed113693%_ (&raw-table-seed _%tab113687%_)))
          (let* ((_%h113695%_
                  (fxxor (##symbol-hash _%key113688%_) _%seed113693%_))
                 (_%size113698%_ (vector-length _%table113692%_))
                 (_%entries113701%_ (##fxquotient _%size113698%_ '2))
                 (_%start113704%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h113695%_ _%entries113701%_)
                   '1)))
            (let _%loop113708%_ ((_%probe113711%_ _%start113704%_)
                                 (_%i113713%_ '1)
                                 (_%deleted113715%_ '#f))
              (let ((_%k113718%_ (vector-ref _%table113692%_ _%probe113711%_)))
                (if (eq? _%k113718%_ (macro-unused-obj))
                    (if _%deleted113715%_
                        (begin
                          (vector-set!
                           _%table113692%_
                           _%deleted113715%_
                           _%key113688%_)
                          (vector-set!
                           _%table113692%_
                           (##fx+ _%deleted113715%_ '1)
                           (_%symbolic-table-update!113689%_
                            _%default113690%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab113687%_
                              (##fx+ (&raw-table-count _%tab113687%_) '1)))))
                        (begin
                          (vector-set!
                           _%table113692%_
                           _%probe113711%_
                           _%key113688%_)
                          (vector-set!
                           _%table113692%_
                           (##fx+ _%probe113711%_ '1)
                           (_%symbolic-table-update!113689%_
                            _%default113690%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab113687%_
                              (##fx- (&raw-table-free _%tab113687%_) '1))
                             (&raw-table-count-set!
                              _%tab113687%_
                              (##fx+ (&raw-table-count _%tab113687%_) '1))))))
                    (if (eq? _%k113718%_ (macro-deleted-obj))
                        (_%loop113708%_
                         (let ((_%next-probe113725%_
                                (fx+ _%start113704%_
                                     _%i113713%_
                                     (fx* _%i113713%_ _%i113713%_))))
                           (##fxmodulo _%next-probe113725%_ _%size113698%_))
                         (##fx+ _%i113713%_ '1)
                         (let ((_%$e113728%_ _%deleted113715%_))
                           (if _%$e113728%_ _%$e113728%_ _%probe113711%_)))
                        (if (eq? _%key113688%_ _%k113718%_)
                            (let ()
                              (vector-set!
                               _%table113692%_
                               _%probe113711%_
                               _%key113688%_)
                              (vector-set!
                               _%table113692%_
                               (##fx+ _%probe113711%_ '1)
                               (_%symbolic-table-update!113689%_
                                (vector-ref
                                 _%table113692%_
                                 (##fx+ _%probe113711%_ '1)))))
                            (_%loop113708%_
                             (let ((_%next-probe113733%_
                                    (fx+ _%start113704%_
                                         _%i113713%_
                                         (fx* _%i113713%_ _%i113713%_))))
                               (##fxmodulo
                                _%next-probe113733%_
                                _%size113698%_))
                             (##fx+ _%i113713%_ '1)
                             _%deleted113715%_))))))))))
    (define symbolic-table-update!
      (lambda (_%tab113682%_
               _%key113683%_
               _%symbolic-table-update!113684%_
               _%default113685%_)
        (if (##fx< (&raw-table-free _%tab113682%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab113682%_))
                    '4))
            (__raw-table-rehash! _%tab113682%_)
            '#!void)
        (__symbolic-table-update!
         _%tab113682%_
         _%key113683%_
         _%symbolic-table-update!113684%_
         _%default113685%_)))
    (define symbolic-table-update!/lock
      (lambda (_%tab113653%_
               _%key113654%_
               _%symbolic-table-update!113655%_
               _%default113656%_)
        (let ((_%lock113659%_ (&raw-table-lock _%tab113653%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again113664%_ ((_%spin113667%_ '0))
              (if (##fx= (##vector-cas! _%lock113659%_ '0 '1 '0) '0)
                  (##vector-set! _%lock113659%_ '1 (current-thread))
                  (if (##fx< _%spin113667%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again113664%_ (##fx+ _%spin113667%_ '1)))
                      (let ((_%owner113673%_ (##vector-ref _%lock113659%_ '1)))
                        (if (eq? _%owner113673%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner113673%_)
                                (let () (##thread-yield!) (_%again113664%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r113679%_
                 (_%symbolic-table-update!113655%_
                  _%tab113653%_
                  _%key113654%_
                  _%symbolic-table-update!113655%_
                  _%default113656%_)))
            (##vector-set! _%lock113659%_ '1 '#f)
            (##vector-cas! _%lock113659%_ '0 '0 '1)
            _%$r113679%_))))
    (define symbolic-table-delete!
      (lambda (_%tab113610%_ _%key113611%_)
        (let ((_%table113613%_ (&raw-table-table _%tab113610%_))
              (_%seed113615%_ (&raw-table-seed _%tab113610%_)))
          (let* ((_%h113618%_
                  (fxxor (##symbol-hash _%key113611%_) _%seed113615%_))
                 (_%size113621%_ (vector-length _%table113613%_))
                 (_%entries113624%_ (##fxquotient _%size113621%_ '2))
                 (_%start113627%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h113618%_ _%entries113624%_)
                   '1)))
            (let _%loop113631%_ ((_%probe113634%_ _%start113627%_)
                                 (_%i113636%_ '1))
              (let ((_%k113639%_ (vector-ref _%table113613%_ _%probe113634%_)))
                (if (eq? _%k113639%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k113639%_ (macro-deleted-obj))
                        (_%loop113631%_
                         (let ((_%next-probe113644%_
                                (fx+ _%start113627%_
                                     _%i113636%_
                                     (fx* _%i113636%_ _%i113636%_))))
                           (##fxmodulo _%next-probe113644%_ _%size113621%_))
                         (##fx+ _%i113636%_ '1))
                        (if (eq? _%key113611%_ _%k113639%_)
                            (let ()
                              (vector-set!
                               _%table113613%_
                               _%probe113634%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table113613%_
                               (##fx+ _%probe113634%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab113610%_
                                  (##fx- (&raw-table-count _%tab113610%_)
                                         '1)))))
                            (_%loop113631%_
                             (let ((_%next-probe113650%_
                                    (fx+ _%start113627%_
                                         _%i113636%_
                                         (fx* _%i113636%_ _%i113636%_))))
                               (##fxmodulo
                                _%next-probe113650%_
                                _%size113621%_))
                             (##fx+ _%i113636%_ '1)))))))))))
    (define symbolic-table-delete!/lock
      (lambda (_%tab113582%_ _%key113584%_)
        (let ((_%lock113587%_ (&raw-table-lock _%tab113582%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again113592%_ ((_%spin113595%_ '0))
              (if (##fx= (##vector-cas! _%lock113587%_ '0 '1 '0) '0)
                  (##vector-set! _%lock113587%_ '1 (current-thread))
                  (if (##fx< _%spin113595%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again113592%_ (##fx+ _%spin113595%_ '1)))
                      (let ((_%owner113601%_ (##vector-ref _%lock113587%_ '1)))
                        (if (eq? _%owner113601%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner113601%_)
                                (let () (##thread-yield!) (_%again113592%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r113607%_
                 (symbolic-table-delete! _%tab113582%_ _%key113584%_)))
            (##vector-set! _%lock113587%_ '1 '#f)
            (##vector-cas! _%lock113587%_ '0 '0 '1)
            _%$r113607%_))))
    (define make-string-table__%
      (lambda (_%size-hint113564%_ _%seed113565%_)
        (make-raw-table__1
         _%size-hint113564%_
         string-hash
         ##string=?
         _%seed113565%_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_%size-hint113571%_ '#f) (_%seed113573%_ '0))
          (make-string-table__% _%size-hint113571%_ _%seed113573%_))))
    (define make-string-table__1
      (lambda (_%size-hint113575%_)
        (let ((_%seed113577%_ '0))
          (make-string-table__% _%size-hint113575%_ _%seed113577%_))))
    (define make-string-table
      (lambda _g115217_
        (let ((_g115218_ (##length _g115217_)))
          (cond ((##fx= _g115218_ 0) (apply make-string-table__0 _g115217_))
                ((##fx= _g115218_ 1) (apply make-string-table__1 _g115217_))
                ((##fx= _g115218_ 2) (apply make-string-table__% _g115217_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g115217_))))))
    (define make-string-table/lock__%
      (lambda (_%size-hint113544%_ _%seed113546%_)
        (make-raw-table/lock__%
         _%size-hint113544%_
         string-hash
         ##string=?
         _%seed113546%_)))
    (define make-string-table/lock__0
      (lambda ()
        (let* ((_%size-hint113552%_ '#f) (_%seed113554%_ '0))
          (make-string-table/lock__% _%size-hint113552%_ _%seed113554%_))))
    (define make-string-table/lock__1
      (lambda (_%size-hint113556%_)
        (let ((_%seed113558%_ '0))
          (make-string-table/lock__% _%size-hint113556%_ _%seed113558%_))))
    (define make-string-table/lock
      (lambda _g115219_
        (let ((_g115220_ (##length _g115219_)))
          (cond ((##fx= _g115220_ 0)
                 (apply make-string-table/lock__0 _g115219_))
                ((##fx= _g115220_ 1)
                 (apply make-string-table/lock__1 _g115219_))
                ((##fx= _g115220_ 2)
                 (apply make-string-table/lock__% _g115219_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table/lock
                  _g115219_))))))
    (define string-table-ref
      (lambda (_%tab113497%_ _%key113498%_ _%default113499%_)
        (let ((_%table113501%_ (&raw-table-table _%tab113497%_))
              (_%seed113502%_ (&raw-table-seed _%tab113497%_)))
          (let* ((_%h113504%_
                  (fxxor (##string=?-hash _%key113498%_) _%seed113502%_))
                 (_%size113507%_ (vector-length _%table113501%_))
                 (_%entries113510%_ (##fxquotient _%size113507%_ '2))
                 (_%start113513%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h113504%_ _%entries113510%_)
                   '1)))
            (let _%loop113517%_ ((_%probe113520%_ _%start113513%_)
                                 (_%i113522%_ '1)
                                 (_%deleted113524%_ '#f))
              (let ((_%k113527%_ (vector-ref _%table113501%_ _%probe113520%_)))
                (if (eq? _%k113527%_ (macro-unused-obj))
                    _%default113499%_
                    (if (eq? _%k113527%_ (macro-deleted-obj))
                        (_%loop113517%_
                         (let ((_%next-probe113532%_
                                (fx+ _%start113513%_
                                     _%i113522%_
                                     (fx* _%i113522%_ _%i113522%_))))
                           (##fxmodulo _%next-probe113532%_ _%size113507%_))
                         (##fx+ _%i113522%_ '1)
                         (let ((_%$e113535%_ _%deleted113524%_))
                           (if _%$e113535%_ _%$e113535%_ _%probe113520%_)))
                        (if (##string=? _%key113498%_ _%k113527%_)
                            (vector-ref
                             _%table113501%_
                             (##fx+ _%probe113520%_ '1))
                            (_%loop113517%_
                             (let ((_%next-probe113540%_
                                    (fx+ _%start113513%_
                                         _%i113522%_
                                         (fx* _%i113522%_ _%i113522%_))))
                               (##fxmodulo
                                _%next-probe113540%_
                                _%size113507%_))
                             (##fx+ _%i113522%_ '1)
                             _%deleted113524%_))))))))))
    (define string-table-ref/lock
      (lambda (_%tab113470%_ _%key113471%_ _%default113472%_)
        (let ((_%lock113474%_ (&raw-table-lock _%tab113470%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again113479%_ ((_%spin113482%_ '0))
              (if (##fx= (##vector-cas! _%lock113474%_ '0 '1 '0) '0)
                  (##vector-set! _%lock113474%_ '1 (current-thread))
                  (if (##fx< _%spin113482%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again113479%_ (##fx+ _%spin113482%_ '1)))
                      (let ((_%owner113488%_ (##vector-ref _%lock113474%_ '1)))
                        (if (eq? _%owner113488%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner113488%_)
                                (let () (##thread-yield!) (_%again113479%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r113494%_
                 (string-table-ref
                  _%tab113470%_
                  _%key113471%_
                  _%default113472%_)))
            (##vector-set! _%lock113474%_ '1 '#f)
            (##vector-cas! _%lock113474%_ '0 '0 '1)
            _%$r113494%_))))
    (define __string-table-set!
      (lambda (_%tab113422%_ _%key113423%_ _%value113424%_)
        (let ((_%table113426%_ (&raw-table-table _%tab113422%_))
              (_%seed113427%_ (&raw-table-seed _%tab113422%_)))
          (let* ((_%h113429%_
                  (fxxor (##string=?-hash _%key113423%_) _%seed113427%_))
                 (_%size113432%_ (vector-length _%table113426%_))
                 (_%entries113435%_ (##fxquotient _%size113432%_ '2))
                 (_%start113438%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h113429%_ _%entries113435%_)
                   '1)))
            (let _%loop113442%_ ((_%probe113445%_ _%start113438%_)
                                 (_%i113447%_ '1)
                                 (_%deleted113449%_ '#f))
              (let ((_%k113452%_ (vector-ref _%table113426%_ _%probe113445%_)))
                (if (eq? _%k113452%_ (macro-unused-obj))
                    (if _%deleted113449%_
                        (begin
                          (vector-set!
                           _%table113426%_
                           _%deleted113449%_
                           _%key113423%_)
                          (vector-set!
                           _%table113426%_
                           (##fx+ _%deleted113449%_ '1)
                           _%value113424%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab113422%_
                              (##fx+ (&raw-table-count _%tab113422%_) '1)))))
                        (begin
                          (vector-set!
                           _%table113426%_
                           _%probe113445%_
                           _%key113423%_)
                          (vector-set!
                           _%table113426%_
                           (##fx+ _%probe113445%_ '1)
                           _%value113424%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab113422%_
                              (##fx- (&raw-table-free _%tab113422%_) '1))
                             (&raw-table-count-set!
                              _%tab113422%_
                              (##fx+ (&raw-table-count _%tab113422%_) '1))))))
                    (if (eq? _%k113452%_ (macro-deleted-obj))
                        (_%loop113442%_
                         (let ((_%next-probe113459%_
                                (fx+ _%start113438%_
                                     _%i113447%_
                                     (fx* _%i113447%_ _%i113447%_))))
                           (##fxmodulo _%next-probe113459%_ _%size113432%_))
                         (##fx+ _%i113447%_ '1)
                         (let ((_%$e113462%_ _%deleted113449%_))
                           (if _%$e113462%_ _%$e113462%_ _%probe113445%_)))
                        (if (##string=? _%key113423%_ _%k113452%_)
                            (let ()
                              (vector-set!
                               _%table113426%_
                               _%probe113445%_
                               _%key113423%_)
                              (vector-set!
                               _%table113426%_
                               (##fx+ _%probe113445%_ '1)
                               _%value113424%_))
                            (_%loop113442%_
                             (let ((_%next-probe113467%_
                                    (fx+ _%start113438%_
                                         _%i113447%_
                                         (fx* _%i113447%_ _%i113447%_))))
                               (##fxmodulo
                                _%next-probe113467%_
                                _%size113432%_))
                             (##fx+ _%i113447%_ '1)
                             _%deleted113449%_))))))))))
    (define string-table-set!
      (lambda (_%tab113418%_ _%key113419%_ _%value113420%_)
        (if (##fx< (&raw-table-free _%tab113418%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab113418%_))
                    '4))
            (__raw-table-rehash! _%tab113418%_)
            '#!void)
        (__string-table-set! _%tab113418%_ _%key113419%_ _%value113420%_)))
    (define string-table-set!/lock
      (lambda (_%tab113390%_ _%key113391%_ _%value113392%_)
        (let ((_%lock113395%_ (&raw-table-lock _%tab113390%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again113400%_ ((_%spin113403%_ '0))
              (if (##fx= (##vector-cas! _%lock113395%_ '0 '1 '0) '0)
                  (##vector-set! _%lock113395%_ '1 (current-thread))
                  (if (##fx< _%spin113403%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again113400%_ (##fx+ _%spin113403%_ '1)))
                      (let ((_%owner113409%_ (##vector-ref _%lock113395%_ '1)))
                        (if (eq? _%owner113409%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner113409%_)
                                (let () (##thread-yield!) (_%again113400%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r113415%_
                 (string-table-set!
                  _%tab113390%_
                  _%key113391%_
                  _%value113392%_)))
            (##vector-set! _%lock113395%_ '1 '#f)
            (##vector-cas! _%lock113395%_ '0 '0 '1)
            _%$r113415%_))))
    (define __string-table-update!
      (lambda (_%tab113341%_
               _%key113342%_
               _%string-table-update!113343%_
               _%default113344%_)
        (let ((_%table113346%_ (&raw-table-table _%tab113341%_))
              (_%seed113347%_ (&raw-table-seed _%tab113341%_)))
          (let* ((_%h113349%_
                  (fxxor (##string=?-hash _%key113342%_) _%seed113347%_))
                 (_%size113352%_ (vector-length _%table113346%_))
                 (_%entries113355%_ (##fxquotient _%size113352%_ '2))
                 (_%start113358%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h113349%_ _%entries113355%_)
                   '1)))
            (let _%loop113362%_ ((_%probe113365%_ _%start113358%_)
                                 (_%i113367%_ '1)
                                 (_%deleted113369%_ '#f))
              (let ((_%k113372%_ (vector-ref _%table113346%_ _%probe113365%_)))
                (if (eq? _%k113372%_ (macro-unused-obj))
                    (if _%deleted113369%_
                        (begin
                          (vector-set!
                           _%table113346%_
                           _%deleted113369%_
                           _%key113342%_)
                          (vector-set!
                           _%table113346%_
                           (##fx+ _%deleted113369%_ '1)
                           (_%string-table-update!113343%_ _%default113344%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab113341%_
                              (##fx+ (&raw-table-count _%tab113341%_) '1)))))
                        (begin
                          (vector-set!
                           _%table113346%_
                           _%probe113365%_
                           _%key113342%_)
                          (vector-set!
                           _%table113346%_
                           (##fx+ _%probe113365%_ '1)
                           (_%string-table-update!113343%_ _%default113344%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab113341%_
                              (##fx- (&raw-table-free _%tab113341%_) '1))
                             (&raw-table-count-set!
                              _%tab113341%_
                              (##fx+ (&raw-table-count _%tab113341%_) '1))))))
                    (if (eq? _%k113372%_ (macro-deleted-obj))
                        (_%loop113362%_
                         (let ((_%next-probe113379%_
                                (fx+ _%start113358%_
                                     _%i113367%_
                                     (fx* _%i113367%_ _%i113367%_))))
                           (##fxmodulo _%next-probe113379%_ _%size113352%_))
                         (##fx+ _%i113367%_ '1)
                         (let ((_%$e113382%_ _%deleted113369%_))
                           (if _%$e113382%_ _%$e113382%_ _%probe113365%_)))
                        (if (##string=? _%key113342%_ _%k113372%_)
                            (let ()
                              (vector-set!
                               _%table113346%_
                               _%probe113365%_
                               _%key113342%_)
                              (vector-set!
                               _%table113346%_
                               (##fx+ _%probe113365%_ '1)
                               (_%string-table-update!113343%_
                                (vector-ref
                                 _%table113346%_
                                 (##fx+ _%probe113365%_ '1)))))
                            (_%loop113362%_
                             (let ((_%next-probe113387%_
                                    (fx+ _%start113358%_
                                         _%i113367%_
                                         (fx* _%i113367%_ _%i113367%_))))
                               (##fxmodulo
                                _%next-probe113387%_
                                _%size113352%_))
                             (##fx+ _%i113367%_ '1)
                             _%deleted113369%_))))))))))
    (define string-table-update!
      (lambda (_%tab113336%_
               _%key113337%_
               _%string-table-update!113338%_
               _%default113339%_)
        (if (##fx< (&raw-table-free _%tab113336%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab113336%_))
                    '4))
            (__raw-table-rehash! _%tab113336%_)
            '#!void)
        (__string-table-update!
         _%tab113336%_
         _%key113337%_
         _%string-table-update!113338%_
         _%default113339%_)))
    (define string-table-update!/lock
      (lambda (_%tab113307%_
               _%key113308%_
               _%string-table-update!113309%_
               _%default113310%_)
        (let ((_%lock113313%_ (&raw-table-lock _%tab113307%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again113318%_ ((_%spin113321%_ '0))
              (if (##fx= (##vector-cas! _%lock113313%_ '0 '1 '0) '0)
                  (##vector-set! _%lock113313%_ '1 (current-thread))
                  (if (##fx< _%spin113321%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again113318%_ (##fx+ _%spin113321%_ '1)))
                      (let ((_%owner113327%_ (##vector-ref _%lock113313%_ '1)))
                        (if (eq? _%owner113327%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner113327%_)
                                (let () (##thread-yield!) (_%again113318%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r113333%_
                 (_%string-table-update!113309%_
                  _%tab113307%_
                  _%key113308%_
                  _%string-table-update!113309%_
                  _%default113310%_)))
            (##vector-set! _%lock113313%_ '1 '#f)
            (##vector-cas! _%lock113313%_ '0 '0 '1)
            _%$r113333%_))))
    (define string-table-delete!
      (lambda (_%tab113264%_ _%key113265%_)
        (let ((_%table113267%_ (&raw-table-table _%tab113264%_))
              (_%seed113269%_ (&raw-table-seed _%tab113264%_)))
          (let* ((_%h113272%_
                  (fxxor (##string=?-hash _%key113265%_) _%seed113269%_))
                 (_%size113275%_ (vector-length _%table113267%_))
                 (_%entries113278%_ (##fxquotient _%size113275%_ '2))
                 (_%start113281%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h113272%_ _%entries113278%_)
                   '1)))
            (let _%loop113285%_ ((_%probe113288%_ _%start113281%_)
                                 (_%i113290%_ '1))
              (let ((_%k113293%_ (vector-ref _%table113267%_ _%probe113288%_)))
                (if (eq? _%k113293%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k113293%_ (macro-deleted-obj))
                        (_%loop113285%_
                         (let ((_%next-probe113298%_
                                (fx+ _%start113281%_
                                     _%i113290%_
                                     (fx* _%i113290%_ _%i113290%_))))
                           (##fxmodulo _%next-probe113298%_ _%size113275%_))
                         (##fx+ _%i113290%_ '1))
                        (if (##string=? _%key113265%_ _%k113293%_)
                            (let ()
                              (vector-set!
                               _%table113267%_
                               _%probe113288%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table113267%_
                               (##fx+ _%probe113288%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab113264%_
                                  (##fx- (&raw-table-count _%tab113264%_)
                                         '1)))))
                            (_%loop113285%_
                             (let ((_%next-probe113304%_
                                    (fx+ _%start113281%_
                                         _%i113290%_
                                         (fx* _%i113290%_ _%i113290%_))))
                               (##fxmodulo
                                _%next-probe113304%_
                                _%size113275%_))
                             (##fx+ _%i113290%_ '1)))))))))))
    (define string-table-delete!/lock
      (lambda (_%tab113236%_ _%key113238%_)
        (let ((_%lock113241%_ (&raw-table-lock _%tab113236%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again113246%_ ((_%spin113249%_ '0))
              (if (##fx= (##vector-cas! _%lock113241%_ '0 '1 '0) '0)
                  (##vector-set! _%lock113241%_ '1 (current-thread))
                  (if (##fx< _%spin113249%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again113246%_ (##fx+ _%spin113249%_ '1)))
                      (let ((_%owner113255%_ (##vector-ref _%lock113241%_ '1)))
                        (if (eq? _%owner113255%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner113255%_)
                                (let () (##thread-yield!) (_%again113246%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r113261%_
                 (string-table-delete! _%tab113236%_ _%key113238%_)))
            (##vector-set! _%lock113241%_ '1 '#f)
            (##vector-cas! _%lock113241%_ '0 '0 '1)
            _%$r113261%_))))
    (define make-immediate-table__%
      (lambda (_%size-hint113218%_ _%seed113219%_)
        (make-raw-table__1
         _%size-hint113218%_
         immediate-hash
         eq?
         _%seed113219%_)))
    (define make-immediate-table__0
      (lambda ()
        (let* ((_%size-hint113225%_ '#f) (_%seed113227%_ '0))
          (make-immediate-table__% _%size-hint113225%_ _%seed113227%_))))
    (define make-immediate-table__1
      (lambda (_%size-hint113229%_)
        (let ((_%seed113231%_ '0))
          (make-immediate-table__% _%size-hint113229%_ _%seed113231%_))))
    (define make-immediate-table
      (lambda _g115221_
        (let ((_g115222_ (##length _g115221_)))
          (cond ((##fx= _g115222_ 0) (apply make-immediate-table__0 _g115221_))
                ((##fx= _g115222_ 1) (apply make-immediate-table__1 _g115221_))
                ((##fx= _g115222_ 2) (apply make-immediate-table__% _g115221_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table
                  _g115221_))))))
    (define make-immediate-table/lock__%
      (lambda (_%size-hint113198%_ _%seed113200%_)
        (make-raw-table/lock__%
         _%size-hint113198%_
         immediate-hash
         eq?
         _%seed113200%_)))
    (define make-immediate-table/lock__0
      (lambda ()
        (let* ((_%size-hint113206%_ '#f) (_%seed113208%_ '0))
          (make-immediate-table/lock__% _%size-hint113206%_ _%seed113208%_))))
    (define make-immediate-table/lock__1
      (lambda (_%size-hint113210%_)
        (let ((_%seed113212%_ '0))
          (make-immediate-table/lock__% _%size-hint113210%_ _%seed113212%_))))
    (define make-immediate-table/lock
      (lambda _g115223_
        (let ((_g115224_ (##length _g115223_)))
          (cond ((##fx= _g115224_ 0)
                 (apply make-immediate-table/lock__0 _g115223_))
                ((##fx= _g115224_ 1)
                 (apply make-immediate-table/lock__1 _g115223_))
                ((##fx= _g115224_ 2)
                 (apply make-immediate-table/lock__% _g115223_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table/lock
                  _g115223_))))))
    (define immediate-table-ref
      (lambda (_%tab113151%_ _%key113152%_ _%default113153%_)
        (let ((_%table113155%_ (&raw-table-table _%tab113151%_))
              (_%seed113156%_ (&raw-table-seed _%tab113151%_)))
          (let* ((_%h113158%_
                  (fxxor (immediate-hash _%key113152%_) _%seed113156%_))
                 (_%size113161%_ (vector-length _%table113155%_))
                 (_%entries113164%_ (##fxquotient _%size113161%_ '2))
                 (_%start113167%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h113158%_ _%entries113164%_)
                   '1)))
            (let _%loop113171%_ ((_%probe113174%_ _%start113167%_)
                                 (_%i113176%_ '1)
                                 (_%deleted113178%_ '#f))
              (let ((_%k113181%_ (vector-ref _%table113155%_ _%probe113174%_)))
                (if (eq? _%k113181%_ (macro-unused-obj))
                    _%default113153%_
                    (if (eq? _%k113181%_ (macro-deleted-obj))
                        (_%loop113171%_
                         (let ((_%next-probe113186%_
                                (fx+ _%start113167%_
                                     _%i113176%_
                                     (fx* _%i113176%_ _%i113176%_))))
                           (##fxmodulo _%next-probe113186%_ _%size113161%_))
                         (##fx+ _%i113176%_ '1)
                         (let ((_%$e113189%_ _%deleted113178%_))
                           (if _%$e113189%_ _%$e113189%_ _%probe113174%_)))
                        (if (eq? _%key113152%_ _%k113181%_)
                            (vector-ref
                             _%table113155%_
                             (##fx+ _%probe113174%_ '1))
                            (_%loop113171%_
                             (let ((_%next-probe113194%_
                                    (fx+ _%start113167%_
                                         _%i113176%_
                                         (fx* _%i113176%_ _%i113176%_))))
                               (##fxmodulo
                                _%next-probe113194%_
                                _%size113161%_))
                             (##fx+ _%i113176%_ '1)
                             _%deleted113178%_))))))))))
    (define immediate-table-ref/lock
      (lambda (_%tab113124%_ _%key113125%_ _%default113126%_)
        (let ((_%lock113128%_ (&raw-table-lock _%tab113124%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again113133%_ ((_%spin113136%_ '0))
              (if (##fx= (##vector-cas! _%lock113128%_ '0 '1 '0) '0)
                  (##vector-set! _%lock113128%_ '1 (current-thread))
                  (if (##fx< _%spin113136%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again113133%_ (##fx+ _%spin113136%_ '1)))
                      (let ((_%owner113142%_ (##vector-ref _%lock113128%_ '1)))
                        (if (eq? _%owner113142%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner113142%_)
                                (let () (##thread-yield!) (_%again113133%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r113148%_
                 (immediate-table-ref
                  _%tab113124%_
                  _%key113125%_
                  _%default113126%_)))
            (##vector-set! _%lock113128%_ '1 '#f)
            (##vector-cas! _%lock113128%_ '0 '0 '1)
            _%$r113148%_))))
    (define __immediate-table-set!
      (lambda (_%tab113076%_ _%key113077%_ _%value113078%_)
        (let ((_%table113080%_ (&raw-table-table _%tab113076%_))
              (_%seed113081%_ (&raw-table-seed _%tab113076%_)))
          (let* ((_%h113083%_
                  (fxxor (immediate-hash _%key113077%_) _%seed113081%_))
                 (_%size113086%_ (vector-length _%table113080%_))
                 (_%entries113089%_ (##fxquotient _%size113086%_ '2))
                 (_%start113092%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h113083%_ _%entries113089%_)
                   '1)))
            (let _%loop113096%_ ((_%probe113099%_ _%start113092%_)
                                 (_%i113101%_ '1)
                                 (_%deleted113103%_ '#f))
              (let ((_%k113106%_ (vector-ref _%table113080%_ _%probe113099%_)))
                (if (eq? _%k113106%_ (macro-unused-obj))
                    (if _%deleted113103%_
                        (begin
                          (vector-set!
                           _%table113080%_
                           _%deleted113103%_
                           _%key113077%_)
                          (vector-set!
                           _%table113080%_
                           (##fx+ _%deleted113103%_ '1)
                           _%value113078%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab113076%_
                              (##fx+ (&raw-table-count _%tab113076%_) '1)))))
                        (begin
                          (vector-set!
                           _%table113080%_
                           _%probe113099%_
                           _%key113077%_)
                          (vector-set!
                           _%table113080%_
                           (##fx+ _%probe113099%_ '1)
                           _%value113078%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab113076%_
                              (##fx- (&raw-table-free _%tab113076%_) '1))
                             (&raw-table-count-set!
                              _%tab113076%_
                              (##fx+ (&raw-table-count _%tab113076%_) '1))))))
                    (if (eq? _%k113106%_ (macro-deleted-obj))
                        (_%loop113096%_
                         (let ((_%next-probe113113%_
                                (fx+ _%start113092%_
                                     _%i113101%_
                                     (fx* _%i113101%_ _%i113101%_))))
                           (##fxmodulo _%next-probe113113%_ _%size113086%_))
                         (##fx+ _%i113101%_ '1)
                         (let ((_%$e113116%_ _%deleted113103%_))
                           (if _%$e113116%_ _%$e113116%_ _%probe113099%_)))
                        (if (eq? _%key113077%_ _%k113106%_)
                            (let ()
                              (vector-set!
                               _%table113080%_
                               _%probe113099%_
                               _%key113077%_)
                              (vector-set!
                               _%table113080%_
                               (##fx+ _%probe113099%_ '1)
                               _%value113078%_))
                            (_%loop113096%_
                             (let ((_%next-probe113121%_
                                    (fx+ _%start113092%_
                                         _%i113101%_
                                         (fx* _%i113101%_ _%i113101%_))))
                               (##fxmodulo
                                _%next-probe113121%_
                                _%size113086%_))
                             (##fx+ _%i113101%_ '1)
                             _%deleted113103%_))))))))))
    (define immediate-table-set!
      (lambda (_%tab113072%_ _%key113073%_ _%value113074%_)
        (if (##fx< (&raw-table-free _%tab113072%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab113072%_))
                    '4))
            (__raw-table-rehash! _%tab113072%_)
            '#!void)
        (__immediate-table-set! _%tab113072%_ _%key113073%_ _%value113074%_)))
    (define immediate-table-set!/lock
      (lambda (_%tab113044%_ _%key113045%_ _%value113046%_)
        (let ((_%lock113049%_ (&raw-table-lock _%tab113044%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again113054%_ ((_%spin113057%_ '0))
              (if (##fx= (##vector-cas! _%lock113049%_ '0 '1 '0) '0)
                  (##vector-set! _%lock113049%_ '1 (current-thread))
                  (if (##fx< _%spin113057%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again113054%_ (##fx+ _%spin113057%_ '1)))
                      (let ((_%owner113063%_ (##vector-ref _%lock113049%_ '1)))
                        (if (eq? _%owner113063%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner113063%_)
                                (let () (##thread-yield!) (_%again113054%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r113069%_
                 (immediate-table-set!
                  _%tab113044%_
                  _%key113045%_
                  _%value113046%_)))
            (##vector-set! _%lock113049%_ '1 '#f)
            (##vector-cas! _%lock113049%_ '0 '0 '1)
            _%$r113069%_))))
    (define __immediate-table-update!
      (lambda (_%tab112995%_
               _%key112996%_
               _%immediate-table-update!112997%_
               _%default112998%_)
        (let ((_%table113000%_ (&raw-table-table _%tab112995%_))
              (_%seed113001%_ (&raw-table-seed _%tab112995%_)))
          (let* ((_%h113003%_
                  (fxxor (immediate-hash _%key112996%_) _%seed113001%_))
                 (_%size113006%_ (vector-length _%table113000%_))
                 (_%entries113009%_ (##fxquotient _%size113006%_ '2))
                 (_%start113012%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h113003%_ _%entries113009%_)
                   '1)))
            (let _%loop113016%_ ((_%probe113019%_ _%start113012%_)
                                 (_%i113021%_ '1)
                                 (_%deleted113023%_ '#f))
              (let ((_%k113026%_ (vector-ref _%table113000%_ _%probe113019%_)))
                (if (eq? _%k113026%_ (macro-unused-obj))
                    (if _%deleted113023%_
                        (begin
                          (vector-set!
                           _%table113000%_
                           _%deleted113023%_
                           _%key112996%_)
                          (vector-set!
                           _%table113000%_
                           (##fx+ _%deleted113023%_ '1)
                           (_%immediate-table-update!112997%_
                            _%default112998%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab112995%_
                              (##fx+ (&raw-table-count _%tab112995%_) '1)))))
                        (begin
                          (vector-set!
                           _%table113000%_
                           _%probe113019%_
                           _%key112996%_)
                          (vector-set!
                           _%table113000%_
                           (##fx+ _%probe113019%_ '1)
                           (_%immediate-table-update!112997%_
                            _%default112998%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab112995%_
                              (##fx- (&raw-table-free _%tab112995%_) '1))
                             (&raw-table-count-set!
                              _%tab112995%_
                              (##fx+ (&raw-table-count _%tab112995%_) '1))))))
                    (if (eq? _%k113026%_ (macro-deleted-obj))
                        (_%loop113016%_
                         (let ((_%next-probe113033%_
                                (fx+ _%start113012%_
                                     _%i113021%_
                                     (fx* _%i113021%_ _%i113021%_))))
                           (##fxmodulo _%next-probe113033%_ _%size113006%_))
                         (##fx+ _%i113021%_ '1)
                         (let ((_%$e113036%_ _%deleted113023%_))
                           (if _%$e113036%_ _%$e113036%_ _%probe113019%_)))
                        (if (eq? _%key112996%_ _%k113026%_)
                            (let ()
                              (vector-set!
                               _%table113000%_
                               _%probe113019%_
                               _%key112996%_)
                              (vector-set!
                               _%table113000%_
                               (##fx+ _%probe113019%_ '1)
                               (_%immediate-table-update!112997%_
                                (vector-ref
                                 _%table113000%_
                                 (##fx+ _%probe113019%_ '1)))))
                            (_%loop113016%_
                             (let ((_%next-probe113041%_
                                    (fx+ _%start113012%_
                                         _%i113021%_
                                         (fx* _%i113021%_ _%i113021%_))))
                               (##fxmodulo
                                _%next-probe113041%_
                                _%size113006%_))
                             (##fx+ _%i113021%_ '1)
                             _%deleted113023%_))))))))))
    (define immediate-table-update!
      (lambda (_%tab112990%_
               _%key112991%_
               _%immediate-table-update!112992%_
               _%default112993%_)
        (if (##fx< (&raw-table-free _%tab112990%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab112990%_))
                    '4))
            (__raw-table-rehash! _%tab112990%_)
            '#!void)
        (__immediate-table-update!
         _%tab112990%_
         _%key112991%_
         _%immediate-table-update!112992%_
         _%default112993%_)))
    (define immediate-table-update!/lock
      (lambda (_%tab112961%_
               _%key112962%_
               _%immediate-table-update!112963%_
               _%default112964%_)
        (let ((_%lock112967%_ (&raw-table-lock _%tab112961%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again112972%_ ((_%spin112975%_ '0))
              (if (##fx= (##vector-cas! _%lock112967%_ '0 '1 '0) '0)
                  (##vector-set! _%lock112967%_ '1 (current-thread))
                  (if (##fx< _%spin112975%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again112972%_ (##fx+ _%spin112975%_ '1)))
                      (let ((_%owner112981%_ (##vector-ref _%lock112967%_ '1)))
                        (if (eq? _%owner112981%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner112981%_)
                                (let () (##thread-yield!) (_%again112972%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r112987%_
                 (_%immediate-table-update!112963%_
                  _%tab112961%_
                  _%key112962%_
                  _%immediate-table-update!112963%_
                  _%default112964%_)))
            (##vector-set! _%lock112967%_ '1 '#f)
            (##vector-cas! _%lock112967%_ '0 '0 '1)
            _%$r112987%_))))
    (define immediate-table-delete!
      (lambda (_%tab112918%_ _%key112919%_)
        (let ((_%table112921%_ (&raw-table-table _%tab112918%_))
              (_%seed112923%_ (&raw-table-seed _%tab112918%_)))
          (let* ((_%h112926%_
                  (fxxor (immediate-hash _%key112919%_) _%seed112923%_))
                 (_%size112929%_ (vector-length _%table112921%_))
                 (_%entries112932%_ (##fxquotient _%size112929%_ '2))
                 (_%start112935%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h112926%_ _%entries112932%_)
                   '1)))
            (let _%loop112939%_ ((_%probe112942%_ _%start112935%_)
                                 (_%i112944%_ '1))
              (let ((_%k112947%_ (vector-ref _%table112921%_ _%probe112942%_)))
                (if (eq? _%k112947%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k112947%_ (macro-deleted-obj))
                        (_%loop112939%_
                         (let ((_%next-probe112952%_
                                (fx+ _%start112935%_
                                     _%i112944%_
                                     (fx* _%i112944%_ _%i112944%_))))
                           (##fxmodulo _%next-probe112952%_ _%size112929%_))
                         (##fx+ _%i112944%_ '1))
                        (if (eq? _%key112919%_ _%k112947%_)
                            (let ()
                              (vector-set!
                               _%table112921%_
                               _%probe112942%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table112921%_
                               (##fx+ _%probe112942%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab112918%_
                                  (##fx- (&raw-table-count _%tab112918%_)
                                         '1)))))
                            (_%loop112939%_
                             (let ((_%next-probe112958%_
                                    (fx+ _%start112935%_
                                         _%i112944%_
                                         (fx* _%i112944%_ _%i112944%_))))
                               (##fxmodulo
                                _%next-probe112958%_
                                _%size112929%_))
                             (##fx+ _%i112944%_ '1)))))))))))
    (define immediate-table-delete!/lock
      (lambda (_%tab112890%_ _%key112892%_)
        (let ((_%lock112895%_ (&raw-table-lock _%tab112890%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again112900%_ ((_%spin112903%_ '0))
              (if (##fx= (##vector-cas! _%lock112895%_ '0 '1 '0) '0)
                  (##vector-set! _%lock112895%_ '1 (current-thread))
                  (if (##fx< _%spin112903%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again112900%_ (##fx+ _%spin112903%_ '1)))
                      (let ((_%owner112909%_ (##vector-ref _%lock112895%_ '1)))
                        (if (eq? _%owner112909%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner112909%_)
                                (let () (##thread-yield!) (_%again112900%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r112915%_
                 (immediate-table-delete! _%tab112890%_ _%key112892%_)))
            (##vector-set! _%lock112895%_ '1 '#f)
            (##vector-cas! _%lock112895%_ '0 '0 '1)
            _%$r112915%_))))
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
      (lambda (_%tab112888%_)
        (##unchecked-structure-ref
         _%tab112888%_
         '1
         __gc-table::t
         'gc-table-gcht)))
    (define &gc-table-immediate
      (lambda (_%tab112886%_)
        (##unchecked-structure-ref
         _%tab112886%_
         '2
         __gc-table::t
         'gc-table-immediate)))
    (define &gc-table-lock
      (lambda (_%tab112884%_)
        (##unchecked-structure-ref
         _%tab112884%_
         '3
         __gc-table::t
         'gc-table-lock)))
    (define &gc-table-gcht-set!
      (lambda (_%tab112881%_ _%val112882%_)
        (##unchecked-structure-set!
         _%tab112881%_
         _%val112882%_
         '1
         __gc-table::t
         'gc-table-gcht-set!)))
    (define &gc-table-immediate-set!
      (lambda (_%tab112878%_ _%val112879%_)
        (##unchecked-structure-set!
         _%tab112878%_
         _%val112879%_
         '2
         __gc-table::t
         'gc-table-immediate-set!)))
    (define &gc-table-lock-set!
      (lambda (_%tab112875%_ _%val112876%_)
        (##unchecked-structure-set!
         _%tab112875%_
         _%val112876%_
         '3
         __gc-table::t
         'gc-table-lock-set!)))
    (define make-gc-table__%
      (lambda (_%size-hint112839%_
               _%klass112840%_
               _%flags112841%_
               _%lock112842%_)
        (let ((_%gcht112844%_
               (__gc-table-new
                (if (fixnum? _%size-hint112839%_) _%size-hint112839%_ '16)
                _%flags112841%_)))
          (##structure _%klass112840%_ _%gcht112844%_ '#f _%lock112842%_))))
    (define make-gc-table__0
      (lambda (_%size-hint112849%_)
        (let* ((_%klass112851%_ __gc-table::t)
               (_%flags112853%_ '0)
               (_%lock112855%_ '#f))
          (make-gc-table__%
           _%size-hint112849%_
           _%klass112851%_
           _%flags112853%_
           _%lock112855%_))))
    (define make-gc-table__1
      (lambda (_%size-hint112857%_ _%klass112858%_)
        (let* ((_%flags112860%_ '0) (_%lock112862%_ '#f))
          (make-gc-table__%
           _%size-hint112857%_
           _%klass112858%_
           _%flags112860%_
           _%lock112862%_))))
    (define make-gc-table__2
      (lambda (_%size-hint112864%_ _%klass112865%_ _%flags112866%_)
        (let ((_%lock112868%_ '#f))
          (make-gc-table__%
           _%size-hint112864%_
           _%klass112865%_
           _%flags112866%_
           _%lock112868%_))))
    (define make-gc-table
      (lambda _g115225_
        (let ((_g115226_ (##length _g115225_)))
          (cond ((##fx= _g115226_ 1) (apply make-gc-table__0 _g115225_))
                ((##fx= _g115226_ 2) (apply make-gc-table__1 _g115225_))
                ((##fx= _g115226_ 3) (apply make-gc-table__2 _g115225_))
                ((##fx= _g115226_ 4) (apply make-gc-table__% _g115225_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table
                  _g115225_))))))
    (define make-gc-table/lock__%
      (lambda (_%size-hint112816%_ _%klass112817%_ _%flags112818%_)
        (make-gc-table__%
         _%size-hint112816%_
         _%klass112817%_
         _%flags112818%_
         (vector '0 '#f))))
    (define make-gc-table/lock__0
      (lambda (_%size-hint112823%_)
        (let* ((_%klass112825%_ __gc-table::t) (_%flags112827%_ '0))
          (make-gc-table/lock__%
           _%size-hint112823%_
           _%klass112825%_
           _%flags112827%_))))
    (define make-gc-table/lock__1
      (lambda (_%size-hint112829%_ _%klass112830%_)
        (let ((_%flags112832%_ '0))
          (make-gc-table/lock__%
           _%size-hint112829%_
           _%klass112830%_
           _%flags112832%_))))
    (define make-gc-table/lock
      (lambda _g115227_
        (let ((_g115228_ (##length _g115227_)))
          (cond ((##fx= _g115228_ 1) (apply make-gc-table/lock__0 _g115227_))
                ((##fx= _g115228_ 2) (apply make-gc-table/lock__1 _g115227_))
                ((##fx= _g115228_ 3) (apply make-gc-table/lock__% _g115227_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table/lock
                  _g115227_))))))
    (define __gc-table-immediate
      (lambda (_%tab112807%_)
        (let ((_%$e112809%_ (&gc-table-immediate _%tab112807%_)))
          (if _%$e112809%_
              _%$e112809%_
              (let ((_%immediate112813%_ (make-immediate-table__% '#f '0)))
                (&gc-table-immediate-set! _%tab112807%_ _%immediate112813%_)
                _%immediate112813%_)))))
    (define __gc-table-new
      (lambda (_%size112797%_ _%flags112798%_)
        (let* ((_%flags112800%_
                (##fxand _%flags112798%_
                         (fxnot (macro-gc-hash-table-flag-need-rehash))))
               (_%flags112802%_
                (fxior _%flags112800%_
                       (macro-gc-hash-table-flag-mem-alloc-keys)))
               (_%gcht112804%_
                (##gc-hash-table-allocate
                 _%size112797%_
                 _%flags112802%_
                 __gc-table-loads)))
          _%gcht112804%_)))
    (define __gc-table-e
      (lambda (_%tab112792%_)
        (declare (not interrupts-enabled))
        (let ((_%gcht112795%_ (&gc-table-gcht _%tab112792%_)))
          (if (##fx= '0
                     (fxand (macro-gc-hash-table-flags _%gcht112795%_)
                            (macro-gc-hash-table-flag-need-rehash)))
              _%gcht112795%_
              (begin
                (__gc-table-rehash! _%tab112792%_)
                (&gc-table-gcht _%tab112792%_))))))
    (define __gc-table-rehash!
      (lambda (_%tab112783%_)
        (let* ((_%old-table112785%_ (&gc-table-gcht _%tab112783%_))
               (_%new-table112787%_
                (##gc-hash-table-resize! _%old-table112785%_ __gc-table-loads))
               (_%gcht112789%_
                (##gc-hash-table-rehash!
                 _%old-table112785%_
                 _%new-table112787%_)))
          (&gc-table-gcht-set! _%tab112783%_ _%gcht112789%_))))
    (define gc-table-ref
      (lambda (_%tab112767%_ _%key112768%_ _%default112769%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key112768%_)
            (let* ((_%gcht112773%_ (__gc-table-e _%tab112767%_))
                   (_%value112775%_
                    (##gc-hash-table-ref _%gcht112773%_ _%key112768%_)))
              (if (eq? _%value112775%_ (macro-unused-obj))
                  _%default112769%_
                  _%value112775%_))
            (let ((_%$e112777%_ (&gc-table-immediate _%tab112767%_)))
              (if _%$e112777%_
                  ((lambda (_%immediate112780%_)
                     (immediate-table-ref
                      _%immediate112780%_
                      _%key112768%_
                      _%default112769%_))
                   _%$e112777%_)
                  _%default112769%_)))))
    (define gc-table-ref/lock
      (lambda (_%tab112743%_ _%key112744%_ _%default112745%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again112749%_ ((_%spin112752%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab112743%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab112743%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin112752%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again112749%_ (##fx+ _%spin112752%_ '1)))
                    (let ((_%owner112758%_
                           (##vector-ref (&gc-table-lock _%tab112743%_) '1)))
                      (if (eq? _%owner112758%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner112758%_)
                              (let () (##thread-yield!) (_%again112749%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r112764%_
               (gc-table-ref _%tab112743%_ _%key112744%_ _%default112745%_)))
          (##vector-set! (&gc-table-lock _%tab112743%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab112743%_) '0 '0 '1)
          _%$r112764%_)))
    (define gc-table-set!
      (lambda (_%tab112736%_ _%key112737%_ _%value112738%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key112737%_)
            (let ((_%gcht112741%_ (__gc-table-e _%tab112736%_)))
              (if (##gc-hash-table-set!
                   _%gcht112741%_
                   _%key112737%_
                   _%value112738%_)
                  (begin
                    (__gc-table-rehash! _%tab112736%_)
                    (gc-table-set!
                     _%tab112736%_
                     _%key112737%_
                     _%value112738%_))
                  '#!void))
            (immediate-table-set!
             (__gc-table-immediate _%tab112736%_)
             _%key112737%_
             _%value112738%_))))
    (define gc-table-set/lock!
      (lambda (_%tab112712%_ _%key112713%_ _%value112714%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again112718%_ ((_%spin112721%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab112712%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab112712%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin112721%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again112718%_ (##fx+ _%spin112721%_ '1)))
                    (let ((_%owner112727%_
                           (##vector-ref (&gc-table-lock _%tab112712%_) '1)))
                      (if (eq? _%owner112727%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner112727%_)
                              (let () (##thread-yield!) (_%again112718%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r112733%_
               (gc-table-set! _%tab112712%_ _%key112713%_ _%value112714%_)))
          (##vector-set! (&gc-table-lock _%tab112712%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab112712%_) '0 '0 '1)
          _%$r112733%_)))
    (define gc-table-update!
      (lambda (_%tab112705%_ _%key112706%_ _%update112707%_ _%default112708%_)
        (if (##mem-allocated? _%key112706%_)
            (let ((_%value112710%_
                   (gc-table-ref
                    _%tab112705%_
                    _%key112706%_
                    _%default112708%_)))
              (gc-table-set!
               _%tab112705%_
               _%key112706%_
               (_%update112707%_ _%value112710%_)))
            (immediate-table-update!
             (__gc-table-immediate _%tab112705%_)
             _%key112706%_
             _%update112707%_
             _%default112708%_))))
    (define gc-table-update!/lock
      (lambda (_%tab112680%_ _%key112681%_ _%update112682%_ _%default112683%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again112687%_ ((_%spin112690%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab112680%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab112680%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin112690%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again112687%_ (##fx+ _%spin112690%_ '1)))
                    (let ((_%owner112696%_
                           (##vector-ref (&gc-table-lock _%tab112680%_) '1)))
                      (if (eq? _%owner112696%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner112696%_)
                              (let () (##thread-yield!) (_%again112687%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r112702%_
               (gc-table-update!
                _%tab112680%_
                _%key112681%_
                _%update112682%_
                _%default112683%_)))
          (##vector-set! (&gc-table-lock _%tab112680%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab112680%_) '0 '0 '1)
          _%$r112702%_)))
    (define gc-table-delete!
      (lambda (_%tab112668%_ _%key112669%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key112669%_)
            (let ((_%gcht112673%_ (__gc-table-e _%tab112668%_)))
              (if (##gc-hash-table-set!
                   _%gcht112673%_
                   _%key112669%_
                   (macro-absent-obj))
                  (begin
                    (__gc-table-rehash! _%tab112668%_)
                    (gc-table-delete! _%tab112668%_ _%key112669%_))
                  '#!void))
            (let ((_%$e112675%_ (&gc-table-immediate _%tab112668%_)))
              (if _%$e112675%_
                  ((lambda (_%immediate112678%_)
                     (immediate-table-delete!
                      _%immediate112678%_
                      _%key112669%_))
                   _%$e112675%_)
                  '#!void)))))
    (define gc-table-delete!/lock
      (lambda (_%tab112645%_ _%key112646%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again112650%_ ((_%spin112653%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab112645%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab112645%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin112653%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again112650%_ (##fx+ _%spin112653%_ '1)))
                    (let ((_%owner112659%_
                           (##vector-ref (&gc-table-lock _%tab112645%_) '1)))
                      (if (eq? _%owner112659%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner112659%_)
                              (let () (##thread-yield!) (_%again112650%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r112665%_ (gc-table-delete! _%tab112645%_ _%key112646%_)))
          (##vector-set! (&gc-table-lock _%tab112645%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab112645%_) '0 '0 '1)
          _%$r112665%_)))
    (define gc-table-for-each
      (lambda (_%tab112634%_ _%proc112635%_)
        (declare (not interrupts-enabled))
        (begin
          (let ((_%gcht112638%_ (__gc-table-e _%tab112634%_)))
            (##gc-hash-table-for-each _%proc112635%_ _%gcht112638%_))
          (let ((_%$e112640%_ (&gc-table-immediate _%tab112634%_)))
            (if _%$e112640%_
                ((lambda (_%immediate112643%_)
                   (raw-table-for-each _%immediate112643%_ _%proc112635%_))
                 _%$e112640%_)
                '#!void)))))
    (define gc-table-for-each/lock
      (lambda (_%tab112611%_ _%proc112612%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again112616%_ ((_%spin112619%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab112611%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab112611%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin112619%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again112616%_ (##fx+ _%spin112619%_ '1)))
                    (let ((_%owner112625%_
                           (##vector-ref (&gc-table-lock _%tab112611%_) '1)))
                      (if (eq? _%owner112625%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner112625%_)
                              (let () (##thread-yield!) (_%again112616%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r112631%_ (gc-table-for-each _%tab112611%_ _%proc112612%_)))
          (##vector-set! (&gc-table-lock _%tab112611%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab112611%_) '0 '0 '1)
          _%$r112631%_)))
    (define gc-table-copy
      (lambda (_%tab112599%_)
        (let* ((_%gcht112601%_ (__gc-table-e _%tab112599%_))
               (_%new-table112603%_
                (__gc-table-new
                 (macro-gc-hash-table-count _%gcht112601%_)
                 (macro-gc-hash-table-flags _%gcht112601%_)))
               (_%result112605%_
                (##structure
                 (##structure-type _%tab112599%_)
                 _%new-table112603%_
                 '#f)))
          (gc-table-for-each
           _%tab112599%_
           (lambda (_%k112608%_ _%v112609%_)
             (gc-table-set! _%result112605%_ _%k112608%_ _%v112609%_)))
          _%result112605%_)))
    (define gc-table-copy/lock
      (lambda (_%tab112577%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again112581%_ ((_%spin112584%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab112577%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab112577%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin112584%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again112581%_ (##fx+ _%spin112584%_ '1)))
                    (let ((_%owner112590%_
                           (##vector-ref (&gc-table-lock _%tab112577%_) '1)))
                      (if (eq? _%owner112590%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner112590%_)
                              (let () (##thread-yield!) (_%again112581%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r112596%_ (gc-table-copy _%tab112577%_)))
          (##vector-set! (&gc-table-lock _%tab112577%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab112577%_) '0 '0 '1)
          _%$r112596%_)))
    (define gc-table-clear!
      (lambda (_%tab112570%_)
        (let* ((_%gcht112572%_ (__gc-table-e _%tab112570%_))
               (_%new-table112574%_
                (__gc-table-new
                 '16
                 (macro-gc-hash-table-flags _%gcht112572%_))))
          (&gc-table-gcht-set! _%tab112570%_ _%new-table112574%_)
          (&gc-table-immediate-set! _%tab112570%_ '#f))))
    (define gc-table-clear!/lock
      (lambda (_%tab112548%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again112552%_ ((_%spin112555%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab112548%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab112548%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin112555%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again112552%_ (##fx+ _%spin112555%_ '1)))
                    (let ((_%owner112561%_
                           (##vector-ref (&gc-table-lock _%tab112548%_) '1)))
                      (if (eq? _%owner112561%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner112561%_)
                              (let () (##thread-yield!) (_%again112552%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r112567%_ (gc-table-clear! _%tab112548%_)))
          (##vector-set! (&gc-table-lock _%tab112548%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab112548%_) '0 '0 '1)
          _%$r112567%_)))
    (define gc-table-length
      (lambda (_%tab112540%_)
        (let ((_%gcht112542%_ (__gc-table-e _%tab112540%_)))
          (fx+ (macro-gc-hash-table-count _%gcht112542%_)
               (let ((_%$e112544%_ (&gc-table-immediate _%tab112540%_)))
                 (if _%$e112544%_ (&raw-table-count _%$e112544%_) '0))))))
    (define gc-table-length/lock
      (lambda (_%tab112518%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again112522%_ ((_%spin112525%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab112518%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab112518%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin112525%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again112522%_ (##fx+ _%spin112525%_ '1)))
                    (let ((_%owner112531%_
                           (##vector-ref (&gc-table-lock _%tab112518%_) '1)))
                      (if (eq? _%owner112531%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner112531%_)
                              (let () (##thread-yield!) (_%again112522%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r112537%_ (gc-table-length _%tab112518%_)))
          (##vector-set! (&gc-table-lock _%tab112518%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab112518%_) '0 '0 '1)
          _%$r112537%_)))
    (define __object-eq-hash-lock (vector '0 '#f))
    (define __object-eq-hash-next '0)
    (define __object-eq-hash
      (make-gc-table__2
       '1024
       __gc-table::t
       (macro-gc-hash-table-flag-weak-keys)))
    (define __object->eq-hash
      (lambda (_%obj112488%_)
        (declare (not interrupts-enabled))
        (begin
          (let ()
            (declare (not interrupts-enabled))
            (let _%again112493%_ ((_%spin112496%_ '0))
              (if (##fx= (##vector-cas! __object-eq-hash-lock '0 '1 '0) '0)
                  (##vector-set! __object-eq-hash-lock '1 (current-thread))
                  (if (##fx< _%spin112496%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again112493%_ (##fx+ _%spin112496%_ '1)))
                      (let ((_%owner112502%_
                             (##vector-ref __object-eq-hash-lock '1)))
                        (if (eq? _%owner112502%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner112502%_)
                                (let () (##thread-yield!) (_%again112493%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r112515%_
                 (let ((_%val112508%_
                        (gc-table-ref __object-eq-hash _%obj112488%_ '#f)))
                   (if _%val112508%_
                       _%val112508%_
                       (let ((_%h112510%_
                              (fxand __object-eq-hash (macro-max-fixnum32))))
                         (set! __object-eq-hash-next
                               (let ((_%$e112512%_
                                      (##fx+? __object-eq-hash-next '1)))
                                 (if _%$e112512%_ _%$e112512%_ '0)))
                         (gc-table-set!
                          __object-eq-hash
                          _%obj112488%_
                          _%h112510%_)
                         _%h112510%_)))))
            (##vector-set! __object-eq-hash-lock '1 '#f)
            (##vector-cas! __object-eq-hash-lock '0 '0 '1)
            _%$r112515%_))))))
