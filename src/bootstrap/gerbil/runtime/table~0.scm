(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1771036667)
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
      (lambda (_%obj301678%_)
        (if (##structure? _%obj301678%_)
            (##structure-instance-of? _%obj301678%_ __table::t.id)
            '#f)))
    (define &raw-table-table
      (lambda (_%tab301676%_)
        (##unchecked-structure-ref
         _%tab301676%_
         '1
         __table::t
         'raw-table-table)))
    (define &raw-table-count
      (lambda (_%tab301674%_)
        (##unchecked-structure-ref
         _%tab301674%_
         '2
         __table::t
         'raw-table-count)))
    (define &raw-table-free
      (lambda (_%tab301672%_)
        (##unchecked-structure-ref
         _%tab301672%_
         '3
         __table::t
         'raw-table-free)))
    (define &raw-table-hash
      (lambda (_%tab301670%_)
        (##unchecked-structure-ref
         _%tab301670%_
         '4
         __table::t
         'raw-table-hash)))
    (define &raw-table-test
      (lambda (_%tab301668%_)
        (##unchecked-structure-ref
         _%tab301668%_
         '5
         __table::t
         'raw-table-test)))
    (define &raw-table-seed
      (lambda (_%tab301666%_)
        (##unchecked-structure-ref
         _%tab301666%_
         '6
         __table::t
         'raw-table-seed)))
    (define &raw-table-lock
      (lambda (_%tab301664%_)
        (##unchecked-structure-ref
         _%tab301664%_
         '7
         __table::t
         'raw-table-lock)))
    (define &raw-table-table-set!
      (lambda (_%tab301661%_ _%val301662%_)
        (##unchecked-structure-set!
         _%tab301661%_
         _%val301662%_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_%tab301658%_ _%val301659%_)
        (##unchecked-structure-set!
         _%tab301658%_
         _%val301659%_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_%tab301655%_ _%val301656%_)
        (##unchecked-structure-set!
         _%tab301655%_
         _%val301656%_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_%tab301652%_ _%val301653%_)
        (##unchecked-structure-set!
         _%tab301652%_
         _%val301653%_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_%tab301649%_ _%val301650%_)
        (##unchecked-structure-set!
         _%tab301649%_
         _%val301650%_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_%tab301646%_ _%val301647%_)
        (##unchecked-structure-set!
         _%tab301646%_
         _%val301647%_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define &raw-table-lock-set!
      (lambda (_%tab301643%_ _%val301644%_)
        (##unchecked-structure-set!
         _%tab301643%_
         _%val301644%_
         '7
         __table::t
         'raw-table-lock-set!)))
    (define raw-table-size-hint->size
      (lambda (_%size-hint301641%_)
        (if (and (fixnum? _%size-hint301641%_) (##fx> _%size-hint301641%_ '0))
            (##fx* (fxmax '2 (expt '2 (integer-length _%size-hint301641%_)))
                   '4)
            '16)))
    (define make-raw-table__%
      (lambda (_%size-hint301606%_
               _%hash301607%_
               _%test301608%_
               _%seed301609%_
               _%lock301610%_)
        (let* ((_%size301612%_ (raw-table-size-hint->size _%size-hint301606%_))
               (_%table301614%_
                (##make-vector _%size301612%_ (macro-unused-obj))))
          (##structure
           __table::t
           _%table301614%_
           '0
           (##fxquotient _%size301612%_ '2)
           _%hash301607%_
           _%test301608%_
           _%seed301609%_
           _%lock301610%_))))
    (define make-raw-table__0
      (lambda (_%size-hint301620%_ _%hash301621%_ _%test301622%_)
        (let* ((_%seed301624%_ '0) (_%lock301626%_ '#f))
          (make-raw-table__%
           _%size-hint301620%_
           _%hash301621%_
           _%test301622%_
           _%seed301624%_
           _%lock301626%_))))
    (define make-raw-table__1
      (lambda (_%size-hint301628%_
               _%hash301629%_
               _%test301630%_
               _%seed301631%_)
        (let ((_%lock301633%_ '#f))
          (make-raw-table__%
           _%size-hint301628%_
           _%hash301629%_
           _%test301630%_
           _%seed301631%_
           _%lock301633%_))))
    (define make-raw-table
      (lambda _g301679_
        (let ((_g301680_ (##length _g301679_)))
          (cond ((##fx= _g301680_ 3) (apply make-raw-table__0 _g301679_))
                ((##fx= _g301680_ 4) (apply make-raw-table__1 _g301679_))
                ((##fx= _g301680_ 5) (apply make-raw-table__% _g301679_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g301679_))))))
    (define make-raw-table/lock__%
      (lambda (_%size-hint301586%_
               _%hash301587%_
               _%test301588%_
               _%seed301589%_)
        (make-raw-table__%
         _%size-hint301586%_
         _%hash301587%_
         _%test301588%_
         _%seed301589%_
         (vector '0 '#f))))
    (define make-raw-table/lock__0
      (lambda (_%size-hint301594%_ _%hash301595%_ _%test301596%_)
        (let ((_%seed301598%_ '0))
          (make-raw-table/lock__%
           _%size-hint301594%_
           _%hash301595%_
           _%test301596%_
           _%seed301598%_))))
    (define make-raw-table/lock
      (lambda _g301681_
        (let ((_g301682_ (##length _g301681_)))
          (cond ((##fx= _g301682_ 3) (apply make-raw-table/lock__0 _g301681_))
                ((##fx= _g301682_ 4) (apply make-raw-table/lock__% _g301681_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table/lock
                  _g301681_))))))
    (define raw-table-length
      (lambda (_%tab301583%_) (&raw-table-count _%tab301583%_)))
    (define raw-table-length/lock
      (lambda (_%tab301556%_)
        (let ((_%lock301558%_ (&raw-table-lock _%tab301556%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again301563%_ ((_%spin301566%_ '0))
              (if (##fx= (##vector-cas! _%lock301558%_ '0 '1 '0) '0)
                  (##vector-set! _%lock301558%_ '1 (current-thread))
                  (if (##fx< _%spin301566%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again301563%_ (##fx+ _%spin301566%_ '1)))
                      (let ((_%owner301572%_ (##vector-ref _%lock301558%_ '1)))
                        (if (eq? _%owner301572%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner301572%_)
                                (let () (##thread-yield!) (_%again301563%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r301578%_ (&raw-table-count _%tab301556%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock301558%_ '1 '#f)
                (##vector-cas! _%lock301558%_ '0 '0 '1)))
            _%$r301578%_))))
    (define raw-table-ref
      (lambda (_%tab301508%_ _%key301509%_ _%default301510%_)
        (let ((_%table301512%_ (&raw-table-table _%tab301508%_))
              (_%seed301513%_ (&raw-table-seed _%tab301508%_))
              (_%hash301514%_ (&raw-table-hash _%tab301508%_))
              (_%test301515%_ (&raw-table-test _%tab301508%_)))
          (let* ((_%h301517%_
                  (fxxor (_%hash301514%_ _%key301509%_) _%seed301513%_))
                 (_%size301520%_ (vector-length _%table301512%_))
                 (_%entries301523%_ (##fxquotient _%size301520%_ '2))
                 (_%start301526%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h301517%_ _%entries301523%_)
                   '1)))
            (let _%loop301530%_ ((_%probe301533%_ _%start301526%_)
                                 (_%i301535%_ '1)
                                 (_%deleted301537%_ '#f))
              (let ((_%k301540%_ (vector-ref _%table301512%_ _%probe301533%_)))
                (if (eq? _%k301540%_ (macro-unused-obj))
                    _%default301510%_
                    (if (eq? _%k301540%_ (macro-deleted-obj))
                        (_%loop301530%_
                         (let ((_%next-probe301545%_
                                (fx+ _%start301526%_
                                     _%i301535%_
                                     (fx* _%i301535%_ _%i301535%_))))
                           (##fxmodulo _%next-probe301545%_ _%size301520%_))
                         (##fx+ _%i301535%_ '1)
                         (let ((_%$e301548%_ _%deleted301537%_))
                           (if _%$e301548%_ _%$e301548%_ _%probe301533%_)))
                        (if (_%test301515%_ _%key301509%_ _%k301540%_)
                            (vector-ref
                             _%table301512%_
                             (##fx+ _%probe301533%_ '1))
                            (_%loop301530%_
                             (let ((_%next-probe301553%_
                                    (fx+ _%start301526%_
                                         _%i301535%_
                                         (fx* _%i301535%_ _%i301535%_))))
                               (##fxmodulo
                                _%next-probe301553%_
                                _%size301520%_))
                             (##fx+ _%i301535%_ '1)
                             _%deleted301537%_))))))))))
    (define raw-table-ref/lock
      (lambda (_%tab301479%_ _%key301480%_ _%default301481%_)
        (let ((_%lock301483%_ (&raw-table-lock _%tab301479%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again301488%_ ((_%spin301491%_ '0))
              (if (##fx= (##vector-cas! _%lock301483%_ '0 '1 '0) '0)
                  (##vector-set! _%lock301483%_ '1 (current-thread))
                  (if (##fx< _%spin301491%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again301488%_ (##fx+ _%spin301491%_ '1)))
                      (let ((_%owner301497%_ (##vector-ref _%lock301483%_ '1)))
                        (if (eq? _%owner301497%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner301497%_)
                                (let () (##thread-yield!) (_%again301488%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r301503%_
                 (raw-table-ref
                  _%tab301479%_
                  _%key301480%_
                  _%default301481%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock301483%_ '1 '#f)
                (##vector-cas! _%lock301483%_ '0 '0 '1)))
            _%$r301503%_))))
    (define raw-table-set!
      (lambda (_%tab301475%_ _%key301476%_ _%value301477%_)
        (if (##fx< (&raw-table-free _%tab301475%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab301475%_))
                    '4))
            (__raw-table-rehash! _%tab301475%_)
            '#!void)
        (__raw-table-set! _%tab301475%_ _%key301476%_ _%value301477%_)))
    (define raw-table-set!/lock
      (lambda (_%tab301446%_ _%key301447%_ _%value301448%_)
        (let ((_%lock301450%_ (&raw-table-lock _%tab301446%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again301455%_ ((_%spin301458%_ '0))
              (if (##fx= (##vector-cas! _%lock301450%_ '0 '1 '0) '0)
                  (##vector-set! _%lock301450%_ '1 (current-thread))
                  (if (##fx< _%spin301458%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again301455%_ (##fx+ _%spin301458%_ '1)))
                      (let ((_%owner301464%_ (##vector-ref _%lock301450%_ '1)))
                        (if (eq? _%owner301464%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner301464%_)
                                (let () (##thread-yield!) (_%again301455%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r301470%_
                 (raw-table-set! _%tab301446%_ _%key301447%_ _%value301448%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock301450%_ '1 '#f)
                (##vector-cas! _%lock301450%_ '0 '0 '1)))
            _%$r301470%_))))
    (define raw-table-update!
      (lambda (_%tab301441%_ _%key301442%_ _%update301443%_ _%default301444%_)
        (if (##fx< (&raw-table-free _%tab301441%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab301441%_))
                    '4))
            (__raw-table-rehash! _%tab301441%_)
            '#!void)
        (__raw-table-update!
         _%tab301441%_
         _%key301442%_
         _%update301443%_
         _%default301444%_)))
    (define raw-table-update!/lock
      (lambda (_%tab301411%_ _%key301412%_ _%update301413%_ _%default301414%_)
        (let ((_%lock301416%_ (&raw-table-lock _%tab301411%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again301421%_ ((_%spin301424%_ '0))
              (if (##fx= (##vector-cas! _%lock301416%_ '0 '1 '0) '0)
                  (##vector-set! _%lock301416%_ '1 (current-thread))
                  (if (##fx< _%spin301424%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again301421%_ (##fx+ _%spin301424%_ '1)))
                      (let ((_%owner301430%_ (##vector-ref _%lock301416%_ '1)))
                        (if (eq? _%owner301430%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner301430%_)
                                (let () (##thread-yield!) (_%again301421%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r301436%_
                 (raw-table-update!
                  _%tab301411%_
                  _%key301412%_
                  _%update301413%_
                  _%default301414%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock301416%_ '1 '#f)
                (##vector-cas! _%lock301416%_ '0 '0 '1)))
            _%$r301436%_))))
    (define raw-table-delete!
      (lambda (_%tab301368%_ _%key301369%_)
        (let ((_%table301371%_ (&raw-table-table _%tab301368%_))
              (_%seed301372%_ (&raw-table-seed _%tab301368%_))
              (_%hash301373%_ (&raw-table-hash _%tab301368%_))
              (_%test301374%_ (&raw-table-test _%tab301368%_)))
          (let* ((_%h301376%_
                  (fxxor (_%hash301373%_ _%key301369%_) _%seed301372%_))
                 (_%size301379%_ (vector-length _%table301371%_))
                 (_%entries301382%_ (##fxquotient _%size301379%_ '2))
                 (_%start301385%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h301376%_ _%entries301382%_)
                   '1)))
            (let _%loop301389%_ ((_%probe301392%_ _%start301385%_)
                                 (_%i301394%_ '1))
              (let ((_%k301397%_ (vector-ref _%table301371%_ _%probe301392%_)))
                (if (eq? _%k301397%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k301397%_ (macro-deleted-obj))
                        (_%loop301389%_
                         (let ((_%next-probe301402%_
                                (fx+ _%start301385%_
                                     _%i301394%_
                                     (fx* _%i301394%_ _%i301394%_))))
                           (##fxmodulo _%next-probe301402%_ _%size301379%_))
                         (##fx+ _%i301394%_ '1))
                        (if (_%test301374%_ _%key301369%_ _%k301397%_)
                            (let ()
                              (vector-set!
                               _%table301371%_
                               _%probe301392%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table301371%_
                               (##fx+ _%probe301392%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab301368%_
                                  (##fx- (&raw-table-count _%tab301368%_)
                                         '1)))))
                            (_%loop301389%_
                             (let ((_%next-probe301408%_
                                    (fx+ _%start301385%_
                                         _%i301394%_
                                         (fx* _%i301394%_ _%i301394%_))))
                               (##fxmodulo
                                _%next-probe301408%_
                                _%size301379%_))
                             (##fx+ _%i301394%_ '1)))))))))))
    (define raw-table-delete!/lock
      (lambda (_%tab301340%_ _%key301341%_)
        (let ((_%lock301343%_ (&raw-table-lock _%tab301340%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again301348%_ ((_%spin301351%_ '0))
              (if (##fx= (##vector-cas! _%lock301343%_ '0 '1 '0) '0)
                  (##vector-set! _%lock301343%_ '1 (current-thread))
                  (if (##fx< _%spin301351%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again301348%_ (##fx+ _%spin301351%_ '1)))
                      (let ((_%owner301357%_ (##vector-ref _%lock301343%_ '1)))
                        (if (eq? _%owner301357%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner301357%_)
                                (let () (##thread-yield!) (_%again301348%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r301363%_ (raw-table-delete! _%tab301340%_ _%key301341%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock301343%_ '1 '#f)
                (##vector-cas! _%lock301343%_ '0 '0 '1)))
            _%$r301363%_))))
    (define raw-table-for-each
      (lambda (_%tab301324%_ _%proc301325%_)
        (let* ((_%table301327%_ (&raw-table-table _%tab301324%_))
               (_%size301329%_ (vector-length _%table301327%_)))
          (let _%loop301332%_ ((_%i301334%_ '0))
            (if (##fx< _%i301334%_ _%size301329%_)
                (begin
                  (let ((_%key301336%_
                         (vector-ref _%table301327%_ _%i301334%_)))
                    (if (if (eq? _%key301336%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key301336%_ (macro-deleted-obj))))
                        (let ((_%value301338%_
                               (vector-ref
                                _%table301327%_
                                (##fx+ _%i301334%_ '1))))
                          (_%proc301325%_ _%key301336%_ _%value301338%_))
                        '#!void))
                  (_%loop301332%_ (##fx+ _%i301334%_ '2)))
                '#!void)))))
    (define raw-table-for-each/lock
      (lambda (_%tab301296%_ _%proc301297%_)
        (let ((_%lock301299%_ (&raw-table-lock _%tab301296%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again301304%_ ((_%spin301307%_ '0))
              (if (##fx= (##vector-cas! _%lock301299%_ '0 '1 '0) '0)
                  (##vector-set! _%lock301299%_ '1 (current-thread))
                  (if (##fx< _%spin301307%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again301304%_ (##fx+ _%spin301307%_ '1)))
                      (let ((_%owner301313%_ (##vector-ref _%lock301299%_ '1)))
                        (if (eq? _%owner301313%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner301313%_)
                                (let () (##thread-yield!) (_%again301304%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r301319%_
                 (raw-table-for-each _%tab301296%_ _%proc301297%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock301299%_ '1 '#f)
                (##vector-cas! _%lock301299%_ '0 '0 '1)))
            _%$r301319%_))))
    (define raw-table-copy
      (lambda (_%tab301292%_)
        (let ((_%new-tab301294%_ (##structure-copy _%tab301292%_)))
          (&raw-table-table-set!
           _%new-tab301294%_
           (vector-copy (&raw-table-table _%tab301292%_)))
          _%new-tab301294%_)))
    (define raw-table-copy/lock
      (lambda (_%tab301265%_)
        (let ((_%lock301267%_ (&raw-table-lock _%tab301265%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again301272%_ ((_%spin301275%_ '0))
              (if (##fx= (##vector-cas! _%lock301267%_ '0 '1 '0) '0)
                  (##vector-set! _%lock301267%_ '1 (current-thread))
                  (if (##fx< _%spin301275%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again301272%_ (##fx+ _%spin301275%_ '1)))
                      (let ((_%owner301281%_ (##vector-ref _%lock301267%_ '1)))
                        (if (eq? _%owner301281%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner301281%_)
                                (let () (##thread-yield!) (_%again301272%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r301287%_ (raw-table-copy _%tab301265%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock301267%_ '1 '#f)
                (##vector-cas! _%lock301267%_ '0 '0 '1)))
            _%$r301287%_))))
    (define raw-table-clear!
      (lambda (_%tab301263%_)
        (vector-fill! (&raw-table-table _%tab301263%_) (macro-unused-obj))
        (&raw-table-count-set! _%tab301263%_ '0)
        (&raw-table-free-set!
         _%tab301263%_
         (##fxquotient (vector-length (&raw-table-table _%tab301263%_)) '2))))
    (define raw-table-clear!/lock
      (lambda (_%tab301236%_)
        (let ((_%lock301238%_ (&raw-table-lock _%tab301236%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again301243%_ ((_%spin301246%_ '0))
              (if (##fx= (##vector-cas! _%lock301238%_ '0 '1 '0) '0)
                  (##vector-set! _%lock301238%_ '1 (current-thread))
                  (if (##fx< _%spin301246%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again301243%_ (##fx+ _%spin301246%_ '1)))
                      (let ((_%owner301252%_ (##vector-ref _%lock301238%_ '1)))
                        (if (eq? _%owner301252%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner301252%_)
                                (let () (##thread-yield!) (_%again301243%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r301258%_ (raw-table-clear! _%tab301236%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock301238%_ '1 '#f)
                (##vector-cas! _%lock301238%_ '0 '0 '1)))
            _%$r301258%_))))
    (define __raw-table-set!
      (lambda (_%tab301186%_ _%key301187%_ _%value301188%_)
        (let ((_%table301190%_ (&raw-table-table _%tab301186%_))
              (_%seed301191%_ (&raw-table-seed _%tab301186%_))
              (_%hash301192%_ (&raw-table-hash _%tab301186%_))
              (_%test301193%_ (&raw-table-test _%tab301186%_)))
          (let* ((_%h301195%_
                  (fxxor (_%hash301192%_ _%key301187%_) _%seed301191%_))
                 (_%size301198%_ (vector-length _%table301190%_))
                 (_%entries301201%_ (##fxquotient _%size301198%_ '2))
                 (_%start301204%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h301195%_ _%entries301201%_)
                   '1)))
            (let _%loop301208%_ ((_%probe301211%_ _%start301204%_)
                                 (_%i301213%_ '1)
                                 (_%deleted301215%_ '#f))
              (let ((_%k301218%_ (vector-ref _%table301190%_ _%probe301211%_)))
                (if (eq? _%k301218%_ (macro-unused-obj))
                    (if _%deleted301215%_
                        (begin
                          (vector-set!
                           _%table301190%_
                           _%deleted301215%_
                           _%key301187%_)
                          (vector-set!
                           _%table301190%_
                           (##fx+ _%deleted301215%_ '1)
                           _%value301188%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab301186%_
                              (##fx+ (&raw-table-count _%tab301186%_) '1)))))
                        (begin
                          (vector-set!
                           _%table301190%_
                           _%probe301211%_
                           _%key301187%_)
                          (vector-set!
                           _%table301190%_
                           (##fx+ _%probe301211%_ '1)
                           _%value301188%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab301186%_
                              (##fx- (&raw-table-free _%tab301186%_) '1))
                             (&raw-table-count-set!
                              _%tab301186%_
                              (##fx+ (&raw-table-count _%tab301186%_) '1))))))
                    (if (eq? _%k301218%_ (macro-deleted-obj))
                        (_%loop301208%_
                         (let ((_%next-probe301225%_
                                (fx+ _%start301204%_
                                     _%i301213%_
                                     (fx* _%i301213%_ _%i301213%_))))
                           (##fxmodulo _%next-probe301225%_ _%size301198%_))
                         (##fx+ _%i301213%_ '1)
                         (let ((_%$e301228%_ _%deleted301215%_))
                           (if _%$e301228%_ _%$e301228%_ _%probe301211%_)))
                        (if (_%test301193%_ _%key301187%_ _%k301218%_)
                            (let ()
                              (vector-set!
                               _%table301190%_
                               _%probe301211%_
                               _%key301187%_)
                              (vector-set!
                               _%table301190%_
                               (##fx+ _%probe301211%_ '1)
                               _%value301188%_))
                            (_%loop301208%_
                             (let ((_%next-probe301233%_
                                    (fx+ _%start301204%_
                                         _%i301213%_
                                         (fx* _%i301213%_ _%i301213%_))))
                               (##fxmodulo
                                _%next-probe301233%_
                                _%size301198%_))
                             (##fx+ _%i301213%_ '1)
                             _%deleted301215%_))))))))))
    (define __raw-table-update!
      (lambda (_%tab301135%_ _%key301136%_ _%update301137%_ _%default301138%_)
        (let ((_%table301140%_ (&raw-table-table _%tab301135%_))
              (_%seed301141%_ (&raw-table-seed _%tab301135%_))
              (_%hash301142%_ (&raw-table-hash _%tab301135%_))
              (_%test301143%_ (&raw-table-test _%tab301135%_)))
          (let* ((_%h301145%_
                  (fxxor (_%hash301142%_ _%key301136%_) _%seed301141%_))
                 (_%size301148%_ (vector-length _%table301140%_))
                 (_%entries301151%_ (##fxquotient _%size301148%_ '2))
                 (_%start301154%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h301145%_ _%entries301151%_)
                   '1)))
            (let _%loop301158%_ ((_%probe301161%_ _%start301154%_)
                                 (_%i301163%_ '1)
                                 (_%deleted301165%_ '#f))
              (let ((_%k301168%_ (vector-ref _%table301140%_ _%probe301161%_)))
                (if (eq? _%k301168%_ (macro-unused-obj))
                    (if _%deleted301165%_
                        (begin
                          (vector-set!
                           _%table301140%_
                           _%deleted301165%_
                           _%key301136%_)
                          (vector-set!
                           _%table301140%_
                           (##fx+ _%deleted301165%_ '1)
                           (_%update301137%_ _%default301138%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab301135%_
                              (##fx+ (&raw-table-count _%tab301135%_) '1)))))
                        (begin
                          (vector-set!
                           _%table301140%_
                           _%probe301161%_
                           _%key301136%_)
                          (vector-set!
                           _%table301140%_
                           (##fx+ _%probe301161%_ '1)
                           (_%update301137%_ _%default301138%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab301135%_
                              (##fx- (&raw-table-free _%tab301135%_) '1))
                             (&raw-table-count-set!
                              _%tab301135%_
                              (##fx+ (&raw-table-count _%tab301135%_) '1))))))
                    (if (eq? _%k301168%_ (macro-deleted-obj))
                        (_%loop301158%_
                         (let ((_%next-probe301175%_
                                (fx+ _%start301154%_
                                     _%i301163%_
                                     (fx* _%i301163%_ _%i301163%_))))
                           (##fxmodulo _%next-probe301175%_ _%size301148%_))
                         (##fx+ _%i301163%_ '1)
                         (let ((_%$e301178%_ _%deleted301165%_))
                           (if _%$e301178%_ _%$e301178%_ _%probe301161%_)))
                        (if (_%test301143%_ _%key301136%_ _%k301168%_)
                            (let ()
                              (vector-set!
                               _%table301140%_
                               _%probe301161%_
                               _%key301136%_)
                              (vector-set!
                               _%table301140%_
                               (##fx+ _%probe301161%_ '1)
                               (_%update301137%_
                                (vector-ref
                                 _%table301140%_
                                 (##fx+ _%probe301161%_ '1)))))
                            (_%loop301158%_
                             (let ((_%next-probe301183%_
                                    (fx+ _%start301154%_
                                         _%i301163%_
                                         (fx* _%i301163%_ _%i301163%_))))
                               (##fxmodulo
                                _%next-probe301183%_
                                _%size301148%_))
                             (##fx+ _%i301163%_ '1)
                             _%deleted301165%_))))))))))
    (define __raw-table-rehash!
      (lambda (_%tab301116%_)
        (let* ((_%old-table301118%_ (&raw-table-table _%tab301116%_))
               (_%old-size301120%_ (vector-length _%old-table301118%_))
               (_%new-size301122%_
                (if (##fx< (&raw-table-count _%tab301116%_)
                           (##fxquotient _%old-size301120%_ '4))
                    (vector-length _%old-table301118%_)
                    (##fx* '2 (vector-length _%old-table301118%_))))
               (_%new-table301124%_
                (##make-vector _%new-size301122%_ (macro-unused-obj))))
          (&raw-table-table-set! _%tab301116%_ _%new-table301124%_)
          (&raw-table-count-set! _%tab301116%_ '0)
          (&raw-table-free-set!
           _%tab301116%_
           (##fxquotient _%new-size301122%_ '2))
          (let _%lp301127%_ ((_%i301129%_ '0))
            (if (##fx< _%i301129%_ _%old-size301120%_)
                (begin
                  (let ((_%key301131%_
                         (vector-ref _%old-table301118%_ _%i301129%_)))
                    (if (if (eq? _%key301131%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key301131%_ (macro-deleted-obj))))
                        (let ((_%value301133%_
                               (vector-ref
                                _%old-table301118%_
                                (##fx+ _%i301129%_ '1))))
                          (__raw-table-set!
                           _%tab301116%_
                           _%key301131%_
                           _%value301133%_))
                        '#!void))
                  (_%lp301127%_ (##fx+ _%i301129%_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_%obj301108%_)
        (let ((_%t301110%_ (##type _%obj301108%_)))
          (if (##fx= (##fxand _%t301110%_ '1) '0)
              (fxand (##type-cast _%obj301108%_ (macro-type-fixnum))
                     (macro-max-fixnum32))
              (if (symbolic? _%obj301108%_)
                  (##symbol-hash _%obj301108%_)
                  (if (procedure? _%obj301108%_)
                      (procedure-hash _%obj301108%_)
                      (fxand (__eq-hash _%obj301108%_)
                             (macro-max-fixnum32))))))))
    (define procedure-hash
      (lambda (_%obj301104%_)
        (let ((_%h301106%_
               (if (##closure? _%obj301104%_)
                   (__eq-hash _%obj301104%_)
                   (##type-cast _%obj301104%_ '0))))
          (fxand _%h301106%_ (macro-max-fixnum32)))))
    (define __eq-hash
      (lambda (_%obj301101%_)
        (declare (not interrupts-enabled))
        (__object->eq-hash _%obj301101%_)))
    (define eqv-hash
      (lambda (_%obj301091%_)
        (letrec ((_%combine301093%_
                  (lambda (_%a301098%_ _%b301099%_)
                    (fxand (##fx* (##fx+ _%a301098%_
                                         (fxarithmetic-shift-left
                                          _%b301099%_
                                          '1))
                                  '331804471)
                           (macro-max-fixnum32))))
                 (_%hash301094%_
                  (lambda (_%obj301096%_)
                    (macro-number-dispatch
                     _%obj301096%_
                     (eq-hash _%obj301096%_)
                     (fxand _%obj301096%_ (macro-max-fixnum32))
                     (modulo _%obj301096%_ '331804481)
                     (_%combine301093%_
                      (_%hash301094%_ (macro-ratnum-numerator _%obj301096%_))
                      (_%hash301094%_
                       (macro-ratnum-denominator _%obj301096%_)))
                     (_%combine301093%_
                      (##u16vector-ref _%obj301096%_ '0)
                      (_%combine301093%_
                       (##u16vector-ref _%obj301096%_ '1)
                       (_%combine301093%_
                        (##u16vector-ref _%obj301096%_ '2)
                        (##u16vector-ref _%obj301096%_ '3))))
                     (_%combine301093%_
                      (_%hash301094%_ (macro-cpxnum-real _%obj301096%_))
                      (_%hash301094%_ (macro-cpxnum-imag _%obj301096%_)))))))
          (_%hash301094%_ _%obj301091%_))))
    (define symbolic?
      (lambda (_%obj301086%_)
        (let ((_%$e301088%_ (symbol? _%obj301086%_)))
          (if _%$e301088%_ _%$e301088%_ (keyword? _%obj301086%_)))))
    (define symbolic-hash
      (lambda (_%obj301084%_) (##symbol-hash _%obj301084%_)))
    (define string-hash
      (lambda (_%obj301082%_) (##string=?-hash _%obj301082%_)))
    (define immediate-hash
      (lambda (_%obj301080%_) (##type-cast _%obj301080%_ (macro-type-fixnum))))
    (define make-eq-table__%
      (lambda (_%size-hint301062%_ _%seed301063%_)
        (make-raw-table__1 _%size-hint301062%_ eq-hash eq? _%seed301063%_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_%size-hint301069%_ '#f) (_%seed301071%_ '0))
          (make-eq-table__% _%size-hint301069%_ _%seed301071%_))))
    (define make-eq-table__1
      (lambda (_%size-hint301073%_)
        (let ((_%seed301075%_ '0))
          (make-eq-table__% _%size-hint301073%_ _%seed301075%_))))
    (define make-eq-table
      (lambda _g301683_
        (let ((_g301684_ (##length _g301683_)))
          (cond ((##fx= _g301684_ 0) (apply make-eq-table__0 _g301683_))
                ((##fx= _g301684_ 1) (apply make-eq-table__1 _g301683_))
                ((##fx= _g301684_ 2) (apply make-eq-table__% _g301683_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g301683_))))))
    (define make-eq-table/lock__%
      (lambda (_%size-hint301042%_ _%seed301044%_)
        (make-raw-table/lock__%
         _%size-hint301042%_
         eq-hash
         eq?
         _%seed301044%_)))
    (define make-eq-table/lock__0
      (lambda ()
        (let* ((_%size-hint301050%_ '#f) (_%seed301052%_ '0))
          (make-eq-table/lock__% _%size-hint301050%_ _%seed301052%_))))
    (define make-eq-table/lock__1
      (lambda (_%size-hint301054%_)
        (let ((_%seed301056%_ '0))
          (make-eq-table/lock__% _%size-hint301054%_ _%seed301056%_))))
    (define make-eq-table/lock
      (lambda _g301685_
        (let ((_g301686_ (##length _g301685_)))
          (cond ((##fx= _g301686_ 0) (apply make-eq-table/lock__0 _g301685_))
                ((##fx= _g301686_ 1) (apply make-eq-table/lock__1 _g301685_))
                ((##fx= _g301686_ 2) (apply make-eq-table/lock__% _g301685_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table/lock
                  _g301685_))))))
    (define eq-table-ref
      (lambda (_%tab300995%_ _%key300996%_ _%default300997%_)
        (let ((_%table300999%_ (&raw-table-table _%tab300995%_))
              (_%seed301000%_ (&raw-table-seed _%tab300995%_)))
          (let* ((_%h301002%_ (fxxor (eq-hash _%key300996%_) _%seed301000%_))
                 (_%size301005%_ (vector-length _%table300999%_))
                 (_%entries301008%_ (##fxquotient _%size301005%_ '2))
                 (_%start301011%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h301002%_ _%entries301008%_)
                   '1)))
            (let _%loop301015%_ ((_%probe301018%_ _%start301011%_)
                                 (_%i301020%_ '1)
                                 (_%deleted301022%_ '#f))
              (let ((_%k301025%_ (vector-ref _%table300999%_ _%probe301018%_)))
                (if (eq? _%k301025%_ (macro-unused-obj))
                    _%default300997%_
                    (if (eq? _%k301025%_ (macro-deleted-obj))
                        (_%loop301015%_
                         (let ((_%next-probe301030%_
                                (fx+ _%start301011%_
                                     _%i301020%_
                                     (fx* _%i301020%_ _%i301020%_))))
                           (##fxmodulo _%next-probe301030%_ _%size301005%_))
                         (##fx+ _%i301020%_ '1)
                         (let ((_%$e301033%_ _%deleted301022%_))
                           (if _%$e301033%_ _%$e301033%_ _%probe301018%_)))
                        (if (eq? _%key300996%_ _%k301025%_)
                            (vector-ref
                             _%table300999%_
                             (##fx+ _%probe301018%_ '1))
                            (_%loop301015%_
                             (let ((_%next-probe301038%_
                                    (fx+ _%start301011%_
                                         _%i301020%_
                                         (fx* _%i301020%_ _%i301020%_))))
                               (##fxmodulo
                                _%next-probe301038%_
                                _%size301005%_))
                             (##fx+ _%i301020%_ '1)
                             _%deleted301022%_))))))))))
    (define eq-table-ref/lock
      (lambda (_%tab300966%_ _%key300967%_ _%default300968%_)
        (let ((_%lock300970%_ (&raw-table-lock _%tab300966%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again300975%_ ((_%spin300978%_ '0))
              (if (##fx= (##vector-cas! _%lock300970%_ '0 '1 '0) '0)
                  (##vector-set! _%lock300970%_ '1 (current-thread))
                  (if (##fx< _%spin300978%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again300975%_ (##fx+ _%spin300978%_ '1)))
                      (let ((_%owner300984%_ (##vector-ref _%lock300970%_ '1)))
                        (if (eq? _%owner300984%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner300984%_)
                                (let () (##thread-yield!) (_%again300975%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r300990%_
                 (eq-table-ref _%tab300966%_ _%key300967%_ _%default300968%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock300970%_ '1 '#f)
                (##vector-cas! _%lock300970%_ '0 '0 '1)))
            _%$r300990%_))))
    (define __eq-table-set!
      (lambda (_%tab300918%_ _%key300919%_ _%value300920%_)
        (let ((_%table300922%_ (&raw-table-table _%tab300918%_))
              (_%seed300923%_ (&raw-table-seed _%tab300918%_)))
          (let* ((_%h300925%_ (fxxor (eq-hash _%key300919%_) _%seed300923%_))
                 (_%size300928%_ (vector-length _%table300922%_))
                 (_%entries300931%_ (##fxquotient _%size300928%_ '2))
                 (_%start300934%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h300925%_ _%entries300931%_)
                   '1)))
            (let _%loop300938%_ ((_%probe300941%_ _%start300934%_)
                                 (_%i300943%_ '1)
                                 (_%deleted300945%_ '#f))
              (let ((_%k300948%_ (vector-ref _%table300922%_ _%probe300941%_)))
                (if (eq? _%k300948%_ (macro-unused-obj))
                    (if _%deleted300945%_
                        (begin
                          (vector-set!
                           _%table300922%_
                           _%deleted300945%_
                           _%key300919%_)
                          (vector-set!
                           _%table300922%_
                           (##fx+ _%deleted300945%_ '1)
                           _%value300920%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab300918%_
                              (##fx+ (&raw-table-count _%tab300918%_) '1)))))
                        (begin
                          (vector-set!
                           _%table300922%_
                           _%probe300941%_
                           _%key300919%_)
                          (vector-set!
                           _%table300922%_
                           (##fx+ _%probe300941%_ '1)
                           _%value300920%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab300918%_
                              (##fx- (&raw-table-free _%tab300918%_) '1))
                             (&raw-table-count-set!
                              _%tab300918%_
                              (##fx+ (&raw-table-count _%tab300918%_) '1))))))
                    (if (eq? _%k300948%_ (macro-deleted-obj))
                        (_%loop300938%_
                         (let ((_%next-probe300955%_
                                (fx+ _%start300934%_
                                     _%i300943%_
                                     (fx* _%i300943%_ _%i300943%_))))
                           (##fxmodulo _%next-probe300955%_ _%size300928%_))
                         (##fx+ _%i300943%_ '1)
                         (let ((_%$e300958%_ _%deleted300945%_))
                           (if _%$e300958%_ _%$e300958%_ _%probe300941%_)))
                        (if (eq? _%key300919%_ _%k300948%_)
                            (let ()
                              (vector-set!
                               _%table300922%_
                               _%probe300941%_
                               _%key300919%_)
                              (vector-set!
                               _%table300922%_
                               (##fx+ _%probe300941%_ '1)
                               _%value300920%_))
                            (_%loop300938%_
                             (let ((_%next-probe300963%_
                                    (fx+ _%start300934%_
                                         _%i300943%_
                                         (fx* _%i300943%_ _%i300943%_))))
                               (##fxmodulo
                                _%next-probe300963%_
                                _%size300928%_))
                             (##fx+ _%i300943%_ '1)
                             _%deleted300945%_))))))))))
    (define eq-table-set!
      (lambda (_%tab300914%_ _%key300915%_ _%value300916%_)
        (if (##fx< (&raw-table-free _%tab300914%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab300914%_))
                    '4))
            (__raw-table-rehash! _%tab300914%_)
            '#!void)
        (__eq-table-set! _%tab300914%_ _%key300915%_ _%value300916%_)))
    (define eq-table-set!/lock
      (lambda (_%tab300884%_ _%key300885%_ _%value300886%_)
        (let ((_%lock300889%_ (&raw-table-lock _%tab300884%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again300894%_ ((_%spin300897%_ '0))
              (if (##fx= (##vector-cas! _%lock300889%_ '0 '1 '0) '0)
                  (##vector-set! _%lock300889%_ '1 (current-thread))
                  (if (##fx< _%spin300897%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again300894%_ (##fx+ _%spin300897%_ '1)))
                      (let ((_%owner300903%_ (##vector-ref _%lock300889%_ '1)))
                        (if (eq? _%owner300903%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner300903%_)
                                (let () (##thread-yield!) (_%again300894%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r300909%_
                 (eq-table-set! _%tab300884%_ _%key300885%_ _%value300886%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock300889%_ '1 '#f)
                (##vector-cas! _%lock300889%_ '0 '0 '1)))
            _%$r300909%_))))
    (define __eq-table-update!
      (lambda (_%tab300835%_
               _%key300836%_
               _%eq-table-update!300837%_
               _%default300838%_)
        (let ((_%table300840%_ (&raw-table-table _%tab300835%_))
              (_%seed300841%_ (&raw-table-seed _%tab300835%_)))
          (let* ((_%h300843%_ (fxxor (eq-hash _%key300836%_) _%seed300841%_))
                 (_%size300846%_ (vector-length _%table300840%_))
                 (_%entries300849%_ (##fxquotient _%size300846%_ '2))
                 (_%start300852%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h300843%_ _%entries300849%_)
                   '1)))
            (let _%loop300856%_ ((_%probe300859%_ _%start300852%_)
                                 (_%i300861%_ '1)
                                 (_%deleted300863%_ '#f))
              (let ((_%k300866%_ (vector-ref _%table300840%_ _%probe300859%_)))
                (if (eq? _%k300866%_ (macro-unused-obj))
                    (if _%deleted300863%_
                        (begin
                          (vector-set!
                           _%table300840%_
                           _%deleted300863%_
                           _%key300836%_)
                          (vector-set!
                           _%table300840%_
                           (##fx+ _%deleted300863%_ '1)
                           (_%eq-table-update!300837%_ _%default300838%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab300835%_
                              (##fx+ (&raw-table-count _%tab300835%_) '1)))))
                        (begin
                          (vector-set!
                           _%table300840%_
                           _%probe300859%_
                           _%key300836%_)
                          (vector-set!
                           _%table300840%_
                           (##fx+ _%probe300859%_ '1)
                           (_%eq-table-update!300837%_ _%default300838%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab300835%_
                              (##fx- (&raw-table-free _%tab300835%_) '1))
                             (&raw-table-count-set!
                              _%tab300835%_
                              (##fx+ (&raw-table-count _%tab300835%_) '1))))))
                    (if (eq? _%k300866%_ (macro-deleted-obj))
                        (_%loop300856%_
                         (let ((_%next-probe300873%_
                                (fx+ _%start300852%_
                                     _%i300861%_
                                     (fx* _%i300861%_ _%i300861%_))))
                           (##fxmodulo _%next-probe300873%_ _%size300846%_))
                         (##fx+ _%i300861%_ '1)
                         (let ((_%$e300876%_ _%deleted300863%_))
                           (if _%$e300876%_ _%$e300876%_ _%probe300859%_)))
                        (if (eq? _%key300836%_ _%k300866%_)
                            (let ()
                              (vector-set!
                               _%table300840%_
                               _%probe300859%_
                               _%key300836%_)
                              (vector-set!
                               _%table300840%_
                               (##fx+ _%probe300859%_ '1)
                               (_%eq-table-update!300837%_
                                (vector-ref
                                 _%table300840%_
                                 (##fx+ _%probe300859%_ '1)))))
                            (_%loop300856%_
                             (let ((_%next-probe300881%_
                                    (fx+ _%start300852%_
                                         _%i300861%_
                                         (fx* _%i300861%_ _%i300861%_))))
                               (##fxmodulo
                                _%next-probe300881%_
                                _%size300846%_))
                             (##fx+ _%i300861%_ '1)
                             _%deleted300863%_))))))))))
    (define eq-table-update!
      (lambda (_%tab300830%_
               _%key300831%_
               _%eq-table-update!300832%_
               _%default300833%_)
        (if (##fx< (&raw-table-free _%tab300830%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab300830%_))
                    '4))
            (__raw-table-rehash! _%tab300830%_)
            '#!void)
        (__eq-table-update!
         _%tab300830%_
         _%key300831%_
         _%eq-table-update!300832%_
         _%default300833%_)))
    (define eq-table-update!/lock
      (lambda (_%tab300799%_
               _%key300800%_
               _%eq-table-update!300801%_
               _%default300802%_)
        (let ((_%lock300805%_ (&raw-table-lock _%tab300799%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again300810%_ ((_%spin300813%_ '0))
              (if (##fx= (##vector-cas! _%lock300805%_ '0 '1 '0) '0)
                  (##vector-set! _%lock300805%_ '1 (current-thread))
                  (if (##fx< _%spin300813%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again300810%_ (##fx+ _%spin300813%_ '1)))
                      (let ((_%owner300819%_ (##vector-ref _%lock300805%_ '1)))
                        (if (eq? _%owner300819%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner300819%_)
                                (let () (##thread-yield!) (_%again300810%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r300825%_
                 (_%eq-table-update!300801%_
                  _%tab300799%_
                  _%key300800%_
                  _%eq-table-update!300801%_
                  _%default300802%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock300805%_ '1 '#f)
                (##vector-cas! _%lock300805%_ '0 '0 '1)))
            _%$r300825%_))))
    (define eq-table-delete!
      (lambda (_%tab300756%_ _%key300757%_)
        (let ((_%table300759%_ (&raw-table-table _%tab300756%_))
              (_%seed300761%_ (&raw-table-seed _%tab300756%_)))
          (let* ((_%h300764%_ (fxxor (eq-hash _%key300757%_) _%seed300761%_))
                 (_%size300767%_ (vector-length _%table300759%_))
                 (_%entries300770%_ (##fxquotient _%size300767%_ '2))
                 (_%start300773%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h300764%_ _%entries300770%_)
                   '1)))
            (let _%loop300777%_ ((_%probe300780%_ _%start300773%_)
                                 (_%i300782%_ '1))
              (let ((_%k300785%_ (vector-ref _%table300759%_ _%probe300780%_)))
                (if (eq? _%k300785%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k300785%_ (macro-deleted-obj))
                        (_%loop300777%_
                         (let ((_%next-probe300790%_
                                (fx+ _%start300773%_
                                     _%i300782%_
                                     (fx* _%i300782%_ _%i300782%_))))
                           (##fxmodulo _%next-probe300790%_ _%size300767%_))
                         (##fx+ _%i300782%_ '1))
                        (if (eq? _%key300757%_ _%k300785%_)
                            (let ()
                              (vector-set!
                               _%table300759%_
                               _%probe300780%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table300759%_
                               (##fx+ _%probe300780%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab300756%_
                                  (##fx- (&raw-table-count _%tab300756%_)
                                         '1)))))
                            (_%loop300777%_
                             (let ((_%next-probe300796%_
                                    (fx+ _%start300773%_
                                         _%i300782%_
                                         (fx* _%i300782%_ _%i300782%_))))
                               (##fxmodulo
                                _%next-probe300796%_
                                _%size300767%_))
                             (##fx+ _%i300782%_ '1)))))))))))
    (define eq-table-delete!/lock
      (lambda (_%tab300726%_ _%key300728%_)
        (let ((_%lock300731%_ (&raw-table-lock _%tab300726%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again300736%_ ((_%spin300739%_ '0))
              (if (##fx= (##vector-cas! _%lock300731%_ '0 '1 '0) '0)
                  (##vector-set! _%lock300731%_ '1 (current-thread))
                  (if (##fx< _%spin300739%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again300736%_ (##fx+ _%spin300739%_ '1)))
                      (let ((_%owner300745%_ (##vector-ref _%lock300731%_ '1)))
                        (if (eq? _%owner300745%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner300745%_)
                                (let () (##thread-yield!) (_%again300736%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r300751%_ (eq-table-delete! _%tab300726%_ _%key300728%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock300731%_ '1 '#f)
                (##vector-cas! _%lock300731%_ '0 '0 '1)))
            _%$r300751%_))))
    (define make-eqv-table__%
      (lambda (_%size-hint300708%_ _%seed300709%_)
        (make-raw-table__1 _%size-hint300708%_ eqv-hash eqv? _%seed300709%_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_%size-hint300715%_ '#f) (_%seed300717%_ '0))
          (make-eqv-table__% _%size-hint300715%_ _%seed300717%_))))
    (define make-eqv-table__1
      (lambda (_%size-hint300719%_)
        (let ((_%seed300721%_ '0))
          (make-eqv-table__% _%size-hint300719%_ _%seed300721%_))))
    (define make-eqv-table
      (lambda _g301687_
        (let ((_g301688_ (##length _g301687_)))
          (cond ((##fx= _g301688_ 0) (apply make-eqv-table__0 _g301687_))
                ((##fx= _g301688_ 1) (apply make-eqv-table__1 _g301687_))
                ((##fx= _g301688_ 2) (apply make-eqv-table__% _g301687_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g301687_))))))
    (define make-eqv-table/lock__%
      (lambda (_%size-hint300688%_ _%seed300690%_)
        (make-raw-table/lock__%
         _%size-hint300688%_
         eqv-hash
         eqv?
         _%seed300690%_)))
    (define make-eqv-table/lock__0
      (lambda ()
        (let* ((_%size-hint300696%_ '#f) (_%seed300698%_ '0))
          (make-eqv-table/lock__% _%size-hint300696%_ _%seed300698%_))))
    (define make-eqv-table/lock__1
      (lambda (_%size-hint300700%_)
        (let ((_%seed300702%_ '0))
          (make-eqv-table/lock__% _%size-hint300700%_ _%seed300702%_))))
    (define make-eqv-table/lock
      (lambda _g301689_
        (let ((_g301690_ (##length _g301689_)))
          (cond ((##fx= _g301690_ 0) (apply make-eqv-table/lock__0 _g301689_))
                ((##fx= _g301690_ 1) (apply make-eqv-table/lock__1 _g301689_))
                ((##fx= _g301690_ 2) (apply make-eqv-table/lock__% _g301689_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table/lock
                  _g301689_))))))
    (define eqv-table-ref
      (lambda (_%tab300641%_ _%key300642%_ _%default300643%_)
        (let ((_%table300645%_ (&raw-table-table _%tab300641%_))
              (_%seed300646%_ (&raw-table-seed _%tab300641%_)))
          (let* ((_%h300648%_ (fxxor (eqv-hash _%key300642%_) _%seed300646%_))
                 (_%size300651%_ (vector-length _%table300645%_))
                 (_%entries300654%_ (##fxquotient _%size300651%_ '2))
                 (_%start300657%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h300648%_ _%entries300654%_)
                   '1)))
            (let _%loop300661%_ ((_%probe300664%_ _%start300657%_)
                                 (_%i300666%_ '1)
                                 (_%deleted300668%_ '#f))
              (let ((_%k300671%_ (vector-ref _%table300645%_ _%probe300664%_)))
                (if (eq? _%k300671%_ (macro-unused-obj))
                    _%default300643%_
                    (if (eq? _%k300671%_ (macro-deleted-obj))
                        (_%loop300661%_
                         (let ((_%next-probe300676%_
                                (fx+ _%start300657%_
                                     _%i300666%_
                                     (fx* _%i300666%_ _%i300666%_))))
                           (##fxmodulo _%next-probe300676%_ _%size300651%_))
                         (##fx+ _%i300666%_ '1)
                         (let ((_%$e300679%_ _%deleted300668%_))
                           (if _%$e300679%_ _%$e300679%_ _%probe300664%_)))
                        (if (eqv? _%key300642%_ _%k300671%_)
                            (vector-ref
                             _%table300645%_
                             (##fx+ _%probe300664%_ '1))
                            (_%loop300661%_
                             (let ((_%next-probe300684%_
                                    (fx+ _%start300657%_
                                         _%i300666%_
                                         (fx* _%i300666%_ _%i300666%_))))
                               (##fxmodulo
                                _%next-probe300684%_
                                _%size300651%_))
                             (##fx+ _%i300666%_ '1)
                             _%deleted300668%_))))))))))
    (define eqv-table-ref/lock
      (lambda (_%tab300612%_ _%key300613%_ _%default300614%_)
        (let ((_%lock300616%_ (&raw-table-lock _%tab300612%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again300621%_ ((_%spin300624%_ '0))
              (if (##fx= (##vector-cas! _%lock300616%_ '0 '1 '0) '0)
                  (##vector-set! _%lock300616%_ '1 (current-thread))
                  (if (##fx< _%spin300624%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again300621%_ (##fx+ _%spin300624%_ '1)))
                      (let ((_%owner300630%_ (##vector-ref _%lock300616%_ '1)))
                        (if (eq? _%owner300630%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner300630%_)
                                (let () (##thread-yield!) (_%again300621%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r300636%_
                 (eqv-table-ref
                  _%tab300612%_
                  _%key300613%_
                  _%default300614%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock300616%_ '1 '#f)
                (##vector-cas! _%lock300616%_ '0 '0 '1)))
            _%$r300636%_))))
    (define __eqv-table-set!
      (lambda (_%tab300564%_ _%key300565%_ _%value300566%_)
        (let ((_%table300568%_ (&raw-table-table _%tab300564%_))
              (_%seed300569%_ (&raw-table-seed _%tab300564%_)))
          (let* ((_%h300571%_ (fxxor (eqv-hash _%key300565%_) _%seed300569%_))
                 (_%size300574%_ (vector-length _%table300568%_))
                 (_%entries300577%_ (##fxquotient _%size300574%_ '2))
                 (_%start300580%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h300571%_ _%entries300577%_)
                   '1)))
            (let _%loop300584%_ ((_%probe300587%_ _%start300580%_)
                                 (_%i300589%_ '1)
                                 (_%deleted300591%_ '#f))
              (let ((_%k300594%_ (vector-ref _%table300568%_ _%probe300587%_)))
                (if (eq? _%k300594%_ (macro-unused-obj))
                    (if _%deleted300591%_
                        (begin
                          (vector-set!
                           _%table300568%_
                           _%deleted300591%_
                           _%key300565%_)
                          (vector-set!
                           _%table300568%_
                           (##fx+ _%deleted300591%_ '1)
                           _%value300566%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab300564%_
                              (##fx+ (&raw-table-count _%tab300564%_) '1)))))
                        (begin
                          (vector-set!
                           _%table300568%_
                           _%probe300587%_
                           _%key300565%_)
                          (vector-set!
                           _%table300568%_
                           (##fx+ _%probe300587%_ '1)
                           _%value300566%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab300564%_
                              (##fx- (&raw-table-free _%tab300564%_) '1))
                             (&raw-table-count-set!
                              _%tab300564%_
                              (##fx+ (&raw-table-count _%tab300564%_) '1))))))
                    (if (eq? _%k300594%_ (macro-deleted-obj))
                        (_%loop300584%_
                         (let ((_%next-probe300601%_
                                (fx+ _%start300580%_
                                     _%i300589%_
                                     (fx* _%i300589%_ _%i300589%_))))
                           (##fxmodulo _%next-probe300601%_ _%size300574%_))
                         (##fx+ _%i300589%_ '1)
                         (let ((_%$e300604%_ _%deleted300591%_))
                           (if _%$e300604%_ _%$e300604%_ _%probe300587%_)))
                        (if (eqv? _%key300565%_ _%k300594%_)
                            (let ()
                              (vector-set!
                               _%table300568%_
                               _%probe300587%_
                               _%key300565%_)
                              (vector-set!
                               _%table300568%_
                               (##fx+ _%probe300587%_ '1)
                               _%value300566%_))
                            (_%loop300584%_
                             (let ((_%next-probe300609%_
                                    (fx+ _%start300580%_
                                         _%i300589%_
                                         (fx* _%i300589%_ _%i300589%_))))
                               (##fxmodulo
                                _%next-probe300609%_
                                _%size300574%_))
                             (##fx+ _%i300589%_ '1)
                             _%deleted300591%_))))))))))
    (define eqv-table-set!
      (lambda (_%tab300560%_ _%key300561%_ _%value300562%_)
        (if (##fx< (&raw-table-free _%tab300560%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab300560%_))
                    '4))
            (__raw-table-rehash! _%tab300560%_)
            '#!void)
        (__eqv-table-set! _%tab300560%_ _%key300561%_ _%value300562%_)))
    (define eqv-table-set!/lock
      (lambda (_%tab300530%_ _%key300531%_ _%value300532%_)
        (let ((_%lock300535%_ (&raw-table-lock _%tab300530%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again300540%_ ((_%spin300543%_ '0))
              (if (##fx= (##vector-cas! _%lock300535%_ '0 '1 '0) '0)
                  (##vector-set! _%lock300535%_ '1 (current-thread))
                  (if (##fx< _%spin300543%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again300540%_ (##fx+ _%spin300543%_ '1)))
                      (let ((_%owner300549%_ (##vector-ref _%lock300535%_ '1)))
                        (if (eq? _%owner300549%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner300549%_)
                                (let () (##thread-yield!) (_%again300540%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r300555%_
                 (eqv-table-set! _%tab300530%_ _%key300531%_ _%value300532%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock300535%_ '1 '#f)
                (##vector-cas! _%lock300535%_ '0 '0 '1)))
            _%$r300555%_))))
    (define __eqv-table-update!
      (lambda (_%tab300481%_
               _%key300482%_
               _%eqv-table-update!300483%_
               _%default300484%_)
        (let ((_%table300486%_ (&raw-table-table _%tab300481%_))
              (_%seed300487%_ (&raw-table-seed _%tab300481%_)))
          (let* ((_%h300489%_ (fxxor (eqv-hash _%key300482%_) _%seed300487%_))
                 (_%size300492%_ (vector-length _%table300486%_))
                 (_%entries300495%_ (##fxquotient _%size300492%_ '2))
                 (_%start300498%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h300489%_ _%entries300495%_)
                   '1)))
            (let _%loop300502%_ ((_%probe300505%_ _%start300498%_)
                                 (_%i300507%_ '1)
                                 (_%deleted300509%_ '#f))
              (let ((_%k300512%_ (vector-ref _%table300486%_ _%probe300505%_)))
                (if (eq? _%k300512%_ (macro-unused-obj))
                    (if _%deleted300509%_
                        (begin
                          (vector-set!
                           _%table300486%_
                           _%deleted300509%_
                           _%key300482%_)
                          (vector-set!
                           _%table300486%_
                           (##fx+ _%deleted300509%_ '1)
                           (_%eqv-table-update!300483%_ _%default300484%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab300481%_
                              (##fx+ (&raw-table-count _%tab300481%_) '1)))))
                        (begin
                          (vector-set!
                           _%table300486%_
                           _%probe300505%_
                           _%key300482%_)
                          (vector-set!
                           _%table300486%_
                           (##fx+ _%probe300505%_ '1)
                           (_%eqv-table-update!300483%_ _%default300484%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab300481%_
                              (##fx- (&raw-table-free _%tab300481%_) '1))
                             (&raw-table-count-set!
                              _%tab300481%_
                              (##fx+ (&raw-table-count _%tab300481%_) '1))))))
                    (if (eq? _%k300512%_ (macro-deleted-obj))
                        (_%loop300502%_
                         (let ((_%next-probe300519%_
                                (fx+ _%start300498%_
                                     _%i300507%_
                                     (fx* _%i300507%_ _%i300507%_))))
                           (##fxmodulo _%next-probe300519%_ _%size300492%_))
                         (##fx+ _%i300507%_ '1)
                         (let ((_%$e300522%_ _%deleted300509%_))
                           (if _%$e300522%_ _%$e300522%_ _%probe300505%_)))
                        (if (eqv? _%key300482%_ _%k300512%_)
                            (let ()
                              (vector-set!
                               _%table300486%_
                               _%probe300505%_
                               _%key300482%_)
                              (vector-set!
                               _%table300486%_
                               (##fx+ _%probe300505%_ '1)
                               (_%eqv-table-update!300483%_
                                (vector-ref
                                 _%table300486%_
                                 (##fx+ _%probe300505%_ '1)))))
                            (_%loop300502%_
                             (let ((_%next-probe300527%_
                                    (fx+ _%start300498%_
                                         _%i300507%_
                                         (fx* _%i300507%_ _%i300507%_))))
                               (##fxmodulo
                                _%next-probe300527%_
                                _%size300492%_))
                             (##fx+ _%i300507%_ '1)
                             _%deleted300509%_))))))))))
    (define eqv-table-update!
      (lambda (_%tab300476%_
               _%key300477%_
               _%eqv-table-update!300478%_
               _%default300479%_)
        (if (##fx< (&raw-table-free _%tab300476%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab300476%_))
                    '4))
            (__raw-table-rehash! _%tab300476%_)
            '#!void)
        (__eqv-table-update!
         _%tab300476%_
         _%key300477%_
         _%eqv-table-update!300478%_
         _%default300479%_)))
    (define eqv-table-update!/lock
      (lambda (_%tab300445%_
               _%key300446%_
               _%eqv-table-update!300447%_
               _%default300448%_)
        (let ((_%lock300451%_ (&raw-table-lock _%tab300445%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again300456%_ ((_%spin300459%_ '0))
              (if (##fx= (##vector-cas! _%lock300451%_ '0 '1 '0) '0)
                  (##vector-set! _%lock300451%_ '1 (current-thread))
                  (if (##fx< _%spin300459%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again300456%_ (##fx+ _%spin300459%_ '1)))
                      (let ((_%owner300465%_ (##vector-ref _%lock300451%_ '1)))
                        (if (eq? _%owner300465%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner300465%_)
                                (let () (##thread-yield!) (_%again300456%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r300471%_
                 (_%eqv-table-update!300447%_
                  _%tab300445%_
                  _%key300446%_
                  _%eqv-table-update!300447%_
                  _%default300448%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock300451%_ '1 '#f)
                (##vector-cas! _%lock300451%_ '0 '0 '1)))
            _%$r300471%_))))
    (define eqv-table-delete!
      (lambda (_%tab300402%_ _%key300403%_)
        (let ((_%table300405%_ (&raw-table-table _%tab300402%_))
              (_%seed300407%_ (&raw-table-seed _%tab300402%_)))
          (let* ((_%h300410%_ (fxxor (eqv-hash _%key300403%_) _%seed300407%_))
                 (_%size300413%_ (vector-length _%table300405%_))
                 (_%entries300416%_ (##fxquotient _%size300413%_ '2))
                 (_%start300419%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h300410%_ _%entries300416%_)
                   '1)))
            (let _%loop300423%_ ((_%probe300426%_ _%start300419%_)
                                 (_%i300428%_ '1))
              (let ((_%k300431%_ (vector-ref _%table300405%_ _%probe300426%_)))
                (if (eq? _%k300431%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k300431%_ (macro-deleted-obj))
                        (_%loop300423%_
                         (let ((_%next-probe300436%_
                                (fx+ _%start300419%_
                                     _%i300428%_
                                     (fx* _%i300428%_ _%i300428%_))))
                           (##fxmodulo _%next-probe300436%_ _%size300413%_))
                         (##fx+ _%i300428%_ '1))
                        (if (eqv? _%key300403%_ _%k300431%_)
                            (let ()
                              (vector-set!
                               _%table300405%_
                               _%probe300426%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table300405%_
                               (##fx+ _%probe300426%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab300402%_
                                  (##fx- (&raw-table-count _%tab300402%_)
                                         '1)))))
                            (_%loop300423%_
                             (let ((_%next-probe300442%_
                                    (fx+ _%start300419%_
                                         _%i300428%_
                                         (fx* _%i300428%_ _%i300428%_))))
                               (##fxmodulo
                                _%next-probe300442%_
                                _%size300413%_))
                             (##fx+ _%i300428%_ '1)))))))))))
    (define eqv-table-delete!/lock
      (lambda (_%tab300372%_ _%key300374%_)
        (let ((_%lock300377%_ (&raw-table-lock _%tab300372%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again300382%_ ((_%spin300385%_ '0))
              (if (##fx= (##vector-cas! _%lock300377%_ '0 '1 '0) '0)
                  (##vector-set! _%lock300377%_ '1 (current-thread))
                  (if (##fx< _%spin300385%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again300382%_ (##fx+ _%spin300385%_ '1)))
                      (let ((_%owner300391%_ (##vector-ref _%lock300377%_ '1)))
                        (if (eq? _%owner300391%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner300391%_)
                                (let () (##thread-yield!) (_%again300382%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r300397%_ (eqv-table-delete! _%tab300372%_ _%key300374%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock300377%_ '1 '#f)
                (##vector-cas! _%lock300377%_ '0 '0 '1)))
            _%$r300397%_))))
    (define make-symbolic-table__%
      (lambda (_%size-hint300354%_ _%seed300355%_)
        (make-raw-table__1
         _%size-hint300354%_
         symbolic-hash
         eq?
         _%seed300355%_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_%size-hint300361%_ '#f) (_%seed300363%_ '0))
          (make-symbolic-table__% _%size-hint300361%_ _%seed300363%_))))
    (define make-symbolic-table__1
      (lambda (_%size-hint300365%_)
        (let ((_%seed300367%_ '0))
          (make-symbolic-table__% _%size-hint300365%_ _%seed300367%_))))
    (define make-symbolic-table
      (lambda _g301691_
        (let ((_g301692_ (##length _g301691_)))
          (cond ((##fx= _g301692_ 0) (apply make-symbolic-table__0 _g301691_))
                ((##fx= _g301692_ 1) (apply make-symbolic-table__1 _g301691_))
                ((##fx= _g301692_ 2) (apply make-symbolic-table__% _g301691_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g301691_))))))
    (define make-symbolic-table/lock__%
      (lambda (_%size-hint300334%_ _%seed300336%_)
        (make-raw-table/lock__%
         _%size-hint300334%_
         symbolic-hash
         eq?
         _%seed300336%_)))
    (define make-symbolic-table/lock__0
      (lambda ()
        (let* ((_%size-hint300342%_ '#f) (_%seed300344%_ '0))
          (make-symbolic-table/lock__% _%size-hint300342%_ _%seed300344%_))))
    (define make-symbolic-table/lock__1
      (lambda (_%size-hint300346%_)
        (let ((_%seed300348%_ '0))
          (make-symbolic-table/lock__% _%size-hint300346%_ _%seed300348%_))))
    (define make-symbolic-table/lock
      (lambda _g301693_
        (let ((_g301694_ (##length _g301693_)))
          (cond ((##fx= _g301694_ 0)
                 (apply make-symbolic-table/lock__0 _g301693_))
                ((##fx= _g301694_ 1)
                 (apply make-symbolic-table/lock__1 _g301693_))
                ((##fx= _g301694_ 2)
                 (apply make-symbolic-table/lock__% _g301693_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table/lock
                  _g301693_))))))
    (define symbolic-table-ref
      (lambda (_%tab300287%_ _%key300288%_ _%default300289%_)
        (let ((_%table300291%_ (&raw-table-table _%tab300287%_))
              (_%seed300292%_ (&raw-table-seed _%tab300287%_)))
          (let* ((_%h300294%_
                  (fxxor (##symbol-hash _%key300288%_) _%seed300292%_))
                 (_%size300297%_ (vector-length _%table300291%_))
                 (_%entries300300%_ (##fxquotient _%size300297%_ '2))
                 (_%start300303%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h300294%_ _%entries300300%_)
                   '1)))
            (let _%loop300307%_ ((_%probe300310%_ _%start300303%_)
                                 (_%i300312%_ '1)
                                 (_%deleted300314%_ '#f))
              (let ((_%k300317%_ (vector-ref _%table300291%_ _%probe300310%_)))
                (if (eq? _%k300317%_ (macro-unused-obj))
                    _%default300289%_
                    (if (eq? _%k300317%_ (macro-deleted-obj))
                        (_%loop300307%_
                         (let ((_%next-probe300322%_
                                (fx+ _%start300303%_
                                     _%i300312%_
                                     (fx* _%i300312%_ _%i300312%_))))
                           (##fxmodulo _%next-probe300322%_ _%size300297%_))
                         (##fx+ _%i300312%_ '1)
                         (let ((_%$e300325%_ _%deleted300314%_))
                           (if _%$e300325%_ _%$e300325%_ _%probe300310%_)))
                        (if (eq? _%key300288%_ _%k300317%_)
                            (vector-ref
                             _%table300291%_
                             (##fx+ _%probe300310%_ '1))
                            (_%loop300307%_
                             (let ((_%next-probe300330%_
                                    (fx+ _%start300303%_
                                         _%i300312%_
                                         (fx* _%i300312%_ _%i300312%_))))
                               (##fxmodulo
                                _%next-probe300330%_
                                _%size300297%_))
                             (##fx+ _%i300312%_ '1)
                             _%deleted300314%_))))))))))
    (define symbolic-table-ref/lock
      (lambda (_%tab300258%_ _%key300259%_ _%default300260%_)
        (let ((_%lock300262%_ (&raw-table-lock _%tab300258%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again300267%_ ((_%spin300270%_ '0))
              (if (##fx= (##vector-cas! _%lock300262%_ '0 '1 '0) '0)
                  (##vector-set! _%lock300262%_ '1 (current-thread))
                  (if (##fx< _%spin300270%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again300267%_ (##fx+ _%spin300270%_ '1)))
                      (let ((_%owner300276%_ (##vector-ref _%lock300262%_ '1)))
                        (if (eq? _%owner300276%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner300276%_)
                                (let () (##thread-yield!) (_%again300267%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r300282%_
                 (symbolic-table-ref
                  _%tab300258%_
                  _%key300259%_
                  _%default300260%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock300262%_ '1 '#f)
                (##vector-cas! _%lock300262%_ '0 '0 '1)))
            _%$r300282%_))))
    (define __symbolic-table-set!
      (lambda (_%tab300210%_ _%key300211%_ _%value300212%_)
        (let ((_%table300214%_ (&raw-table-table _%tab300210%_))
              (_%seed300215%_ (&raw-table-seed _%tab300210%_)))
          (let* ((_%h300217%_
                  (fxxor (##symbol-hash _%key300211%_) _%seed300215%_))
                 (_%size300220%_ (vector-length _%table300214%_))
                 (_%entries300223%_ (##fxquotient _%size300220%_ '2))
                 (_%start300226%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h300217%_ _%entries300223%_)
                   '1)))
            (let _%loop300230%_ ((_%probe300233%_ _%start300226%_)
                                 (_%i300235%_ '1)
                                 (_%deleted300237%_ '#f))
              (let ((_%k300240%_ (vector-ref _%table300214%_ _%probe300233%_)))
                (if (eq? _%k300240%_ (macro-unused-obj))
                    (if _%deleted300237%_
                        (begin
                          (vector-set!
                           _%table300214%_
                           _%deleted300237%_
                           _%key300211%_)
                          (vector-set!
                           _%table300214%_
                           (##fx+ _%deleted300237%_ '1)
                           _%value300212%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab300210%_
                              (##fx+ (&raw-table-count _%tab300210%_) '1)))))
                        (begin
                          (vector-set!
                           _%table300214%_
                           _%probe300233%_
                           _%key300211%_)
                          (vector-set!
                           _%table300214%_
                           (##fx+ _%probe300233%_ '1)
                           _%value300212%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab300210%_
                              (##fx- (&raw-table-free _%tab300210%_) '1))
                             (&raw-table-count-set!
                              _%tab300210%_
                              (##fx+ (&raw-table-count _%tab300210%_) '1))))))
                    (if (eq? _%k300240%_ (macro-deleted-obj))
                        (_%loop300230%_
                         (let ((_%next-probe300247%_
                                (fx+ _%start300226%_
                                     _%i300235%_
                                     (fx* _%i300235%_ _%i300235%_))))
                           (##fxmodulo _%next-probe300247%_ _%size300220%_))
                         (##fx+ _%i300235%_ '1)
                         (let ((_%$e300250%_ _%deleted300237%_))
                           (if _%$e300250%_ _%$e300250%_ _%probe300233%_)))
                        (if (eq? _%key300211%_ _%k300240%_)
                            (let ()
                              (vector-set!
                               _%table300214%_
                               _%probe300233%_
                               _%key300211%_)
                              (vector-set!
                               _%table300214%_
                               (##fx+ _%probe300233%_ '1)
                               _%value300212%_))
                            (_%loop300230%_
                             (let ((_%next-probe300255%_
                                    (fx+ _%start300226%_
                                         _%i300235%_
                                         (fx* _%i300235%_ _%i300235%_))))
                               (##fxmodulo
                                _%next-probe300255%_
                                _%size300220%_))
                             (##fx+ _%i300235%_ '1)
                             _%deleted300237%_))))))))))
    (define symbolic-table-set!
      (lambda (_%tab300206%_ _%key300207%_ _%value300208%_)
        (if (##fx< (&raw-table-free _%tab300206%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab300206%_))
                    '4))
            (__raw-table-rehash! _%tab300206%_)
            '#!void)
        (__symbolic-table-set! _%tab300206%_ _%key300207%_ _%value300208%_)))
    (define symbolic-table-set!/lock
      (lambda (_%tab300176%_ _%key300177%_ _%value300178%_)
        (let ((_%lock300181%_ (&raw-table-lock _%tab300176%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again300186%_ ((_%spin300189%_ '0))
              (if (##fx= (##vector-cas! _%lock300181%_ '0 '1 '0) '0)
                  (##vector-set! _%lock300181%_ '1 (current-thread))
                  (if (##fx< _%spin300189%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again300186%_ (##fx+ _%spin300189%_ '1)))
                      (let ((_%owner300195%_ (##vector-ref _%lock300181%_ '1)))
                        (if (eq? _%owner300195%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner300195%_)
                                (let () (##thread-yield!) (_%again300186%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r300201%_
                 (symbolic-table-set!
                  _%tab300176%_
                  _%key300177%_
                  _%value300178%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock300181%_ '1 '#f)
                (##vector-cas! _%lock300181%_ '0 '0 '1)))
            _%$r300201%_))))
    (define __symbolic-table-update!
      (lambda (_%tab300127%_
               _%key300128%_
               _%symbolic-table-update!300129%_
               _%default300130%_)
        (let ((_%table300132%_ (&raw-table-table _%tab300127%_))
              (_%seed300133%_ (&raw-table-seed _%tab300127%_)))
          (let* ((_%h300135%_
                  (fxxor (##symbol-hash _%key300128%_) _%seed300133%_))
                 (_%size300138%_ (vector-length _%table300132%_))
                 (_%entries300141%_ (##fxquotient _%size300138%_ '2))
                 (_%start300144%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h300135%_ _%entries300141%_)
                   '1)))
            (let _%loop300148%_ ((_%probe300151%_ _%start300144%_)
                                 (_%i300153%_ '1)
                                 (_%deleted300155%_ '#f))
              (let ((_%k300158%_ (vector-ref _%table300132%_ _%probe300151%_)))
                (if (eq? _%k300158%_ (macro-unused-obj))
                    (if _%deleted300155%_
                        (begin
                          (vector-set!
                           _%table300132%_
                           _%deleted300155%_
                           _%key300128%_)
                          (vector-set!
                           _%table300132%_
                           (##fx+ _%deleted300155%_ '1)
                           (_%symbolic-table-update!300129%_
                            _%default300130%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab300127%_
                              (##fx+ (&raw-table-count _%tab300127%_) '1)))))
                        (begin
                          (vector-set!
                           _%table300132%_
                           _%probe300151%_
                           _%key300128%_)
                          (vector-set!
                           _%table300132%_
                           (##fx+ _%probe300151%_ '1)
                           (_%symbolic-table-update!300129%_
                            _%default300130%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab300127%_
                              (##fx- (&raw-table-free _%tab300127%_) '1))
                             (&raw-table-count-set!
                              _%tab300127%_
                              (##fx+ (&raw-table-count _%tab300127%_) '1))))))
                    (if (eq? _%k300158%_ (macro-deleted-obj))
                        (_%loop300148%_
                         (let ((_%next-probe300165%_
                                (fx+ _%start300144%_
                                     _%i300153%_
                                     (fx* _%i300153%_ _%i300153%_))))
                           (##fxmodulo _%next-probe300165%_ _%size300138%_))
                         (##fx+ _%i300153%_ '1)
                         (let ((_%$e300168%_ _%deleted300155%_))
                           (if _%$e300168%_ _%$e300168%_ _%probe300151%_)))
                        (if (eq? _%key300128%_ _%k300158%_)
                            (let ()
                              (vector-set!
                               _%table300132%_
                               _%probe300151%_
                               _%key300128%_)
                              (vector-set!
                               _%table300132%_
                               (##fx+ _%probe300151%_ '1)
                               (_%symbolic-table-update!300129%_
                                (vector-ref
                                 _%table300132%_
                                 (##fx+ _%probe300151%_ '1)))))
                            (_%loop300148%_
                             (let ((_%next-probe300173%_
                                    (fx+ _%start300144%_
                                         _%i300153%_
                                         (fx* _%i300153%_ _%i300153%_))))
                               (##fxmodulo
                                _%next-probe300173%_
                                _%size300138%_))
                             (##fx+ _%i300153%_ '1)
                             _%deleted300155%_))))))))))
    (define symbolic-table-update!
      (lambda (_%tab300122%_
               _%key300123%_
               _%symbolic-table-update!300124%_
               _%default300125%_)
        (if (##fx< (&raw-table-free _%tab300122%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab300122%_))
                    '4))
            (__raw-table-rehash! _%tab300122%_)
            '#!void)
        (__symbolic-table-update!
         _%tab300122%_
         _%key300123%_
         _%symbolic-table-update!300124%_
         _%default300125%_)))
    (define symbolic-table-update!/lock
      (lambda (_%tab300091%_
               _%key300092%_
               _%symbolic-table-update!300093%_
               _%default300094%_)
        (let ((_%lock300097%_ (&raw-table-lock _%tab300091%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again300102%_ ((_%spin300105%_ '0))
              (if (##fx= (##vector-cas! _%lock300097%_ '0 '1 '0) '0)
                  (##vector-set! _%lock300097%_ '1 (current-thread))
                  (if (##fx< _%spin300105%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again300102%_ (##fx+ _%spin300105%_ '1)))
                      (let ((_%owner300111%_ (##vector-ref _%lock300097%_ '1)))
                        (if (eq? _%owner300111%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner300111%_)
                                (let () (##thread-yield!) (_%again300102%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r300117%_
                 (_%symbolic-table-update!300093%_
                  _%tab300091%_
                  _%key300092%_
                  _%symbolic-table-update!300093%_
                  _%default300094%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock300097%_ '1 '#f)
                (##vector-cas! _%lock300097%_ '0 '0 '1)))
            _%$r300117%_))))
    (define symbolic-table-delete!
      (lambda (_%tab300048%_ _%key300049%_)
        (let ((_%table300051%_ (&raw-table-table _%tab300048%_))
              (_%seed300053%_ (&raw-table-seed _%tab300048%_)))
          (let* ((_%h300056%_
                  (fxxor (##symbol-hash _%key300049%_) _%seed300053%_))
                 (_%size300059%_ (vector-length _%table300051%_))
                 (_%entries300062%_ (##fxquotient _%size300059%_ '2))
                 (_%start300065%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h300056%_ _%entries300062%_)
                   '1)))
            (let _%loop300069%_ ((_%probe300072%_ _%start300065%_)
                                 (_%i300074%_ '1))
              (let ((_%k300077%_ (vector-ref _%table300051%_ _%probe300072%_)))
                (if (eq? _%k300077%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k300077%_ (macro-deleted-obj))
                        (_%loop300069%_
                         (let ((_%next-probe300082%_
                                (fx+ _%start300065%_
                                     _%i300074%_
                                     (fx* _%i300074%_ _%i300074%_))))
                           (##fxmodulo _%next-probe300082%_ _%size300059%_))
                         (##fx+ _%i300074%_ '1))
                        (if (eq? _%key300049%_ _%k300077%_)
                            (let ()
                              (vector-set!
                               _%table300051%_
                               _%probe300072%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table300051%_
                               (##fx+ _%probe300072%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab300048%_
                                  (##fx- (&raw-table-count _%tab300048%_)
                                         '1)))))
                            (_%loop300069%_
                             (let ((_%next-probe300088%_
                                    (fx+ _%start300065%_
                                         _%i300074%_
                                         (fx* _%i300074%_ _%i300074%_))))
                               (##fxmodulo
                                _%next-probe300088%_
                                _%size300059%_))
                             (##fx+ _%i300074%_ '1)))))))))))
    (define symbolic-table-delete!/lock
      (lambda (_%tab300018%_ _%key300020%_)
        (let ((_%lock300023%_ (&raw-table-lock _%tab300018%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again300028%_ ((_%spin300031%_ '0))
              (if (##fx= (##vector-cas! _%lock300023%_ '0 '1 '0) '0)
                  (##vector-set! _%lock300023%_ '1 (current-thread))
                  (if (##fx< _%spin300031%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again300028%_ (##fx+ _%spin300031%_ '1)))
                      (let ((_%owner300037%_ (##vector-ref _%lock300023%_ '1)))
                        (if (eq? _%owner300037%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner300037%_)
                                (let () (##thread-yield!) (_%again300028%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r300043%_
                 (symbolic-table-delete! _%tab300018%_ _%key300020%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock300023%_ '1 '#f)
                (##vector-cas! _%lock300023%_ '0 '0 '1)))
            _%$r300043%_))))
    (define make-string-table__%
      (lambda (_%size-hint300000%_ _%seed300001%_)
        (make-raw-table__1
         _%size-hint300000%_
         string-hash
         ##string=?
         _%seed300001%_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_%size-hint300007%_ '#f) (_%seed300009%_ '0))
          (make-string-table__% _%size-hint300007%_ _%seed300009%_))))
    (define make-string-table__1
      (lambda (_%size-hint300011%_)
        (let ((_%seed300013%_ '0))
          (make-string-table__% _%size-hint300011%_ _%seed300013%_))))
    (define make-string-table
      (lambda _g301695_
        (let ((_g301696_ (##length _g301695_)))
          (cond ((##fx= _g301696_ 0) (apply make-string-table__0 _g301695_))
                ((##fx= _g301696_ 1) (apply make-string-table__1 _g301695_))
                ((##fx= _g301696_ 2) (apply make-string-table__% _g301695_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g301695_))))))
    (define make-string-table/lock__%
      (lambda (_%size-hint299980%_ _%seed299982%_)
        (make-raw-table/lock__%
         _%size-hint299980%_
         string-hash
         ##string=?
         _%seed299982%_)))
    (define make-string-table/lock__0
      (lambda ()
        (let* ((_%size-hint299988%_ '#f) (_%seed299990%_ '0))
          (make-string-table/lock__% _%size-hint299988%_ _%seed299990%_))))
    (define make-string-table/lock__1
      (lambda (_%size-hint299992%_)
        (let ((_%seed299994%_ '0))
          (make-string-table/lock__% _%size-hint299992%_ _%seed299994%_))))
    (define make-string-table/lock
      (lambda _g301697_
        (let ((_g301698_ (##length _g301697_)))
          (cond ((##fx= _g301698_ 0)
                 (apply make-string-table/lock__0 _g301697_))
                ((##fx= _g301698_ 1)
                 (apply make-string-table/lock__1 _g301697_))
                ((##fx= _g301698_ 2)
                 (apply make-string-table/lock__% _g301697_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table/lock
                  _g301697_))))))
    (define string-table-ref
      (lambda (_%tab299933%_ _%key299934%_ _%default299935%_)
        (let ((_%table299937%_ (&raw-table-table _%tab299933%_))
              (_%seed299938%_ (&raw-table-seed _%tab299933%_)))
          (let* ((_%h299940%_
                  (fxxor (##string=?-hash _%key299934%_) _%seed299938%_))
                 (_%size299943%_ (vector-length _%table299937%_))
                 (_%entries299946%_ (##fxquotient _%size299943%_ '2))
                 (_%start299949%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h299940%_ _%entries299946%_)
                   '1)))
            (let _%loop299953%_ ((_%probe299956%_ _%start299949%_)
                                 (_%i299958%_ '1)
                                 (_%deleted299960%_ '#f))
              (let ((_%k299963%_ (vector-ref _%table299937%_ _%probe299956%_)))
                (if (eq? _%k299963%_ (macro-unused-obj))
                    _%default299935%_
                    (if (eq? _%k299963%_ (macro-deleted-obj))
                        (_%loop299953%_
                         (let ((_%next-probe299968%_
                                (fx+ _%start299949%_
                                     _%i299958%_
                                     (fx* _%i299958%_ _%i299958%_))))
                           (##fxmodulo _%next-probe299968%_ _%size299943%_))
                         (##fx+ _%i299958%_ '1)
                         (let ((_%$e299971%_ _%deleted299960%_))
                           (if _%$e299971%_ _%$e299971%_ _%probe299956%_)))
                        (if (##string=? _%key299934%_ _%k299963%_)
                            (vector-ref
                             _%table299937%_
                             (##fx+ _%probe299956%_ '1))
                            (_%loop299953%_
                             (let ((_%next-probe299976%_
                                    (fx+ _%start299949%_
                                         _%i299958%_
                                         (fx* _%i299958%_ _%i299958%_))))
                               (##fxmodulo
                                _%next-probe299976%_
                                _%size299943%_))
                             (##fx+ _%i299958%_ '1)
                             _%deleted299960%_))))))))))
    (define string-table-ref/lock
      (lambda (_%tab299904%_ _%key299905%_ _%default299906%_)
        (let ((_%lock299908%_ (&raw-table-lock _%tab299904%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again299913%_ ((_%spin299916%_ '0))
              (if (##fx= (##vector-cas! _%lock299908%_ '0 '1 '0) '0)
                  (##vector-set! _%lock299908%_ '1 (current-thread))
                  (if (##fx< _%spin299916%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again299913%_ (##fx+ _%spin299916%_ '1)))
                      (let ((_%owner299922%_ (##vector-ref _%lock299908%_ '1)))
                        (if (eq? _%owner299922%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner299922%_)
                                (let () (##thread-yield!) (_%again299913%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r299928%_
                 (string-table-ref
                  _%tab299904%_
                  _%key299905%_
                  _%default299906%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock299908%_ '1 '#f)
                (##vector-cas! _%lock299908%_ '0 '0 '1)))
            _%$r299928%_))))
    (define __string-table-set!
      (lambda (_%tab299856%_ _%key299857%_ _%value299858%_)
        (let ((_%table299860%_ (&raw-table-table _%tab299856%_))
              (_%seed299861%_ (&raw-table-seed _%tab299856%_)))
          (let* ((_%h299863%_
                  (fxxor (##string=?-hash _%key299857%_) _%seed299861%_))
                 (_%size299866%_ (vector-length _%table299860%_))
                 (_%entries299869%_ (##fxquotient _%size299866%_ '2))
                 (_%start299872%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h299863%_ _%entries299869%_)
                   '1)))
            (let _%loop299876%_ ((_%probe299879%_ _%start299872%_)
                                 (_%i299881%_ '1)
                                 (_%deleted299883%_ '#f))
              (let ((_%k299886%_ (vector-ref _%table299860%_ _%probe299879%_)))
                (if (eq? _%k299886%_ (macro-unused-obj))
                    (if _%deleted299883%_
                        (begin
                          (vector-set!
                           _%table299860%_
                           _%deleted299883%_
                           _%key299857%_)
                          (vector-set!
                           _%table299860%_
                           (##fx+ _%deleted299883%_ '1)
                           _%value299858%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab299856%_
                              (##fx+ (&raw-table-count _%tab299856%_) '1)))))
                        (begin
                          (vector-set!
                           _%table299860%_
                           _%probe299879%_
                           _%key299857%_)
                          (vector-set!
                           _%table299860%_
                           (##fx+ _%probe299879%_ '1)
                           _%value299858%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab299856%_
                              (##fx- (&raw-table-free _%tab299856%_) '1))
                             (&raw-table-count-set!
                              _%tab299856%_
                              (##fx+ (&raw-table-count _%tab299856%_) '1))))))
                    (if (eq? _%k299886%_ (macro-deleted-obj))
                        (_%loop299876%_
                         (let ((_%next-probe299893%_
                                (fx+ _%start299872%_
                                     _%i299881%_
                                     (fx* _%i299881%_ _%i299881%_))))
                           (##fxmodulo _%next-probe299893%_ _%size299866%_))
                         (##fx+ _%i299881%_ '1)
                         (let ((_%$e299896%_ _%deleted299883%_))
                           (if _%$e299896%_ _%$e299896%_ _%probe299879%_)))
                        (if (##string=? _%key299857%_ _%k299886%_)
                            (let ()
                              (vector-set!
                               _%table299860%_
                               _%probe299879%_
                               _%key299857%_)
                              (vector-set!
                               _%table299860%_
                               (##fx+ _%probe299879%_ '1)
                               _%value299858%_))
                            (_%loop299876%_
                             (let ((_%next-probe299901%_
                                    (fx+ _%start299872%_
                                         _%i299881%_
                                         (fx* _%i299881%_ _%i299881%_))))
                               (##fxmodulo
                                _%next-probe299901%_
                                _%size299866%_))
                             (##fx+ _%i299881%_ '1)
                             _%deleted299883%_))))))))))
    (define string-table-set!
      (lambda (_%tab299852%_ _%key299853%_ _%value299854%_)
        (if (##fx< (&raw-table-free _%tab299852%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab299852%_))
                    '4))
            (__raw-table-rehash! _%tab299852%_)
            '#!void)
        (__string-table-set! _%tab299852%_ _%key299853%_ _%value299854%_)))
    (define string-table-set!/lock
      (lambda (_%tab299822%_ _%key299823%_ _%value299824%_)
        (let ((_%lock299827%_ (&raw-table-lock _%tab299822%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again299832%_ ((_%spin299835%_ '0))
              (if (##fx= (##vector-cas! _%lock299827%_ '0 '1 '0) '0)
                  (##vector-set! _%lock299827%_ '1 (current-thread))
                  (if (##fx< _%spin299835%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again299832%_ (##fx+ _%spin299835%_ '1)))
                      (let ((_%owner299841%_ (##vector-ref _%lock299827%_ '1)))
                        (if (eq? _%owner299841%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner299841%_)
                                (let () (##thread-yield!) (_%again299832%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r299847%_
                 (string-table-set!
                  _%tab299822%_
                  _%key299823%_
                  _%value299824%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock299827%_ '1 '#f)
                (##vector-cas! _%lock299827%_ '0 '0 '1)))
            _%$r299847%_))))
    (define __string-table-update!
      (lambda (_%tab299773%_
               _%key299774%_
               _%string-table-update!299775%_
               _%default299776%_)
        (let ((_%table299778%_ (&raw-table-table _%tab299773%_))
              (_%seed299779%_ (&raw-table-seed _%tab299773%_)))
          (let* ((_%h299781%_
                  (fxxor (##string=?-hash _%key299774%_) _%seed299779%_))
                 (_%size299784%_ (vector-length _%table299778%_))
                 (_%entries299787%_ (##fxquotient _%size299784%_ '2))
                 (_%start299790%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h299781%_ _%entries299787%_)
                   '1)))
            (let _%loop299794%_ ((_%probe299797%_ _%start299790%_)
                                 (_%i299799%_ '1)
                                 (_%deleted299801%_ '#f))
              (let ((_%k299804%_ (vector-ref _%table299778%_ _%probe299797%_)))
                (if (eq? _%k299804%_ (macro-unused-obj))
                    (if _%deleted299801%_
                        (begin
                          (vector-set!
                           _%table299778%_
                           _%deleted299801%_
                           _%key299774%_)
                          (vector-set!
                           _%table299778%_
                           (##fx+ _%deleted299801%_ '1)
                           (_%string-table-update!299775%_ _%default299776%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab299773%_
                              (##fx+ (&raw-table-count _%tab299773%_) '1)))))
                        (begin
                          (vector-set!
                           _%table299778%_
                           _%probe299797%_
                           _%key299774%_)
                          (vector-set!
                           _%table299778%_
                           (##fx+ _%probe299797%_ '1)
                           (_%string-table-update!299775%_ _%default299776%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab299773%_
                              (##fx- (&raw-table-free _%tab299773%_) '1))
                             (&raw-table-count-set!
                              _%tab299773%_
                              (##fx+ (&raw-table-count _%tab299773%_) '1))))))
                    (if (eq? _%k299804%_ (macro-deleted-obj))
                        (_%loop299794%_
                         (let ((_%next-probe299811%_
                                (fx+ _%start299790%_
                                     _%i299799%_
                                     (fx* _%i299799%_ _%i299799%_))))
                           (##fxmodulo _%next-probe299811%_ _%size299784%_))
                         (##fx+ _%i299799%_ '1)
                         (let ((_%$e299814%_ _%deleted299801%_))
                           (if _%$e299814%_ _%$e299814%_ _%probe299797%_)))
                        (if (##string=? _%key299774%_ _%k299804%_)
                            (let ()
                              (vector-set!
                               _%table299778%_
                               _%probe299797%_
                               _%key299774%_)
                              (vector-set!
                               _%table299778%_
                               (##fx+ _%probe299797%_ '1)
                               (_%string-table-update!299775%_
                                (vector-ref
                                 _%table299778%_
                                 (##fx+ _%probe299797%_ '1)))))
                            (_%loop299794%_
                             (let ((_%next-probe299819%_
                                    (fx+ _%start299790%_
                                         _%i299799%_
                                         (fx* _%i299799%_ _%i299799%_))))
                               (##fxmodulo
                                _%next-probe299819%_
                                _%size299784%_))
                             (##fx+ _%i299799%_ '1)
                             _%deleted299801%_))))))))))
    (define string-table-update!
      (lambda (_%tab299768%_
               _%key299769%_
               _%string-table-update!299770%_
               _%default299771%_)
        (if (##fx< (&raw-table-free _%tab299768%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab299768%_))
                    '4))
            (__raw-table-rehash! _%tab299768%_)
            '#!void)
        (__string-table-update!
         _%tab299768%_
         _%key299769%_
         _%string-table-update!299770%_
         _%default299771%_)))
    (define string-table-update!/lock
      (lambda (_%tab299737%_
               _%key299738%_
               _%string-table-update!299739%_
               _%default299740%_)
        (let ((_%lock299743%_ (&raw-table-lock _%tab299737%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again299748%_ ((_%spin299751%_ '0))
              (if (##fx= (##vector-cas! _%lock299743%_ '0 '1 '0) '0)
                  (##vector-set! _%lock299743%_ '1 (current-thread))
                  (if (##fx< _%spin299751%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again299748%_ (##fx+ _%spin299751%_ '1)))
                      (let ((_%owner299757%_ (##vector-ref _%lock299743%_ '1)))
                        (if (eq? _%owner299757%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner299757%_)
                                (let () (##thread-yield!) (_%again299748%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r299763%_
                 (_%string-table-update!299739%_
                  _%tab299737%_
                  _%key299738%_
                  _%string-table-update!299739%_
                  _%default299740%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock299743%_ '1 '#f)
                (##vector-cas! _%lock299743%_ '0 '0 '1)))
            _%$r299763%_))))
    (define string-table-delete!
      (lambda (_%tab299694%_ _%key299695%_)
        (let ((_%table299697%_ (&raw-table-table _%tab299694%_))
              (_%seed299699%_ (&raw-table-seed _%tab299694%_)))
          (let* ((_%h299702%_
                  (fxxor (##string=?-hash _%key299695%_) _%seed299699%_))
                 (_%size299705%_ (vector-length _%table299697%_))
                 (_%entries299708%_ (##fxquotient _%size299705%_ '2))
                 (_%start299711%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h299702%_ _%entries299708%_)
                   '1)))
            (let _%loop299715%_ ((_%probe299718%_ _%start299711%_)
                                 (_%i299720%_ '1))
              (let ((_%k299723%_ (vector-ref _%table299697%_ _%probe299718%_)))
                (if (eq? _%k299723%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k299723%_ (macro-deleted-obj))
                        (_%loop299715%_
                         (let ((_%next-probe299728%_
                                (fx+ _%start299711%_
                                     _%i299720%_
                                     (fx* _%i299720%_ _%i299720%_))))
                           (##fxmodulo _%next-probe299728%_ _%size299705%_))
                         (##fx+ _%i299720%_ '1))
                        (if (##string=? _%key299695%_ _%k299723%_)
                            (let ()
                              (vector-set!
                               _%table299697%_
                               _%probe299718%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table299697%_
                               (##fx+ _%probe299718%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab299694%_
                                  (##fx- (&raw-table-count _%tab299694%_)
                                         '1)))))
                            (_%loop299715%_
                             (let ((_%next-probe299734%_
                                    (fx+ _%start299711%_
                                         _%i299720%_
                                         (fx* _%i299720%_ _%i299720%_))))
                               (##fxmodulo
                                _%next-probe299734%_
                                _%size299705%_))
                             (##fx+ _%i299720%_ '1)))))))))))
    (define string-table-delete!/lock
      (lambda (_%tab299664%_ _%key299666%_)
        (let ((_%lock299669%_ (&raw-table-lock _%tab299664%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again299674%_ ((_%spin299677%_ '0))
              (if (##fx= (##vector-cas! _%lock299669%_ '0 '1 '0) '0)
                  (##vector-set! _%lock299669%_ '1 (current-thread))
                  (if (##fx< _%spin299677%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again299674%_ (##fx+ _%spin299677%_ '1)))
                      (let ((_%owner299683%_ (##vector-ref _%lock299669%_ '1)))
                        (if (eq? _%owner299683%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner299683%_)
                                (let () (##thread-yield!) (_%again299674%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r299689%_
                 (string-table-delete! _%tab299664%_ _%key299666%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock299669%_ '1 '#f)
                (##vector-cas! _%lock299669%_ '0 '0 '1)))
            _%$r299689%_))))
    (define make-immediate-table__%
      (lambda (_%size-hint299646%_ _%seed299647%_)
        (make-raw-table__1
         _%size-hint299646%_
         immediate-hash
         eq?
         _%seed299647%_)))
    (define make-immediate-table__0
      (lambda ()
        (let* ((_%size-hint299653%_ '#f) (_%seed299655%_ '0))
          (make-immediate-table__% _%size-hint299653%_ _%seed299655%_))))
    (define make-immediate-table__1
      (lambda (_%size-hint299657%_)
        (let ((_%seed299659%_ '0))
          (make-immediate-table__% _%size-hint299657%_ _%seed299659%_))))
    (define make-immediate-table
      (lambda _g301699_
        (let ((_g301700_ (##length _g301699_)))
          (cond ((##fx= _g301700_ 0) (apply make-immediate-table__0 _g301699_))
                ((##fx= _g301700_ 1) (apply make-immediate-table__1 _g301699_))
                ((##fx= _g301700_ 2) (apply make-immediate-table__% _g301699_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table
                  _g301699_))))))
    (define make-immediate-table/lock__%
      (lambda (_%size-hint299626%_ _%seed299628%_)
        (make-raw-table/lock__%
         _%size-hint299626%_
         immediate-hash
         eq?
         _%seed299628%_)))
    (define make-immediate-table/lock__0
      (lambda ()
        (let* ((_%size-hint299634%_ '#f) (_%seed299636%_ '0))
          (make-immediate-table/lock__% _%size-hint299634%_ _%seed299636%_))))
    (define make-immediate-table/lock__1
      (lambda (_%size-hint299638%_)
        (let ((_%seed299640%_ '0))
          (make-immediate-table/lock__% _%size-hint299638%_ _%seed299640%_))))
    (define make-immediate-table/lock
      (lambda _g301701_
        (let ((_g301702_ (##length _g301701_)))
          (cond ((##fx= _g301702_ 0)
                 (apply make-immediate-table/lock__0 _g301701_))
                ((##fx= _g301702_ 1)
                 (apply make-immediate-table/lock__1 _g301701_))
                ((##fx= _g301702_ 2)
                 (apply make-immediate-table/lock__% _g301701_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table/lock
                  _g301701_))))))
    (define immediate-table-ref
      (lambda (_%tab299579%_ _%key299580%_ _%default299581%_)
        (let ((_%table299583%_ (&raw-table-table _%tab299579%_))
              (_%seed299584%_ (&raw-table-seed _%tab299579%_)))
          (let* ((_%h299586%_
                  (fxxor (immediate-hash _%key299580%_) _%seed299584%_))
                 (_%size299589%_ (vector-length _%table299583%_))
                 (_%entries299592%_ (##fxquotient _%size299589%_ '2))
                 (_%start299595%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h299586%_ _%entries299592%_)
                   '1)))
            (let _%loop299599%_ ((_%probe299602%_ _%start299595%_)
                                 (_%i299604%_ '1)
                                 (_%deleted299606%_ '#f))
              (let ((_%k299609%_ (vector-ref _%table299583%_ _%probe299602%_)))
                (if (eq? _%k299609%_ (macro-unused-obj))
                    _%default299581%_
                    (if (eq? _%k299609%_ (macro-deleted-obj))
                        (_%loop299599%_
                         (let ((_%next-probe299614%_
                                (fx+ _%start299595%_
                                     _%i299604%_
                                     (fx* _%i299604%_ _%i299604%_))))
                           (##fxmodulo _%next-probe299614%_ _%size299589%_))
                         (##fx+ _%i299604%_ '1)
                         (let ((_%$e299617%_ _%deleted299606%_))
                           (if _%$e299617%_ _%$e299617%_ _%probe299602%_)))
                        (if (eq? _%key299580%_ _%k299609%_)
                            (vector-ref
                             _%table299583%_
                             (##fx+ _%probe299602%_ '1))
                            (_%loop299599%_
                             (let ((_%next-probe299622%_
                                    (fx+ _%start299595%_
                                         _%i299604%_
                                         (fx* _%i299604%_ _%i299604%_))))
                               (##fxmodulo
                                _%next-probe299622%_
                                _%size299589%_))
                             (##fx+ _%i299604%_ '1)
                             _%deleted299606%_))))))))))
    (define immediate-table-ref/lock
      (lambda (_%tab299550%_ _%key299551%_ _%default299552%_)
        (let ((_%lock299554%_ (&raw-table-lock _%tab299550%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again299559%_ ((_%spin299562%_ '0))
              (if (##fx= (##vector-cas! _%lock299554%_ '0 '1 '0) '0)
                  (##vector-set! _%lock299554%_ '1 (current-thread))
                  (if (##fx< _%spin299562%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again299559%_ (##fx+ _%spin299562%_ '1)))
                      (let ((_%owner299568%_ (##vector-ref _%lock299554%_ '1)))
                        (if (eq? _%owner299568%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner299568%_)
                                (let () (##thread-yield!) (_%again299559%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r299574%_
                 (immediate-table-ref
                  _%tab299550%_
                  _%key299551%_
                  _%default299552%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock299554%_ '1 '#f)
                (##vector-cas! _%lock299554%_ '0 '0 '1)))
            _%$r299574%_))))
    (define __immediate-table-set!
      (lambda (_%tab299502%_ _%key299503%_ _%value299504%_)
        (let ((_%table299506%_ (&raw-table-table _%tab299502%_))
              (_%seed299507%_ (&raw-table-seed _%tab299502%_)))
          (let* ((_%h299509%_
                  (fxxor (immediate-hash _%key299503%_) _%seed299507%_))
                 (_%size299512%_ (vector-length _%table299506%_))
                 (_%entries299515%_ (##fxquotient _%size299512%_ '2))
                 (_%start299518%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h299509%_ _%entries299515%_)
                   '1)))
            (let _%loop299522%_ ((_%probe299525%_ _%start299518%_)
                                 (_%i299527%_ '1)
                                 (_%deleted299529%_ '#f))
              (let ((_%k299532%_ (vector-ref _%table299506%_ _%probe299525%_)))
                (if (eq? _%k299532%_ (macro-unused-obj))
                    (if _%deleted299529%_
                        (begin
                          (vector-set!
                           _%table299506%_
                           _%deleted299529%_
                           _%key299503%_)
                          (vector-set!
                           _%table299506%_
                           (##fx+ _%deleted299529%_ '1)
                           _%value299504%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab299502%_
                              (##fx+ (&raw-table-count _%tab299502%_) '1)))))
                        (begin
                          (vector-set!
                           _%table299506%_
                           _%probe299525%_
                           _%key299503%_)
                          (vector-set!
                           _%table299506%_
                           (##fx+ _%probe299525%_ '1)
                           _%value299504%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab299502%_
                              (##fx- (&raw-table-free _%tab299502%_) '1))
                             (&raw-table-count-set!
                              _%tab299502%_
                              (##fx+ (&raw-table-count _%tab299502%_) '1))))))
                    (if (eq? _%k299532%_ (macro-deleted-obj))
                        (_%loop299522%_
                         (let ((_%next-probe299539%_
                                (fx+ _%start299518%_
                                     _%i299527%_
                                     (fx* _%i299527%_ _%i299527%_))))
                           (##fxmodulo _%next-probe299539%_ _%size299512%_))
                         (##fx+ _%i299527%_ '1)
                         (let ((_%$e299542%_ _%deleted299529%_))
                           (if _%$e299542%_ _%$e299542%_ _%probe299525%_)))
                        (if (eq? _%key299503%_ _%k299532%_)
                            (let ()
                              (vector-set!
                               _%table299506%_
                               _%probe299525%_
                               _%key299503%_)
                              (vector-set!
                               _%table299506%_
                               (##fx+ _%probe299525%_ '1)
                               _%value299504%_))
                            (_%loop299522%_
                             (let ((_%next-probe299547%_
                                    (fx+ _%start299518%_
                                         _%i299527%_
                                         (fx* _%i299527%_ _%i299527%_))))
                               (##fxmodulo
                                _%next-probe299547%_
                                _%size299512%_))
                             (##fx+ _%i299527%_ '1)
                             _%deleted299529%_))))))))))
    (define immediate-table-set!
      (lambda (_%tab299498%_ _%key299499%_ _%value299500%_)
        (if (##fx< (&raw-table-free _%tab299498%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab299498%_))
                    '4))
            (__raw-table-rehash! _%tab299498%_)
            '#!void)
        (__immediate-table-set! _%tab299498%_ _%key299499%_ _%value299500%_)))
    (define immediate-table-set!/lock
      (lambda (_%tab299468%_ _%key299469%_ _%value299470%_)
        (let ((_%lock299473%_ (&raw-table-lock _%tab299468%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again299478%_ ((_%spin299481%_ '0))
              (if (##fx= (##vector-cas! _%lock299473%_ '0 '1 '0) '0)
                  (##vector-set! _%lock299473%_ '1 (current-thread))
                  (if (##fx< _%spin299481%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again299478%_ (##fx+ _%spin299481%_ '1)))
                      (let ((_%owner299487%_ (##vector-ref _%lock299473%_ '1)))
                        (if (eq? _%owner299487%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner299487%_)
                                (let () (##thread-yield!) (_%again299478%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r299493%_
                 (immediate-table-set!
                  _%tab299468%_
                  _%key299469%_
                  _%value299470%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock299473%_ '1 '#f)
                (##vector-cas! _%lock299473%_ '0 '0 '1)))
            _%$r299493%_))))
    (define __immediate-table-update!
      (lambda (_%tab299419%_
               _%key299420%_
               _%immediate-table-update!299421%_
               _%default299422%_)
        (let ((_%table299424%_ (&raw-table-table _%tab299419%_))
              (_%seed299425%_ (&raw-table-seed _%tab299419%_)))
          (let* ((_%h299427%_
                  (fxxor (immediate-hash _%key299420%_) _%seed299425%_))
                 (_%size299430%_ (vector-length _%table299424%_))
                 (_%entries299433%_ (##fxquotient _%size299430%_ '2))
                 (_%start299436%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h299427%_ _%entries299433%_)
                   '1)))
            (let _%loop299440%_ ((_%probe299443%_ _%start299436%_)
                                 (_%i299445%_ '1)
                                 (_%deleted299447%_ '#f))
              (let ((_%k299450%_ (vector-ref _%table299424%_ _%probe299443%_)))
                (if (eq? _%k299450%_ (macro-unused-obj))
                    (if _%deleted299447%_
                        (begin
                          (vector-set!
                           _%table299424%_
                           _%deleted299447%_
                           _%key299420%_)
                          (vector-set!
                           _%table299424%_
                           (##fx+ _%deleted299447%_ '1)
                           (_%immediate-table-update!299421%_
                            _%default299422%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab299419%_
                              (##fx+ (&raw-table-count _%tab299419%_) '1)))))
                        (begin
                          (vector-set!
                           _%table299424%_
                           _%probe299443%_
                           _%key299420%_)
                          (vector-set!
                           _%table299424%_
                           (##fx+ _%probe299443%_ '1)
                           (_%immediate-table-update!299421%_
                            _%default299422%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab299419%_
                              (##fx- (&raw-table-free _%tab299419%_) '1))
                             (&raw-table-count-set!
                              _%tab299419%_
                              (##fx+ (&raw-table-count _%tab299419%_) '1))))))
                    (if (eq? _%k299450%_ (macro-deleted-obj))
                        (_%loop299440%_
                         (let ((_%next-probe299457%_
                                (fx+ _%start299436%_
                                     _%i299445%_
                                     (fx* _%i299445%_ _%i299445%_))))
                           (##fxmodulo _%next-probe299457%_ _%size299430%_))
                         (##fx+ _%i299445%_ '1)
                         (let ((_%$e299460%_ _%deleted299447%_))
                           (if _%$e299460%_ _%$e299460%_ _%probe299443%_)))
                        (if (eq? _%key299420%_ _%k299450%_)
                            (let ()
                              (vector-set!
                               _%table299424%_
                               _%probe299443%_
                               _%key299420%_)
                              (vector-set!
                               _%table299424%_
                               (##fx+ _%probe299443%_ '1)
                               (_%immediate-table-update!299421%_
                                (vector-ref
                                 _%table299424%_
                                 (##fx+ _%probe299443%_ '1)))))
                            (_%loop299440%_
                             (let ((_%next-probe299465%_
                                    (fx+ _%start299436%_
                                         _%i299445%_
                                         (fx* _%i299445%_ _%i299445%_))))
                               (##fxmodulo
                                _%next-probe299465%_
                                _%size299430%_))
                             (##fx+ _%i299445%_ '1)
                             _%deleted299447%_))))))))))
    (define immediate-table-update!
      (lambda (_%tab299414%_
               _%key299415%_
               _%immediate-table-update!299416%_
               _%default299417%_)
        (if (##fx< (&raw-table-free _%tab299414%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab299414%_))
                    '4))
            (__raw-table-rehash! _%tab299414%_)
            '#!void)
        (__immediate-table-update!
         _%tab299414%_
         _%key299415%_
         _%immediate-table-update!299416%_
         _%default299417%_)))
    (define immediate-table-update!/lock
      (lambda (_%tab299383%_
               _%key299384%_
               _%immediate-table-update!299385%_
               _%default299386%_)
        (let ((_%lock299389%_ (&raw-table-lock _%tab299383%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again299394%_ ((_%spin299397%_ '0))
              (if (##fx= (##vector-cas! _%lock299389%_ '0 '1 '0) '0)
                  (##vector-set! _%lock299389%_ '1 (current-thread))
                  (if (##fx< _%spin299397%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again299394%_ (##fx+ _%spin299397%_ '1)))
                      (let ((_%owner299403%_ (##vector-ref _%lock299389%_ '1)))
                        (if (eq? _%owner299403%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner299403%_)
                                (let () (##thread-yield!) (_%again299394%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r299409%_
                 (_%immediate-table-update!299385%_
                  _%tab299383%_
                  _%key299384%_
                  _%immediate-table-update!299385%_
                  _%default299386%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock299389%_ '1 '#f)
                (##vector-cas! _%lock299389%_ '0 '0 '1)))
            _%$r299409%_))))
    (define immediate-table-delete!
      (lambda (_%tab299340%_ _%key299341%_)
        (let ((_%table299343%_ (&raw-table-table _%tab299340%_))
              (_%seed299345%_ (&raw-table-seed _%tab299340%_)))
          (let* ((_%h299348%_
                  (fxxor (immediate-hash _%key299341%_) _%seed299345%_))
                 (_%size299351%_ (vector-length _%table299343%_))
                 (_%entries299354%_ (##fxquotient _%size299351%_ '2))
                 (_%start299357%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h299348%_ _%entries299354%_)
                   '1)))
            (let _%loop299361%_ ((_%probe299364%_ _%start299357%_)
                                 (_%i299366%_ '1))
              (let ((_%k299369%_ (vector-ref _%table299343%_ _%probe299364%_)))
                (if (eq? _%k299369%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k299369%_ (macro-deleted-obj))
                        (_%loop299361%_
                         (let ((_%next-probe299374%_
                                (fx+ _%start299357%_
                                     _%i299366%_
                                     (fx* _%i299366%_ _%i299366%_))))
                           (##fxmodulo _%next-probe299374%_ _%size299351%_))
                         (##fx+ _%i299366%_ '1))
                        (if (eq? _%key299341%_ _%k299369%_)
                            (let ()
                              (vector-set!
                               _%table299343%_
                               _%probe299364%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table299343%_
                               (##fx+ _%probe299364%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab299340%_
                                  (##fx- (&raw-table-count _%tab299340%_)
                                         '1)))))
                            (_%loop299361%_
                             (let ((_%next-probe299380%_
                                    (fx+ _%start299357%_
                                         _%i299366%_
                                         (fx* _%i299366%_ _%i299366%_))))
                               (##fxmodulo
                                _%next-probe299380%_
                                _%size299351%_))
                             (##fx+ _%i299366%_ '1)))))))))))
    (define immediate-table-delete!/lock
      (lambda (_%tab299310%_ _%key299312%_)
        (let ((_%lock299315%_ (&raw-table-lock _%tab299310%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again299320%_ ((_%spin299323%_ '0))
              (if (##fx= (##vector-cas! _%lock299315%_ '0 '1 '0) '0)
                  (##vector-set! _%lock299315%_ '1 (current-thread))
                  (if (##fx< _%spin299323%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again299320%_ (##fx+ _%spin299323%_ '1)))
                      (let ((_%owner299329%_ (##vector-ref _%lock299315%_ '1)))
                        (if (eq? _%owner299329%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner299329%_)
                                (let () (##thread-yield!) (_%again299320%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r299335%_
                 (immediate-table-delete! _%tab299310%_ _%key299312%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock299315%_ '1 '#f)
                (##vector-cas! _%lock299315%_ '0 '0 '1)))
            _%$r299335%_))))
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
      (lambda (_%tab299308%_)
        (##unchecked-structure-ref
         _%tab299308%_
         '1
         __gc-table::t
         'gc-table-gcht)))
    (define &gc-table-immediate
      (lambda (_%tab299306%_)
        (##unchecked-structure-ref
         _%tab299306%_
         '2
         __gc-table::t
         'gc-table-immediate)))
    (define &gc-table-lock
      (lambda (_%tab299304%_)
        (##unchecked-structure-ref
         _%tab299304%_
         '3
         __gc-table::t
         'gc-table-lock)))
    (define &gc-table-gcht-set!
      (lambda (_%tab299301%_ _%val299302%_)
        (##unchecked-structure-set!
         _%tab299301%_
         _%val299302%_
         '1
         __gc-table::t
         'gc-table-gcht-set!)))
    (define &gc-table-immediate-set!
      (lambda (_%tab299298%_ _%val299299%_)
        (##unchecked-structure-set!
         _%tab299298%_
         _%val299299%_
         '2
         __gc-table::t
         'gc-table-immediate-set!)))
    (define &gc-table-lock-set!
      (lambda (_%tab299295%_ _%val299296%_)
        (##unchecked-structure-set!
         _%tab299295%_
         _%val299296%_
         '3
         __gc-table::t
         'gc-table-lock-set!)))
    (define make-gc-table__%
      (lambda (_%size-hint299259%_
               _%klass299260%_
               _%flags299261%_
               _%lock299262%_)
        (let ((_%gcht299264%_
               (__gc-table-new
                (if (fixnum? _%size-hint299259%_) _%size-hint299259%_ '16)
                _%flags299261%_)))
          (##structure _%klass299260%_ _%gcht299264%_ '#f _%lock299262%_))))
    (define make-gc-table__0
      (lambda (_%size-hint299269%_)
        (let* ((_%klass299271%_ __gc-table::t)
               (_%flags299273%_ '0)
               (_%lock299275%_ '#f))
          (make-gc-table__%
           _%size-hint299269%_
           _%klass299271%_
           _%flags299273%_
           _%lock299275%_))))
    (define make-gc-table__1
      (lambda (_%size-hint299277%_ _%klass299278%_)
        (let* ((_%flags299280%_ '0) (_%lock299282%_ '#f))
          (make-gc-table__%
           _%size-hint299277%_
           _%klass299278%_
           _%flags299280%_
           _%lock299282%_))))
    (define make-gc-table__2
      (lambda (_%size-hint299284%_ _%klass299285%_ _%flags299286%_)
        (let ((_%lock299288%_ '#f))
          (make-gc-table__%
           _%size-hint299284%_
           _%klass299285%_
           _%flags299286%_
           _%lock299288%_))))
    (define make-gc-table
      (lambda _g301703_
        (let ((_g301704_ (##length _g301703_)))
          (cond ((##fx= _g301704_ 1) (apply make-gc-table__0 _g301703_))
                ((##fx= _g301704_ 2) (apply make-gc-table__1 _g301703_))
                ((##fx= _g301704_ 3) (apply make-gc-table__2 _g301703_))
                ((##fx= _g301704_ 4) (apply make-gc-table__% _g301703_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table
                  _g301703_))))))
    (define make-gc-table/lock__%
      (lambda (_%size-hint299236%_ _%klass299237%_ _%flags299238%_)
        (make-gc-table__%
         _%size-hint299236%_
         _%klass299237%_
         _%flags299238%_
         (vector '0 '#f))))
    (define make-gc-table/lock__0
      (lambda (_%size-hint299243%_)
        (let* ((_%klass299245%_ __gc-table::t) (_%flags299247%_ '0))
          (make-gc-table/lock__%
           _%size-hint299243%_
           _%klass299245%_
           _%flags299247%_))))
    (define make-gc-table/lock__1
      (lambda (_%size-hint299249%_ _%klass299250%_)
        (let ((_%flags299252%_ '0))
          (make-gc-table/lock__%
           _%size-hint299249%_
           _%klass299250%_
           _%flags299252%_))))
    (define make-gc-table/lock
      (lambda _g301705_
        (let ((_g301706_ (##length _g301705_)))
          (cond ((##fx= _g301706_ 1) (apply make-gc-table/lock__0 _g301705_))
                ((##fx= _g301706_ 2) (apply make-gc-table/lock__1 _g301705_))
                ((##fx= _g301706_ 3) (apply make-gc-table/lock__% _g301705_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table/lock
                  _g301705_))))))
    (define __gc-table-immediate
      (lambda (_%tab299227%_)
        (let ((_%$e299229%_ (&gc-table-immediate _%tab299227%_)))
          (if _%$e299229%_
              _%$e299229%_
              (let ((_%immediate299233%_ (make-immediate-table__% '#f '0)))
                (&gc-table-immediate-set! _%tab299227%_ _%immediate299233%_)
                _%immediate299233%_)))))
    (define __gc-table-new
      (lambda (_%size299217%_ _%flags299218%_)
        (let* ((_%flags299220%_
                (##fxand _%flags299218%_
                         (fxnot (macro-gc-hash-table-flag-need-rehash))))
               (_%flags299222%_
                (fxior _%flags299220%_
                       (macro-gc-hash-table-flag-mem-alloc-keys)))
               (_%gcht299224%_
                (##gc-hash-table-allocate
                 _%size299217%_
                 _%flags299222%_
                 __gc-table-loads)))
          _%gcht299224%_)))
    (define __gc-table-e
      (lambda (_%tab299212%_)
        (declare (not interrupts-enabled))
        (let ((_%gcht299215%_ (&gc-table-gcht _%tab299212%_)))
          (if (##fx= '0
                     (fxand (macro-gc-hash-table-flags _%gcht299215%_)
                            (macro-gc-hash-table-flag-need-rehash)))
              _%gcht299215%_
              (begin
                (__gc-table-rehash! _%tab299212%_)
                (&gc-table-gcht _%tab299212%_))))))
    (define __gc-table-rehash!
      (lambda (_%tab299203%_)
        (let* ((_%old-table299205%_ (&gc-table-gcht _%tab299203%_))
               (_%new-table299207%_
                (##gc-hash-table-resize! _%old-table299205%_ __gc-table-loads))
               (_%gcht299209%_
                (##gc-hash-table-rehash!
                 _%old-table299205%_
                 _%new-table299207%_)))
          (&gc-table-gcht-set! _%tab299203%_ _%gcht299209%_))))
    (define gc-table-ref
      (lambda (_%tab299187%_ _%key299188%_ _%default299189%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key299188%_)
            (let* ((_%gcht299193%_ (__gc-table-e _%tab299187%_))
                   (_%value299195%_
                    (##gc-hash-table-ref _%gcht299193%_ _%key299188%_)))
              (if (eq? _%value299195%_ (macro-unused-obj))
                  _%default299189%_
                  _%value299195%_))
            (let ((_%$e299197%_ (&gc-table-immediate _%tab299187%_)))
              (if _%$e299197%_
                  ((lambda (_%immediate299200%_)
                     (immediate-table-ref
                      _%immediate299200%_
                      _%key299188%_
                      _%default299189%_))
                   _%$e299197%_)
                  _%default299189%_)))))
    (define gc-table-ref/lock
      (lambda (_%tab299161%_ _%key299162%_ _%default299163%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again299167%_ ((_%spin299170%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab299161%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab299161%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin299170%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again299167%_ (##fx+ _%spin299170%_ '1)))
                    (let ((_%owner299176%_
                           (##vector-ref (&gc-table-lock _%tab299161%_) '1)))
                      (if (eq? _%owner299176%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner299176%_)
                              (let () (##thread-yield!) (_%again299167%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r299182%_
               (gc-table-ref _%tab299161%_ _%key299162%_ _%default299163%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab299161%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab299161%_) '0 '0 '1)))
          _%$r299182%_)))
    (define gc-table-set!
      (lambda (_%tab299154%_ _%key299155%_ _%value299156%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key299155%_)
            (let ((_%gcht299159%_ (__gc-table-e _%tab299154%_)))
              (if (##gc-hash-table-set!
                   _%gcht299159%_
                   _%key299155%_
                   _%value299156%_)
                  (begin
                    (__gc-table-rehash! _%tab299154%_)
                    (gc-table-set!
                     _%tab299154%_
                     _%key299155%_
                     _%value299156%_))
                  '#!void))
            (immediate-table-set!
             (__gc-table-immediate _%tab299154%_)
             _%key299155%_
             _%value299156%_))))
    (define gc-table-set/lock!
      (lambda (_%tab299128%_ _%key299129%_ _%value299130%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again299134%_ ((_%spin299137%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab299128%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab299128%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin299137%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again299134%_ (##fx+ _%spin299137%_ '1)))
                    (let ((_%owner299143%_
                           (##vector-ref (&gc-table-lock _%tab299128%_) '1)))
                      (if (eq? _%owner299143%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner299143%_)
                              (let () (##thread-yield!) (_%again299134%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r299149%_
               (gc-table-set! _%tab299128%_ _%key299129%_ _%value299130%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab299128%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab299128%_) '0 '0 '1)))
          _%$r299149%_)))
    (define gc-table-update!
      (lambda (_%tab299121%_ _%key299122%_ _%update299123%_ _%default299124%_)
        (if (##mem-allocated? _%key299122%_)
            (let ((_%value299126%_
                   (gc-table-ref
                    _%tab299121%_
                    _%key299122%_
                    _%default299124%_)))
              (gc-table-set!
               _%tab299121%_
               _%key299122%_
               (_%update299123%_ _%value299126%_)))
            (immediate-table-update!
             (__gc-table-immediate _%tab299121%_)
             _%key299122%_
             _%update299123%_
             _%default299124%_))))
    (define gc-table-update!/lock
      (lambda (_%tab299094%_ _%key299095%_ _%update299096%_ _%default299097%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again299101%_ ((_%spin299104%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab299094%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab299094%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin299104%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again299101%_ (##fx+ _%spin299104%_ '1)))
                    (let ((_%owner299110%_
                           (##vector-ref (&gc-table-lock _%tab299094%_) '1)))
                      (if (eq? _%owner299110%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner299110%_)
                              (let () (##thread-yield!) (_%again299101%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r299116%_
               (gc-table-update!
                _%tab299094%_
                _%key299095%_
                _%update299096%_
                _%default299097%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab299094%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab299094%_) '0 '0 '1)))
          _%$r299116%_)))
    (define gc-table-delete!
      (lambda (_%tab299082%_ _%key299083%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key299083%_)
            (let ((_%gcht299087%_ (__gc-table-e _%tab299082%_)))
              (if (##gc-hash-table-set!
                   _%gcht299087%_
                   _%key299083%_
                   (macro-absent-obj))
                  (begin
                    (__gc-table-rehash! _%tab299082%_)
                    (gc-table-delete! _%tab299082%_ _%key299083%_))
                  '#!void))
            (let ((_%$e299089%_ (&gc-table-immediate _%tab299082%_)))
              (if _%$e299089%_
                  ((lambda (_%immediate299092%_)
                     (immediate-table-delete!
                      _%immediate299092%_
                      _%key299083%_))
                   _%$e299089%_)
                  '#!void)))))
    (define gc-table-delete!/lock
      (lambda (_%tab299057%_ _%key299058%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again299062%_ ((_%spin299065%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab299057%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab299057%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin299065%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again299062%_ (##fx+ _%spin299065%_ '1)))
                    (let ((_%owner299071%_
                           (##vector-ref (&gc-table-lock _%tab299057%_) '1)))
                      (if (eq? _%owner299071%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner299071%_)
                              (let () (##thread-yield!) (_%again299062%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r299077%_ (gc-table-delete! _%tab299057%_ _%key299058%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab299057%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab299057%_) '0 '0 '1)))
          _%$r299077%_)))
    (define gc-table-for-each
      (lambda (_%tab299046%_ _%proc299047%_)
        (declare (not interrupts-enabled))
        (begin
          (let ((_%gcht299050%_ (__gc-table-e _%tab299046%_)))
            (##gc-hash-table-for-each _%proc299047%_ _%gcht299050%_))
          (let ((_%$e299052%_ (&gc-table-immediate _%tab299046%_)))
            (if _%$e299052%_
                ((lambda (_%immediate299055%_)
                   (raw-table-for-each _%immediate299055%_ _%proc299047%_))
                 _%$e299052%_)
                '#!void)))))
    (define gc-table-for-each/lock
      (lambda (_%tab299021%_ _%proc299022%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again299026%_ ((_%spin299029%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab299021%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab299021%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin299029%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again299026%_ (##fx+ _%spin299029%_ '1)))
                    (let ((_%owner299035%_
                           (##vector-ref (&gc-table-lock _%tab299021%_) '1)))
                      (if (eq? _%owner299035%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner299035%_)
                              (let () (##thread-yield!) (_%again299026%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r299041%_ (gc-table-for-each _%tab299021%_ _%proc299022%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab299021%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab299021%_) '0 '0 '1)))
          _%$r299041%_)))
    (define gc-table-copy
      (lambda (_%tab299009%_)
        (let* ((_%gcht299011%_ (__gc-table-e _%tab299009%_))
               (_%new-table299013%_
                (__gc-table-new
                 (macro-gc-hash-table-count _%gcht299011%_)
                 (macro-gc-hash-table-flags _%gcht299011%_)))
               (_%result299015%_
                (##structure
                 (##structure-type _%tab299009%_)
                 _%new-table299013%_
                 '#f)))
          (gc-table-for-each
           _%tab299009%_
           (lambda (_%k299018%_ _%v299019%_)
             (gc-table-set! _%result299015%_ _%k299018%_ _%v299019%_)))
          _%result299015%_)))
    (define gc-table-copy/lock
      (lambda (_%tab298985%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again298989%_ ((_%spin298992%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab298985%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab298985%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin298992%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again298989%_ (##fx+ _%spin298992%_ '1)))
                    (let ((_%owner298998%_
                           (##vector-ref (&gc-table-lock _%tab298985%_) '1)))
                      (if (eq? _%owner298998%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner298998%_)
                              (let () (##thread-yield!) (_%again298989%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r299004%_ (gc-table-copy _%tab298985%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab298985%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab298985%_) '0 '0 '1)))
          _%$r299004%_)))
    (define gc-table-clear!
      (lambda (_%tab298978%_)
        (let* ((_%gcht298980%_ (__gc-table-e _%tab298978%_))
               (_%new-table298982%_
                (__gc-table-new
                 '16
                 (macro-gc-hash-table-flags _%gcht298980%_))))
          (&gc-table-gcht-set! _%tab298978%_ _%new-table298982%_)
          (&gc-table-immediate-set! _%tab298978%_ '#f))))
    (define gc-table-clear!/lock
      (lambda (_%tab298954%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again298958%_ ((_%spin298961%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab298954%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab298954%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin298961%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again298958%_ (##fx+ _%spin298961%_ '1)))
                    (let ((_%owner298967%_
                           (##vector-ref (&gc-table-lock _%tab298954%_) '1)))
                      (if (eq? _%owner298967%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner298967%_)
                              (let () (##thread-yield!) (_%again298958%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r298973%_ (gc-table-clear! _%tab298954%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab298954%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab298954%_) '0 '0 '1)))
          _%$r298973%_)))
    (define gc-table-length
      (lambda (_%tab298946%_)
        (let ((_%gcht298948%_ (__gc-table-e _%tab298946%_)))
          (fx+ (macro-gc-hash-table-count _%gcht298948%_)
               (let ((_%$e298950%_ (&gc-table-immediate _%tab298946%_)))
                 (if _%$e298950%_ (&raw-table-count _%$e298950%_) '0))))))
    (define gc-table-length/lock
      (lambda (_%tab298922%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again298926%_ ((_%spin298929%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab298922%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab298922%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin298929%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again298926%_ (##fx+ _%spin298929%_ '1)))
                    (let ((_%owner298935%_
                           (##vector-ref (&gc-table-lock _%tab298922%_) '1)))
                      (if (eq? _%owner298935%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner298935%_)
                              (let () (##thread-yield!) (_%again298926%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r298941%_ (gc-table-length _%tab298922%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab298922%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab298922%_) '0 '0 '1)))
          _%$r298941%_)))
    (define __object-eq-hash-lock (vector '0 '#f))
    (define __object-eq-hash-next '0)
    (define __object-eq-hash
      (make-gc-table__2
       '1024
       __gc-table::t
       (macro-gc-hash-table-flag-weak-keys)))
    (define __object->eq-hash
      (lambda (_%obj298890%_)
        (declare (not interrupts-enabled))
        (begin
          (let ()
            (declare (not interrupts-enabled))
            (let _%again298895%_ ((_%spin298898%_ '0))
              (if (##fx= (##vector-cas! __object-eq-hash-lock '0 '1 '0) '0)
                  (##vector-set! __object-eq-hash-lock '1 (current-thread))
                  (if (##fx< _%spin298898%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again298895%_ (##fx+ _%spin298898%_ '1)))
                      (let ((_%owner298904%_
                             (##vector-ref __object-eq-hash-lock '1)))
                        (if (eq? _%owner298904%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner298904%_)
                                (let () (##thread-yield!) (_%again298895%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r298917%_
                 (let ((_%val298910%_
                        (gc-table-ref __object-eq-hash _%obj298890%_ '#f)))
                   (if _%val298910%_
                       _%val298910%_
                       (let ((_%h298912%_
                              (fxand __object-eq-hash (macro-max-fixnum32))))
                         (set! __object-eq-hash-next
                               (let ((_%$e298914%_
                                      (##fx+? __object-eq-hash-next '1)))
                                 (if _%$e298914%_ _%$e298914%_ '0)))
                         (gc-table-set!
                          __object-eq-hash
                          _%obj298890%_
                          _%h298912%_)
                         _%h298912%_)))))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! __object-eq-hash-lock '1 '#f)
                (##vector-cas! __object-eq-hash-lock '0 '0 '1)))
            _%$r298917%_))))))
