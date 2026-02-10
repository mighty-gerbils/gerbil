(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1770744573)
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
      (lambda (_%obj117446%_)
        (if (##structure? _%obj117446%_)
            (##structure-instance-of? _%obj117446%_ __table::t.id)
            '#f)))
    (define &raw-table-table
      (lambda (_%tab117444%_)
        (##unchecked-structure-ref
         _%tab117444%_
         '1
         __table::t
         'raw-table-table)))
    (define &raw-table-count
      (lambda (_%tab117442%_)
        (##unchecked-structure-ref
         _%tab117442%_
         '2
         __table::t
         'raw-table-count)))
    (define &raw-table-free
      (lambda (_%tab117440%_)
        (##unchecked-structure-ref
         _%tab117440%_
         '3
         __table::t
         'raw-table-free)))
    (define &raw-table-hash
      (lambda (_%tab117438%_)
        (##unchecked-structure-ref
         _%tab117438%_
         '4
         __table::t
         'raw-table-hash)))
    (define &raw-table-test
      (lambda (_%tab117436%_)
        (##unchecked-structure-ref
         _%tab117436%_
         '5
         __table::t
         'raw-table-test)))
    (define &raw-table-seed
      (lambda (_%tab117434%_)
        (##unchecked-structure-ref
         _%tab117434%_
         '6
         __table::t
         'raw-table-seed)))
    (define &raw-table-lock
      (lambda (_%tab117432%_)
        (##unchecked-structure-ref
         _%tab117432%_
         '7
         __table::t
         'raw-table-lock)))
    (define &raw-table-table-set!
      (lambda (_%tab117429%_ _%val117430%_)
        (##unchecked-structure-set!
         _%tab117429%_
         _%val117430%_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_%tab117426%_ _%val117427%_)
        (##unchecked-structure-set!
         _%tab117426%_
         _%val117427%_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_%tab117423%_ _%val117424%_)
        (##unchecked-structure-set!
         _%tab117423%_
         _%val117424%_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_%tab117420%_ _%val117421%_)
        (##unchecked-structure-set!
         _%tab117420%_
         _%val117421%_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_%tab117417%_ _%val117418%_)
        (##unchecked-structure-set!
         _%tab117417%_
         _%val117418%_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_%tab117414%_ _%val117415%_)
        (##unchecked-structure-set!
         _%tab117414%_
         _%val117415%_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define &raw-table-lock-set!
      (lambda (_%tab117411%_ _%val117412%_)
        (##unchecked-structure-set!
         _%tab117411%_
         _%val117412%_
         '7
         __table::t
         'raw-table-lock-set!)))
    (define raw-table-size-hint->size
      (lambda (_%size-hint117409%_)
        (if (and (fixnum? _%size-hint117409%_) (##fx> _%size-hint117409%_ '0))
            (##fx* (fxmax '2 (expt '2 (integer-length _%size-hint117409%_)))
                   '4)
            '16)))
    (define make-raw-table__%
      (lambda (_%size-hint117374%_
               _%hash117375%_
               _%test117376%_
               _%seed117377%_
               _%lock117378%_)
        (let* ((_%size117380%_ (raw-table-size-hint->size _%size-hint117374%_))
               (_%table117382%_
                (##make-vector _%size117380%_ (macro-unused-obj))))
          (##structure
           __table::t
           _%table117382%_
           '0
           (##fxquotient _%size117380%_ '2)
           _%hash117375%_
           _%test117376%_
           _%seed117377%_
           _%lock117378%_))))
    (define make-raw-table__0
      (lambda (_%size-hint117388%_ _%hash117389%_ _%test117390%_)
        (let* ((_%seed117392%_ '0) (_%lock117394%_ '#f))
          (make-raw-table__%
           _%size-hint117388%_
           _%hash117389%_
           _%test117390%_
           _%seed117392%_
           _%lock117394%_))))
    (define make-raw-table__1
      (lambda (_%size-hint117396%_
               _%hash117397%_
               _%test117398%_
               _%seed117399%_)
        (let ((_%lock117401%_ '#f))
          (make-raw-table__%
           _%size-hint117396%_
           _%hash117397%_
           _%test117398%_
           _%seed117399%_
           _%lock117401%_))))
    (define make-raw-table
      (lambda _g117447_
        (let ((_g117448_ (##length _g117447_)))
          (cond ((##fx= _g117448_ 3) (apply make-raw-table__0 _g117447_))
                ((##fx= _g117448_ 4) (apply make-raw-table__1 _g117447_))
                ((##fx= _g117448_ 5) (apply make-raw-table__% _g117447_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g117447_))))))
    (define make-raw-table/lock__%
      (lambda (_%size-hint117354%_
               _%hash117355%_
               _%test117356%_
               _%seed117357%_)
        (make-raw-table__%
         _%size-hint117354%_
         _%hash117355%_
         _%test117356%_
         _%seed117357%_
         (vector '0 '#f))))
    (define make-raw-table/lock__0
      (lambda (_%size-hint117362%_ _%hash117363%_ _%test117364%_)
        (let ((_%seed117366%_ '0))
          (make-raw-table/lock__%
           _%size-hint117362%_
           _%hash117363%_
           _%test117364%_
           _%seed117366%_))))
    (define make-raw-table/lock
      (lambda _g117449_
        (let ((_g117450_ (##length _g117449_)))
          (cond ((##fx= _g117450_ 3) (apply make-raw-table/lock__0 _g117449_))
                ((##fx= _g117450_ 4) (apply make-raw-table/lock__% _g117449_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table/lock
                  _g117449_))))))
    (define raw-table-length
      (lambda (_%tab117351%_) (&raw-table-count _%tab117351%_)))
    (define raw-table-length/lock
      (lambda (_%tab117326%_)
        (let ((_%lock117328%_ (&raw-table-lock _%tab117326%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again117333%_ ((_%spin117336%_ '0))
              (if (##fx= (##vector-cas! _%lock117328%_ '0 '1 '0) '0)
                  (##vector-set! _%lock117328%_ '1 (current-thread))
                  (if (##fx< _%spin117336%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again117333%_ (##fx+ _%spin117336%_ '1)))
                      (let ((_%owner117342%_ (##vector-ref _%lock117328%_ '1)))
                        (if (eq? _%owner117342%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner117342%_)
                                (let () (##thread-yield!) (_%again117333%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r117348%_ (&raw-table-count _%tab117326%_)))
            (##vector-set! _%lock117328%_ '1 '#f)
            (##vector-cas! _%lock117328%_ '0 '0 '1)
            _%$r117348%_))))
    (define raw-table-ref
      (lambda (_%tab117278%_ _%key117279%_ _%default117280%_)
        (let ((_%table117282%_ (&raw-table-table _%tab117278%_))
              (_%seed117283%_ (&raw-table-seed _%tab117278%_))
              (_%hash117284%_ (&raw-table-hash _%tab117278%_))
              (_%test117285%_ (&raw-table-test _%tab117278%_)))
          (let* ((_%h117287%_
                  (fxxor (_%hash117284%_ _%key117279%_) _%seed117283%_))
                 (_%size117290%_ (vector-length _%table117282%_))
                 (_%entries117293%_ (##fxquotient _%size117290%_ '2))
                 (_%start117296%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h117287%_ _%entries117293%_)
                   '1)))
            (let _%loop117300%_ ((_%probe117303%_ _%start117296%_)
                                 (_%i117305%_ '1)
                                 (_%deleted117307%_ '#f))
              (let ((_%k117310%_ (vector-ref _%table117282%_ _%probe117303%_)))
                (if (eq? _%k117310%_ (macro-unused-obj))
                    _%default117280%_
                    (if (eq? _%k117310%_ (macro-deleted-obj))
                        (_%loop117300%_
                         (let ((_%next-probe117315%_
                                (fx+ _%start117296%_
                                     _%i117305%_
                                     (fx* _%i117305%_ _%i117305%_))))
                           (##fxmodulo _%next-probe117315%_ _%size117290%_))
                         (##fx+ _%i117305%_ '1)
                         (let ((_%$e117318%_ _%deleted117307%_))
                           (if _%$e117318%_ _%$e117318%_ _%probe117303%_)))
                        (if (_%test117285%_ _%key117279%_ _%k117310%_)
                            (vector-ref
                             _%table117282%_
                             (##fx+ _%probe117303%_ '1))
                            (_%loop117300%_
                             (let ((_%next-probe117323%_
                                    (fx+ _%start117296%_
                                         _%i117305%_
                                         (fx* _%i117305%_ _%i117305%_))))
                               (##fxmodulo
                                _%next-probe117323%_
                                _%size117290%_))
                             (##fx+ _%i117305%_ '1)
                             _%deleted117307%_))))))))))
    (define raw-table-ref/lock
      (lambda (_%tab117251%_ _%key117252%_ _%default117253%_)
        (let ((_%lock117255%_ (&raw-table-lock _%tab117251%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again117260%_ ((_%spin117263%_ '0))
              (if (##fx= (##vector-cas! _%lock117255%_ '0 '1 '0) '0)
                  (##vector-set! _%lock117255%_ '1 (current-thread))
                  (if (##fx< _%spin117263%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again117260%_ (##fx+ _%spin117263%_ '1)))
                      (let ((_%owner117269%_ (##vector-ref _%lock117255%_ '1)))
                        (if (eq? _%owner117269%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner117269%_)
                                (let () (##thread-yield!) (_%again117260%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r117275%_
                 (raw-table-ref
                  _%tab117251%_
                  _%key117252%_
                  _%default117253%_)))
            (##vector-set! _%lock117255%_ '1 '#f)
            (##vector-cas! _%lock117255%_ '0 '0 '1)
            _%$r117275%_))))
    (define raw-table-set!
      (lambda (_%tab117247%_ _%key117248%_ _%value117249%_)
        (if (##fx< (&raw-table-free _%tab117247%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab117247%_))
                    '4))
            (__raw-table-rehash! _%tab117247%_)
            '#!void)
        (__raw-table-set! _%tab117247%_ _%key117248%_ _%value117249%_)))
    (define raw-table-set!/lock
      (lambda (_%tab117220%_ _%key117221%_ _%value117222%_)
        (let ((_%lock117224%_ (&raw-table-lock _%tab117220%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again117229%_ ((_%spin117232%_ '0))
              (if (##fx= (##vector-cas! _%lock117224%_ '0 '1 '0) '0)
                  (##vector-set! _%lock117224%_ '1 (current-thread))
                  (if (##fx< _%spin117232%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again117229%_ (##fx+ _%spin117232%_ '1)))
                      (let ((_%owner117238%_ (##vector-ref _%lock117224%_ '1)))
                        (if (eq? _%owner117238%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner117238%_)
                                (let () (##thread-yield!) (_%again117229%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r117244%_
                 (raw-table-set! _%tab117220%_ _%key117221%_ _%value117222%_)))
            (##vector-set! _%lock117224%_ '1 '#f)
            (##vector-cas! _%lock117224%_ '0 '0 '1)
            _%$r117244%_))))
    (define raw-table-update!
      (lambda (_%tab117215%_ _%key117216%_ _%update117217%_ _%default117218%_)
        (if (##fx< (&raw-table-free _%tab117215%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab117215%_))
                    '4))
            (__raw-table-rehash! _%tab117215%_)
            '#!void)
        (__raw-table-update!
         _%tab117215%_
         _%key117216%_
         _%update117217%_
         _%default117218%_)))
    (define raw-table-update!/lock
      (lambda (_%tab117187%_ _%key117188%_ _%update117189%_ _%default117190%_)
        (let ((_%lock117192%_ (&raw-table-lock _%tab117187%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again117197%_ ((_%spin117200%_ '0))
              (if (##fx= (##vector-cas! _%lock117192%_ '0 '1 '0) '0)
                  (##vector-set! _%lock117192%_ '1 (current-thread))
                  (if (##fx< _%spin117200%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again117197%_ (##fx+ _%spin117200%_ '1)))
                      (let ((_%owner117206%_ (##vector-ref _%lock117192%_ '1)))
                        (if (eq? _%owner117206%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner117206%_)
                                (let () (##thread-yield!) (_%again117197%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r117212%_
                 (raw-table-update!
                  _%tab117187%_
                  _%key117188%_
                  _%update117189%_
                  _%default117190%_)))
            (##vector-set! _%lock117192%_ '1 '#f)
            (##vector-cas! _%lock117192%_ '0 '0 '1)
            _%$r117212%_))))
    (define raw-table-delete!
      (lambda (_%tab117144%_ _%key117145%_)
        (let ((_%table117147%_ (&raw-table-table _%tab117144%_))
              (_%seed117148%_ (&raw-table-seed _%tab117144%_))
              (_%hash117149%_ (&raw-table-hash _%tab117144%_))
              (_%test117150%_ (&raw-table-test _%tab117144%_)))
          (let* ((_%h117152%_
                  (fxxor (_%hash117149%_ _%key117145%_) _%seed117148%_))
                 (_%size117155%_ (vector-length _%table117147%_))
                 (_%entries117158%_ (##fxquotient _%size117155%_ '2))
                 (_%start117161%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h117152%_ _%entries117158%_)
                   '1)))
            (let _%loop117165%_ ((_%probe117168%_ _%start117161%_)
                                 (_%i117170%_ '1))
              (let ((_%k117173%_ (vector-ref _%table117147%_ _%probe117168%_)))
                (if (eq? _%k117173%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k117173%_ (macro-deleted-obj))
                        (_%loop117165%_
                         (let ((_%next-probe117178%_
                                (fx+ _%start117161%_
                                     _%i117170%_
                                     (fx* _%i117170%_ _%i117170%_))))
                           (##fxmodulo _%next-probe117178%_ _%size117155%_))
                         (##fx+ _%i117170%_ '1))
                        (if (_%test117150%_ _%key117145%_ _%k117173%_)
                            (let ()
                              (vector-set!
                               _%table117147%_
                               _%probe117168%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table117147%_
                               (##fx+ _%probe117168%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab117144%_
                                  (##fx- (&raw-table-count _%tab117144%_)
                                         '1)))))
                            (_%loop117165%_
                             (let ((_%next-probe117184%_
                                    (fx+ _%start117161%_
                                         _%i117170%_
                                         (fx* _%i117170%_ _%i117170%_))))
                               (##fxmodulo
                                _%next-probe117184%_
                                _%size117155%_))
                             (##fx+ _%i117170%_ '1)))))))))))
    (define raw-table-delete!/lock
      (lambda (_%tab117118%_ _%key117119%_)
        (let ((_%lock117121%_ (&raw-table-lock _%tab117118%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again117126%_ ((_%spin117129%_ '0))
              (if (##fx= (##vector-cas! _%lock117121%_ '0 '1 '0) '0)
                  (##vector-set! _%lock117121%_ '1 (current-thread))
                  (if (##fx< _%spin117129%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again117126%_ (##fx+ _%spin117129%_ '1)))
                      (let ((_%owner117135%_ (##vector-ref _%lock117121%_ '1)))
                        (if (eq? _%owner117135%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner117135%_)
                                (let () (##thread-yield!) (_%again117126%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r117141%_ (raw-table-delete! _%tab117118%_ _%key117119%_)))
            (##vector-set! _%lock117121%_ '1 '#f)
            (##vector-cas! _%lock117121%_ '0 '0 '1)
            _%$r117141%_))))
    (define raw-table-for-each
      (lambda (_%tab117102%_ _%proc117103%_)
        (let* ((_%table117105%_ (&raw-table-table _%tab117102%_))
               (_%size117107%_ (vector-length _%table117105%_)))
          (let _%loop117110%_ ((_%i117112%_ '0))
            (if (##fx< _%i117112%_ _%size117107%_)
                (begin
                  (let ((_%key117114%_
                         (vector-ref _%table117105%_ _%i117112%_)))
                    (if (if (eq? _%key117114%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key117114%_ (macro-deleted-obj))))
                        (let ((_%value117116%_
                               (vector-ref
                                _%table117105%_
                                (##fx+ _%i117112%_ '1))))
                          (_%proc117103%_ _%key117114%_ _%value117116%_))
                        '#!void))
                  (_%loop117110%_ (##fx+ _%i117112%_ '2)))
                '#!void)))))
    (define raw-table-for-each/lock
      (lambda (_%tab117076%_ _%proc117077%_)
        (let ((_%lock117079%_ (&raw-table-lock _%tab117076%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again117084%_ ((_%spin117087%_ '0))
              (if (##fx= (##vector-cas! _%lock117079%_ '0 '1 '0) '0)
                  (##vector-set! _%lock117079%_ '1 (current-thread))
                  (if (##fx< _%spin117087%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again117084%_ (##fx+ _%spin117087%_ '1)))
                      (let ((_%owner117093%_ (##vector-ref _%lock117079%_ '1)))
                        (if (eq? _%owner117093%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner117093%_)
                                (let () (##thread-yield!) (_%again117084%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r117099%_
                 (raw-table-for-each _%tab117076%_ _%proc117077%_)))
            (##vector-set! _%lock117079%_ '1 '#f)
            (##vector-cas! _%lock117079%_ '0 '0 '1)
            _%$r117099%_))))
    (define raw-table-copy
      (lambda (_%tab117072%_)
        (let ((_%new-tab117074%_ (##structure-copy _%tab117072%_)))
          (&raw-table-table-set!
           _%new-tab117074%_
           (vector-copy (&raw-table-table _%tab117072%_)))
          _%new-tab117074%_)))
    (define raw-table-copy/lock
      (lambda (_%tab117047%_)
        (let ((_%lock117049%_ (&raw-table-lock _%tab117047%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again117054%_ ((_%spin117057%_ '0))
              (if (##fx= (##vector-cas! _%lock117049%_ '0 '1 '0) '0)
                  (##vector-set! _%lock117049%_ '1 (current-thread))
                  (if (##fx< _%spin117057%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again117054%_ (##fx+ _%spin117057%_ '1)))
                      (let ((_%owner117063%_ (##vector-ref _%lock117049%_ '1)))
                        (if (eq? _%owner117063%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner117063%_)
                                (let () (##thread-yield!) (_%again117054%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r117069%_ (raw-table-copy _%tab117047%_)))
            (##vector-set! _%lock117049%_ '1 '#f)
            (##vector-cas! _%lock117049%_ '0 '0 '1)
            _%$r117069%_))))
    (define raw-table-clear!
      (lambda (_%tab117045%_)
        (vector-fill! (&raw-table-table _%tab117045%_) (macro-unused-obj))
        (&raw-table-count-set! _%tab117045%_ '0)
        (&raw-table-free-set!
         _%tab117045%_
         (##fxquotient (vector-length (&raw-table-table _%tab117045%_)) '2))))
    (define raw-table-clear!/lock
      (lambda (_%tab117020%_)
        (let ((_%lock117022%_ (&raw-table-lock _%tab117020%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again117027%_ ((_%spin117030%_ '0))
              (if (##fx= (##vector-cas! _%lock117022%_ '0 '1 '0) '0)
                  (##vector-set! _%lock117022%_ '1 (current-thread))
                  (if (##fx< _%spin117030%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again117027%_ (##fx+ _%spin117030%_ '1)))
                      (let ((_%owner117036%_ (##vector-ref _%lock117022%_ '1)))
                        (if (eq? _%owner117036%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner117036%_)
                                (let () (##thread-yield!) (_%again117027%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r117042%_ (raw-table-clear! _%tab117020%_)))
            (##vector-set! _%lock117022%_ '1 '#f)
            (##vector-cas! _%lock117022%_ '0 '0 '1)
            _%$r117042%_))))
    (define __raw-table-set!
      (lambda (_%tab116970%_ _%key116971%_ _%value116972%_)
        (let ((_%table116974%_ (&raw-table-table _%tab116970%_))
              (_%seed116975%_ (&raw-table-seed _%tab116970%_))
              (_%hash116976%_ (&raw-table-hash _%tab116970%_))
              (_%test116977%_ (&raw-table-test _%tab116970%_)))
          (let* ((_%h116979%_
                  (fxxor (_%hash116976%_ _%key116971%_) _%seed116975%_))
                 (_%size116982%_ (vector-length _%table116974%_))
                 (_%entries116985%_ (##fxquotient _%size116982%_ '2))
                 (_%start116988%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h116979%_ _%entries116985%_)
                   '1)))
            (let _%loop116992%_ ((_%probe116995%_ _%start116988%_)
                                 (_%i116997%_ '1)
                                 (_%deleted116999%_ '#f))
              (let ((_%k117002%_ (vector-ref _%table116974%_ _%probe116995%_)))
                (if (eq? _%k117002%_ (macro-unused-obj))
                    (if _%deleted116999%_
                        (begin
                          (vector-set!
                           _%table116974%_
                           _%deleted116999%_
                           _%key116971%_)
                          (vector-set!
                           _%table116974%_
                           (##fx+ _%deleted116999%_ '1)
                           _%value116972%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab116970%_
                              (##fx+ (&raw-table-count _%tab116970%_) '1)))))
                        (begin
                          (vector-set!
                           _%table116974%_
                           _%probe116995%_
                           _%key116971%_)
                          (vector-set!
                           _%table116974%_
                           (##fx+ _%probe116995%_ '1)
                           _%value116972%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab116970%_
                              (##fx- (&raw-table-free _%tab116970%_) '1))
                             (&raw-table-count-set!
                              _%tab116970%_
                              (##fx+ (&raw-table-count _%tab116970%_) '1))))))
                    (if (eq? _%k117002%_ (macro-deleted-obj))
                        (_%loop116992%_
                         (let ((_%next-probe117009%_
                                (fx+ _%start116988%_
                                     _%i116997%_
                                     (fx* _%i116997%_ _%i116997%_))))
                           (##fxmodulo _%next-probe117009%_ _%size116982%_))
                         (##fx+ _%i116997%_ '1)
                         (let ((_%$e117012%_ _%deleted116999%_))
                           (if _%$e117012%_ _%$e117012%_ _%probe116995%_)))
                        (if (_%test116977%_ _%key116971%_ _%k117002%_)
                            (let ()
                              (vector-set!
                               _%table116974%_
                               _%probe116995%_
                               _%key116971%_)
                              (vector-set!
                               _%table116974%_
                               (##fx+ _%probe116995%_ '1)
                               _%value116972%_))
                            (_%loop116992%_
                             (let ((_%next-probe117017%_
                                    (fx+ _%start116988%_
                                         _%i116997%_
                                         (fx* _%i116997%_ _%i116997%_))))
                               (##fxmodulo
                                _%next-probe117017%_
                                _%size116982%_))
                             (##fx+ _%i116997%_ '1)
                             _%deleted116999%_))))))))))
    (define __raw-table-update!
      (lambda (_%tab116919%_ _%key116920%_ _%update116921%_ _%default116922%_)
        (let ((_%table116924%_ (&raw-table-table _%tab116919%_))
              (_%seed116925%_ (&raw-table-seed _%tab116919%_))
              (_%hash116926%_ (&raw-table-hash _%tab116919%_))
              (_%test116927%_ (&raw-table-test _%tab116919%_)))
          (let* ((_%h116929%_
                  (fxxor (_%hash116926%_ _%key116920%_) _%seed116925%_))
                 (_%size116932%_ (vector-length _%table116924%_))
                 (_%entries116935%_ (##fxquotient _%size116932%_ '2))
                 (_%start116938%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h116929%_ _%entries116935%_)
                   '1)))
            (let _%loop116942%_ ((_%probe116945%_ _%start116938%_)
                                 (_%i116947%_ '1)
                                 (_%deleted116949%_ '#f))
              (let ((_%k116952%_ (vector-ref _%table116924%_ _%probe116945%_)))
                (if (eq? _%k116952%_ (macro-unused-obj))
                    (if _%deleted116949%_
                        (begin
                          (vector-set!
                           _%table116924%_
                           _%deleted116949%_
                           _%key116920%_)
                          (vector-set!
                           _%table116924%_
                           (##fx+ _%deleted116949%_ '1)
                           (_%update116921%_ _%default116922%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab116919%_
                              (##fx+ (&raw-table-count _%tab116919%_) '1)))))
                        (begin
                          (vector-set!
                           _%table116924%_
                           _%probe116945%_
                           _%key116920%_)
                          (vector-set!
                           _%table116924%_
                           (##fx+ _%probe116945%_ '1)
                           (_%update116921%_ _%default116922%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab116919%_
                              (##fx- (&raw-table-free _%tab116919%_) '1))
                             (&raw-table-count-set!
                              _%tab116919%_
                              (##fx+ (&raw-table-count _%tab116919%_) '1))))))
                    (if (eq? _%k116952%_ (macro-deleted-obj))
                        (_%loop116942%_
                         (let ((_%next-probe116959%_
                                (fx+ _%start116938%_
                                     _%i116947%_
                                     (fx* _%i116947%_ _%i116947%_))))
                           (##fxmodulo _%next-probe116959%_ _%size116932%_))
                         (##fx+ _%i116947%_ '1)
                         (let ((_%$e116962%_ _%deleted116949%_))
                           (if _%$e116962%_ _%$e116962%_ _%probe116945%_)))
                        (if (_%test116927%_ _%key116920%_ _%k116952%_)
                            (let ()
                              (vector-set!
                               _%table116924%_
                               _%probe116945%_
                               _%key116920%_)
                              (vector-set!
                               _%table116924%_
                               (##fx+ _%probe116945%_ '1)
                               (_%update116921%_
                                (vector-ref
                                 _%table116924%_
                                 (##fx+ _%probe116945%_ '1)))))
                            (_%loop116942%_
                             (let ((_%next-probe116967%_
                                    (fx+ _%start116938%_
                                         _%i116947%_
                                         (fx* _%i116947%_ _%i116947%_))))
                               (##fxmodulo
                                _%next-probe116967%_
                                _%size116932%_))
                             (##fx+ _%i116947%_ '1)
                             _%deleted116949%_))))))))))
    (define __raw-table-rehash!
      (lambda (_%tab116900%_)
        (let* ((_%old-table116902%_ (&raw-table-table _%tab116900%_))
               (_%old-size116904%_ (vector-length _%old-table116902%_))
               (_%new-size116906%_
                (if (##fx< (&raw-table-count _%tab116900%_)
                           (##fxquotient _%old-size116904%_ '4))
                    (vector-length _%old-table116902%_)
                    (##fx* '2 (vector-length _%old-table116902%_))))
               (_%new-table116908%_
                (##make-vector _%new-size116906%_ (macro-unused-obj))))
          (&raw-table-table-set! _%tab116900%_ _%new-table116908%_)
          (&raw-table-count-set! _%tab116900%_ '0)
          (&raw-table-free-set!
           _%tab116900%_
           (##fxquotient _%new-size116906%_ '2))
          (let _%lp116911%_ ((_%i116913%_ '0))
            (if (##fx< _%i116913%_ _%old-size116904%_)
                (begin
                  (let ((_%key116915%_
                         (vector-ref _%old-table116902%_ _%i116913%_)))
                    (if (if (eq? _%key116915%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key116915%_ (macro-deleted-obj))))
                        (let ((_%value116917%_
                               (vector-ref
                                _%old-table116902%_
                                (##fx+ _%i116913%_ '1))))
                          (__raw-table-set!
                           _%tab116900%_
                           _%key116915%_
                           _%value116917%_))
                        '#!void))
                  (_%lp116911%_ (##fx+ _%i116913%_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_%obj116892%_)
        (let ((_%t116894%_ (##type _%obj116892%_)))
          (if (##fx= (##fxand _%t116894%_ '1) '0)
              (fxand (##type-cast _%obj116892%_ (macro-type-fixnum))
                     (macro-max-fixnum32))
              (if (symbolic? _%obj116892%_)
                  (##symbol-hash _%obj116892%_)
                  (if (procedure? _%obj116892%_)
                      (procedure-hash _%obj116892%_)
                      (fxand (__eq-hash _%obj116892%_)
                             (macro-max-fixnum32))))))))
    (define procedure-hash
      (lambda (_%obj116888%_)
        (let ((_%h116890%_
               (if (##closure? _%obj116888%_)
                   (__eq-hash _%obj116888%_)
                   (##type-cast _%obj116888%_ '0))))
          (fxand _%h116890%_ (macro-max-fixnum32)))))
    (define __eq-hash
      (lambda (_%obj116885%_)
        (declare (not interrupts-enabled))
        (__object->eq-hash _%obj116885%_)))
    (define eqv-hash
      (lambda (_%obj116875%_)
        (letrec ((_%combine116877%_
                  (lambda (_%a116882%_ _%b116883%_)
                    (fxand (##fx* (##fx+ _%a116882%_
                                         (fxarithmetic-shift-left
                                          _%b116883%_
                                          '1))
                                  '331804471)
                           (macro-max-fixnum32))))
                 (_%hash116878%_
                  (lambda (_%obj116880%_)
                    (macro-number-dispatch
                     _%obj116880%_
                     (eq-hash _%obj116880%_)
                     (fxand _%obj116880%_ (macro-max-fixnum32))
                     (modulo _%obj116880%_ '331804481)
                     (_%combine116877%_
                      (_%hash116878%_ (macro-ratnum-numerator _%obj116880%_))
                      (_%hash116878%_
                       (macro-ratnum-denominator _%obj116880%_)))
                     (_%combine116877%_
                      (##u16vector-ref _%obj116880%_ '0)
                      (_%combine116877%_
                       (##u16vector-ref _%obj116880%_ '1)
                       (_%combine116877%_
                        (##u16vector-ref _%obj116880%_ '2)
                        (##u16vector-ref _%obj116880%_ '3))))
                     (_%combine116877%_
                      (_%hash116878%_ (macro-cpxnum-real _%obj116880%_))
                      (_%hash116878%_ (macro-cpxnum-imag _%obj116880%_)))))))
          (_%hash116878%_ _%obj116875%_))))
    (define symbolic?
      (lambda (_%obj116870%_)
        (let ((_%$e116872%_ (symbol? _%obj116870%_)))
          (if _%$e116872%_ _%$e116872%_ (keyword? _%obj116870%_)))))
    (define symbolic-hash
      (lambda (_%obj116868%_) (##symbol-hash _%obj116868%_)))
    (define string-hash
      (lambda (_%obj116866%_) (##string=?-hash _%obj116866%_)))
    (define immediate-hash
      (lambda (_%obj116864%_) (##type-cast _%obj116864%_ (macro-type-fixnum))))
    (define make-eq-table__%
      (lambda (_%size-hint116846%_ _%seed116847%_)
        (make-raw-table__1 _%size-hint116846%_ eq-hash eq? _%seed116847%_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_%size-hint116853%_ '#f) (_%seed116855%_ '0))
          (make-eq-table__% _%size-hint116853%_ _%seed116855%_))))
    (define make-eq-table__1
      (lambda (_%size-hint116857%_)
        (let ((_%seed116859%_ '0))
          (make-eq-table__% _%size-hint116857%_ _%seed116859%_))))
    (define make-eq-table
      (lambda _g117451_
        (let ((_g117452_ (##length _g117451_)))
          (cond ((##fx= _g117452_ 0) (apply make-eq-table__0 _g117451_))
                ((##fx= _g117452_ 1) (apply make-eq-table__1 _g117451_))
                ((##fx= _g117452_ 2) (apply make-eq-table__% _g117451_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g117451_))))))
    (define make-eq-table/lock__%
      (lambda (_%size-hint116826%_ _%seed116828%_)
        (make-raw-table/lock__%
         _%size-hint116826%_
         eq-hash
         eq?
         _%seed116828%_)))
    (define make-eq-table/lock__0
      (lambda ()
        (let* ((_%size-hint116834%_ '#f) (_%seed116836%_ '0))
          (make-eq-table/lock__% _%size-hint116834%_ _%seed116836%_))))
    (define make-eq-table/lock__1
      (lambda (_%size-hint116838%_)
        (let ((_%seed116840%_ '0))
          (make-eq-table/lock__% _%size-hint116838%_ _%seed116840%_))))
    (define make-eq-table/lock
      (lambda _g117453_
        (let ((_g117454_ (##length _g117453_)))
          (cond ((##fx= _g117454_ 0) (apply make-eq-table/lock__0 _g117453_))
                ((##fx= _g117454_ 1) (apply make-eq-table/lock__1 _g117453_))
                ((##fx= _g117454_ 2) (apply make-eq-table/lock__% _g117453_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table/lock
                  _g117453_))))))
    (define eq-table-ref
      (lambda (_%tab116779%_ _%key116780%_ _%default116781%_)
        (let ((_%table116783%_ (&raw-table-table _%tab116779%_))
              (_%seed116784%_ (&raw-table-seed _%tab116779%_)))
          (let* ((_%h116786%_ (fxxor (eq-hash _%key116780%_) _%seed116784%_))
                 (_%size116789%_ (vector-length _%table116783%_))
                 (_%entries116792%_ (##fxquotient _%size116789%_ '2))
                 (_%start116795%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h116786%_ _%entries116792%_)
                   '1)))
            (let _%loop116799%_ ((_%probe116802%_ _%start116795%_)
                                 (_%i116804%_ '1)
                                 (_%deleted116806%_ '#f))
              (let ((_%k116809%_ (vector-ref _%table116783%_ _%probe116802%_)))
                (if (eq? _%k116809%_ (macro-unused-obj))
                    _%default116781%_
                    (if (eq? _%k116809%_ (macro-deleted-obj))
                        (_%loop116799%_
                         (let ((_%next-probe116814%_
                                (fx+ _%start116795%_
                                     _%i116804%_
                                     (fx* _%i116804%_ _%i116804%_))))
                           (##fxmodulo _%next-probe116814%_ _%size116789%_))
                         (##fx+ _%i116804%_ '1)
                         (let ((_%$e116817%_ _%deleted116806%_))
                           (if _%$e116817%_ _%$e116817%_ _%probe116802%_)))
                        (if (eq? _%key116780%_ _%k116809%_)
                            (vector-ref
                             _%table116783%_
                             (##fx+ _%probe116802%_ '1))
                            (_%loop116799%_
                             (let ((_%next-probe116822%_
                                    (fx+ _%start116795%_
                                         _%i116804%_
                                         (fx* _%i116804%_ _%i116804%_))))
                               (##fxmodulo
                                _%next-probe116822%_
                                _%size116789%_))
                             (##fx+ _%i116804%_ '1)
                             _%deleted116806%_))))))))))
    (define eq-table-ref/lock
      (lambda (_%tab116752%_ _%key116753%_ _%default116754%_)
        (let ((_%lock116756%_ (&raw-table-lock _%tab116752%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again116761%_ ((_%spin116764%_ '0))
              (if (##fx= (##vector-cas! _%lock116756%_ '0 '1 '0) '0)
                  (##vector-set! _%lock116756%_ '1 (current-thread))
                  (if (##fx< _%spin116764%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again116761%_ (##fx+ _%spin116764%_ '1)))
                      (let ((_%owner116770%_ (##vector-ref _%lock116756%_ '1)))
                        (if (eq? _%owner116770%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner116770%_)
                                (let () (##thread-yield!) (_%again116761%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r116776%_
                 (eq-table-ref _%tab116752%_ _%key116753%_ _%default116754%_)))
            (##vector-set! _%lock116756%_ '1 '#f)
            (##vector-cas! _%lock116756%_ '0 '0 '1)
            _%$r116776%_))))
    (define __eq-table-set!
      (lambda (_%tab116704%_ _%key116705%_ _%value116706%_)
        (let ((_%table116708%_ (&raw-table-table _%tab116704%_))
              (_%seed116709%_ (&raw-table-seed _%tab116704%_)))
          (let* ((_%h116711%_ (fxxor (eq-hash _%key116705%_) _%seed116709%_))
                 (_%size116714%_ (vector-length _%table116708%_))
                 (_%entries116717%_ (##fxquotient _%size116714%_ '2))
                 (_%start116720%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h116711%_ _%entries116717%_)
                   '1)))
            (let _%loop116724%_ ((_%probe116727%_ _%start116720%_)
                                 (_%i116729%_ '1)
                                 (_%deleted116731%_ '#f))
              (let ((_%k116734%_ (vector-ref _%table116708%_ _%probe116727%_)))
                (if (eq? _%k116734%_ (macro-unused-obj))
                    (if _%deleted116731%_
                        (begin
                          (vector-set!
                           _%table116708%_
                           _%deleted116731%_
                           _%key116705%_)
                          (vector-set!
                           _%table116708%_
                           (##fx+ _%deleted116731%_ '1)
                           _%value116706%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab116704%_
                              (##fx+ (&raw-table-count _%tab116704%_) '1)))))
                        (begin
                          (vector-set!
                           _%table116708%_
                           _%probe116727%_
                           _%key116705%_)
                          (vector-set!
                           _%table116708%_
                           (##fx+ _%probe116727%_ '1)
                           _%value116706%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab116704%_
                              (##fx- (&raw-table-free _%tab116704%_) '1))
                             (&raw-table-count-set!
                              _%tab116704%_
                              (##fx+ (&raw-table-count _%tab116704%_) '1))))))
                    (if (eq? _%k116734%_ (macro-deleted-obj))
                        (_%loop116724%_
                         (let ((_%next-probe116741%_
                                (fx+ _%start116720%_
                                     _%i116729%_
                                     (fx* _%i116729%_ _%i116729%_))))
                           (##fxmodulo _%next-probe116741%_ _%size116714%_))
                         (##fx+ _%i116729%_ '1)
                         (let ((_%$e116744%_ _%deleted116731%_))
                           (if _%$e116744%_ _%$e116744%_ _%probe116727%_)))
                        (if (eq? _%key116705%_ _%k116734%_)
                            (let ()
                              (vector-set!
                               _%table116708%_
                               _%probe116727%_
                               _%key116705%_)
                              (vector-set!
                               _%table116708%_
                               (##fx+ _%probe116727%_ '1)
                               _%value116706%_))
                            (_%loop116724%_
                             (let ((_%next-probe116749%_
                                    (fx+ _%start116720%_
                                         _%i116729%_
                                         (fx* _%i116729%_ _%i116729%_))))
                               (##fxmodulo
                                _%next-probe116749%_
                                _%size116714%_))
                             (##fx+ _%i116729%_ '1)
                             _%deleted116731%_))))))))))
    (define eq-table-set!
      (lambda (_%tab116700%_ _%key116701%_ _%value116702%_)
        (if (##fx< (&raw-table-free _%tab116700%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab116700%_))
                    '4))
            (__raw-table-rehash! _%tab116700%_)
            '#!void)
        (__eq-table-set! _%tab116700%_ _%key116701%_ _%value116702%_)))
    (define eq-table-set!/lock
      (lambda (_%tab116672%_ _%key116673%_ _%value116674%_)
        (let ((_%lock116677%_ (&raw-table-lock _%tab116672%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again116682%_ ((_%spin116685%_ '0))
              (if (##fx= (##vector-cas! _%lock116677%_ '0 '1 '0) '0)
                  (##vector-set! _%lock116677%_ '1 (current-thread))
                  (if (##fx< _%spin116685%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again116682%_ (##fx+ _%spin116685%_ '1)))
                      (let ((_%owner116691%_ (##vector-ref _%lock116677%_ '1)))
                        (if (eq? _%owner116691%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner116691%_)
                                (let () (##thread-yield!) (_%again116682%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r116697%_
                 (eq-table-set! _%tab116672%_ _%key116673%_ _%value116674%_)))
            (##vector-set! _%lock116677%_ '1 '#f)
            (##vector-cas! _%lock116677%_ '0 '0 '1)
            _%$r116697%_))))
    (define __eq-table-update!
      (lambda (_%tab116623%_
               _%key116624%_
               _%eq-table-update!116625%_
               _%default116626%_)
        (let ((_%table116628%_ (&raw-table-table _%tab116623%_))
              (_%seed116629%_ (&raw-table-seed _%tab116623%_)))
          (let* ((_%h116631%_ (fxxor (eq-hash _%key116624%_) _%seed116629%_))
                 (_%size116634%_ (vector-length _%table116628%_))
                 (_%entries116637%_ (##fxquotient _%size116634%_ '2))
                 (_%start116640%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h116631%_ _%entries116637%_)
                   '1)))
            (let _%loop116644%_ ((_%probe116647%_ _%start116640%_)
                                 (_%i116649%_ '1)
                                 (_%deleted116651%_ '#f))
              (let ((_%k116654%_ (vector-ref _%table116628%_ _%probe116647%_)))
                (if (eq? _%k116654%_ (macro-unused-obj))
                    (if _%deleted116651%_
                        (begin
                          (vector-set!
                           _%table116628%_
                           _%deleted116651%_
                           _%key116624%_)
                          (vector-set!
                           _%table116628%_
                           (##fx+ _%deleted116651%_ '1)
                           (_%eq-table-update!116625%_ _%default116626%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab116623%_
                              (##fx+ (&raw-table-count _%tab116623%_) '1)))))
                        (begin
                          (vector-set!
                           _%table116628%_
                           _%probe116647%_
                           _%key116624%_)
                          (vector-set!
                           _%table116628%_
                           (##fx+ _%probe116647%_ '1)
                           (_%eq-table-update!116625%_ _%default116626%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab116623%_
                              (##fx- (&raw-table-free _%tab116623%_) '1))
                             (&raw-table-count-set!
                              _%tab116623%_
                              (##fx+ (&raw-table-count _%tab116623%_) '1))))))
                    (if (eq? _%k116654%_ (macro-deleted-obj))
                        (_%loop116644%_
                         (let ((_%next-probe116661%_
                                (fx+ _%start116640%_
                                     _%i116649%_
                                     (fx* _%i116649%_ _%i116649%_))))
                           (##fxmodulo _%next-probe116661%_ _%size116634%_))
                         (##fx+ _%i116649%_ '1)
                         (let ((_%$e116664%_ _%deleted116651%_))
                           (if _%$e116664%_ _%$e116664%_ _%probe116647%_)))
                        (if (eq? _%key116624%_ _%k116654%_)
                            (let ()
                              (vector-set!
                               _%table116628%_
                               _%probe116647%_
                               _%key116624%_)
                              (vector-set!
                               _%table116628%_
                               (##fx+ _%probe116647%_ '1)
                               (_%eq-table-update!116625%_
                                (vector-ref
                                 _%table116628%_
                                 (##fx+ _%probe116647%_ '1)))))
                            (_%loop116644%_
                             (let ((_%next-probe116669%_
                                    (fx+ _%start116640%_
                                         _%i116649%_
                                         (fx* _%i116649%_ _%i116649%_))))
                               (##fxmodulo
                                _%next-probe116669%_
                                _%size116634%_))
                             (##fx+ _%i116649%_ '1)
                             _%deleted116651%_))))))))))
    (define eq-table-update!
      (lambda (_%tab116618%_
               _%key116619%_
               _%eq-table-update!116620%_
               _%default116621%_)
        (if (##fx< (&raw-table-free _%tab116618%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab116618%_))
                    '4))
            (__raw-table-rehash! _%tab116618%_)
            '#!void)
        (__eq-table-update!
         _%tab116618%_
         _%key116619%_
         _%eq-table-update!116620%_
         _%default116621%_)))
    (define eq-table-update!/lock
      (lambda (_%tab116589%_
               _%key116590%_
               _%eq-table-update!116591%_
               _%default116592%_)
        (let ((_%lock116595%_ (&raw-table-lock _%tab116589%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again116600%_ ((_%spin116603%_ '0))
              (if (##fx= (##vector-cas! _%lock116595%_ '0 '1 '0) '0)
                  (##vector-set! _%lock116595%_ '1 (current-thread))
                  (if (##fx< _%spin116603%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again116600%_ (##fx+ _%spin116603%_ '1)))
                      (let ((_%owner116609%_ (##vector-ref _%lock116595%_ '1)))
                        (if (eq? _%owner116609%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner116609%_)
                                (let () (##thread-yield!) (_%again116600%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r116615%_
                 (_%eq-table-update!116591%_
                  _%tab116589%_
                  _%key116590%_
                  _%eq-table-update!116591%_
                  _%default116592%_)))
            (##vector-set! _%lock116595%_ '1 '#f)
            (##vector-cas! _%lock116595%_ '0 '0 '1)
            _%$r116615%_))))
    (define eq-table-delete!
      (lambda (_%tab116546%_ _%key116547%_)
        (let ((_%table116549%_ (&raw-table-table _%tab116546%_))
              (_%seed116551%_ (&raw-table-seed _%tab116546%_)))
          (let* ((_%h116554%_ (fxxor (eq-hash _%key116547%_) _%seed116551%_))
                 (_%size116557%_ (vector-length _%table116549%_))
                 (_%entries116560%_ (##fxquotient _%size116557%_ '2))
                 (_%start116563%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h116554%_ _%entries116560%_)
                   '1)))
            (let _%loop116567%_ ((_%probe116570%_ _%start116563%_)
                                 (_%i116572%_ '1))
              (let ((_%k116575%_ (vector-ref _%table116549%_ _%probe116570%_)))
                (if (eq? _%k116575%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k116575%_ (macro-deleted-obj))
                        (_%loop116567%_
                         (let ((_%next-probe116580%_
                                (fx+ _%start116563%_
                                     _%i116572%_
                                     (fx* _%i116572%_ _%i116572%_))))
                           (##fxmodulo _%next-probe116580%_ _%size116557%_))
                         (##fx+ _%i116572%_ '1))
                        (if (eq? _%key116547%_ _%k116575%_)
                            (let ()
                              (vector-set!
                               _%table116549%_
                               _%probe116570%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table116549%_
                               (##fx+ _%probe116570%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab116546%_
                                  (##fx- (&raw-table-count _%tab116546%_)
                                         '1)))))
                            (_%loop116567%_
                             (let ((_%next-probe116586%_
                                    (fx+ _%start116563%_
                                         _%i116572%_
                                         (fx* _%i116572%_ _%i116572%_))))
                               (##fxmodulo
                                _%next-probe116586%_
                                _%size116557%_))
                             (##fx+ _%i116572%_ '1)))))))))))
    (define eq-table-delete!/lock
      (lambda (_%tab116518%_ _%key116520%_)
        (let ((_%lock116523%_ (&raw-table-lock _%tab116518%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again116528%_ ((_%spin116531%_ '0))
              (if (##fx= (##vector-cas! _%lock116523%_ '0 '1 '0) '0)
                  (##vector-set! _%lock116523%_ '1 (current-thread))
                  (if (##fx< _%spin116531%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again116528%_ (##fx+ _%spin116531%_ '1)))
                      (let ((_%owner116537%_ (##vector-ref _%lock116523%_ '1)))
                        (if (eq? _%owner116537%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner116537%_)
                                (let () (##thread-yield!) (_%again116528%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r116543%_ (eq-table-delete! _%tab116518%_ _%key116520%_)))
            (##vector-set! _%lock116523%_ '1 '#f)
            (##vector-cas! _%lock116523%_ '0 '0 '1)
            _%$r116543%_))))
    (define make-eqv-table__%
      (lambda (_%size-hint116500%_ _%seed116501%_)
        (make-raw-table__1 _%size-hint116500%_ eqv-hash eqv? _%seed116501%_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_%size-hint116507%_ '#f) (_%seed116509%_ '0))
          (make-eqv-table__% _%size-hint116507%_ _%seed116509%_))))
    (define make-eqv-table__1
      (lambda (_%size-hint116511%_)
        (let ((_%seed116513%_ '0))
          (make-eqv-table__% _%size-hint116511%_ _%seed116513%_))))
    (define make-eqv-table
      (lambda _g117455_
        (let ((_g117456_ (##length _g117455_)))
          (cond ((##fx= _g117456_ 0) (apply make-eqv-table__0 _g117455_))
                ((##fx= _g117456_ 1) (apply make-eqv-table__1 _g117455_))
                ((##fx= _g117456_ 2) (apply make-eqv-table__% _g117455_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g117455_))))))
    (define make-eqv-table/lock__%
      (lambda (_%size-hint116480%_ _%seed116482%_)
        (make-raw-table/lock__%
         _%size-hint116480%_
         eqv-hash
         eqv?
         _%seed116482%_)))
    (define make-eqv-table/lock__0
      (lambda ()
        (let* ((_%size-hint116488%_ '#f) (_%seed116490%_ '0))
          (make-eqv-table/lock__% _%size-hint116488%_ _%seed116490%_))))
    (define make-eqv-table/lock__1
      (lambda (_%size-hint116492%_)
        (let ((_%seed116494%_ '0))
          (make-eqv-table/lock__% _%size-hint116492%_ _%seed116494%_))))
    (define make-eqv-table/lock
      (lambda _g117457_
        (let ((_g117458_ (##length _g117457_)))
          (cond ((##fx= _g117458_ 0) (apply make-eqv-table/lock__0 _g117457_))
                ((##fx= _g117458_ 1) (apply make-eqv-table/lock__1 _g117457_))
                ((##fx= _g117458_ 2) (apply make-eqv-table/lock__% _g117457_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table/lock
                  _g117457_))))))
    (define eqv-table-ref
      (lambda (_%tab116433%_ _%key116434%_ _%default116435%_)
        (let ((_%table116437%_ (&raw-table-table _%tab116433%_))
              (_%seed116438%_ (&raw-table-seed _%tab116433%_)))
          (let* ((_%h116440%_ (fxxor (eqv-hash _%key116434%_) _%seed116438%_))
                 (_%size116443%_ (vector-length _%table116437%_))
                 (_%entries116446%_ (##fxquotient _%size116443%_ '2))
                 (_%start116449%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h116440%_ _%entries116446%_)
                   '1)))
            (let _%loop116453%_ ((_%probe116456%_ _%start116449%_)
                                 (_%i116458%_ '1)
                                 (_%deleted116460%_ '#f))
              (let ((_%k116463%_ (vector-ref _%table116437%_ _%probe116456%_)))
                (if (eq? _%k116463%_ (macro-unused-obj))
                    _%default116435%_
                    (if (eq? _%k116463%_ (macro-deleted-obj))
                        (_%loop116453%_
                         (let ((_%next-probe116468%_
                                (fx+ _%start116449%_
                                     _%i116458%_
                                     (fx* _%i116458%_ _%i116458%_))))
                           (##fxmodulo _%next-probe116468%_ _%size116443%_))
                         (##fx+ _%i116458%_ '1)
                         (let ((_%$e116471%_ _%deleted116460%_))
                           (if _%$e116471%_ _%$e116471%_ _%probe116456%_)))
                        (if (eqv? _%key116434%_ _%k116463%_)
                            (vector-ref
                             _%table116437%_
                             (##fx+ _%probe116456%_ '1))
                            (_%loop116453%_
                             (let ((_%next-probe116476%_
                                    (fx+ _%start116449%_
                                         _%i116458%_
                                         (fx* _%i116458%_ _%i116458%_))))
                               (##fxmodulo
                                _%next-probe116476%_
                                _%size116443%_))
                             (##fx+ _%i116458%_ '1)
                             _%deleted116460%_))))))))))
    (define eqv-table-ref/lock
      (lambda (_%tab116406%_ _%key116407%_ _%default116408%_)
        (let ((_%lock116410%_ (&raw-table-lock _%tab116406%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again116415%_ ((_%spin116418%_ '0))
              (if (##fx= (##vector-cas! _%lock116410%_ '0 '1 '0) '0)
                  (##vector-set! _%lock116410%_ '1 (current-thread))
                  (if (##fx< _%spin116418%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again116415%_ (##fx+ _%spin116418%_ '1)))
                      (let ((_%owner116424%_ (##vector-ref _%lock116410%_ '1)))
                        (if (eq? _%owner116424%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner116424%_)
                                (let () (##thread-yield!) (_%again116415%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r116430%_
                 (eqv-table-ref
                  _%tab116406%_
                  _%key116407%_
                  _%default116408%_)))
            (##vector-set! _%lock116410%_ '1 '#f)
            (##vector-cas! _%lock116410%_ '0 '0 '1)
            _%$r116430%_))))
    (define __eqv-table-set!
      (lambda (_%tab116358%_ _%key116359%_ _%value116360%_)
        (let ((_%table116362%_ (&raw-table-table _%tab116358%_))
              (_%seed116363%_ (&raw-table-seed _%tab116358%_)))
          (let* ((_%h116365%_ (fxxor (eqv-hash _%key116359%_) _%seed116363%_))
                 (_%size116368%_ (vector-length _%table116362%_))
                 (_%entries116371%_ (##fxquotient _%size116368%_ '2))
                 (_%start116374%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h116365%_ _%entries116371%_)
                   '1)))
            (let _%loop116378%_ ((_%probe116381%_ _%start116374%_)
                                 (_%i116383%_ '1)
                                 (_%deleted116385%_ '#f))
              (let ((_%k116388%_ (vector-ref _%table116362%_ _%probe116381%_)))
                (if (eq? _%k116388%_ (macro-unused-obj))
                    (if _%deleted116385%_
                        (begin
                          (vector-set!
                           _%table116362%_
                           _%deleted116385%_
                           _%key116359%_)
                          (vector-set!
                           _%table116362%_
                           (##fx+ _%deleted116385%_ '1)
                           _%value116360%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab116358%_
                              (##fx+ (&raw-table-count _%tab116358%_) '1)))))
                        (begin
                          (vector-set!
                           _%table116362%_
                           _%probe116381%_
                           _%key116359%_)
                          (vector-set!
                           _%table116362%_
                           (##fx+ _%probe116381%_ '1)
                           _%value116360%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab116358%_
                              (##fx- (&raw-table-free _%tab116358%_) '1))
                             (&raw-table-count-set!
                              _%tab116358%_
                              (##fx+ (&raw-table-count _%tab116358%_) '1))))))
                    (if (eq? _%k116388%_ (macro-deleted-obj))
                        (_%loop116378%_
                         (let ((_%next-probe116395%_
                                (fx+ _%start116374%_
                                     _%i116383%_
                                     (fx* _%i116383%_ _%i116383%_))))
                           (##fxmodulo _%next-probe116395%_ _%size116368%_))
                         (##fx+ _%i116383%_ '1)
                         (let ((_%$e116398%_ _%deleted116385%_))
                           (if _%$e116398%_ _%$e116398%_ _%probe116381%_)))
                        (if (eqv? _%key116359%_ _%k116388%_)
                            (let ()
                              (vector-set!
                               _%table116362%_
                               _%probe116381%_
                               _%key116359%_)
                              (vector-set!
                               _%table116362%_
                               (##fx+ _%probe116381%_ '1)
                               _%value116360%_))
                            (_%loop116378%_
                             (let ((_%next-probe116403%_
                                    (fx+ _%start116374%_
                                         _%i116383%_
                                         (fx* _%i116383%_ _%i116383%_))))
                               (##fxmodulo
                                _%next-probe116403%_
                                _%size116368%_))
                             (##fx+ _%i116383%_ '1)
                             _%deleted116385%_))))))))))
    (define eqv-table-set!
      (lambda (_%tab116354%_ _%key116355%_ _%value116356%_)
        (if (##fx< (&raw-table-free _%tab116354%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab116354%_))
                    '4))
            (__raw-table-rehash! _%tab116354%_)
            '#!void)
        (__eqv-table-set! _%tab116354%_ _%key116355%_ _%value116356%_)))
    (define eqv-table-set!/lock
      (lambda (_%tab116326%_ _%key116327%_ _%value116328%_)
        (let ((_%lock116331%_ (&raw-table-lock _%tab116326%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again116336%_ ((_%spin116339%_ '0))
              (if (##fx= (##vector-cas! _%lock116331%_ '0 '1 '0) '0)
                  (##vector-set! _%lock116331%_ '1 (current-thread))
                  (if (##fx< _%spin116339%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again116336%_ (##fx+ _%spin116339%_ '1)))
                      (let ((_%owner116345%_ (##vector-ref _%lock116331%_ '1)))
                        (if (eq? _%owner116345%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner116345%_)
                                (let () (##thread-yield!) (_%again116336%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r116351%_
                 (eqv-table-set! _%tab116326%_ _%key116327%_ _%value116328%_)))
            (##vector-set! _%lock116331%_ '1 '#f)
            (##vector-cas! _%lock116331%_ '0 '0 '1)
            _%$r116351%_))))
    (define __eqv-table-update!
      (lambda (_%tab116277%_
               _%key116278%_
               _%eqv-table-update!116279%_
               _%default116280%_)
        (let ((_%table116282%_ (&raw-table-table _%tab116277%_))
              (_%seed116283%_ (&raw-table-seed _%tab116277%_)))
          (let* ((_%h116285%_ (fxxor (eqv-hash _%key116278%_) _%seed116283%_))
                 (_%size116288%_ (vector-length _%table116282%_))
                 (_%entries116291%_ (##fxquotient _%size116288%_ '2))
                 (_%start116294%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h116285%_ _%entries116291%_)
                   '1)))
            (let _%loop116298%_ ((_%probe116301%_ _%start116294%_)
                                 (_%i116303%_ '1)
                                 (_%deleted116305%_ '#f))
              (let ((_%k116308%_ (vector-ref _%table116282%_ _%probe116301%_)))
                (if (eq? _%k116308%_ (macro-unused-obj))
                    (if _%deleted116305%_
                        (begin
                          (vector-set!
                           _%table116282%_
                           _%deleted116305%_
                           _%key116278%_)
                          (vector-set!
                           _%table116282%_
                           (##fx+ _%deleted116305%_ '1)
                           (_%eqv-table-update!116279%_ _%default116280%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab116277%_
                              (##fx+ (&raw-table-count _%tab116277%_) '1)))))
                        (begin
                          (vector-set!
                           _%table116282%_
                           _%probe116301%_
                           _%key116278%_)
                          (vector-set!
                           _%table116282%_
                           (##fx+ _%probe116301%_ '1)
                           (_%eqv-table-update!116279%_ _%default116280%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab116277%_
                              (##fx- (&raw-table-free _%tab116277%_) '1))
                             (&raw-table-count-set!
                              _%tab116277%_
                              (##fx+ (&raw-table-count _%tab116277%_) '1))))))
                    (if (eq? _%k116308%_ (macro-deleted-obj))
                        (_%loop116298%_
                         (let ((_%next-probe116315%_
                                (fx+ _%start116294%_
                                     _%i116303%_
                                     (fx* _%i116303%_ _%i116303%_))))
                           (##fxmodulo _%next-probe116315%_ _%size116288%_))
                         (##fx+ _%i116303%_ '1)
                         (let ((_%$e116318%_ _%deleted116305%_))
                           (if _%$e116318%_ _%$e116318%_ _%probe116301%_)))
                        (if (eqv? _%key116278%_ _%k116308%_)
                            (let ()
                              (vector-set!
                               _%table116282%_
                               _%probe116301%_
                               _%key116278%_)
                              (vector-set!
                               _%table116282%_
                               (##fx+ _%probe116301%_ '1)
                               (_%eqv-table-update!116279%_
                                (vector-ref
                                 _%table116282%_
                                 (##fx+ _%probe116301%_ '1)))))
                            (_%loop116298%_
                             (let ((_%next-probe116323%_
                                    (fx+ _%start116294%_
                                         _%i116303%_
                                         (fx* _%i116303%_ _%i116303%_))))
                               (##fxmodulo
                                _%next-probe116323%_
                                _%size116288%_))
                             (##fx+ _%i116303%_ '1)
                             _%deleted116305%_))))))))))
    (define eqv-table-update!
      (lambda (_%tab116272%_
               _%key116273%_
               _%eqv-table-update!116274%_
               _%default116275%_)
        (if (##fx< (&raw-table-free _%tab116272%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab116272%_))
                    '4))
            (__raw-table-rehash! _%tab116272%_)
            '#!void)
        (__eqv-table-update!
         _%tab116272%_
         _%key116273%_
         _%eqv-table-update!116274%_
         _%default116275%_)))
    (define eqv-table-update!/lock
      (lambda (_%tab116243%_
               _%key116244%_
               _%eqv-table-update!116245%_
               _%default116246%_)
        (let ((_%lock116249%_ (&raw-table-lock _%tab116243%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again116254%_ ((_%spin116257%_ '0))
              (if (##fx= (##vector-cas! _%lock116249%_ '0 '1 '0) '0)
                  (##vector-set! _%lock116249%_ '1 (current-thread))
                  (if (##fx< _%spin116257%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again116254%_ (##fx+ _%spin116257%_ '1)))
                      (let ((_%owner116263%_ (##vector-ref _%lock116249%_ '1)))
                        (if (eq? _%owner116263%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner116263%_)
                                (let () (##thread-yield!) (_%again116254%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r116269%_
                 (_%eqv-table-update!116245%_
                  _%tab116243%_
                  _%key116244%_
                  _%eqv-table-update!116245%_
                  _%default116246%_)))
            (##vector-set! _%lock116249%_ '1 '#f)
            (##vector-cas! _%lock116249%_ '0 '0 '1)
            _%$r116269%_))))
    (define eqv-table-delete!
      (lambda (_%tab116200%_ _%key116201%_)
        (let ((_%table116203%_ (&raw-table-table _%tab116200%_))
              (_%seed116205%_ (&raw-table-seed _%tab116200%_)))
          (let* ((_%h116208%_ (fxxor (eqv-hash _%key116201%_) _%seed116205%_))
                 (_%size116211%_ (vector-length _%table116203%_))
                 (_%entries116214%_ (##fxquotient _%size116211%_ '2))
                 (_%start116217%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h116208%_ _%entries116214%_)
                   '1)))
            (let _%loop116221%_ ((_%probe116224%_ _%start116217%_)
                                 (_%i116226%_ '1))
              (let ((_%k116229%_ (vector-ref _%table116203%_ _%probe116224%_)))
                (if (eq? _%k116229%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k116229%_ (macro-deleted-obj))
                        (_%loop116221%_
                         (let ((_%next-probe116234%_
                                (fx+ _%start116217%_
                                     _%i116226%_
                                     (fx* _%i116226%_ _%i116226%_))))
                           (##fxmodulo _%next-probe116234%_ _%size116211%_))
                         (##fx+ _%i116226%_ '1))
                        (if (eqv? _%key116201%_ _%k116229%_)
                            (let ()
                              (vector-set!
                               _%table116203%_
                               _%probe116224%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table116203%_
                               (##fx+ _%probe116224%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab116200%_
                                  (##fx- (&raw-table-count _%tab116200%_)
                                         '1)))))
                            (_%loop116221%_
                             (let ((_%next-probe116240%_
                                    (fx+ _%start116217%_
                                         _%i116226%_
                                         (fx* _%i116226%_ _%i116226%_))))
                               (##fxmodulo
                                _%next-probe116240%_
                                _%size116211%_))
                             (##fx+ _%i116226%_ '1)))))))))))
    (define eqv-table-delete!/lock
      (lambda (_%tab116172%_ _%key116174%_)
        (let ((_%lock116177%_ (&raw-table-lock _%tab116172%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again116182%_ ((_%spin116185%_ '0))
              (if (##fx= (##vector-cas! _%lock116177%_ '0 '1 '0) '0)
                  (##vector-set! _%lock116177%_ '1 (current-thread))
                  (if (##fx< _%spin116185%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again116182%_ (##fx+ _%spin116185%_ '1)))
                      (let ((_%owner116191%_ (##vector-ref _%lock116177%_ '1)))
                        (if (eq? _%owner116191%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner116191%_)
                                (let () (##thread-yield!) (_%again116182%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r116197%_ (eqv-table-delete! _%tab116172%_ _%key116174%_)))
            (##vector-set! _%lock116177%_ '1 '#f)
            (##vector-cas! _%lock116177%_ '0 '0 '1)
            _%$r116197%_))))
    (define make-symbolic-table__%
      (lambda (_%size-hint116154%_ _%seed116155%_)
        (make-raw-table__1
         _%size-hint116154%_
         symbolic-hash
         eq?
         _%seed116155%_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_%size-hint116161%_ '#f) (_%seed116163%_ '0))
          (make-symbolic-table__% _%size-hint116161%_ _%seed116163%_))))
    (define make-symbolic-table__1
      (lambda (_%size-hint116165%_)
        (let ((_%seed116167%_ '0))
          (make-symbolic-table__% _%size-hint116165%_ _%seed116167%_))))
    (define make-symbolic-table
      (lambda _g117459_
        (let ((_g117460_ (##length _g117459_)))
          (cond ((##fx= _g117460_ 0) (apply make-symbolic-table__0 _g117459_))
                ((##fx= _g117460_ 1) (apply make-symbolic-table__1 _g117459_))
                ((##fx= _g117460_ 2) (apply make-symbolic-table__% _g117459_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g117459_))))))
    (define make-symbolic-table/lock__%
      (lambda (_%size-hint116134%_ _%seed116136%_)
        (make-raw-table/lock__%
         _%size-hint116134%_
         symbolic-hash
         eq?
         _%seed116136%_)))
    (define make-symbolic-table/lock__0
      (lambda ()
        (let* ((_%size-hint116142%_ '#f) (_%seed116144%_ '0))
          (make-symbolic-table/lock__% _%size-hint116142%_ _%seed116144%_))))
    (define make-symbolic-table/lock__1
      (lambda (_%size-hint116146%_)
        (let ((_%seed116148%_ '0))
          (make-symbolic-table/lock__% _%size-hint116146%_ _%seed116148%_))))
    (define make-symbolic-table/lock
      (lambda _g117461_
        (let ((_g117462_ (##length _g117461_)))
          (cond ((##fx= _g117462_ 0)
                 (apply make-symbolic-table/lock__0 _g117461_))
                ((##fx= _g117462_ 1)
                 (apply make-symbolic-table/lock__1 _g117461_))
                ((##fx= _g117462_ 2)
                 (apply make-symbolic-table/lock__% _g117461_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table/lock
                  _g117461_))))))
    (define symbolic-table-ref
      (lambda (_%tab116087%_ _%key116088%_ _%default116089%_)
        (let ((_%table116091%_ (&raw-table-table _%tab116087%_))
              (_%seed116092%_ (&raw-table-seed _%tab116087%_)))
          (let* ((_%h116094%_
                  (fxxor (##symbol-hash _%key116088%_) _%seed116092%_))
                 (_%size116097%_ (vector-length _%table116091%_))
                 (_%entries116100%_ (##fxquotient _%size116097%_ '2))
                 (_%start116103%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h116094%_ _%entries116100%_)
                   '1)))
            (let _%loop116107%_ ((_%probe116110%_ _%start116103%_)
                                 (_%i116112%_ '1)
                                 (_%deleted116114%_ '#f))
              (let ((_%k116117%_ (vector-ref _%table116091%_ _%probe116110%_)))
                (if (eq? _%k116117%_ (macro-unused-obj))
                    _%default116089%_
                    (if (eq? _%k116117%_ (macro-deleted-obj))
                        (_%loop116107%_
                         (let ((_%next-probe116122%_
                                (fx+ _%start116103%_
                                     _%i116112%_
                                     (fx* _%i116112%_ _%i116112%_))))
                           (##fxmodulo _%next-probe116122%_ _%size116097%_))
                         (##fx+ _%i116112%_ '1)
                         (let ((_%$e116125%_ _%deleted116114%_))
                           (if _%$e116125%_ _%$e116125%_ _%probe116110%_)))
                        (if (eq? _%key116088%_ _%k116117%_)
                            (vector-ref
                             _%table116091%_
                             (##fx+ _%probe116110%_ '1))
                            (_%loop116107%_
                             (let ((_%next-probe116130%_
                                    (fx+ _%start116103%_
                                         _%i116112%_
                                         (fx* _%i116112%_ _%i116112%_))))
                               (##fxmodulo
                                _%next-probe116130%_
                                _%size116097%_))
                             (##fx+ _%i116112%_ '1)
                             _%deleted116114%_))))))))))
    (define symbolic-table-ref/lock
      (lambda (_%tab116060%_ _%key116061%_ _%default116062%_)
        (let ((_%lock116064%_ (&raw-table-lock _%tab116060%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again116069%_ ((_%spin116072%_ '0))
              (if (##fx= (##vector-cas! _%lock116064%_ '0 '1 '0) '0)
                  (##vector-set! _%lock116064%_ '1 (current-thread))
                  (if (##fx< _%spin116072%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again116069%_ (##fx+ _%spin116072%_ '1)))
                      (let ((_%owner116078%_ (##vector-ref _%lock116064%_ '1)))
                        (if (eq? _%owner116078%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner116078%_)
                                (let () (##thread-yield!) (_%again116069%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r116084%_
                 (symbolic-table-ref
                  _%tab116060%_
                  _%key116061%_
                  _%default116062%_)))
            (##vector-set! _%lock116064%_ '1 '#f)
            (##vector-cas! _%lock116064%_ '0 '0 '1)
            _%$r116084%_))))
    (define __symbolic-table-set!
      (lambda (_%tab116012%_ _%key116013%_ _%value116014%_)
        (let ((_%table116016%_ (&raw-table-table _%tab116012%_))
              (_%seed116017%_ (&raw-table-seed _%tab116012%_)))
          (let* ((_%h116019%_
                  (fxxor (##symbol-hash _%key116013%_) _%seed116017%_))
                 (_%size116022%_ (vector-length _%table116016%_))
                 (_%entries116025%_ (##fxquotient _%size116022%_ '2))
                 (_%start116028%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h116019%_ _%entries116025%_)
                   '1)))
            (let _%loop116032%_ ((_%probe116035%_ _%start116028%_)
                                 (_%i116037%_ '1)
                                 (_%deleted116039%_ '#f))
              (let ((_%k116042%_ (vector-ref _%table116016%_ _%probe116035%_)))
                (if (eq? _%k116042%_ (macro-unused-obj))
                    (if _%deleted116039%_
                        (begin
                          (vector-set!
                           _%table116016%_
                           _%deleted116039%_
                           _%key116013%_)
                          (vector-set!
                           _%table116016%_
                           (##fx+ _%deleted116039%_ '1)
                           _%value116014%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab116012%_
                              (##fx+ (&raw-table-count _%tab116012%_) '1)))))
                        (begin
                          (vector-set!
                           _%table116016%_
                           _%probe116035%_
                           _%key116013%_)
                          (vector-set!
                           _%table116016%_
                           (##fx+ _%probe116035%_ '1)
                           _%value116014%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab116012%_
                              (##fx- (&raw-table-free _%tab116012%_) '1))
                             (&raw-table-count-set!
                              _%tab116012%_
                              (##fx+ (&raw-table-count _%tab116012%_) '1))))))
                    (if (eq? _%k116042%_ (macro-deleted-obj))
                        (_%loop116032%_
                         (let ((_%next-probe116049%_
                                (fx+ _%start116028%_
                                     _%i116037%_
                                     (fx* _%i116037%_ _%i116037%_))))
                           (##fxmodulo _%next-probe116049%_ _%size116022%_))
                         (##fx+ _%i116037%_ '1)
                         (let ((_%$e116052%_ _%deleted116039%_))
                           (if _%$e116052%_ _%$e116052%_ _%probe116035%_)))
                        (if (eq? _%key116013%_ _%k116042%_)
                            (let ()
                              (vector-set!
                               _%table116016%_
                               _%probe116035%_
                               _%key116013%_)
                              (vector-set!
                               _%table116016%_
                               (##fx+ _%probe116035%_ '1)
                               _%value116014%_))
                            (_%loop116032%_
                             (let ((_%next-probe116057%_
                                    (fx+ _%start116028%_
                                         _%i116037%_
                                         (fx* _%i116037%_ _%i116037%_))))
                               (##fxmodulo
                                _%next-probe116057%_
                                _%size116022%_))
                             (##fx+ _%i116037%_ '1)
                             _%deleted116039%_))))))))))
    (define symbolic-table-set!
      (lambda (_%tab116008%_ _%key116009%_ _%value116010%_)
        (if (##fx< (&raw-table-free _%tab116008%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab116008%_))
                    '4))
            (__raw-table-rehash! _%tab116008%_)
            '#!void)
        (__symbolic-table-set! _%tab116008%_ _%key116009%_ _%value116010%_)))
    (define symbolic-table-set!/lock
      (lambda (_%tab115980%_ _%key115981%_ _%value115982%_)
        (let ((_%lock115985%_ (&raw-table-lock _%tab115980%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again115990%_ ((_%spin115993%_ '0))
              (if (##fx= (##vector-cas! _%lock115985%_ '0 '1 '0) '0)
                  (##vector-set! _%lock115985%_ '1 (current-thread))
                  (if (##fx< _%spin115993%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again115990%_ (##fx+ _%spin115993%_ '1)))
                      (let ((_%owner115999%_ (##vector-ref _%lock115985%_ '1)))
                        (if (eq? _%owner115999%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner115999%_)
                                (let () (##thread-yield!) (_%again115990%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r116005%_
                 (symbolic-table-set!
                  _%tab115980%_
                  _%key115981%_
                  _%value115982%_)))
            (##vector-set! _%lock115985%_ '1 '#f)
            (##vector-cas! _%lock115985%_ '0 '0 '1)
            _%$r116005%_))))
    (define __symbolic-table-update!
      (lambda (_%tab115931%_
               _%key115932%_
               _%symbolic-table-update!115933%_
               _%default115934%_)
        (let ((_%table115936%_ (&raw-table-table _%tab115931%_))
              (_%seed115937%_ (&raw-table-seed _%tab115931%_)))
          (let* ((_%h115939%_
                  (fxxor (##symbol-hash _%key115932%_) _%seed115937%_))
                 (_%size115942%_ (vector-length _%table115936%_))
                 (_%entries115945%_ (##fxquotient _%size115942%_ '2))
                 (_%start115948%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h115939%_ _%entries115945%_)
                   '1)))
            (let _%loop115952%_ ((_%probe115955%_ _%start115948%_)
                                 (_%i115957%_ '1)
                                 (_%deleted115959%_ '#f))
              (let ((_%k115962%_ (vector-ref _%table115936%_ _%probe115955%_)))
                (if (eq? _%k115962%_ (macro-unused-obj))
                    (if _%deleted115959%_
                        (begin
                          (vector-set!
                           _%table115936%_
                           _%deleted115959%_
                           _%key115932%_)
                          (vector-set!
                           _%table115936%_
                           (##fx+ _%deleted115959%_ '1)
                           (_%symbolic-table-update!115933%_
                            _%default115934%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab115931%_
                              (##fx+ (&raw-table-count _%tab115931%_) '1)))))
                        (begin
                          (vector-set!
                           _%table115936%_
                           _%probe115955%_
                           _%key115932%_)
                          (vector-set!
                           _%table115936%_
                           (##fx+ _%probe115955%_ '1)
                           (_%symbolic-table-update!115933%_
                            _%default115934%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab115931%_
                              (##fx- (&raw-table-free _%tab115931%_) '1))
                             (&raw-table-count-set!
                              _%tab115931%_
                              (##fx+ (&raw-table-count _%tab115931%_) '1))))))
                    (if (eq? _%k115962%_ (macro-deleted-obj))
                        (_%loop115952%_
                         (let ((_%next-probe115969%_
                                (fx+ _%start115948%_
                                     _%i115957%_
                                     (fx* _%i115957%_ _%i115957%_))))
                           (##fxmodulo _%next-probe115969%_ _%size115942%_))
                         (##fx+ _%i115957%_ '1)
                         (let ((_%$e115972%_ _%deleted115959%_))
                           (if _%$e115972%_ _%$e115972%_ _%probe115955%_)))
                        (if (eq? _%key115932%_ _%k115962%_)
                            (let ()
                              (vector-set!
                               _%table115936%_
                               _%probe115955%_
                               _%key115932%_)
                              (vector-set!
                               _%table115936%_
                               (##fx+ _%probe115955%_ '1)
                               (_%symbolic-table-update!115933%_
                                (vector-ref
                                 _%table115936%_
                                 (##fx+ _%probe115955%_ '1)))))
                            (_%loop115952%_
                             (let ((_%next-probe115977%_
                                    (fx+ _%start115948%_
                                         _%i115957%_
                                         (fx* _%i115957%_ _%i115957%_))))
                               (##fxmodulo
                                _%next-probe115977%_
                                _%size115942%_))
                             (##fx+ _%i115957%_ '1)
                             _%deleted115959%_))))))))))
    (define symbolic-table-update!
      (lambda (_%tab115926%_
               _%key115927%_
               _%symbolic-table-update!115928%_
               _%default115929%_)
        (if (##fx< (&raw-table-free _%tab115926%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab115926%_))
                    '4))
            (__raw-table-rehash! _%tab115926%_)
            '#!void)
        (__symbolic-table-update!
         _%tab115926%_
         _%key115927%_
         _%symbolic-table-update!115928%_
         _%default115929%_)))
    (define symbolic-table-update!/lock
      (lambda (_%tab115897%_
               _%key115898%_
               _%symbolic-table-update!115899%_
               _%default115900%_)
        (let ((_%lock115903%_ (&raw-table-lock _%tab115897%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again115908%_ ((_%spin115911%_ '0))
              (if (##fx= (##vector-cas! _%lock115903%_ '0 '1 '0) '0)
                  (##vector-set! _%lock115903%_ '1 (current-thread))
                  (if (##fx< _%spin115911%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again115908%_ (##fx+ _%spin115911%_ '1)))
                      (let ((_%owner115917%_ (##vector-ref _%lock115903%_ '1)))
                        (if (eq? _%owner115917%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner115917%_)
                                (let () (##thread-yield!) (_%again115908%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r115923%_
                 (_%symbolic-table-update!115899%_
                  _%tab115897%_
                  _%key115898%_
                  _%symbolic-table-update!115899%_
                  _%default115900%_)))
            (##vector-set! _%lock115903%_ '1 '#f)
            (##vector-cas! _%lock115903%_ '0 '0 '1)
            _%$r115923%_))))
    (define symbolic-table-delete!
      (lambda (_%tab115854%_ _%key115855%_)
        (let ((_%table115857%_ (&raw-table-table _%tab115854%_))
              (_%seed115859%_ (&raw-table-seed _%tab115854%_)))
          (let* ((_%h115862%_
                  (fxxor (##symbol-hash _%key115855%_) _%seed115859%_))
                 (_%size115865%_ (vector-length _%table115857%_))
                 (_%entries115868%_ (##fxquotient _%size115865%_ '2))
                 (_%start115871%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h115862%_ _%entries115868%_)
                   '1)))
            (let _%loop115875%_ ((_%probe115878%_ _%start115871%_)
                                 (_%i115880%_ '1))
              (let ((_%k115883%_ (vector-ref _%table115857%_ _%probe115878%_)))
                (if (eq? _%k115883%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k115883%_ (macro-deleted-obj))
                        (_%loop115875%_
                         (let ((_%next-probe115888%_
                                (fx+ _%start115871%_
                                     _%i115880%_
                                     (fx* _%i115880%_ _%i115880%_))))
                           (##fxmodulo _%next-probe115888%_ _%size115865%_))
                         (##fx+ _%i115880%_ '1))
                        (if (eq? _%key115855%_ _%k115883%_)
                            (let ()
                              (vector-set!
                               _%table115857%_
                               _%probe115878%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table115857%_
                               (##fx+ _%probe115878%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab115854%_
                                  (##fx- (&raw-table-count _%tab115854%_)
                                         '1)))))
                            (_%loop115875%_
                             (let ((_%next-probe115894%_
                                    (fx+ _%start115871%_
                                         _%i115880%_
                                         (fx* _%i115880%_ _%i115880%_))))
                               (##fxmodulo
                                _%next-probe115894%_
                                _%size115865%_))
                             (##fx+ _%i115880%_ '1)))))))))))
    (define symbolic-table-delete!/lock
      (lambda (_%tab115826%_ _%key115828%_)
        (let ((_%lock115831%_ (&raw-table-lock _%tab115826%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again115836%_ ((_%spin115839%_ '0))
              (if (##fx= (##vector-cas! _%lock115831%_ '0 '1 '0) '0)
                  (##vector-set! _%lock115831%_ '1 (current-thread))
                  (if (##fx< _%spin115839%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again115836%_ (##fx+ _%spin115839%_ '1)))
                      (let ((_%owner115845%_ (##vector-ref _%lock115831%_ '1)))
                        (if (eq? _%owner115845%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner115845%_)
                                (let () (##thread-yield!) (_%again115836%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r115851%_
                 (symbolic-table-delete! _%tab115826%_ _%key115828%_)))
            (##vector-set! _%lock115831%_ '1 '#f)
            (##vector-cas! _%lock115831%_ '0 '0 '1)
            _%$r115851%_))))
    (define make-string-table__%
      (lambda (_%size-hint115808%_ _%seed115809%_)
        (make-raw-table__1
         _%size-hint115808%_
         string-hash
         ##string=?
         _%seed115809%_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_%size-hint115815%_ '#f) (_%seed115817%_ '0))
          (make-string-table__% _%size-hint115815%_ _%seed115817%_))))
    (define make-string-table__1
      (lambda (_%size-hint115819%_)
        (let ((_%seed115821%_ '0))
          (make-string-table__% _%size-hint115819%_ _%seed115821%_))))
    (define make-string-table
      (lambda _g117463_
        (let ((_g117464_ (##length _g117463_)))
          (cond ((##fx= _g117464_ 0) (apply make-string-table__0 _g117463_))
                ((##fx= _g117464_ 1) (apply make-string-table__1 _g117463_))
                ((##fx= _g117464_ 2) (apply make-string-table__% _g117463_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g117463_))))))
    (define make-string-table/lock__%
      (lambda (_%size-hint115788%_ _%seed115790%_)
        (make-raw-table/lock__%
         _%size-hint115788%_
         string-hash
         ##string=?
         _%seed115790%_)))
    (define make-string-table/lock__0
      (lambda ()
        (let* ((_%size-hint115796%_ '#f) (_%seed115798%_ '0))
          (make-string-table/lock__% _%size-hint115796%_ _%seed115798%_))))
    (define make-string-table/lock__1
      (lambda (_%size-hint115800%_)
        (let ((_%seed115802%_ '0))
          (make-string-table/lock__% _%size-hint115800%_ _%seed115802%_))))
    (define make-string-table/lock
      (lambda _g117465_
        (let ((_g117466_ (##length _g117465_)))
          (cond ((##fx= _g117466_ 0)
                 (apply make-string-table/lock__0 _g117465_))
                ((##fx= _g117466_ 1)
                 (apply make-string-table/lock__1 _g117465_))
                ((##fx= _g117466_ 2)
                 (apply make-string-table/lock__% _g117465_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table/lock
                  _g117465_))))))
    (define string-table-ref
      (lambda (_%tab115741%_ _%key115742%_ _%default115743%_)
        (let ((_%table115745%_ (&raw-table-table _%tab115741%_))
              (_%seed115746%_ (&raw-table-seed _%tab115741%_)))
          (let* ((_%h115748%_
                  (fxxor (##string=?-hash _%key115742%_) _%seed115746%_))
                 (_%size115751%_ (vector-length _%table115745%_))
                 (_%entries115754%_ (##fxquotient _%size115751%_ '2))
                 (_%start115757%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h115748%_ _%entries115754%_)
                   '1)))
            (let _%loop115761%_ ((_%probe115764%_ _%start115757%_)
                                 (_%i115766%_ '1)
                                 (_%deleted115768%_ '#f))
              (let ((_%k115771%_ (vector-ref _%table115745%_ _%probe115764%_)))
                (if (eq? _%k115771%_ (macro-unused-obj))
                    _%default115743%_
                    (if (eq? _%k115771%_ (macro-deleted-obj))
                        (_%loop115761%_
                         (let ((_%next-probe115776%_
                                (fx+ _%start115757%_
                                     _%i115766%_
                                     (fx* _%i115766%_ _%i115766%_))))
                           (##fxmodulo _%next-probe115776%_ _%size115751%_))
                         (##fx+ _%i115766%_ '1)
                         (let ((_%$e115779%_ _%deleted115768%_))
                           (if _%$e115779%_ _%$e115779%_ _%probe115764%_)))
                        (if (##string=? _%key115742%_ _%k115771%_)
                            (vector-ref
                             _%table115745%_
                             (##fx+ _%probe115764%_ '1))
                            (_%loop115761%_
                             (let ((_%next-probe115784%_
                                    (fx+ _%start115757%_
                                         _%i115766%_
                                         (fx* _%i115766%_ _%i115766%_))))
                               (##fxmodulo
                                _%next-probe115784%_
                                _%size115751%_))
                             (##fx+ _%i115766%_ '1)
                             _%deleted115768%_))))))))))
    (define string-table-ref/lock
      (lambda (_%tab115714%_ _%key115715%_ _%default115716%_)
        (let ((_%lock115718%_ (&raw-table-lock _%tab115714%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again115723%_ ((_%spin115726%_ '0))
              (if (##fx= (##vector-cas! _%lock115718%_ '0 '1 '0) '0)
                  (##vector-set! _%lock115718%_ '1 (current-thread))
                  (if (##fx< _%spin115726%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again115723%_ (##fx+ _%spin115726%_ '1)))
                      (let ((_%owner115732%_ (##vector-ref _%lock115718%_ '1)))
                        (if (eq? _%owner115732%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner115732%_)
                                (let () (##thread-yield!) (_%again115723%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r115738%_
                 (string-table-ref
                  _%tab115714%_
                  _%key115715%_
                  _%default115716%_)))
            (##vector-set! _%lock115718%_ '1 '#f)
            (##vector-cas! _%lock115718%_ '0 '0 '1)
            _%$r115738%_))))
    (define __string-table-set!
      (lambda (_%tab115666%_ _%key115667%_ _%value115668%_)
        (let ((_%table115670%_ (&raw-table-table _%tab115666%_))
              (_%seed115671%_ (&raw-table-seed _%tab115666%_)))
          (let* ((_%h115673%_
                  (fxxor (##string=?-hash _%key115667%_) _%seed115671%_))
                 (_%size115676%_ (vector-length _%table115670%_))
                 (_%entries115679%_ (##fxquotient _%size115676%_ '2))
                 (_%start115682%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h115673%_ _%entries115679%_)
                   '1)))
            (let _%loop115686%_ ((_%probe115689%_ _%start115682%_)
                                 (_%i115691%_ '1)
                                 (_%deleted115693%_ '#f))
              (let ((_%k115696%_ (vector-ref _%table115670%_ _%probe115689%_)))
                (if (eq? _%k115696%_ (macro-unused-obj))
                    (if _%deleted115693%_
                        (begin
                          (vector-set!
                           _%table115670%_
                           _%deleted115693%_
                           _%key115667%_)
                          (vector-set!
                           _%table115670%_
                           (##fx+ _%deleted115693%_ '1)
                           _%value115668%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab115666%_
                              (##fx+ (&raw-table-count _%tab115666%_) '1)))))
                        (begin
                          (vector-set!
                           _%table115670%_
                           _%probe115689%_
                           _%key115667%_)
                          (vector-set!
                           _%table115670%_
                           (##fx+ _%probe115689%_ '1)
                           _%value115668%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab115666%_
                              (##fx- (&raw-table-free _%tab115666%_) '1))
                             (&raw-table-count-set!
                              _%tab115666%_
                              (##fx+ (&raw-table-count _%tab115666%_) '1))))))
                    (if (eq? _%k115696%_ (macro-deleted-obj))
                        (_%loop115686%_
                         (let ((_%next-probe115703%_
                                (fx+ _%start115682%_
                                     _%i115691%_
                                     (fx* _%i115691%_ _%i115691%_))))
                           (##fxmodulo _%next-probe115703%_ _%size115676%_))
                         (##fx+ _%i115691%_ '1)
                         (let ((_%$e115706%_ _%deleted115693%_))
                           (if _%$e115706%_ _%$e115706%_ _%probe115689%_)))
                        (if (##string=? _%key115667%_ _%k115696%_)
                            (let ()
                              (vector-set!
                               _%table115670%_
                               _%probe115689%_
                               _%key115667%_)
                              (vector-set!
                               _%table115670%_
                               (##fx+ _%probe115689%_ '1)
                               _%value115668%_))
                            (_%loop115686%_
                             (let ((_%next-probe115711%_
                                    (fx+ _%start115682%_
                                         _%i115691%_
                                         (fx* _%i115691%_ _%i115691%_))))
                               (##fxmodulo
                                _%next-probe115711%_
                                _%size115676%_))
                             (##fx+ _%i115691%_ '1)
                             _%deleted115693%_))))))))))
    (define string-table-set!
      (lambda (_%tab115662%_ _%key115663%_ _%value115664%_)
        (if (##fx< (&raw-table-free _%tab115662%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab115662%_))
                    '4))
            (__raw-table-rehash! _%tab115662%_)
            '#!void)
        (__string-table-set! _%tab115662%_ _%key115663%_ _%value115664%_)))
    (define string-table-set!/lock
      (lambda (_%tab115634%_ _%key115635%_ _%value115636%_)
        (let ((_%lock115639%_ (&raw-table-lock _%tab115634%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again115644%_ ((_%spin115647%_ '0))
              (if (##fx= (##vector-cas! _%lock115639%_ '0 '1 '0) '0)
                  (##vector-set! _%lock115639%_ '1 (current-thread))
                  (if (##fx< _%spin115647%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again115644%_ (##fx+ _%spin115647%_ '1)))
                      (let ((_%owner115653%_ (##vector-ref _%lock115639%_ '1)))
                        (if (eq? _%owner115653%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner115653%_)
                                (let () (##thread-yield!) (_%again115644%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r115659%_
                 (string-table-set!
                  _%tab115634%_
                  _%key115635%_
                  _%value115636%_)))
            (##vector-set! _%lock115639%_ '1 '#f)
            (##vector-cas! _%lock115639%_ '0 '0 '1)
            _%$r115659%_))))
    (define __string-table-update!
      (lambda (_%tab115585%_
               _%key115586%_
               _%string-table-update!115587%_
               _%default115588%_)
        (let ((_%table115590%_ (&raw-table-table _%tab115585%_))
              (_%seed115591%_ (&raw-table-seed _%tab115585%_)))
          (let* ((_%h115593%_
                  (fxxor (##string=?-hash _%key115586%_) _%seed115591%_))
                 (_%size115596%_ (vector-length _%table115590%_))
                 (_%entries115599%_ (##fxquotient _%size115596%_ '2))
                 (_%start115602%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h115593%_ _%entries115599%_)
                   '1)))
            (let _%loop115606%_ ((_%probe115609%_ _%start115602%_)
                                 (_%i115611%_ '1)
                                 (_%deleted115613%_ '#f))
              (let ((_%k115616%_ (vector-ref _%table115590%_ _%probe115609%_)))
                (if (eq? _%k115616%_ (macro-unused-obj))
                    (if _%deleted115613%_
                        (begin
                          (vector-set!
                           _%table115590%_
                           _%deleted115613%_
                           _%key115586%_)
                          (vector-set!
                           _%table115590%_
                           (##fx+ _%deleted115613%_ '1)
                           (_%string-table-update!115587%_ _%default115588%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab115585%_
                              (##fx+ (&raw-table-count _%tab115585%_) '1)))))
                        (begin
                          (vector-set!
                           _%table115590%_
                           _%probe115609%_
                           _%key115586%_)
                          (vector-set!
                           _%table115590%_
                           (##fx+ _%probe115609%_ '1)
                           (_%string-table-update!115587%_ _%default115588%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab115585%_
                              (##fx- (&raw-table-free _%tab115585%_) '1))
                             (&raw-table-count-set!
                              _%tab115585%_
                              (##fx+ (&raw-table-count _%tab115585%_) '1))))))
                    (if (eq? _%k115616%_ (macro-deleted-obj))
                        (_%loop115606%_
                         (let ((_%next-probe115623%_
                                (fx+ _%start115602%_
                                     _%i115611%_
                                     (fx* _%i115611%_ _%i115611%_))))
                           (##fxmodulo _%next-probe115623%_ _%size115596%_))
                         (##fx+ _%i115611%_ '1)
                         (let ((_%$e115626%_ _%deleted115613%_))
                           (if _%$e115626%_ _%$e115626%_ _%probe115609%_)))
                        (if (##string=? _%key115586%_ _%k115616%_)
                            (let ()
                              (vector-set!
                               _%table115590%_
                               _%probe115609%_
                               _%key115586%_)
                              (vector-set!
                               _%table115590%_
                               (##fx+ _%probe115609%_ '1)
                               (_%string-table-update!115587%_
                                (vector-ref
                                 _%table115590%_
                                 (##fx+ _%probe115609%_ '1)))))
                            (_%loop115606%_
                             (let ((_%next-probe115631%_
                                    (fx+ _%start115602%_
                                         _%i115611%_
                                         (fx* _%i115611%_ _%i115611%_))))
                               (##fxmodulo
                                _%next-probe115631%_
                                _%size115596%_))
                             (##fx+ _%i115611%_ '1)
                             _%deleted115613%_))))))))))
    (define string-table-update!
      (lambda (_%tab115580%_
               _%key115581%_
               _%string-table-update!115582%_
               _%default115583%_)
        (if (##fx< (&raw-table-free _%tab115580%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab115580%_))
                    '4))
            (__raw-table-rehash! _%tab115580%_)
            '#!void)
        (__string-table-update!
         _%tab115580%_
         _%key115581%_
         _%string-table-update!115582%_
         _%default115583%_)))
    (define string-table-update!/lock
      (lambda (_%tab115551%_
               _%key115552%_
               _%string-table-update!115553%_
               _%default115554%_)
        (let ((_%lock115557%_ (&raw-table-lock _%tab115551%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again115562%_ ((_%spin115565%_ '0))
              (if (##fx= (##vector-cas! _%lock115557%_ '0 '1 '0) '0)
                  (##vector-set! _%lock115557%_ '1 (current-thread))
                  (if (##fx< _%spin115565%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again115562%_ (##fx+ _%spin115565%_ '1)))
                      (let ((_%owner115571%_ (##vector-ref _%lock115557%_ '1)))
                        (if (eq? _%owner115571%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner115571%_)
                                (let () (##thread-yield!) (_%again115562%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r115577%_
                 (_%string-table-update!115553%_
                  _%tab115551%_
                  _%key115552%_
                  _%string-table-update!115553%_
                  _%default115554%_)))
            (##vector-set! _%lock115557%_ '1 '#f)
            (##vector-cas! _%lock115557%_ '0 '0 '1)
            _%$r115577%_))))
    (define string-table-delete!
      (lambda (_%tab115508%_ _%key115509%_)
        (let ((_%table115511%_ (&raw-table-table _%tab115508%_))
              (_%seed115513%_ (&raw-table-seed _%tab115508%_)))
          (let* ((_%h115516%_
                  (fxxor (##string=?-hash _%key115509%_) _%seed115513%_))
                 (_%size115519%_ (vector-length _%table115511%_))
                 (_%entries115522%_ (##fxquotient _%size115519%_ '2))
                 (_%start115525%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h115516%_ _%entries115522%_)
                   '1)))
            (let _%loop115529%_ ((_%probe115532%_ _%start115525%_)
                                 (_%i115534%_ '1))
              (let ((_%k115537%_ (vector-ref _%table115511%_ _%probe115532%_)))
                (if (eq? _%k115537%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k115537%_ (macro-deleted-obj))
                        (_%loop115529%_
                         (let ((_%next-probe115542%_
                                (fx+ _%start115525%_
                                     _%i115534%_
                                     (fx* _%i115534%_ _%i115534%_))))
                           (##fxmodulo _%next-probe115542%_ _%size115519%_))
                         (##fx+ _%i115534%_ '1))
                        (if (##string=? _%key115509%_ _%k115537%_)
                            (let ()
                              (vector-set!
                               _%table115511%_
                               _%probe115532%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table115511%_
                               (##fx+ _%probe115532%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab115508%_
                                  (##fx- (&raw-table-count _%tab115508%_)
                                         '1)))))
                            (_%loop115529%_
                             (let ((_%next-probe115548%_
                                    (fx+ _%start115525%_
                                         _%i115534%_
                                         (fx* _%i115534%_ _%i115534%_))))
                               (##fxmodulo
                                _%next-probe115548%_
                                _%size115519%_))
                             (##fx+ _%i115534%_ '1)))))))))))
    (define string-table-delete!/lock
      (lambda (_%tab115480%_ _%key115482%_)
        (let ((_%lock115485%_ (&raw-table-lock _%tab115480%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again115490%_ ((_%spin115493%_ '0))
              (if (##fx= (##vector-cas! _%lock115485%_ '0 '1 '0) '0)
                  (##vector-set! _%lock115485%_ '1 (current-thread))
                  (if (##fx< _%spin115493%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again115490%_ (##fx+ _%spin115493%_ '1)))
                      (let ((_%owner115499%_ (##vector-ref _%lock115485%_ '1)))
                        (if (eq? _%owner115499%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner115499%_)
                                (let () (##thread-yield!) (_%again115490%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r115505%_
                 (string-table-delete! _%tab115480%_ _%key115482%_)))
            (##vector-set! _%lock115485%_ '1 '#f)
            (##vector-cas! _%lock115485%_ '0 '0 '1)
            _%$r115505%_))))
    (define make-immediate-table__%
      (lambda (_%size-hint115462%_ _%seed115463%_)
        (make-raw-table__1
         _%size-hint115462%_
         immediate-hash
         eq?
         _%seed115463%_)))
    (define make-immediate-table__0
      (lambda ()
        (let* ((_%size-hint115469%_ '#f) (_%seed115471%_ '0))
          (make-immediate-table__% _%size-hint115469%_ _%seed115471%_))))
    (define make-immediate-table__1
      (lambda (_%size-hint115473%_)
        (let ((_%seed115475%_ '0))
          (make-immediate-table__% _%size-hint115473%_ _%seed115475%_))))
    (define make-immediate-table
      (lambda _g117467_
        (let ((_g117468_ (##length _g117467_)))
          (cond ((##fx= _g117468_ 0) (apply make-immediate-table__0 _g117467_))
                ((##fx= _g117468_ 1) (apply make-immediate-table__1 _g117467_))
                ((##fx= _g117468_ 2) (apply make-immediate-table__% _g117467_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table
                  _g117467_))))))
    (define make-immediate-table/lock__%
      (lambda (_%size-hint115442%_ _%seed115444%_)
        (make-raw-table/lock__%
         _%size-hint115442%_
         immediate-hash
         eq?
         _%seed115444%_)))
    (define make-immediate-table/lock__0
      (lambda ()
        (let* ((_%size-hint115450%_ '#f) (_%seed115452%_ '0))
          (make-immediate-table/lock__% _%size-hint115450%_ _%seed115452%_))))
    (define make-immediate-table/lock__1
      (lambda (_%size-hint115454%_)
        (let ((_%seed115456%_ '0))
          (make-immediate-table/lock__% _%size-hint115454%_ _%seed115456%_))))
    (define make-immediate-table/lock
      (lambda _g117469_
        (let ((_g117470_ (##length _g117469_)))
          (cond ((##fx= _g117470_ 0)
                 (apply make-immediate-table/lock__0 _g117469_))
                ((##fx= _g117470_ 1)
                 (apply make-immediate-table/lock__1 _g117469_))
                ((##fx= _g117470_ 2)
                 (apply make-immediate-table/lock__% _g117469_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table/lock
                  _g117469_))))))
    (define immediate-table-ref
      (lambda (_%tab115395%_ _%key115396%_ _%default115397%_)
        (let ((_%table115399%_ (&raw-table-table _%tab115395%_))
              (_%seed115400%_ (&raw-table-seed _%tab115395%_)))
          (let* ((_%h115402%_
                  (fxxor (immediate-hash _%key115396%_) _%seed115400%_))
                 (_%size115405%_ (vector-length _%table115399%_))
                 (_%entries115408%_ (##fxquotient _%size115405%_ '2))
                 (_%start115411%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h115402%_ _%entries115408%_)
                   '1)))
            (let _%loop115415%_ ((_%probe115418%_ _%start115411%_)
                                 (_%i115420%_ '1)
                                 (_%deleted115422%_ '#f))
              (let ((_%k115425%_ (vector-ref _%table115399%_ _%probe115418%_)))
                (if (eq? _%k115425%_ (macro-unused-obj))
                    _%default115397%_
                    (if (eq? _%k115425%_ (macro-deleted-obj))
                        (_%loop115415%_
                         (let ((_%next-probe115430%_
                                (fx+ _%start115411%_
                                     _%i115420%_
                                     (fx* _%i115420%_ _%i115420%_))))
                           (##fxmodulo _%next-probe115430%_ _%size115405%_))
                         (##fx+ _%i115420%_ '1)
                         (let ((_%$e115433%_ _%deleted115422%_))
                           (if _%$e115433%_ _%$e115433%_ _%probe115418%_)))
                        (if (eq? _%key115396%_ _%k115425%_)
                            (vector-ref
                             _%table115399%_
                             (##fx+ _%probe115418%_ '1))
                            (_%loop115415%_
                             (let ((_%next-probe115438%_
                                    (fx+ _%start115411%_
                                         _%i115420%_
                                         (fx* _%i115420%_ _%i115420%_))))
                               (##fxmodulo
                                _%next-probe115438%_
                                _%size115405%_))
                             (##fx+ _%i115420%_ '1)
                             _%deleted115422%_))))))))))
    (define immediate-table-ref/lock
      (lambda (_%tab115368%_ _%key115369%_ _%default115370%_)
        (let ((_%lock115372%_ (&raw-table-lock _%tab115368%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again115377%_ ((_%spin115380%_ '0))
              (if (##fx= (##vector-cas! _%lock115372%_ '0 '1 '0) '0)
                  (##vector-set! _%lock115372%_ '1 (current-thread))
                  (if (##fx< _%spin115380%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again115377%_ (##fx+ _%spin115380%_ '1)))
                      (let ((_%owner115386%_ (##vector-ref _%lock115372%_ '1)))
                        (if (eq? _%owner115386%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner115386%_)
                                (let () (##thread-yield!) (_%again115377%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r115392%_
                 (immediate-table-ref
                  _%tab115368%_
                  _%key115369%_
                  _%default115370%_)))
            (##vector-set! _%lock115372%_ '1 '#f)
            (##vector-cas! _%lock115372%_ '0 '0 '1)
            _%$r115392%_))))
    (define __immediate-table-set!
      (lambda (_%tab115320%_ _%key115321%_ _%value115322%_)
        (let ((_%table115324%_ (&raw-table-table _%tab115320%_))
              (_%seed115325%_ (&raw-table-seed _%tab115320%_)))
          (let* ((_%h115327%_
                  (fxxor (immediate-hash _%key115321%_) _%seed115325%_))
                 (_%size115330%_ (vector-length _%table115324%_))
                 (_%entries115333%_ (##fxquotient _%size115330%_ '2))
                 (_%start115336%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h115327%_ _%entries115333%_)
                   '1)))
            (let _%loop115340%_ ((_%probe115343%_ _%start115336%_)
                                 (_%i115345%_ '1)
                                 (_%deleted115347%_ '#f))
              (let ((_%k115350%_ (vector-ref _%table115324%_ _%probe115343%_)))
                (if (eq? _%k115350%_ (macro-unused-obj))
                    (if _%deleted115347%_
                        (begin
                          (vector-set!
                           _%table115324%_
                           _%deleted115347%_
                           _%key115321%_)
                          (vector-set!
                           _%table115324%_
                           (##fx+ _%deleted115347%_ '1)
                           _%value115322%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab115320%_
                              (##fx+ (&raw-table-count _%tab115320%_) '1)))))
                        (begin
                          (vector-set!
                           _%table115324%_
                           _%probe115343%_
                           _%key115321%_)
                          (vector-set!
                           _%table115324%_
                           (##fx+ _%probe115343%_ '1)
                           _%value115322%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab115320%_
                              (##fx- (&raw-table-free _%tab115320%_) '1))
                             (&raw-table-count-set!
                              _%tab115320%_
                              (##fx+ (&raw-table-count _%tab115320%_) '1))))))
                    (if (eq? _%k115350%_ (macro-deleted-obj))
                        (_%loop115340%_
                         (let ((_%next-probe115357%_
                                (fx+ _%start115336%_
                                     _%i115345%_
                                     (fx* _%i115345%_ _%i115345%_))))
                           (##fxmodulo _%next-probe115357%_ _%size115330%_))
                         (##fx+ _%i115345%_ '1)
                         (let ((_%$e115360%_ _%deleted115347%_))
                           (if _%$e115360%_ _%$e115360%_ _%probe115343%_)))
                        (if (eq? _%key115321%_ _%k115350%_)
                            (let ()
                              (vector-set!
                               _%table115324%_
                               _%probe115343%_
                               _%key115321%_)
                              (vector-set!
                               _%table115324%_
                               (##fx+ _%probe115343%_ '1)
                               _%value115322%_))
                            (_%loop115340%_
                             (let ((_%next-probe115365%_
                                    (fx+ _%start115336%_
                                         _%i115345%_
                                         (fx* _%i115345%_ _%i115345%_))))
                               (##fxmodulo
                                _%next-probe115365%_
                                _%size115330%_))
                             (##fx+ _%i115345%_ '1)
                             _%deleted115347%_))))))))))
    (define immediate-table-set!
      (lambda (_%tab115316%_ _%key115317%_ _%value115318%_)
        (if (##fx< (&raw-table-free _%tab115316%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab115316%_))
                    '4))
            (__raw-table-rehash! _%tab115316%_)
            '#!void)
        (__immediate-table-set! _%tab115316%_ _%key115317%_ _%value115318%_)))
    (define immediate-table-set!/lock
      (lambda (_%tab115288%_ _%key115289%_ _%value115290%_)
        (let ((_%lock115293%_ (&raw-table-lock _%tab115288%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again115298%_ ((_%spin115301%_ '0))
              (if (##fx= (##vector-cas! _%lock115293%_ '0 '1 '0) '0)
                  (##vector-set! _%lock115293%_ '1 (current-thread))
                  (if (##fx< _%spin115301%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again115298%_ (##fx+ _%spin115301%_ '1)))
                      (let ((_%owner115307%_ (##vector-ref _%lock115293%_ '1)))
                        (if (eq? _%owner115307%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner115307%_)
                                (let () (##thread-yield!) (_%again115298%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r115313%_
                 (immediate-table-set!
                  _%tab115288%_
                  _%key115289%_
                  _%value115290%_)))
            (##vector-set! _%lock115293%_ '1 '#f)
            (##vector-cas! _%lock115293%_ '0 '0 '1)
            _%$r115313%_))))
    (define __immediate-table-update!
      (lambda (_%tab115239%_
               _%key115240%_
               _%immediate-table-update!115241%_
               _%default115242%_)
        (let ((_%table115244%_ (&raw-table-table _%tab115239%_))
              (_%seed115245%_ (&raw-table-seed _%tab115239%_)))
          (let* ((_%h115247%_
                  (fxxor (immediate-hash _%key115240%_) _%seed115245%_))
                 (_%size115250%_ (vector-length _%table115244%_))
                 (_%entries115253%_ (##fxquotient _%size115250%_ '2))
                 (_%start115256%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h115247%_ _%entries115253%_)
                   '1)))
            (let _%loop115260%_ ((_%probe115263%_ _%start115256%_)
                                 (_%i115265%_ '1)
                                 (_%deleted115267%_ '#f))
              (let ((_%k115270%_ (vector-ref _%table115244%_ _%probe115263%_)))
                (if (eq? _%k115270%_ (macro-unused-obj))
                    (if _%deleted115267%_
                        (begin
                          (vector-set!
                           _%table115244%_
                           _%deleted115267%_
                           _%key115240%_)
                          (vector-set!
                           _%table115244%_
                           (##fx+ _%deleted115267%_ '1)
                           (_%immediate-table-update!115241%_
                            _%default115242%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab115239%_
                              (##fx+ (&raw-table-count _%tab115239%_) '1)))))
                        (begin
                          (vector-set!
                           _%table115244%_
                           _%probe115263%_
                           _%key115240%_)
                          (vector-set!
                           _%table115244%_
                           (##fx+ _%probe115263%_ '1)
                           (_%immediate-table-update!115241%_
                            _%default115242%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab115239%_
                              (##fx- (&raw-table-free _%tab115239%_) '1))
                             (&raw-table-count-set!
                              _%tab115239%_
                              (##fx+ (&raw-table-count _%tab115239%_) '1))))))
                    (if (eq? _%k115270%_ (macro-deleted-obj))
                        (_%loop115260%_
                         (let ((_%next-probe115277%_
                                (fx+ _%start115256%_
                                     _%i115265%_
                                     (fx* _%i115265%_ _%i115265%_))))
                           (##fxmodulo _%next-probe115277%_ _%size115250%_))
                         (##fx+ _%i115265%_ '1)
                         (let ((_%$e115280%_ _%deleted115267%_))
                           (if _%$e115280%_ _%$e115280%_ _%probe115263%_)))
                        (if (eq? _%key115240%_ _%k115270%_)
                            (let ()
                              (vector-set!
                               _%table115244%_
                               _%probe115263%_
                               _%key115240%_)
                              (vector-set!
                               _%table115244%_
                               (##fx+ _%probe115263%_ '1)
                               (_%immediate-table-update!115241%_
                                (vector-ref
                                 _%table115244%_
                                 (##fx+ _%probe115263%_ '1)))))
                            (_%loop115260%_
                             (let ((_%next-probe115285%_
                                    (fx+ _%start115256%_
                                         _%i115265%_
                                         (fx* _%i115265%_ _%i115265%_))))
                               (##fxmodulo
                                _%next-probe115285%_
                                _%size115250%_))
                             (##fx+ _%i115265%_ '1)
                             _%deleted115267%_))))))))))
    (define immediate-table-update!
      (lambda (_%tab115234%_
               _%key115235%_
               _%immediate-table-update!115236%_
               _%default115237%_)
        (if (##fx< (&raw-table-free _%tab115234%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab115234%_))
                    '4))
            (__raw-table-rehash! _%tab115234%_)
            '#!void)
        (__immediate-table-update!
         _%tab115234%_
         _%key115235%_
         _%immediate-table-update!115236%_
         _%default115237%_)))
    (define immediate-table-update!/lock
      (lambda (_%tab115205%_
               _%key115206%_
               _%immediate-table-update!115207%_
               _%default115208%_)
        (let ((_%lock115211%_ (&raw-table-lock _%tab115205%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again115216%_ ((_%spin115219%_ '0))
              (if (##fx= (##vector-cas! _%lock115211%_ '0 '1 '0) '0)
                  (##vector-set! _%lock115211%_ '1 (current-thread))
                  (if (##fx< _%spin115219%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again115216%_ (##fx+ _%spin115219%_ '1)))
                      (let ((_%owner115225%_ (##vector-ref _%lock115211%_ '1)))
                        (if (eq? _%owner115225%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner115225%_)
                                (let () (##thread-yield!) (_%again115216%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r115231%_
                 (_%immediate-table-update!115207%_
                  _%tab115205%_
                  _%key115206%_
                  _%immediate-table-update!115207%_
                  _%default115208%_)))
            (##vector-set! _%lock115211%_ '1 '#f)
            (##vector-cas! _%lock115211%_ '0 '0 '1)
            _%$r115231%_))))
    (define immediate-table-delete!
      (lambda (_%tab115162%_ _%key115163%_)
        (let ((_%table115165%_ (&raw-table-table _%tab115162%_))
              (_%seed115167%_ (&raw-table-seed _%tab115162%_)))
          (let* ((_%h115170%_
                  (fxxor (immediate-hash _%key115163%_) _%seed115167%_))
                 (_%size115173%_ (vector-length _%table115165%_))
                 (_%entries115176%_ (##fxquotient _%size115173%_ '2))
                 (_%start115179%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h115170%_ _%entries115176%_)
                   '1)))
            (let _%loop115183%_ ((_%probe115186%_ _%start115179%_)
                                 (_%i115188%_ '1))
              (let ((_%k115191%_ (vector-ref _%table115165%_ _%probe115186%_)))
                (if (eq? _%k115191%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k115191%_ (macro-deleted-obj))
                        (_%loop115183%_
                         (let ((_%next-probe115196%_
                                (fx+ _%start115179%_
                                     _%i115188%_
                                     (fx* _%i115188%_ _%i115188%_))))
                           (##fxmodulo _%next-probe115196%_ _%size115173%_))
                         (##fx+ _%i115188%_ '1))
                        (if (eq? _%key115163%_ _%k115191%_)
                            (let ()
                              (vector-set!
                               _%table115165%_
                               _%probe115186%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table115165%_
                               (##fx+ _%probe115186%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab115162%_
                                  (##fx- (&raw-table-count _%tab115162%_)
                                         '1)))))
                            (_%loop115183%_
                             (let ((_%next-probe115202%_
                                    (fx+ _%start115179%_
                                         _%i115188%_
                                         (fx* _%i115188%_ _%i115188%_))))
                               (##fxmodulo
                                _%next-probe115202%_
                                _%size115173%_))
                             (##fx+ _%i115188%_ '1)))))))))))
    (define immediate-table-delete!/lock
      (lambda (_%tab115134%_ _%key115136%_)
        (let ((_%lock115139%_ (&raw-table-lock _%tab115134%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again115144%_ ((_%spin115147%_ '0))
              (if (##fx= (##vector-cas! _%lock115139%_ '0 '1 '0) '0)
                  (##vector-set! _%lock115139%_ '1 (current-thread))
                  (if (##fx< _%spin115147%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again115144%_ (##fx+ _%spin115147%_ '1)))
                      (let ((_%owner115153%_ (##vector-ref _%lock115139%_ '1)))
                        (if (eq? _%owner115153%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner115153%_)
                                (let () (##thread-yield!) (_%again115144%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r115159%_
                 (immediate-table-delete! _%tab115134%_ _%key115136%_)))
            (##vector-set! _%lock115139%_ '1 '#f)
            (##vector-cas! _%lock115139%_ '0 '0 '1)
            _%$r115159%_))))
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
      (lambda (_%tab115132%_)
        (##unchecked-structure-ref
         _%tab115132%_
         '1
         __gc-table::t
         'gc-table-gcht)))
    (define &gc-table-immediate
      (lambda (_%tab115130%_)
        (##unchecked-structure-ref
         _%tab115130%_
         '2
         __gc-table::t
         'gc-table-immediate)))
    (define &gc-table-lock
      (lambda (_%tab115128%_)
        (##unchecked-structure-ref
         _%tab115128%_
         '3
         __gc-table::t
         'gc-table-lock)))
    (define &gc-table-gcht-set!
      (lambda (_%tab115125%_ _%val115126%_)
        (##unchecked-structure-set!
         _%tab115125%_
         _%val115126%_
         '1
         __gc-table::t
         'gc-table-gcht-set!)))
    (define &gc-table-immediate-set!
      (lambda (_%tab115122%_ _%val115123%_)
        (##unchecked-structure-set!
         _%tab115122%_
         _%val115123%_
         '2
         __gc-table::t
         'gc-table-immediate-set!)))
    (define &gc-table-lock-set!
      (lambda (_%tab115119%_ _%val115120%_)
        (##unchecked-structure-set!
         _%tab115119%_
         _%val115120%_
         '3
         __gc-table::t
         'gc-table-lock-set!)))
    (define make-gc-table__%
      (lambda (_%size-hint115083%_
               _%klass115084%_
               _%flags115085%_
               _%lock115086%_)
        (let ((_%gcht115088%_
               (__gc-table-new
                (if (fixnum? _%size-hint115083%_) _%size-hint115083%_ '16)
                _%flags115085%_)))
          (##structure _%klass115084%_ _%gcht115088%_ '#f _%lock115086%_))))
    (define make-gc-table__0
      (lambda (_%size-hint115093%_)
        (let* ((_%klass115095%_ __gc-table::t)
               (_%flags115097%_ '0)
               (_%lock115099%_ '#f))
          (make-gc-table__%
           _%size-hint115093%_
           _%klass115095%_
           _%flags115097%_
           _%lock115099%_))))
    (define make-gc-table__1
      (lambda (_%size-hint115101%_ _%klass115102%_)
        (let* ((_%flags115104%_ '0) (_%lock115106%_ '#f))
          (make-gc-table__%
           _%size-hint115101%_
           _%klass115102%_
           _%flags115104%_
           _%lock115106%_))))
    (define make-gc-table__2
      (lambda (_%size-hint115108%_ _%klass115109%_ _%flags115110%_)
        (let ((_%lock115112%_ '#f))
          (make-gc-table__%
           _%size-hint115108%_
           _%klass115109%_
           _%flags115110%_
           _%lock115112%_))))
    (define make-gc-table
      (lambda _g117471_
        (let ((_g117472_ (##length _g117471_)))
          (cond ((##fx= _g117472_ 1) (apply make-gc-table__0 _g117471_))
                ((##fx= _g117472_ 2) (apply make-gc-table__1 _g117471_))
                ((##fx= _g117472_ 3) (apply make-gc-table__2 _g117471_))
                ((##fx= _g117472_ 4) (apply make-gc-table__% _g117471_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table
                  _g117471_))))))
    (define make-gc-table/lock__%
      (lambda (_%size-hint115060%_ _%klass115061%_ _%flags115062%_)
        (make-gc-table__%
         _%size-hint115060%_
         _%klass115061%_
         _%flags115062%_
         (vector '0 '#f))))
    (define make-gc-table/lock__0
      (lambda (_%size-hint115067%_)
        (let* ((_%klass115069%_ __gc-table::t) (_%flags115071%_ '0))
          (make-gc-table/lock__%
           _%size-hint115067%_
           _%klass115069%_
           _%flags115071%_))))
    (define make-gc-table/lock__1
      (lambda (_%size-hint115073%_ _%klass115074%_)
        (let ((_%flags115076%_ '0))
          (make-gc-table/lock__%
           _%size-hint115073%_
           _%klass115074%_
           _%flags115076%_))))
    (define make-gc-table/lock
      (lambda _g117473_
        (let ((_g117474_ (##length _g117473_)))
          (cond ((##fx= _g117474_ 1) (apply make-gc-table/lock__0 _g117473_))
                ((##fx= _g117474_ 2) (apply make-gc-table/lock__1 _g117473_))
                ((##fx= _g117474_ 3) (apply make-gc-table/lock__% _g117473_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table/lock
                  _g117473_))))))
    (define __gc-table-immediate
      (lambda (_%tab115051%_)
        (let ((_%$e115053%_ (&gc-table-immediate _%tab115051%_)))
          (if _%$e115053%_
              _%$e115053%_
              (let ((_%immediate115057%_ (make-immediate-table__% '#f '0)))
                (&gc-table-immediate-set! _%tab115051%_ _%immediate115057%_)
                _%immediate115057%_)))))
    (define __gc-table-new
      (lambda (_%size115041%_ _%flags115042%_)
        (let* ((_%flags115044%_
                (##fxand _%flags115042%_
                         (fxnot (macro-gc-hash-table-flag-need-rehash))))
               (_%flags115046%_
                (fxior _%flags115044%_
                       (macro-gc-hash-table-flag-mem-alloc-keys)))
               (_%gcht115048%_
                (##gc-hash-table-allocate
                 _%size115041%_
                 _%flags115046%_
                 __gc-table-loads)))
          _%gcht115048%_)))
    (define __gc-table-e
      (lambda (_%tab115036%_)
        (declare (not interrupts-enabled))
        (let ((_%gcht115039%_ (&gc-table-gcht _%tab115036%_)))
          (if (##fx= '0
                     (fxand (macro-gc-hash-table-flags _%gcht115039%_)
                            (macro-gc-hash-table-flag-need-rehash)))
              _%gcht115039%_
              (begin
                (__gc-table-rehash! _%tab115036%_)
                (&gc-table-gcht _%tab115036%_))))))
    (define __gc-table-rehash!
      (lambda (_%tab115027%_)
        (let* ((_%old-table115029%_ (&gc-table-gcht _%tab115027%_))
               (_%new-table115031%_
                (##gc-hash-table-resize! _%old-table115029%_ __gc-table-loads))
               (_%gcht115033%_
                (##gc-hash-table-rehash!
                 _%old-table115029%_
                 _%new-table115031%_)))
          (&gc-table-gcht-set! _%tab115027%_ _%gcht115033%_))))
    (define gc-table-ref
      (lambda (_%tab115011%_ _%key115012%_ _%default115013%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key115012%_)
            (let* ((_%gcht115017%_ (__gc-table-e _%tab115011%_))
                   (_%value115019%_
                    (##gc-hash-table-ref _%gcht115017%_ _%key115012%_)))
              (if (eq? _%value115019%_ (macro-unused-obj))
                  _%default115013%_
                  _%value115019%_))
            (let ((_%$e115021%_ (&gc-table-immediate _%tab115011%_)))
              (if _%$e115021%_
                  ((lambda (_%immediate115024%_)
                     (immediate-table-ref
                      _%immediate115024%_
                      _%key115012%_
                      _%default115013%_))
                   _%$e115021%_)
                  _%default115013%_)))))
    (define gc-table-ref/lock
      (lambda (_%tab114987%_ _%key114988%_ _%default114989%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again114993%_ ((_%spin114996%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab114987%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab114987%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin114996%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again114993%_ (##fx+ _%spin114996%_ '1)))
                    (let ((_%owner115002%_
                           (##vector-ref (&gc-table-lock _%tab114987%_) '1)))
                      (if (eq? _%owner115002%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner115002%_)
                              (let () (##thread-yield!) (_%again114993%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r115008%_
               (gc-table-ref _%tab114987%_ _%key114988%_ _%default114989%_)))
          (##vector-set! (&gc-table-lock _%tab114987%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab114987%_) '0 '0 '1)
          _%$r115008%_)))
    (define gc-table-set!
      (lambda (_%tab114980%_ _%key114981%_ _%value114982%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key114981%_)
            (let ((_%gcht114985%_ (__gc-table-e _%tab114980%_)))
              (if (##gc-hash-table-set!
                   _%gcht114985%_
                   _%key114981%_
                   _%value114982%_)
                  (begin
                    (__gc-table-rehash! _%tab114980%_)
                    (gc-table-set!
                     _%tab114980%_
                     _%key114981%_
                     _%value114982%_))
                  '#!void))
            (immediate-table-set!
             (__gc-table-immediate _%tab114980%_)
             _%key114981%_
             _%value114982%_))))
    (define gc-table-set/lock!
      (lambda (_%tab114956%_ _%key114957%_ _%value114958%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again114962%_ ((_%spin114965%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab114956%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab114956%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin114965%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again114962%_ (##fx+ _%spin114965%_ '1)))
                    (let ((_%owner114971%_
                           (##vector-ref (&gc-table-lock _%tab114956%_) '1)))
                      (if (eq? _%owner114971%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner114971%_)
                              (let () (##thread-yield!) (_%again114962%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r114977%_
               (gc-table-set! _%tab114956%_ _%key114957%_ _%value114958%_)))
          (##vector-set! (&gc-table-lock _%tab114956%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab114956%_) '0 '0 '1)
          _%$r114977%_)))
    (define gc-table-update!
      (lambda (_%tab114949%_ _%key114950%_ _%update114951%_ _%default114952%_)
        (if (##mem-allocated? _%key114950%_)
            (let ((_%value114954%_
                   (gc-table-ref
                    _%tab114949%_
                    _%key114950%_
                    _%default114952%_)))
              (gc-table-set!
               _%tab114949%_
               _%key114950%_
               (_%update114951%_ _%value114954%_)))
            (immediate-table-update!
             (__gc-table-immediate _%tab114949%_)
             _%key114950%_
             _%update114951%_
             _%default114952%_))))
    (define gc-table-update!/lock
      (lambda (_%tab114924%_ _%key114925%_ _%update114926%_ _%default114927%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again114931%_ ((_%spin114934%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab114924%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab114924%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin114934%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again114931%_ (##fx+ _%spin114934%_ '1)))
                    (let ((_%owner114940%_
                           (##vector-ref (&gc-table-lock _%tab114924%_) '1)))
                      (if (eq? _%owner114940%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner114940%_)
                              (let () (##thread-yield!) (_%again114931%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r114946%_
               (gc-table-update!
                _%tab114924%_
                _%key114925%_
                _%update114926%_
                _%default114927%_)))
          (##vector-set! (&gc-table-lock _%tab114924%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab114924%_) '0 '0 '1)
          _%$r114946%_)))
    (define gc-table-delete!
      (lambda (_%tab114912%_ _%key114913%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key114913%_)
            (let ((_%gcht114917%_ (__gc-table-e _%tab114912%_)))
              (if (##gc-hash-table-set!
                   _%gcht114917%_
                   _%key114913%_
                   (macro-absent-obj))
                  (begin
                    (__gc-table-rehash! _%tab114912%_)
                    (gc-table-delete! _%tab114912%_ _%key114913%_))
                  '#!void))
            (let ((_%$e114919%_ (&gc-table-immediate _%tab114912%_)))
              (if _%$e114919%_
                  ((lambda (_%immediate114922%_)
                     (immediate-table-delete!
                      _%immediate114922%_
                      _%key114913%_))
                   _%$e114919%_)
                  '#!void)))))
    (define gc-table-delete!/lock
      (lambda (_%tab114889%_ _%key114890%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again114894%_ ((_%spin114897%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab114889%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab114889%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin114897%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again114894%_ (##fx+ _%spin114897%_ '1)))
                    (let ((_%owner114903%_
                           (##vector-ref (&gc-table-lock _%tab114889%_) '1)))
                      (if (eq? _%owner114903%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner114903%_)
                              (let () (##thread-yield!) (_%again114894%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r114909%_ (gc-table-delete! _%tab114889%_ _%key114890%_)))
          (##vector-set! (&gc-table-lock _%tab114889%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab114889%_) '0 '0 '1)
          _%$r114909%_)))
    (define gc-table-for-each
      (lambda (_%tab114878%_ _%proc114879%_)
        (declare (not interrupts-enabled))
        (begin
          (let ((_%gcht114882%_ (__gc-table-e _%tab114878%_)))
            (##gc-hash-table-for-each _%proc114879%_ _%gcht114882%_))
          (let ((_%$e114884%_ (&gc-table-immediate _%tab114878%_)))
            (if _%$e114884%_
                ((lambda (_%immediate114887%_)
                   (raw-table-for-each _%immediate114887%_ _%proc114879%_))
                 _%$e114884%_)
                '#!void)))))
    (define gc-table-for-each/lock
      (lambda (_%tab114855%_ _%proc114856%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again114860%_ ((_%spin114863%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab114855%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab114855%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin114863%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again114860%_ (##fx+ _%spin114863%_ '1)))
                    (let ((_%owner114869%_
                           (##vector-ref (&gc-table-lock _%tab114855%_) '1)))
                      (if (eq? _%owner114869%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner114869%_)
                              (let () (##thread-yield!) (_%again114860%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r114875%_ (gc-table-for-each _%tab114855%_ _%proc114856%_)))
          (##vector-set! (&gc-table-lock _%tab114855%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab114855%_) '0 '0 '1)
          _%$r114875%_)))
    (define gc-table-copy
      (lambda (_%tab114843%_)
        (let* ((_%gcht114845%_ (__gc-table-e _%tab114843%_))
               (_%new-table114847%_
                (__gc-table-new
                 (macro-gc-hash-table-count _%gcht114845%_)
                 (macro-gc-hash-table-flags _%gcht114845%_)))
               (_%result114849%_
                (##structure
                 (##structure-type _%tab114843%_)
                 _%new-table114847%_
                 '#f)))
          (gc-table-for-each
           _%tab114843%_
           (lambda (_%k114852%_ _%v114853%_)
             (gc-table-set! _%result114849%_ _%k114852%_ _%v114853%_)))
          _%result114849%_)))
    (define gc-table-copy/lock
      (lambda (_%tab114821%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again114825%_ ((_%spin114828%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab114821%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab114821%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin114828%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again114825%_ (##fx+ _%spin114828%_ '1)))
                    (let ((_%owner114834%_
                           (##vector-ref (&gc-table-lock _%tab114821%_) '1)))
                      (if (eq? _%owner114834%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner114834%_)
                              (let () (##thread-yield!) (_%again114825%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r114840%_ (gc-table-copy _%tab114821%_)))
          (##vector-set! (&gc-table-lock _%tab114821%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab114821%_) '0 '0 '1)
          _%$r114840%_)))
    (define gc-table-clear!
      (lambda (_%tab114814%_)
        (let* ((_%gcht114816%_ (__gc-table-e _%tab114814%_))
               (_%new-table114818%_
                (__gc-table-new
                 '16
                 (macro-gc-hash-table-flags _%gcht114816%_))))
          (&gc-table-gcht-set! _%tab114814%_ _%new-table114818%_)
          (&gc-table-immediate-set! _%tab114814%_ '#f))))
    (define gc-table-clear!/lock
      (lambda (_%tab114792%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again114796%_ ((_%spin114799%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab114792%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab114792%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin114799%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again114796%_ (##fx+ _%spin114799%_ '1)))
                    (let ((_%owner114805%_
                           (##vector-ref (&gc-table-lock _%tab114792%_) '1)))
                      (if (eq? _%owner114805%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner114805%_)
                              (let () (##thread-yield!) (_%again114796%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r114811%_ (gc-table-clear! _%tab114792%_)))
          (##vector-set! (&gc-table-lock _%tab114792%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab114792%_) '0 '0 '1)
          _%$r114811%_)))
    (define gc-table-length
      (lambda (_%tab114784%_)
        (let ((_%gcht114786%_ (__gc-table-e _%tab114784%_)))
          (fx+ (macro-gc-hash-table-count _%gcht114786%_)
               (let ((_%$e114788%_ (&gc-table-immediate _%tab114784%_)))
                 (if _%$e114788%_ (&raw-table-count _%$e114788%_) '0))))))
    (define gc-table-length/lock
      (lambda (_%tab114762%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again114766%_ ((_%spin114769%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab114762%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab114762%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin114769%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again114766%_ (##fx+ _%spin114769%_ '1)))
                    (let ((_%owner114775%_
                           (##vector-ref (&gc-table-lock _%tab114762%_) '1)))
                      (if (eq? _%owner114775%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner114775%_)
                              (let () (##thread-yield!) (_%again114766%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r114781%_ (gc-table-length _%tab114762%_)))
          (##vector-set! (&gc-table-lock _%tab114762%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab114762%_) '0 '0 '1)
          _%$r114781%_)))
    (define __object-eq-hash-lock (vector '0 '#f))
    (define __object-eq-hash-next '0)
    (define __object-eq-hash
      (make-gc-table__2
       '1024
       __gc-table::t
       (macro-gc-hash-table-flag-weak-keys)))
    (define __object->eq-hash
      (lambda (_%obj114732%_)
        (declare (not interrupts-enabled))
        (begin
          (let ()
            (declare (not interrupts-enabled))
            (let _%again114737%_ ((_%spin114740%_ '0))
              (if (##fx= (##vector-cas! __object-eq-hash-lock '0 '1 '0) '0)
                  (##vector-set! __object-eq-hash-lock '1 (current-thread))
                  (if (##fx< _%spin114740%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again114737%_ (##fx+ _%spin114740%_ '1)))
                      (let ((_%owner114746%_
                             (##vector-ref __object-eq-hash-lock '1)))
                        (if (eq? _%owner114746%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner114746%_)
                                (let () (##thread-yield!) (_%again114737%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r114759%_
                 (let ((_%val114752%_
                        (gc-table-ref __object-eq-hash _%obj114732%_ '#f)))
                   (if _%val114752%_
                       _%val114752%_
                       (let ((_%h114754%_
                              (fxand __object-eq-hash (macro-max-fixnum32))))
                         (set! __object-eq-hash-next
                               (let ((_%$e114756%_
                                      (##fx+? __object-eq-hash-next '1)))
                                 (if _%$e114756%_ _%$e114756%_ '0)))
                         (gc-table-set!
                          __object-eq-hash
                          _%obj114732%_
                          _%h114754%_)
                         _%h114754%_)))))
            (##vector-set! __object-eq-hash-lock '1 '#f)
            (##vector-cas! __object-eq-hash-lock '0 '0 '1)
            _%$r114759%_))))))
