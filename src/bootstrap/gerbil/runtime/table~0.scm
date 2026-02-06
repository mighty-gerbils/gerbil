(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1770405370)
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
      (lambda (_%tab116284%_)
        (##unchecked-structure-ref
         _%tab116284%_
         '1
         __table::t
         'raw-table-table)))
    (define &raw-table-count
      (lambda (_%tab116282%_)
        (##unchecked-structure-ref
         _%tab116282%_
         '2
         __table::t
         'raw-table-count)))
    (define &raw-table-free
      (lambda (_%tab116280%_)
        (##unchecked-structure-ref
         _%tab116280%_
         '3
         __table::t
         'raw-table-free)))
    (define &raw-table-hash
      (lambda (_%tab116278%_)
        (##unchecked-structure-ref
         _%tab116278%_
         '4
         __table::t
         'raw-table-hash)))
    (define &raw-table-test
      (lambda (_%tab116276%_)
        (##unchecked-structure-ref
         _%tab116276%_
         '5
         __table::t
         'raw-table-test)))
    (define &raw-table-seed
      (lambda (_%tab116274%_)
        (##unchecked-structure-ref
         _%tab116274%_
         '6
         __table::t
         'raw-table-seed)))
    (define &raw-table-lock
      (lambda (_%tab116272%_)
        (##unchecked-structure-ref
         _%tab116272%_
         '7
         __table::t
         'raw-table-lock)))
    (define &raw-table-table-set!
      (lambda (_%tab116269%_ _%val116270%_)
        (##unchecked-structure-set!
         _%tab116269%_
         _%val116270%_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_%tab116266%_ _%val116267%_)
        (##unchecked-structure-set!
         _%tab116266%_
         _%val116267%_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_%tab116263%_ _%val116264%_)
        (##unchecked-structure-set!
         _%tab116263%_
         _%val116264%_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_%tab116260%_ _%val116261%_)
        (##unchecked-structure-set!
         _%tab116260%_
         _%val116261%_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_%tab116257%_ _%val116258%_)
        (##unchecked-structure-set!
         _%tab116257%_
         _%val116258%_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_%tab116254%_ _%val116255%_)
        (##unchecked-structure-set!
         _%tab116254%_
         _%val116255%_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define &raw-table-lock-set!
      (lambda (_%tab116251%_ _%val116252%_)
        (##unchecked-structure-set!
         _%tab116251%_
         _%val116252%_
         '7
         __table::t
         'raw-table-lock-set!)))
    (define raw-table-size-hint->size
      (lambda (_%size-hint116249%_)
        (if (and (fixnum? _%size-hint116249%_) (##fx> _%size-hint116249%_ '0))
            (##fx* (fxmax '2 (expt '2 (integer-length _%size-hint116249%_)))
                   '4)
            '16)))
    (define make-raw-table__%
      (lambda (_%size-hint116214%_
               _%hash116215%_
               _%test116216%_
               _%seed116217%_
               _%lock116218%_)
        (let* ((_%size116220%_ (raw-table-size-hint->size _%size-hint116214%_))
               (_%table116222%_
                (##make-vector _%size116220%_ (macro-unused-obj))))
          (##structure
           __table::t
           _%table116222%_
           '0
           (##fxquotient _%size116220%_ '2)
           _%hash116215%_
           _%test116216%_
           _%seed116217%_
           _%lock116218%_))))
    (define make-raw-table__0
      (lambda (_%size-hint116228%_ _%hash116229%_ _%test116230%_)
        (let* ((_%seed116232%_ '0) (_%lock116234%_ '#f))
          (make-raw-table__%
           _%size-hint116228%_
           _%hash116229%_
           _%test116230%_
           _%seed116232%_
           _%lock116234%_))))
    (define make-raw-table__1
      (lambda (_%size-hint116236%_
               _%hash116237%_
               _%test116238%_
               _%seed116239%_)
        (let ((_%lock116241%_ '#f))
          (make-raw-table__%
           _%size-hint116236%_
           _%hash116237%_
           _%test116238%_
           _%seed116239%_
           _%lock116241%_))))
    (define make-raw-table
      (lambda _g116285_
        (let ((_g116286_ (##length _g116285_)))
          (cond ((##fx= _g116286_ 3) (apply make-raw-table__0 _g116285_))
                ((##fx= _g116286_ 4) (apply make-raw-table__1 _g116285_))
                ((##fx= _g116286_ 5) (apply make-raw-table__% _g116285_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g116285_))))))
    (define make-raw-table/lock__%
      (lambda (_%size-hint116194%_
               _%hash116195%_
               _%test116196%_
               _%seed116197%_)
        (make-raw-table__%
         _%size-hint116194%_
         _%hash116195%_
         _%test116196%_
         _%seed116197%_
         (vector '0 '#f))))
    (define make-raw-table/lock__0
      (lambda (_%size-hint116202%_ _%hash116203%_ _%test116204%_)
        (let ((_%seed116206%_ '0))
          (make-raw-table/lock__%
           _%size-hint116202%_
           _%hash116203%_
           _%test116204%_
           _%seed116206%_))))
    (define make-raw-table/lock
      (lambda _g116287_
        (let ((_g116288_ (##length _g116287_)))
          (cond ((##fx= _g116288_ 3) (apply make-raw-table/lock__0 _g116287_))
                ((##fx= _g116288_ 4) (apply make-raw-table/lock__% _g116287_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table/lock
                  _g116287_))))))
    (define raw-table-length
      (lambda (_%tab116191%_) (&raw-table-count _%tab116191%_)))
    (define raw-table-length/lock
      (lambda (_%tab116166%_)
        (let ((_%lock116168%_ (&raw-table-lock _%tab116166%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again116173%_ ((_%spin116176%_ '0))
              (if (##fx= (##vector-cas! _%lock116168%_ '0 '1 '0) '0)
                  (##vector-set! _%lock116168%_ '1 (current-thread))
                  (if (##fx< _%spin116176%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again116173%_ (##fx+ _%spin116176%_ '1)))
                      (let ((_%owner116182%_ (##vector-ref _%lock116168%_ '1)))
                        (if (eq? _%owner116182%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner116182%_)
                                (let () (##thread-yield!) (_%again116173%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r116188%_ (&raw-table-count _%tab116166%_)))
            (##vector-set! _%lock116168%_ '1 '#f)
            (##vector-cas! _%lock116168%_ '0 '0 '1)
            _%$r116188%_))))
    (define raw-table-ref
      (lambda (_%tab116118%_ _%key116119%_ _%default116120%_)
        (let ((_%table116122%_ (&raw-table-table _%tab116118%_))
              (_%seed116123%_ (&raw-table-seed _%tab116118%_))
              (_%hash116124%_ (&raw-table-hash _%tab116118%_))
              (_%test116125%_ (&raw-table-test _%tab116118%_)))
          (let* ((_%h116127%_
                  (fxxor (_%hash116124%_ _%key116119%_) _%seed116123%_))
                 (_%size116130%_ (vector-length _%table116122%_))
                 (_%entries116133%_ (##fxquotient _%size116130%_ '2))
                 (_%start116136%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h116127%_ _%entries116133%_)
                   '1)))
            (let _%loop116140%_ ((_%probe116143%_ _%start116136%_)
                                 (_%i116145%_ '1)
                                 (_%deleted116147%_ '#f))
              (let ((_%k116150%_ (vector-ref _%table116122%_ _%probe116143%_)))
                (if (eq? _%k116150%_ (macro-unused-obj))
                    _%default116120%_
                    (if (eq? _%k116150%_ (macro-deleted-obj))
                        (_%loop116140%_
                         (let ((_%next-probe116155%_
                                (fx+ _%start116136%_
                                     _%i116145%_
                                     (fx* _%i116145%_ _%i116145%_))))
                           (##fxmodulo _%next-probe116155%_ _%size116130%_))
                         (##fx+ _%i116145%_ '1)
                         (let ((_%$e116158%_ _%deleted116147%_))
                           (if _%$e116158%_ _%$e116158%_ _%probe116143%_)))
                        (if (_%test116125%_ _%key116119%_ _%k116150%_)
                            (vector-ref
                             _%table116122%_
                             (##fx+ _%probe116143%_ '1))
                            (_%loop116140%_
                             (let ((_%next-probe116163%_
                                    (fx+ _%start116136%_
                                         _%i116145%_
                                         (fx* _%i116145%_ _%i116145%_))))
                               (##fxmodulo
                                _%next-probe116163%_
                                _%size116130%_))
                             (##fx+ _%i116145%_ '1)
                             _%deleted116147%_))))))))))
    (define raw-table-ref/lock
      (lambda (_%tab116091%_ _%key116092%_ _%default116093%_)
        (let ((_%lock116095%_ (&raw-table-lock _%tab116091%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again116100%_ ((_%spin116103%_ '0))
              (if (##fx= (##vector-cas! _%lock116095%_ '0 '1 '0) '0)
                  (##vector-set! _%lock116095%_ '1 (current-thread))
                  (if (##fx< _%spin116103%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again116100%_ (##fx+ _%spin116103%_ '1)))
                      (let ((_%owner116109%_ (##vector-ref _%lock116095%_ '1)))
                        (if (eq? _%owner116109%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner116109%_)
                                (let () (##thread-yield!) (_%again116100%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r116115%_
                 (raw-table-ref
                  _%tab116091%_
                  _%key116092%_
                  _%default116093%_)))
            (##vector-set! _%lock116095%_ '1 '#f)
            (##vector-cas! _%lock116095%_ '0 '0 '1)
            _%$r116115%_))))
    (define raw-table-set!
      (lambda (_%tab116087%_ _%key116088%_ _%value116089%_)
        (if (##fx< (&raw-table-free _%tab116087%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab116087%_))
                    '4))
            (__raw-table-rehash! _%tab116087%_)
            '#!void)
        (__raw-table-set! _%tab116087%_ _%key116088%_ _%value116089%_)))
    (define raw-table-set!/lock
      (lambda (_%tab116060%_ _%key116061%_ _%value116062%_)
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
                 (raw-table-set! _%tab116060%_ _%key116061%_ _%value116062%_)))
            (##vector-set! _%lock116064%_ '1 '#f)
            (##vector-cas! _%lock116064%_ '0 '0 '1)
            _%$r116084%_))))
    (define raw-table-update!
      (lambda (_%tab116055%_ _%key116056%_ _%update116057%_ _%default116058%_)
        (if (##fx< (&raw-table-free _%tab116055%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab116055%_))
                    '4))
            (__raw-table-rehash! _%tab116055%_)
            '#!void)
        (__raw-table-update!
         _%tab116055%_
         _%key116056%_
         _%update116057%_
         _%default116058%_)))
    (define raw-table-update!/lock
      (lambda (_%tab116027%_ _%key116028%_ _%update116029%_ _%default116030%_)
        (let ((_%lock116032%_ (&raw-table-lock _%tab116027%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again116037%_ ((_%spin116040%_ '0))
              (if (##fx= (##vector-cas! _%lock116032%_ '0 '1 '0) '0)
                  (##vector-set! _%lock116032%_ '1 (current-thread))
                  (if (##fx< _%spin116040%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again116037%_ (##fx+ _%spin116040%_ '1)))
                      (let ((_%owner116046%_ (##vector-ref _%lock116032%_ '1)))
                        (if (eq? _%owner116046%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner116046%_)
                                (let () (##thread-yield!) (_%again116037%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r116052%_
                 (raw-table-update!
                  _%tab116027%_
                  _%key116028%_
                  _%update116029%_
                  _%default116030%_)))
            (##vector-set! _%lock116032%_ '1 '#f)
            (##vector-cas! _%lock116032%_ '0 '0 '1)
            _%$r116052%_))))
    (define raw-table-delete!
      (lambda (_%tab115984%_ _%key115985%_)
        (let ((_%table115987%_ (&raw-table-table _%tab115984%_))
              (_%seed115988%_ (&raw-table-seed _%tab115984%_))
              (_%hash115989%_ (&raw-table-hash _%tab115984%_))
              (_%test115990%_ (&raw-table-test _%tab115984%_)))
          (let* ((_%h115992%_
                  (fxxor (_%hash115989%_ _%key115985%_) _%seed115988%_))
                 (_%size115995%_ (vector-length _%table115987%_))
                 (_%entries115998%_ (##fxquotient _%size115995%_ '2))
                 (_%start116001%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h115992%_ _%entries115998%_)
                   '1)))
            (let _%loop116005%_ ((_%probe116008%_ _%start116001%_)
                                 (_%i116010%_ '1))
              (let ((_%k116013%_ (vector-ref _%table115987%_ _%probe116008%_)))
                (if (eq? _%k116013%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k116013%_ (macro-deleted-obj))
                        (_%loop116005%_
                         (let ((_%next-probe116018%_
                                (fx+ _%start116001%_
                                     _%i116010%_
                                     (fx* _%i116010%_ _%i116010%_))))
                           (##fxmodulo _%next-probe116018%_ _%size115995%_))
                         (##fx+ _%i116010%_ '1))
                        (if (_%test115990%_ _%key115985%_ _%k116013%_)
                            (let ()
                              (vector-set!
                               _%table115987%_
                               _%probe116008%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table115987%_
                               (##fx+ _%probe116008%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab115984%_
                                  (##fx- (&raw-table-count _%tab115984%_)
                                         '1)))))
                            (_%loop116005%_
                             (let ((_%next-probe116024%_
                                    (fx+ _%start116001%_
                                         _%i116010%_
                                         (fx* _%i116010%_ _%i116010%_))))
                               (##fxmodulo
                                _%next-probe116024%_
                                _%size115995%_))
                             (##fx+ _%i116010%_ '1)))))))))))
    (define raw-table-delete!/lock
      (lambda (_%tab115958%_ _%key115959%_)
        (let ((_%lock115961%_ (&raw-table-lock _%tab115958%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again115966%_ ((_%spin115969%_ '0))
              (if (##fx= (##vector-cas! _%lock115961%_ '0 '1 '0) '0)
                  (##vector-set! _%lock115961%_ '1 (current-thread))
                  (if (##fx< _%spin115969%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again115966%_ (##fx+ _%spin115969%_ '1)))
                      (let ((_%owner115975%_ (##vector-ref _%lock115961%_ '1)))
                        (if (eq? _%owner115975%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner115975%_)
                                (let () (##thread-yield!) (_%again115966%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r115981%_ (raw-table-delete! _%tab115958%_ _%key115959%_)))
            (##vector-set! _%lock115961%_ '1 '#f)
            (##vector-cas! _%lock115961%_ '0 '0 '1)
            _%$r115981%_))))
    (define raw-table-for-each
      (lambda (_%tab115942%_ _%proc115943%_)
        (let* ((_%table115945%_ (&raw-table-table _%tab115942%_))
               (_%size115947%_ (vector-length _%table115945%_)))
          (let _%loop115950%_ ((_%i115952%_ '0))
            (if (##fx< _%i115952%_ _%size115947%_)
                (begin
                  (let ((_%key115954%_
                         (vector-ref _%table115945%_ _%i115952%_)))
                    (if (if (eq? _%key115954%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key115954%_ (macro-deleted-obj))))
                        (let ((_%value115956%_
                               (vector-ref
                                _%table115945%_
                                (##fx+ _%i115952%_ '1))))
                          (_%proc115943%_ _%key115954%_ _%value115956%_))
                        '#!void))
                  (_%loop115950%_ (##fx+ _%i115952%_ '2)))
                '#!void)))))
    (define raw-table-for-each/lock
      (lambda (_%tab115916%_ _%proc115917%_)
        (let ((_%lock115919%_ (&raw-table-lock _%tab115916%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again115924%_ ((_%spin115927%_ '0))
              (if (##fx= (##vector-cas! _%lock115919%_ '0 '1 '0) '0)
                  (##vector-set! _%lock115919%_ '1 (current-thread))
                  (if (##fx< _%spin115927%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again115924%_ (##fx+ _%spin115927%_ '1)))
                      (let ((_%owner115933%_ (##vector-ref _%lock115919%_ '1)))
                        (if (eq? _%owner115933%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner115933%_)
                                (let () (##thread-yield!) (_%again115924%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r115939%_
                 (raw-table-for-each _%tab115916%_ _%proc115917%_)))
            (##vector-set! _%lock115919%_ '1 '#f)
            (##vector-cas! _%lock115919%_ '0 '0 '1)
            _%$r115939%_))))
    (define raw-table-copy
      (lambda (_%tab115912%_)
        (let ((_%new-tab115914%_ (##structure-copy _%tab115912%_)))
          (&raw-table-table-set!
           _%new-tab115914%_
           (vector-copy (&raw-table-table _%tab115912%_)))
          _%new-tab115914%_)))
    (define raw-table-copy/lock
      (lambda (_%tab115887%_)
        (let ((_%lock115889%_ (&raw-table-lock _%tab115887%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again115894%_ ((_%spin115897%_ '0))
              (if (##fx= (##vector-cas! _%lock115889%_ '0 '1 '0) '0)
                  (##vector-set! _%lock115889%_ '1 (current-thread))
                  (if (##fx< _%spin115897%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again115894%_ (##fx+ _%spin115897%_ '1)))
                      (let ((_%owner115903%_ (##vector-ref _%lock115889%_ '1)))
                        (if (eq? _%owner115903%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner115903%_)
                                (let () (##thread-yield!) (_%again115894%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r115909%_ (raw-table-copy _%tab115887%_)))
            (##vector-set! _%lock115889%_ '1 '#f)
            (##vector-cas! _%lock115889%_ '0 '0 '1)
            _%$r115909%_))))
    (define raw-table-clear!
      (lambda (_%tab115885%_)
        (vector-fill! (&raw-table-table _%tab115885%_) (macro-unused-obj))
        (&raw-table-count-set! _%tab115885%_ '0)
        (&raw-table-free-set!
         _%tab115885%_
         (##fxquotient (vector-length (&raw-table-table _%tab115885%_)) '2))))
    (define raw-table-clear!/lock
      (lambda (_%tab115860%_)
        (let ((_%lock115862%_ (&raw-table-lock _%tab115860%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again115867%_ ((_%spin115870%_ '0))
              (if (##fx= (##vector-cas! _%lock115862%_ '0 '1 '0) '0)
                  (##vector-set! _%lock115862%_ '1 (current-thread))
                  (if (##fx< _%spin115870%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again115867%_ (##fx+ _%spin115870%_ '1)))
                      (let ((_%owner115876%_ (##vector-ref _%lock115862%_ '1)))
                        (if (eq? _%owner115876%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner115876%_)
                                (let () (##thread-yield!) (_%again115867%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r115882%_ (raw-table-clear! _%tab115860%_)))
            (##vector-set! _%lock115862%_ '1 '#f)
            (##vector-cas! _%lock115862%_ '0 '0 '1)
            _%$r115882%_))))
    (define __raw-table-set!
      (lambda (_%tab115810%_ _%key115811%_ _%value115812%_)
        (let ((_%table115814%_ (&raw-table-table _%tab115810%_))
              (_%seed115815%_ (&raw-table-seed _%tab115810%_))
              (_%hash115816%_ (&raw-table-hash _%tab115810%_))
              (_%test115817%_ (&raw-table-test _%tab115810%_)))
          (let* ((_%h115819%_
                  (fxxor (_%hash115816%_ _%key115811%_) _%seed115815%_))
                 (_%size115822%_ (vector-length _%table115814%_))
                 (_%entries115825%_ (##fxquotient _%size115822%_ '2))
                 (_%start115828%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h115819%_ _%entries115825%_)
                   '1)))
            (let _%loop115832%_ ((_%probe115835%_ _%start115828%_)
                                 (_%i115837%_ '1)
                                 (_%deleted115839%_ '#f))
              (let ((_%k115842%_ (vector-ref _%table115814%_ _%probe115835%_)))
                (if (eq? _%k115842%_ (macro-unused-obj))
                    (if _%deleted115839%_
                        (begin
                          (vector-set!
                           _%table115814%_
                           _%deleted115839%_
                           _%key115811%_)
                          (vector-set!
                           _%table115814%_
                           (##fx+ _%deleted115839%_ '1)
                           _%value115812%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab115810%_
                              (##fx+ (&raw-table-count _%tab115810%_) '1)))))
                        (begin
                          (vector-set!
                           _%table115814%_
                           _%probe115835%_
                           _%key115811%_)
                          (vector-set!
                           _%table115814%_
                           (##fx+ _%probe115835%_ '1)
                           _%value115812%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab115810%_
                              (##fx- (&raw-table-free _%tab115810%_) '1))
                             (&raw-table-count-set!
                              _%tab115810%_
                              (##fx+ (&raw-table-count _%tab115810%_) '1))))))
                    (if (eq? _%k115842%_ (macro-deleted-obj))
                        (_%loop115832%_
                         (let ((_%next-probe115849%_
                                (fx+ _%start115828%_
                                     _%i115837%_
                                     (fx* _%i115837%_ _%i115837%_))))
                           (##fxmodulo _%next-probe115849%_ _%size115822%_))
                         (##fx+ _%i115837%_ '1)
                         (let ((_%$e115852%_ _%deleted115839%_))
                           (if _%$e115852%_ _%$e115852%_ _%probe115835%_)))
                        (if (_%test115817%_ _%key115811%_ _%k115842%_)
                            (let ()
                              (vector-set!
                               _%table115814%_
                               _%probe115835%_
                               _%key115811%_)
                              (vector-set!
                               _%table115814%_
                               (##fx+ _%probe115835%_ '1)
                               _%value115812%_))
                            (_%loop115832%_
                             (let ((_%next-probe115857%_
                                    (fx+ _%start115828%_
                                         _%i115837%_
                                         (fx* _%i115837%_ _%i115837%_))))
                               (##fxmodulo
                                _%next-probe115857%_
                                _%size115822%_))
                             (##fx+ _%i115837%_ '1)
                             _%deleted115839%_))))))))))
    (define __raw-table-update!
      (lambda (_%tab115759%_ _%key115760%_ _%update115761%_ _%default115762%_)
        (let ((_%table115764%_ (&raw-table-table _%tab115759%_))
              (_%seed115765%_ (&raw-table-seed _%tab115759%_))
              (_%hash115766%_ (&raw-table-hash _%tab115759%_))
              (_%test115767%_ (&raw-table-test _%tab115759%_)))
          (let* ((_%h115769%_
                  (fxxor (_%hash115766%_ _%key115760%_) _%seed115765%_))
                 (_%size115772%_ (vector-length _%table115764%_))
                 (_%entries115775%_ (##fxquotient _%size115772%_ '2))
                 (_%start115778%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h115769%_ _%entries115775%_)
                   '1)))
            (let _%loop115782%_ ((_%probe115785%_ _%start115778%_)
                                 (_%i115787%_ '1)
                                 (_%deleted115789%_ '#f))
              (let ((_%k115792%_ (vector-ref _%table115764%_ _%probe115785%_)))
                (if (eq? _%k115792%_ (macro-unused-obj))
                    (if _%deleted115789%_
                        (begin
                          (vector-set!
                           _%table115764%_
                           _%deleted115789%_
                           _%key115760%_)
                          (vector-set!
                           _%table115764%_
                           (##fx+ _%deleted115789%_ '1)
                           (_%update115761%_ _%default115762%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab115759%_
                              (##fx+ (&raw-table-count _%tab115759%_) '1)))))
                        (begin
                          (vector-set!
                           _%table115764%_
                           _%probe115785%_
                           _%key115760%_)
                          (vector-set!
                           _%table115764%_
                           (##fx+ _%probe115785%_ '1)
                           (_%update115761%_ _%default115762%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab115759%_
                              (##fx- (&raw-table-free _%tab115759%_) '1))
                             (&raw-table-count-set!
                              _%tab115759%_
                              (##fx+ (&raw-table-count _%tab115759%_) '1))))))
                    (if (eq? _%k115792%_ (macro-deleted-obj))
                        (_%loop115782%_
                         (let ((_%next-probe115799%_
                                (fx+ _%start115778%_
                                     _%i115787%_
                                     (fx* _%i115787%_ _%i115787%_))))
                           (##fxmodulo _%next-probe115799%_ _%size115772%_))
                         (##fx+ _%i115787%_ '1)
                         (let ((_%$e115802%_ _%deleted115789%_))
                           (if _%$e115802%_ _%$e115802%_ _%probe115785%_)))
                        (if (_%test115767%_ _%key115760%_ _%k115792%_)
                            (let ()
                              (vector-set!
                               _%table115764%_
                               _%probe115785%_
                               _%key115760%_)
                              (vector-set!
                               _%table115764%_
                               (##fx+ _%probe115785%_ '1)
                               (_%update115761%_
                                (vector-ref
                                 _%table115764%_
                                 (##fx+ _%probe115785%_ '1)))))
                            (_%loop115782%_
                             (let ((_%next-probe115807%_
                                    (fx+ _%start115778%_
                                         _%i115787%_
                                         (fx* _%i115787%_ _%i115787%_))))
                               (##fxmodulo
                                _%next-probe115807%_
                                _%size115772%_))
                             (##fx+ _%i115787%_ '1)
                             _%deleted115789%_))))))))))
    (define __raw-table-rehash!
      (lambda (_%tab115740%_)
        (let* ((_%old-table115742%_ (&raw-table-table _%tab115740%_))
               (_%old-size115744%_ (vector-length _%old-table115742%_))
               (_%new-size115746%_
                (if (##fx< (&raw-table-count _%tab115740%_)
                           (##fxquotient _%old-size115744%_ '4))
                    (vector-length _%old-table115742%_)
                    (##fx* '2 (vector-length _%old-table115742%_))))
               (_%new-table115748%_
                (##make-vector _%new-size115746%_ (macro-unused-obj))))
          (&raw-table-table-set! _%tab115740%_ _%new-table115748%_)
          (&raw-table-count-set! _%tab115740%_ '0)
          (&raw-table-free-set!
           _%tab115740%_
           (##fxquotient _%new-size115746%_ '2))
          (let _%lp115751%_ ((_%i115753%_ '0))
            (if (##fx< _%i115753%_ _%old-size115744%_)
                (begin
                  (let ((_%key115755%_
                         (vector-ref _%old-table115742%_ _%i115753%_)))
                    (if (if (eq? _%key115755%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key115755%_ (macro-deleted-obj))))
                        (let ((_%value115757%_
                               (vector-ref
                                _%old-table115742%_
                                (##fx+ _%i115753%_ '1))))
                          (__raw-table-set!
                           _%tab115740%_
                           _%key115755%_
                           _%value115757%_))
                        '#!void))
                  (_%lp115751%_ (##fx+ _%i115753%_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_%obj115732%_)
        (let ((_%t115734%_ (##type _%obj115732%_)))
          (if (##fx= (##fxand _%t115734%_ '1) '0)
              (fxand (##type-cast _%obj115732%_ (macro-type-fixnum))
                     (macro-max-fixnum32))
              (if (symbolic? _%obj115732%_)
                  (##symbol-hash _%obj115732%_)
                  (if (procedure? _%obj115732%_)
                      (procedure-hash _%obj115732%_)
                      (fxand (__eq-hash _%obj115732%_)
                             (macro-max-fixnum32))))))))
    (define procedure-hash
      (lambda (_%obj115728%_)
        (let ((_%h115730%_
               (if (##closure? _%obj115728%_)
                   (__eq-hash _%obj115728%_)
                   (##type-cast _%obj115728%_ '0))))
          (fxand _%h115730%_ (macro-max-fixnum32)))))
    (define __eq-hash
      (lambda (_%obj115725%_)
        (declare (not interrupts-enabled))
        (__object->eq-hash _%obj115725%_)))
    (define eqv-hash
      (lambda (_%obj115715%_)
        (letrec ((_%combine115717%_
                  (lambda (_%a115722%_ _%b115723%_)
                    (fxand (##fx* (##fx+ _%a115722%_
                                         (fxarithmetic-shift-left
                                          _%b115723%_
                                          '1))
                                  '331804471)
                           (macro-max-fixnum32))))
                 (_%hash115718%_
                  (lambda (_%obj115720%_)
                    (macro-number-dispatch
                     _%obj115720%_
                     (eq-hash _%obj115720%_)
                     (fxand _%obj115720%_ (macro-max-fixnum32))
                     (modulo _%obj115720%_ '331804481)
                     (_%combine115717%_
                      (_%hash115718%_ (macro-ratnum-numerator _%obj115720%_))
                      (_%hash115718%_
                       (macro-ratnum-denominator _%obj115720%_)))
                     (_%combine115717%_
                      (##u16vector-ref _%obj115720%_ '0)
                      (_%combine115717%_
                       (##u16vector-ref _%obj115720%_ '1)
                       (_%combine115717%_
                        (##u16vector-ref _%obj115720%_ '2)
                        (##u16vector-ref _%obj115720%_ '3))))
                     (_%combine115717%_
                      (_%hash115718%_ (macro-cpxnum-real _%obj115720%_))
                      (_%hash115718%_ (macro-cpxnum-imag _%obj115720%_)))))))
          (_%hash115718%_ _%obj115715%_))))
    (define symbolic?
      (lambda (_%obj115710%_)
        (let ((_%$e115712%_ (symbol? _%obj115710%_)))
          (if _%$e115712%_ _%$e115712%_ (keyword? _%obj115710%_)))))
    (define symbolic-hash
      (lambda (_%obj115708%_) (##symbol-hash _%obj115708%_)))
    (define string-hash
      (lambda (_%obj115706%_) (##string=?-hash _%obj115706%_)))
    (define immediate-hash
      (lambda (_%obj115704%_) (##type-cast _%obj115704%_ (macro-type-fixnum))))
    (define make-eq-table__%
      (lambda (_%size-hint115686%_ _%seed115687%_)
        (make-raw-table__1 _%size-hint115686%_ eq-hash eq? _%seed115687%_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_%size-hint115693%_ '#f) (_%seed115695%_ '0))
          (make-eq-table__% _%size-hint115693%_ _%seed115695%_))))
    (define make-eq-table__1
      (lambda (_%size-hint115697%_)
        (let ((_%seed115699%_ '0))
          (make-eq-table__% _%size-hint115697%_ _%seed115699%_))))
    (define make-eq-table
      (lambda _g116289_
        (let ((_g116290_ (##length _g116289_)))
          (cond ((##fx= _g116290_ 0) (apply make-eq-table__0 _g116289_))
                ((##fx= _g116290_ 1) (apply make-eq-table__1 _g116289_))
                ((##fx= _g116290_ 2) (apply make-eq-table__% _g116289_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g116289_))))))
    (define make-eq-table/lock__%
      (lambda (_%size-hint115666%_ _%seed115668%_)
        (make-raw-table/lock__%
         _%size-hint115666%_
         eq-hash
         eq?
         _%seed115668%_)))
    (define make-eq-table/lock__0
      (lambda ()
        (let* ((_%size-hint115674%_ '#f) (_%seed115676%_ '0))
          (make-eq-table/lock__% _%size-hint115674%_ _%seed115676%_))))
    (define make-eq-table/lock__1
      (lambda (_%size-hint115678%_)
        (let ((_%seed115680%_ '0))
          (make-eq-table/lock__% _%size-hint115678%_ _%seed115680%_))))
    (define make-eq-table/lock
      (lambda _g116291_
        (let ((_g116292_ (##length _g116291_)))
          (cond ((##fx= _g116292_ 0) (apply make-eq-table/lock__0 _g116291_))
                ((##fx= _g116292_ 1) (apply make-eq-table/lock__1 _g116291_))
                ((##fx= _g116292_ 2) (apply make-eq-table/lock__% _g116291_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table/lock
                  _g116291_))))))
    (define eq-table-ref
      (lambda (_%tab115619%_ _%key115620%_ _%default115621%_)
        (let ((_%table115623%_ (&raw-table-table _%tab115619%_))
              (_%seed115624%_ (&raw-table-seed _%tab115619%_)))
          (let* ((_%h115626%_ (fxxor (eq-hash _%key115620%_) _%seed115624%_))
                 (_%size115629%_ (vector-length _%table115623%_))
                 (_%entries115632%_ (##fxquotient _%size115629%_ '2))
                 (_%start115635%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h115626%_ _%entries115632%_)
                   '1)))
            (let _%loop115639%_ ((_%probe115642%_ _%start115635%_)
                                 (_%i115644%_ '1)
                                 (_%deleted115646%_ '#f))
              (let ((_%k115649%_ (vector-ref _%table115623%_ _%probe115642%_)))
                (if (eq? _%k115649%_ (macro-unused-obj))
                    _%default115621%_
                    (if (eq? _%k115649%_ (macro-deleted-obj))
                        (_%loop115639%_
                         (let ((_%next-probe115654%_
                                (fx+ _%start115635%_
                                     _%i115644%_
                                     (fx* _%i115644%_ _%i115644%_))))
                           (##fxmodulo _%next-probe115654%_ _%size115629%_))
                         (##fx+ _%i115644%_ '1)
                         (let ((_%$e115657%_ _%deleted115646%_))
                           (if _%$e115657%_ _%$e115657%_ _%probe115642%_)))
                        (if (eq? _%key115620%_ _%k115649%_)
                            (vector-ref
                             _%table115623%_
                             (##fx+ _%probe115642%_ '1))
                            (_%loop115639%_
                             (let ((_%next-probe115662%_
                                    (fx+ _%start115635%_
                                         _%i115644%_
                                         (fx* _%i115644%_ _%i115644%_))))
                               (##fxmodulo
                                _%next-probe115662%_
                                _%size115629%_))
                             (##fx+ _%i115644%_ '1)
                             _%deleted115646%_))))))))))
    (define eq-table-ref/lock
      (lambda (_%tab115592%_ _%key115593%_ _%default115594%_)
        (let ((_%lock115596%_ (&raw-table-lock _%tab115592%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again115601%_ ((_%spin115604%_ '0))
              (if (##fx= (##vector-cas! _%lock115596%_ '0 '1 '0) '0)
                  (##vector-set! _%lock115596%_ '1 (current-thread))
                  (if (##fx< _%spin115604%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again115601%_ (##fx+ _%spin115604%_ '1)))
                      (let ((_%owner115610%_ (##vector-ref _%lock115596%_ '1)))
                        (if (eq? _%owner115610%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner115610%_)
                                (let () (##thread-yield!) (_%again115601%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r115616%_
                 (eq-table-ref _%tab115592%_ _%key115593%_ _%default115594%_)))
            (##vector-set! _%lock115596%_ '1 '#f)
            (##vector-cas! _%lock115596%_ '0 '0 '1)
            _%$r115616%_))))
    (define __eq-table-set!
      (lambda (_%tab115544%_ _%key115545%_ _%value115546%_)
        (let ((_%table115548%_ (&raw-table-table _%tab115544%_))
              (_%seed115549%_ (&raw-table-seed _%tab115544%_)))
          (let* ((_%h115551%_ (fxxor (eq-hash _%key115545%_) _%seed115549%_))
                 (_%size115554%_ (vector-length _%table115548%_))
                 (_%entries115557%_ (##fxquotient _%size115554%_ '2))
                 (_%start115560%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h115551%_ _%entries115557%_)
                   '1)))
            (let _%loop115564%_ ((_%probe115567%_ _%start115560%_)
                                 (_%i115569%_ '1)
                                 (_%deleted115571%_ '#f))
              (let ((_%k115574%_ (vector-ref _%table115548%_ _%probe115567%_)))
                (if (eq? _%k115574%_ (macro-unused-obj))
                    (if _%deleted115571%_
                        (begin
                          (vector-set!
                           _%table115548%_
                           _%deleted115571%_
                           _%key115545%_)
                          (vector-set!
                           _%table115548%_
                           (##fx+ _%deleted115571%_ '1)
                           _%value115546%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab115544%_
                              (##fx+ (&raw-table-count _%tab115544%_) '1)))))
                        (begin
                          (vector-set!
                           _%table115548%_
                           _%probe115567%_
                           _%key115545%_)
                          (vector-set!
                           _%table115548%_
                           (##fx+ _%probe115567%_ '1)
                           _%value115546%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab115544%_
                              (##fx- (&raw-table-free _%tab115544%_) '1))
                             (&raw-table-count-set!
                              _%tab115544%_
                              (##fx+ (&raw-table-count _%tab115544%_) '1))))))
                    (if (eq? _%k115574%_ (macro-deleted-obj))
                        (_%loop115564%_
                         (let ((_%next-probe115581%_
                                (fx+ _%start115560%_
                                     _%i115569%_
                                     (fx* _%i115569%_ _%i115569%_))))
                           (##fxmodulo _%next-probe115581%_ _%size115554%_))
                         (##fx+ _%i115569%_ '1)
                         (let ((_%$e115584%_ _%deleted115571%_))
                           (if _%$e115584%_ _%$e115584%_ _%probe115567%_)))
                        (if (eq? _%key115545%_ _%k115574%_)
                            (let ()
                              (vector-set!
                               _%table115548%_
                               _%probe115567%_
                               _%key115545%_)
                              (vector-set!
                               _%table115548%_
                               (##fx+ _%probe115567%_ '1)
                               _%value115546%_))
                            (_%loop115564%_
                             (let ((_%next-probe115589%_
                                    (fx+ _%start115560%_
                                         _%i115569%_
                                         (fx* _%i115569%_ _%i115569%_))))
                               (##fxmodulo
                                _%next-probe115589%_
                                _%size115554%_))
                             (##fx+ _%i115569%_ '1)
                             _%deleted115571%_))))))))))
    (define eq-table-set!
      (lambda (_%tab115540%_ _%key115541%_ _%value115542%_)
        (if (##fx< (&raw-table-free _%tab115540%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab115540%_))
                    '4))
            (__raw-table-rehash! _%tab115540%_)
            '#!void)
        (__eq-table-set! _%tab115540%_ _%key115541%_ _%value115542%_)))
    (define eq-table-set!/lock
      (lambda (_%tab115512%_ _%key115513%_ _%value115514%_)
        (let ((_%lock115517%_ (&raw-table-lock _%tab115512%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again115522%_ ((_%spin115525%_ '0))
              (if (##fx= (##vector-cas! _%lock115517%_ '0 '1 '0) '0)
                  (##vector-set! _%lock115517%_ '1 (current-thread))
                  (if (##fx< _%spin115525%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again115522%_ (##fx+ _%spin115525%_ '1)))
                      (let ((_%owner115531%_ (##vector-ref _%lock115517%_ '1)))
                        (if (eq? _%owner115531%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner115531%_)
                                (let () (##thread-yield!) (_%again115522%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r115537%_
                 (eq-table-set! _%tab115512%_ _%key115513%_ _%value115514%_)))
            (##vector-set! _%lock115517%_ '1 '#f)
            (##vector-cas! _%lock115517%_ '0 '0 '1)
            _%$r115537%_))))
    (define __eq-table-update!
      (lambda (_%tab115463%_
               _%key115464%_
               _%eq-table-update!115465%_
               _%default115466%_)
        (let ((_%table115468%_ (&raw-table-table _%tab115463%_))
              (_%seed115469%_ (&raw-table-seed _%tab115463%_)))
          (let* ((_%h115471%_ (fxxor (eq-hash _%key115464%_) _%seed115469%_))
                 (_%size115474%_ (vector-length _%table115468%_))
                 (_%entries115477%_ (##fxquotient _%size115474%_ '2))
                 (_%start115480%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h115471%_ _%entries115477%_)
                   '1)))
            (let _%loop115484%_ ((_%probe115487%_ _%start115480%_)
                                 (_%i115489%_ '1)
                                 (_%deleted115491%_ '#f))
              (let ((_%k115494%_ (vector-ref _%table115468%_ _%probe115487%_)))
                (if (eq? _%k115494%_ (macro-unused-obj))
                    (if _%deleted115491%_
                        (begin
                          (vector-set!
                           _%table115468%_
                           _%deleted115491%_
                           _%key115464%_)
                          (vector-set!
                           _%table115468%_
                           (##fx+ _%deleted115491%_ '1)
                           (_%eq-table-update!115465%_ _%default115466%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab115463%_
                              (##fx+ (&raw-table-count _%tab115463%_) '1)))))
                        (begin
                          (vector-set!
                           _%table115468%_
                           _%probe115487%_
                           _%key115464%_)
                          (vector-set!
                           _%table115468%_
                           (##fx+ _%probe115487%_ '1)
                           (_%eq-table-update!115465%_ _%default115466%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab115463%_
                              (##fx- (&raw-table-free _%tab115463%_) '1))
                             (&raw-table-count-set!
                              _%tab115463%_
                              (##fx+ (&raw-table-count _%tab115463%_) '1))))))
                    (if (eq? _%k115494%_ (macro-deleted-obj))
                        (_%loop115484%_
                         (let ((_%next-probe115501%_
                                (fx+ _%start115480%_
                                     _%i115489%_
                                     (fx* _%i115489%_ _%i115489%_))))
                           (##fxmodulo _%next-probe115501%_ _%size115474%_))
                         (##fx+ _%i115489%_ '1)
                         (let ((_%$e115504%_ _%deleted115491%_))
                           (if _%$e115504%_ _%$e115504%_ _%probe115487%_)))
                        (if (eq? _%key115464%_ _%k115494%_)
                            (let ()
                              (vector-set!
                               _%table115468%_
                               _%probe115487%_
                               _%key115464%_)
                              (vector-set!
                               _%table115468%_
                               (##fx+ _%probe115487%_ '1)
                               (_%eq-table-update!115465%_
                                (vector-ref
                                 _%table115468%_
                                 (##fx+ _%probe115487%_ '1)))))
                            (_%loop115484%_
                             (let ((_%next-probe115509%_
                                    (fx+ _%start115480%_
                                         _%i115489%_
                                         (fx* _%i115489%_ _%i115489%_))))
                               (##fxmodulo
                                _%next-probe115509%_
                                _%size115474%_))
                             (##fx+ _%i115489%_ '1)
                             _%deleted115491%_))))))))))
    (define eq-table-update!
      (lambda (_%tab115458%_
               _%key115459%_
               _%eq-table-update!115460%_
               _%default115461%_)
        (if (##fx< (&raw-table-free _%tab115458%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab115458%_))
                    '4))
            (__raw-table-rehash! _%tab115458%_)
            '#!void)
        (__eq-table-update!
         _%tab115458%_
         _%key115459%_
         _%eq-table-update!115460%_
         _%default115461%_)))
    (define eq-table-update!/lock
      (lambda (_%tab115429%_
               _%key115430%_
               _%eq-table-update!115431%_
               _%default115432%_)
        (let ((_%lock115435%_ (&raw-table-lock _%tab115429%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again115440%_ ((_%spin115443%_ '0))
              (if (##fx= (##vector-cas! _%lock115435%_ '0 '1 '0) '0)
                  (##vector-set! _%lock115435%_ '1 (current-thread))
                  (if (##fx< _%spin115443%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again115440%_ (##fx+ _%spin115443%_ '1)))
                      (let ((_%owner115449%_ (##vector-ref _%lock115435%_ '1)))
                        (if (eq? _%owner115449%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner115449%_)
                                (let () (##thread-yield!) (_%again115440%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r115455%_
                 (_%eq-table-update!115431%_
                  _%tab115429%_
                  _%key115430%_
                  _%eq-table-update!115431%_
                  _%default115432%_)))
            (##vector-set! _%lock115435%_ '1 '#f)
            (##vector-cas! _%lock115435%_ '0 '0 '1)
            _%$r115455%_))))
    (define eq-table-delete!
      (lambda (_%tab115386%_ _%key115387%_)
        (let ((_%table115389%_ (&raw-table-table _%tab115386%_))
              (_%seed115391%_ (&raw-table-seed _%tab115386%_)))
          (let* ((_%h115394%_ (fxxor (eq-hash _%key115387%_) _%seed115391%_))
                 (_%size115397%_ (vector-length _%table115389%_))
                 (_%entries115400%_ (##fxquotient _%size115397%_ '2))
                 (_%start115403%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h115394%_ _%entries115400%_)
                   '1)))
            (let _%loop115407%_ ((_%probe115410%_ _%start115403%_)
                                 (_%i115412%_ '1))
              (let ((_%k115415%_ (vector-ref _%table115389%_ _%probe115410%_)))
                (if (eq? _%k115415%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k115415%_ (macro-deleted-obj))
                        (_%loop115407%_
                         (let ((_%next-probe115420%_
                                (fx+ _%start115403%_
                                     _%i115412%_
                                     (fx* _%i115412%_ _%i115412%_))))
                           (##fxmodulo _%next-probe115420%_ _%size115397%_))
                         (##fx+ _%i115412%_ '1))
                        (if (eq? _%key115387%_ _%k115415%_)
                            (let ()
                              (vector-set!
                               _%table115389%_
                               _%probe115410%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table115389%_
                               (##fx+ _%probe115410%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab115386%_
                                  (##fx- (&raw-table-count _%tab115386%_)
                                         '1)))))
                            (_%loop115407%_
                             (let ((_%next-probe115426%_
                                    (fx+ _%start115403%_
                                         _%i115412%_
                                         (fx* _%i115412%_ _%i115412%_))))
                               (##fxmodulo
                                _%next-probe115426%_
                                _%size115397%_))
                             (##fx+ _%i115412%_ '1)))))))))))
    (define eq-table-delete!/lock
      (lambda (_%tab115358%_ _%key115360%_)
        (let ((_%lock115363%_ (&raw-table-lock _%tab115358%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again115368%_ ((_%spin115371%_ '0))
              (if (##fx= (##vector-cas! _%lock115363%_ '0 '1 '0) '0)
                  (##vector-set! _%lock115363%_ '1 (current-thread))
                  (if (##fx< _%spin115371%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again115368%_ (##fx+ _%spin115371%_ '1)))
                      (let ((_%owner115377%_ (##vector-ref _%lock115363%_ '1)))
                        (if (eq? _%owner115377%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner115377%_)
                                (let () (##thread-yield!) (_%again115368%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r115383%_ (eq-table-delete! _%tab115358%_ _%key115360%_)))
            (##vector-set! _%lock115363%_ '1 '#f)
            (##vector-cas! _%lock115363%_ '0 '0 '1)
            _%$r115383%_))))
    (define make-eqv-table__%
      (lambda (_%size-hint115340%_ _%seed115341%_)
        (make-raw-table__1 _%size-hint115340%_ eqv-hash eqv? _%seed115341%_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_%size-hint115347%_ '#f) (_%seed115349%_ '0))
          (make-eqv-table__% _%size-hint115347%_ _%seed115349%_))))
    (define make-eqv-table__1
      (lambda (_%size-hint115351%_)
        (let ((_%seed115353%_ '0))
          (make-eqv-table__% _%size-hint115351%_ _%seed115353%_))))
    (define make-eqv-table
      (lambda _g116293_
        (let ((_g116294_ (##length _g116293_)))
          (cond ((##fx= _g116294_ 0) (apply make-eqv-table__0 _g116293_))
                ((##fx= _g116294_ 1) (apply make-eqv-table__1 _g116293_))
                ((##fx= _g116294_ 2) (apply make-eqv-table__% _g116293_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g116293_))))))
    (define make-eqv-table/lock__%
      (lambda (_%size-hint115320%_ _%seed115322%_)
        (make-raw-table/lock__%
         _%size-hint115320%_
         eqv-hash
         eqv?
         _%seed115322%_)))
    (define make-eqv-table/lock__0
      (lambda ()
        (let* ((_%size-hint115328%_ '#f) (_%seed115330%_ '0))
          (make-eqv-table/lock__% _%size-hint115328%_ _%seed115330%_))))
    (define make-eqv-table/lock__1
      (lambda (_%size-hint115332%_)
        (let ((_%seed115334%_ '0))
          (make-eqv-table/lock__% _%size-hint115332%_ _%seed115334%_))))
    (define make-eqv-table/lock
      (lambda _g116295_
        (let ((_g116296_ (##length _g116295_)))
          (cond ((##fx= _g116296_ 0) (apply make-eqv-table/lock__0 _g116295_))
                ((##fx= _g116296_ 1) (apply make-eqv-table/lock__1 _g116295_))
                ((##fx= _g116296_ 2) (apply make-eqv-table/lock__% _g116295_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table/lock
                  _g116295_))))))
    (define eqv-table-ref
      (lambda (_%tab115273%_ _%key115274%_ _%default115275%_)
        (let ((_%table115277%_ (&raw-table-table _%tab115273%_))
              (_%seed115278%_ (&raw-table-seed _%tab115273%_)))
          (let* ((_%h115280%_ (fxxor (eqv-hash _%key115274%_) _%seed115278%_))
                 (_%size115283%_ (vector-length _%table115277%_))
                 (_%entries115286%_ (##fxquotient _%size115283%_ '2))
                 (_%start115289%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h115280%_ _%entries115286%_)
                   '1)))
            (let _%loop115293%_ ((_%probe115296%_ _%start115289%_)
                                 (_%i115298%_ '1)
                                 (_%deleted115300%_ '#f))
              (let ((_%k115303%_ (vector-ref _%table115277%_ _%probe115296%_)))
                (if (eq? _%k115303%_ (macro-unused-obj))
                    _%default115275%_
                    (if (eq? _%k115303%_ (macro-deleted-obj))
                        (_%loop115293%_
                         (let ((_%next-probe115308%_
                                (fx+ _%start115289%_
                                     _%i115298%_
                                     (fx* _%i115298%_ _%i115298%_))))
                           (##fxmodulo _%next-probe115308%_ _%size115283%_))
                         (##fx+ _%i115298%_ '1)
                         (let ((_%$e115311%_ _%deleted115300%_))
                           (if _%$e115311%_ _%$e115311%_ _%probe115296%_)))
                        (if (eqv? _%key115274%_ _%k115303%_)
                            (vector-ref
                             _%table115277%_
                             (##fx+ _%probe115296%_ '1))
                            (_%loop115293%_
                             (let ((_%next-probe115316%_
                                    (fx+ _%start115289%_
                                         _%i115298%_
                                         (fx* _%i115298%_ _%i115298%_))))
                               (##fxmodulo
                                _%next-probe115316%_
                                _%size115283%_))
                             (##fx+ _%i115298%_ '1)
                             _%deleted115300%_))))))))))
    (define eqv-table-ref/lock
      (lambda (_%tab115246%_ _%key115247%_ _%default115248%_)
        (let ((_%lock115250%_ (&raw-table-lock _%tab115246%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again115255%_ ((_%spin115258%_ '0))
              (if (##fx= (##vector-cas! _%lock115250%_ '0 '1 '0) '0)
                  (##vector-set! _%lock115250%_ '1 (current-thread))
                  (if (##fx< _%spin115258%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again115255%_ (##fx+ _%spin115258%_ '1)))
                      (let ((_%owner115264%_ (##vector-ref _%lock115250%_ '1)))
                        (if (eq? _%owner115264%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner115264%_)
                                (let () (##thread-yield!) (_%again115255%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r115270%_
                 (eqv-table-ref
                  _%tab115246%_
                  _%key115247%_
                  _%default115248%_)))
            (##vector-set! _%lock115250%_ '1 '#f)
            (##vector-cas! _%lock115250%_ '0 '0 '1)
            _%$r115270%_))))
    (define __eqv-table-set!
      (lambda (_%tab115198%_ _%key115199%_ _%value115200%_)
        (let ((_%table115202%_ (&raw-table-table _%tab115198%_))
              (_%seed115203%_ (&raw-table-seed _%tab115198%_)))
          (let* ((_%h115205%_ (fxxor (eqv-hash _%key115199%_) _%seed115203%_))
                 (_%size115208%_ (vector-length _%table115202%_))
                 (_%entries115211%_ (##fxquotient _%size115208%_ '2))
                 (_%start115214%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h115205%_ _%entries115211%_)
                   '1)))
            (let _%loop115218%_ ((_%probe115221%_ _%start115214%_)
                                 (_%i115223%_ '1)
                                 (_%deleted115225%_ '#f))
              (let ((_%k115228%_ (vector-ref _%table115202%_ _%probe115221%_)))
                (if (eq? _%k115228%_ (macro-unused-obj))
                    (if _%deleted115225%_
                        (begin
                          (vector-set!
                           _%table115202%_
                           _%deleted115225%_
                           _%key115199%_)
                          (vector-set!
                           _%table115202%_
                           (##fx+ _%deleted115225%_ '1)
                           _%value115200%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab115198%_
                              (##fx+ (&raw-table-count _%tab115198%_) '1)))))
                        (begin
                          (vector-set!
                           _%table115202%_
                           _%probe115221%_
                           _%key115199%_)
                          (vector-set!
                           _%table115202%_
                           (##fx+ _%probe115221%_ '1)
                           _%value115200%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab115198%_
                              (##fx- (&raw-table-free _%tab115198%_) '1))
                             (&raw-table-count-set!
                              _%tab115198%_
                              (##fx+ (&raw-table-count _%tab115198%_) '1))))))
                    (if (eq? _%k115228%_ (macro-deleted-obj))
                        (_%loop115218%_
                         (let ((_%next-probe115235%_
                                (fx+ _%start115214%_
                                     _%i115223%_
                                     (fx* _%i115223%_ _%i115223%_))))
                           (##fxmodulo _%next-probe115235%_ _%size115208%_))
                         (##fx+ _%i115223%_ '1)
                         (let ((_%$e115238%_ _%deleted115225%_))
                           (if _%$e115238%_ _%$e115238%_ _%probe115221%_)))
                        (if (eqv? _%key115199%_ _%k115228%_)
                            (let ()
                              (vector-set!
                               _%table115202%_
                               _%probe115221%_
                               _%key115199%_)
                              (vector-set!
                               _%table115202%_
                               (##fx+ _%probe115221%_ '1)
                               _%value115200%_))
                            (_%loop115218%_
                             (let ((_%next-probe115243%_
                                    (fx+ _%start115214%_
                                         _%i115223%_
                                         (fx* _%i115223%_ _%i115223%_))))
                               (##fxmodulo
                                _%next-probe115243%_
                                _%size115208%_))
                             (##fx+ _%i115223%_ '1)
                             _%deleted115225%_))))))))))
    (define eqv-table-set!
      (lambda (_%tab115194%_ _%key115195%_ _%value115196%_)
        (if (##fx< (&raw-table-free _%tab115194%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab115194%_))
                    '4))
            (__raw-table-rehash! _%tab115194%_)
            '#!void)
        (__eqv-table-set! _%tab115194%_ _%key115195%_ _%value115196%_)))
    (define eqv-table-set!/lock
      (lambda (_%tab115166%_ _%key115167%_ _%value115168%_)
        (let ((_%lock115171%_ (&raw-table-lock _%tab115166%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again115176%_ ((_%spin115179%_ '0))
              (if (##fx= (##vector-cas! _%lock115171%_ '0 '1 '0) '0)
                  (##vector-set! _%lock115171%_ '1 (current-thread))
                  (if (##fx< _%spin115179%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again115176%_ (##fx+ _%spin115179%_ '1)))
                      (let ((_%owner115185%_ (##vector-ref _%lock115171%_ '1)))
                        (if (eq? _%owner115185%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner115185%_)
                                (let () (##thread-yield!) (_%again115176%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r115191%_
                 (eqv-table-set! _%tab115166%_ _%key115167%_ _%value115168%_)))
            (##vector-set! _%lock115171%_ '1 '#f)
            (##vector-cas! _%lock115171%_ '0 '0 '1)
            _%$r115191%_))))
    (define __eqv-table-update!
      (lambda (_%tab115117%_
               _%key115118%_
               _%eqv-table-update!115119%_
               _%default115120%_)
        (let ((_%table115122%_ (&raw-table-table _%tab115117%_))
              (_%seed115123%_ (&raw-table-seed _%tab115117%_)))
          (let* ((_%h115125%_ (fxxor (eqv-hash _%key115118%_) _%seed115123%_))
                 (_%size115128%_ (vector-length _%table115122%_))
                 (_%entries115131%_ (##fxquotient _%size115128%_ '2))
                 (_%start115134%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h115125%_ _%entries115131%_)
                   '1)))
            (let _%loop115138%_ ((_%probe115141%_ _%start115134%_)
                                 (_%i115143%_ '1)
                                 (_%deleted115145%_ '#f))
              (let ((_%k115148%_ (vector-ref _%table115122%_ _%probe115141%_)))
                (if (eq? _%k115148%_ (macro-unused-obj))
                    (if _%deleted115145%_
                        (begin
                          (vector-set!
                           _%table115122%_
                           _%deleted115145%_
                           _%key115118%_)
                          (vector-set!
                           _%table115122%_
                           (##fx+ _%deleted115145%_ '1)
                           (_%eqv-table-update!115119%_ _%default115120%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab115117%_
                              (##fx+ (&raw-table-count _%tab115117%_) '1)))))
                        (begin
                          (vector-set!
                           _%table115122%_
                           _%probe115141%_
                           _%key115118%_)
                          (vector-set!
                           _%table115122%_
                           (##fx+ _%probe115141%_ '1)
                           (_%eqv-table-update!115119%_ _%default115120%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab115117%_
                              (##fx- (&raw-table-free _%tab115117%_) '1))
                             (&raw-table-count-set!
                              _%tab115117%_
                              (##fx+ (&raw-table-count _%tab115117%_) '1))))))
                    (if (eq? _%k115148%_ (macro-deleted-obj))
                        (_%loop115138%_
                         (let ((_%next-probe115155%_
                                (fx+ _%start115134%_
                                     _%i115143%_
                                     (fx* _%i115143%_ _%i115143%_))))
                           (##fxmodulo _%next-probe115155%_ _%size115128%_))
                         (##fx+ _%i115143%_ '1)
                         (let ((_%$e115158%_ _%deleted115145%_))
                           (if _%$e115158%_ _%$e115158%_ _%probe115141%_)))
                        (if (eqv? _%key115118%_ _%k115148%_)
                            (let ()
                              (vector-set!
                               _%table115122%_
                               _%probe115141%_
                               _%key115118%_)
                              (vector-set!
                               _%table115122%_
                               (##fx+ _%probe115141%_ '1)
                               (_%eqv-table-update!115119%_
                                (vector-ref
                                 _%table115122%_
                                 (##fx+ _%probe115141%_ '1)))))
                            (_%loop115138%_
                             (let ((_%next-probe115163%_
                                    (fx+ _%start115134%_
                                         _%i115143%_
                                         (fx* _%i115143%_ _%i115143%_))))
                               (##fxmodulo
                                _%next-probe115163%_
                                _%size115128%_))
                             (##fx+ _%i115143%_ '1)
                             _%deleted115145%_))))))))))
    (define eqv-table-update!
      (lambda (_%tab115112%_
               _%key115113%_
               _%eqv-table-update!115114%_
               _%default115115%_)
        (if (##fx< (&raw-table-free _%tab115112%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab115112%_))
                    '4))
            (__raw-table-rehash! _%tab115112%_)
            '#!void)
        (__eqv-table-update!
         _%tab115112%_
         _%key115113%_
         _%eqv-table-update!115114%_
         _%default115115%_)))
    (define eqv-table-update!/lock
      (lambda (_%tab115083%_
               _%key115084%_
               _%eqv-table-update!115085%_
               _%default115086%_)
        (let ((_%lock115089%_ (&raw-table-lock _%tab115083%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again115094%_ ((_%spin115097%_ '0))
              (if (##fx= (##vector-cas! _%lock115089%_ '0 '1 '0) '0)
                  (##vector-set! _%lock115089%_ '1 (current-thread))
                  (if (##fx< _%spin115097%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again115094%_ (##fx+ _%spin115097%_ '1)))
                      (let ((_%owner115103%_ (##vector-ref _%lock115089%_ '1)))
                        (if (eq? _%owner115103%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner115103%_)
                                (let () (##thread-yield!) (_%again115094%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r115109%_
                 (_%eqv-table-update!115085%_
                  _%tab115083%_
                  _%key115084%_
                  _%eqv-table-update!115085%_
                  _%default115086%_)))
            (##vector-set! _%lock115089%_ '1 '#f)
            (##vector-cas! _%lock115089%_ '0 '0 '1)
            _%$r115109%_))))
    (define eqv-table-delete!
      (lambda (_%tab115040%_ _%key115041%_)
        (let ((_%table115043%_ (&raw-table-table _%tab115040%_))
              (_%seed115045%_ (&raw-table-seed _%tab115040%_)))
          (let* ((_%h115048%_ (fxxor (eqv-hash _%key115041%_) _%seed115045%_))
                 (_%size115051%_ (vector-length _%table115043%_))
                 (_%entries115054%_ (##fxquotient _%size115051%_ '2))
                 (_%start115057%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h115048%_ _%entries115054%_)
                   '1)))
            (let _%loop115061%_ ((_%probe115064%_ _%start115057%_)
                                 (_%i115066%_ '1))
              (let ((_%k115069%_ (vector-ref _%table115043%_ _%probe115064%_)))
                (if (eq? _%k115069%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k115069%_ (macro-deleted-obj))
                        (_%loop115061%_
                         (let ((_%next-probe115074%_
                                (fx+ _%start115057%_
                                     _%i115066%_
                                     (fx* _%i115066%_ _%i115066%_))))
                           (##fxmodulo _%next-probe115074%_ _%size115051%_))
                         (##fx+ _%i115066%_ '1))
                        (if (eqv? _%key115041%_ _%k115069%_)
                            (let ()
                              (vector-set!
                               _%table115043%_
                               _%probe115064%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table115043%_
                               (##fx+ _%probe115064%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab115040%_
                                  (##fx- (&raw-table-count _%tab115040%_)
                                         '1)))))
                            (_%loop115061%_
                             (let ((_%next-probe115080%_
                                    (fx+ _%start115057%_
                                         _%i115066%_
                                         (fx* _%i115066%_ _%i115066%_))))
                               (##fxmodulo
                                _%next-probe115080%_
                                _%size115051%_))
                             (##fx+ _%i115066%_ '1)))))))))))
    (define eqv-table-delete!/lock
      (lambda (_%tab115012%_ _%key115014%_)
        (let ((_%lock115017%_ (&raw-table-lock _%tab115012%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again115022%_ ((_%spin115025%_ '0))
              (if (##fx= (##vector-cas! _%lock115017%_ '0 '1 '0) '0)
                  (##vector-set! _%lock115017%_ '1 (current-thread))
                  (if (##fx< _%spin115025%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again115022%_ (##fx+ _%spin115025%_ '1)))
                      (let ((_%owner115031%_ (##vector-ref _%lock115017%_ '1)))
                        (if (eq? _%owner115031%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner115031%_)
                                (let () (##thread-yield!) (_%again115022%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r115037%_ (eqv-table-delete! _%tab115012%_ _%key115014%_)))
            (##vector-set! _%lock115017%_ '1 '#f)
            (##vector-cas! _%lock115017%_ '0 '0 '1)
            _%$r115037%_))))
    (define make-symbolic-table__%
      (lambda (_%size-hint114994%_ _%seed114995%_)
        (make-raw-table__1
         _%size-hint114994%_
         symbolic-hash
         eq?
         _%seed114995%_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_%size-hint115001%_ '#f) (_%seed115003%_ '0))
          (make-symbolic-table__% _%size-hint115001%_ _%seed115003%_))))
    (define make-symbolic-table__1
      (lambda (_%size-hint115005%_)
        (let ((_%seed115007%_ '0))
          (make-symbolic-table__% _%size-hint115005%_ _%seed115007%_))))
    (define make-symbolic-table
      (lambda _g116297_
        (let ((_g116298_ (##length _g116297_)))
          (cond ((##fx= _g116298_ 0) (apply make-symbolic-table__0 _g116297_))
                ((##fx= _g116298_ 1) (apply make-symbolic-table__1 _g116297_))
                ((##fx= _g116298_ 2) (apply make-symbolic-table__% _g116297_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g116297_))))))
    (define make-symbolic-table/lock__%
      (lambda (_%size-hint114974%_ _%seed114976%_)
        (make-raw-table/lock__%
         _%size-hint114974%_
         symbolic-hash
         eq?
         _%seed114976%_)))
    (define make-symbolic-table/lock__0
      (lambda ()
        (let* ((_%size-hint114982%_ '#f) (_%seed114984%_ '0))
          (make-symbolic-table/lock__% _%size-hint114982%_ _%seed114984%_))))
    (define make-symbolic-table/lock__1
      (lambda (_%size-hint114986%_)
        (let ((_%seed114988%_ '0))
          (make-symbolic-table/lock__% _%size-hint114986%_ _%seed114988%_))))
    (define make-symbolic-table/lock
      (lambda _g116299_
        (let ((_g116300_ (##length _g116299_)))
          (cond ((##fx= _g116300_ 0)
                 (apply make-symbolic-table/lock__0 _g116299_))
                ((##fx= _g116300_ 1)
                 (apply make-symbolic-table/lock__1 _g116299_))
                ((##fx= _g116300_ 2)
                 (apply make-symbolic-table/lock__% _g116299_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table/lock
                  _g116299_))))))
    (define symbolic-table-ref
      (lambda (_%tab114927%_ _%key114928%_ _%default114929%_)
        (let ((_%table114931%_ (&raw-table-table _%tab114927%_))
              (_%seed114932%_ (&raw-table-seed _%tab114927%_)))
          (let* ((_%h114934%_
                  (fxxor (##symbol-hash _%key114928%_) _%seed114932%_))
                 (_%size114937%_ (vector-length _%table114931%_))
                 (_%entries114940%_ (##fxquotient _%size114937%_ '2))
                 (_%start114943%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h114934%_ _%entries114940%_)
                   '1)))
            (let _%loop114947%_ ((_%probe114950%_ _%start114943%_)
                                 (_%i114952%_ '1)
                                 (_%deleted114954%_ '#f))
              (let ((_%k114957%_ (vector-ref _%table114931%_ _%probe114950%_)))
                (if (eq? _%k114957%_ (macro-unused-obj))
                    _%default114929%_
                    (if (eq? _%k114957%_ (macro-deleted-obj))
                        (_%loop114947%_
                         (let ((_%next-probe114962%_
                                (fx+ _%start114943%_
                                     _%i114952%_
                                     (fx* _%i114952%_ _%i114952%_))))
                           (##fxmodulo _%next-probe114962%_ _%size114937%_))
                         (##fx+ _%i114952%_ '1)
                         (let ((_%$e114965%_ _%deleted114954%_))
                           (if _%$e114965%_ _%$e114965%_ _%probe114950%_)))
                        (if (eq? _%key114928%_ _%k114957%_)
                            (vector-ref
                             _%table114931%_
                             (##fx+ _%probe114950%_ '1))
                            (_%loop114947%_
                             (let ((_%next-probe114970%_
                                    (fx+ _%start114943%_
                                         _%i114952%_
                                         (fx* _%i114952%_ _%i114952%_))))
                               (##fxmodulo
                                _%next-probe114970%_
                                _%size114937%_))
                             (##fx+ _%i114952%_ '1)
                             _%deleted114954%_))))))))))
    (define symbolic-table-ref/lock
      (lambda (_%tab114900%_ _%key114901%_ _%default114902%_)
        (let ((_%lock114904%_ (&raw-table-lock _%tab114900%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again114909%_ ((_%spin114912%_ '0))
              (if (##fx= (##vector-cas! _%lock114904%_ '0 '1 '0) '0)
                  (##vector-set! _%lock114904%_ '1 (current-thread))
                  (if (##fx< _%spin114912%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again114909%_ (##fx+ _%spin114912%_ '1)))
                      (let ((_%owner114918%_ (##vector-ref _%lock114904%_ '1)))
                        (if (eq? _%owner114918%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner114918%_)
                                (let () (##thread-yield!) (_%again114909%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r114924%_
                 (symbolic-table-ref
                  _%tab114900%_
                  _%key114901%_
                  _%default114902%_)))
            (##vector-set! _%lock114904%_ '1 '#f)
            (##vector-cas! _%lock114904%_ '0 '0 '1)
            _%$r114924%_))))
    (define __symbolic-table-set!
      (lambda (_%tab114852%_ _%key114853%_ _%value114854%_)
        (let ((_%table114856%_ (&raw-table-table _%tab114852%_))
              (_%seed114857%_ (&raw-table-seed _%tab114852%_)))
          (let* ((_%h114859%_
                  (fxxor (##symbol-hash _%key114853%_) _%seed114857%_))
                 (_%size114862%_ (vector-length _%table114856%_))
                 (_%entries114865%_ (##fxquotient _%size114862%_ '2))
                 (_%start114868%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h114859%_ _%entries114865%_)
                   '1)))
            (let _%loop114872%_ ((_%probe114875%_ _%start114868%_)
                                 (_%i114877%_ '1)
                                 (_%deleted114879%_ '#f))
              (let ((_%k114882%_ (vector-ref _%table114856%_ _%probe114875%_)))
                (if (eq? _%k114882%_ (macro-unused-obj))
                    (if _%deleted114879%_
                        (begin
                          (vector-set!
                           _%table114856%_
                           _%deleted114879%_
                           _%key114853%_)
                          (vector-set!
                           _%table114856%_
                           (##fx+ _%deleted114879%_ '1)
                           _%value114854%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab114852%_
                              (##fx+ (&raw-table-count _%tab114852%_) '1)))))
                        (begin
                          (vector-set!
                           _%table114856%_
                           _%probe114875%_
                           _%key114853%_)
                          (vector-set!
                           _%table114856%_
                           (##fx+ _%probe114875%_ '1)
                           _%value114854%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab114852%_
                              (##fx- (&raw-table-free _%tab114852%_) '1))
                             (&raw-table-count-set!
                              _%tab114852%_
                              (##fx+ (&raw-table-count _%tab114852%_) '1))))))
                    (if (eq? _%k114882%_ (macro-deleted-obj))
                        (_%loop114872%_
                         (let ((_%next-probe114889%_
                                (fx+ _%start114868%_
                                     _%i114877%_
                                     (fx* _%i114877%_ _%i114877%_))))
                           (##fxmodulo _%next-probe114889%_ _%size114862%_))
                         (##fx+ _%i114877%_ '1)
                         (let ((_%$e114892%_ _%deleted114879%_))
                           (if _%$e114892%_ _%$e114892%_ _%probe114875%_)))
                        (if (eq? _%key114853%_ _%k114882%_)
                            (let ()
                              (vector-set!
                               _%table114856%_
                               _%probe114875%_
                               _%key114853%_)
                              (vector-set!
                               _%table114856%_
                               (##fx+ _%probe114875%_ '1)
                               _%value114854%_))
                            (_%loop114872%_
                             (let ((_%next-probe114897%_
                                    (fx+ _%start114868%_
                                         _%i114877%_
                                         (fx* _%i114877%_ _%i114877%_))))
                               (##fxmodulo
                                _%next-probe114897%_
                                _%size114862%_))
                             (##fx+ _%i114877%_ '1)
                             _%deleted114879%_))))))))))
    (define symbolic-table-set!
      (lambda (_%tab114848%_ _%key114849%_ _%value114850%_)
        (if (##fx< (&raw-table-free _%tab114848%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab114848%_))
                    '4))
            (__raw-table-rehash! _%tab114848%_)
            '#!void)
        (__symbolic-table-set! _%tab114848%_ _%key114849%_ _%value114850%_)))
    (define symbolic-table-set!/lock
      (lambda (_%tab114820%_ _%key114821%_ _%value114822%_)
        (let ((_%lock114825%_ (&raw-table-lock _%tab114820%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again114830%_ ((_%spin114833%_ '0))
              (if (##fx= (##vector-cas! _%lock114825%_ '0 '1 '0) '0)
                  (##vector-set! _%lock114825%_ '1 (current-thread))
                  (if (##fx< _%spin114833%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again114830%_ (##fx+ _%spin114833%_ '1)))
                      (let ((_%owner114839%_ (##vector-ref _%lock114825%_ '1)))
                        (if (eq? _%owner114839%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner114839%_)
                                (let () (##thread-yield!) (_%again114830%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r114845%_
                 (symbolic-table-set!
                  _%tab114820%_
                  _%key114821%_
                  _%value114822%_)))
            (##vector-set! _%lock114825%_ '1 '#f)
            (##vector-cas! _%lock114825%_ '0 '0 '1)
            _%$r114845%_))))
    (define __symbolic-table-update!
      (lambda (_%tab114771%_
               _%key114772%_
               _%symbolic-table-update!114773%_
               _%default114774%_)
        (let ((_%table114776%_ (&raw-table-table _%tab114771%_))
              (_%seed114777%_ (&raw-table-seed _%tab114771%_)))
          (let* ((_%h114779%_
                  (fxxor (##symbol-hash _%key114772%_) _%seed114777%_))
                 (_%size114782%_ (vector-length _%table114776%_))
                 (_%entries114785%_ (##fxquotient _%size114782%_ '2))
                 (_%start114788%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h114779%_ _%entries114785%_)
                   '1)))
            (let _%loop114792%_ ((_%probe114795%_ _%start114788%_)
                                 (_%i114797%_ '1)
                                 (_%deleted114799%_ '#f))
              (let ((_%k114802%_ (vector-ref _%table114776%_ _%probe114795%_)))
                (if (eq? _%k114802%_ (macro-unused-obj))
                    (if _%deleted114799%_
                        (begin
                          (vector-set!
                           _%table114776%_
                           _%deleted114799%_
                           _%key114772%_)
                          (vector-set!
                           _%table114776%_
                           (##fx+ _%deleted114799%_ '1)
                           (_%symbolic-table-update!114773%_
                            _%default114774%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab114771%_
                              (##fx+ (&raw-table-count _%tab114771%_) '1)))))
                        (begin
                          (vector-set!
                           _%table114776%_
                           _%probe114795%_
                           _%key114772%_)
                          (vector-set!
                           _%table114776%_
                           (##fx+ _%probe114795%_ '1)
                           (_%symbolic-table-update!114773%_
                            _%default114774%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab114771%_
                              (##fx- (&raw-table-free _%tab114771%_) '1))
                             (&raw-table-count-set!
                              _%tab114771%_
                              (##fx+ (&raw-table-count _%tab114771%_) '1))))))
                    (if (eq? _%k114802%_ (macro-deleted-obj))
                        (_%loop114792%_
                         (let ((_%next-probe114809%_
                                (fx+ _%start114788%_
                                     _%i114797%_
                                     (fx* _%i114797%_ _%i114797%_))))
                           (##fxmodulo _%next-probe114809%_ _%size114782%_))
                         (##fx+ _%i114797%_ '1)
                         (let ((_%$e114812%_ _%deleted114799%_))
                           (if _%$e114812%_ _%$e114812%_ _%probe114795%_)))
                        (if (eq? _%key114772%_ _%k114802%_)
                            (let ()
                              (vector-set!
                               _%table114776%_
                               _%probe114795%_
                               _%key114772%_)
                              (vector-set!
                               _%table114776%_
                               (##fx+ _%probe114795%_ '1)
                               (_%symbolic-table-update!114773%_
                                (vector-ref
                                 _%table114776%_
                                 (##fx+ _%probe114795%_ '1)))))
                            (_%loop114792%_
                             (let ((_%next-probe114817%_
                                    (fx+ _%start114788%_
                                         _%i114797%_
                                         (fx* _%i114797%_ _%i114797%_))))
                               (##fxmodulo
                                _%next-probe114817%_
                                _%size114782%_))
                             (##fx+ _%i114797%_ '1)
                             _%deleted114799%_))))))))))
    (define symbolic-table-update!
      (lambda (_%tab114766%_
               _%key114767%_
               _%symbolic-table-update!114768%_
               _%default114769%_)
        (if (##fx< (&raw-table-free _%tab114766%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab114766%_))
                    '4))
            (__raw-table-rehash! _%tab114766%_)
            '#!void)
        (__symbolic-table-update!
         _%tab114766%_
         _%key114767%_
         _%symbolic-table-update!114768%_
         _%default114769%_)))
    (define symbolic-table-update!/lock
      (lambda (_%tab114737%_
               _%key114738%_
               _%symbolic-table-update!114739%_
               _%default114740%_)
        (let ((_%lock114743%_ (&raw-table-lock _%tab114737%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again114748%_ ((_%spin114751%_ '0))
              (if (##fx= (##vector-cas! _%lock114743%_ '0 '1 '0) '0)
                  (##vector-set! _%lock114743%_ '1 (current-thread))
                  (if (##fx< _%spin114751%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again114748%_ (##fx+ _%spin114751%_ '1)))
                      (let ((_%owner114757%_ (##vector-ref _%lock114743%_ '1)))
                        (if (eq? _%owner114757%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner114757%_)
                                (let () (##thread-yield!) (_%again114748%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r114763%_
                 (_%symbolic-table-update!114739%_
                  _%tab114737%_
                  _%key114738%_
                  _%symbolic-table-update!114739%_
                  _%default114740%_)))
            (##vector-set! _%lock114743%_ '1 '#f)
            (##vector-cas! _%lock114743%_ '0 '0 '1)
            _%$r114763%_))))
    (define symbolic-table-delete!
      (lambda (_%tab114694%_ _%key114695%_)
        (let ((_%table114697%_ (&raw-table-table _%tab114694%_))
              (_%seed114699%_ (&raw-table-seed _%tab114694%_)))
          (let* ((_%h114702%_
                  (fxxor (##symbol-hash _%key114695%_) _%seed114699%_))
                 (_%size114705%_ (vector-length _%table114697%_))
                 (_%entries114708%_ (##fxquotient _%size114705%_ '2))
                 (_%start114711%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h114702%_ _%entries114708%_)
                   '1)))
            (let _%loop114715%_ ((_%probe114718%_ _%start114711%_)
                                 (_%i114720%_ '1))
              (let ((_%k114723%_ (vector-ref _%table114697%_ _%probe114718%_)))
                (if (eq? _%k114723%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k114723%_ (macro-deleted-obj))
                        (_%loop114715%_
                         (let ((_%next-probe114728%_
                                (fx+ _%start114711%_
                                     _%i114720%_
                                     (fx* _%i114720%_ _%i114720%_))))
                           (##fxmodulo _%next-probe114728%_ _%size114705%_))
                         (##fx+ _%i114720%_ '1))
                        (if (eq? _%key114695%_ _%k114723%_)
                            (let ()
                              (vector-set!
                               _%table114697%_
                               _%probe114718%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table114697%_
                               (##fx+ _%probe114718%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab114694%_
                                  (##fx- (&raw-table-count _%tab114694%_)
                                         '1)))))
                            (_%loop114715%_
                             (let ((_%next-probe114734%_
                                    (fx+ _%start114711%_
                                         _%i114720%_
                                         (fx* _%i114720%_ _%i114720%_))))
                               (##fxmodulo
                                _%next-probe114734%_
                                _%size114705%_))
                             (##fx+ _%i114720%_ '1)))))))))))
    (define symbolic-table-delete!/lock
      (lambda (_%tab114666%_ _%key114668%_)
        (let ((_%lock114671%_ (&raw-table-lock _%tab114666%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again114676%_ ((_%spin114679%_ '0))
              (if (##fx= (##vector-cas! _%lock114671%_ '0 '1 '0) '0)
                  (##vector-set! _%lock114671%_ '1 (current-thread))
                  (if (##fx< _%spin114679%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again114676%_ (##fx+ _%spin114679%_ '1)))
                      (let ((_%owner114685%_ (##vector-ref _%lock114671%_ '1)))
                        (if (eq? _%owner114685%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner114685%_)
                                (let () (##thread-yield!) (_%again114676%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r114691%_
                 (symbolic-table-delete! _%tab114666%_ _%key114668%_)))
            (##vector-set! _%lock114671%_ '1 '#f)
            (##vector-cas! _%lock114671%_ '0 '0 '1)
            _%$r114691%_))))
    (define make-string-table__%
      (lambda (_%size-hint114648%_ _%seed114649%_)
        (make-raw-table__1
         _%size-hint114648%_
         string-hash
         ##string=?
         _%seed114649%_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_%size-hint114655%_ '#f) (_%seed114657%_ '0))
          (make-string-table__% _%size-hint114655%_ _%seed114657%_))))
    (define make-string-table__1
      (lambda (_%size-hint114659%_)
        (let ((_%seed114661%_ '0))
          (make-string-table__% _%size-hint114659%_ _%seed114661%_))))
    (define make-string-table
      (lambda _g116301_
        (let ((_g116302_ (##length _g116301_)))
          (cond ((##fx= _g116302_ 0) (apply make-string-table__0 _g116301_))
                ((##fx= _g116302_ 1) (apply make-string-table__1 _g116301_))
                ((##fx= _g116302_ 2) (apply make-string-table__% _g116301_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g116301_))))))
    (define make-string-table/lock__%
      (lambda (_%size-hint114628%_ _%seed114630%_)
        (make-raw-table/lock__%
         _%size-hint114628%_
         string-hash
         ##string=?
         _%seed114630%_)))
    (define make-string-table/lock__0
      (lambda ()
        (let* ((_%size-hint114636%_ '#f) (_%seed114638%_ '0))
          (make-string-table/lock__% _%size-hint114636%_ _%seed114638%_))))
    (define make-string-table/lock__1
      (lambda (_%size-hint114640%_)
        (let ((_%seed114642%_ '0))
          (make-string-table/lock__% _%size-hint114640%_ _%seed114642%_))))
    (define make-string-table/lock
      (lambda _g116303_
        (let ((_g116304_ (##length _g116303_)))
          (cond ((##fx= _g116304_ 0)
                 (apply make-string-table/lock__0 _g116303_))
                ((##fx= _g116304_ 1)
                 (apply make-string-table/lock__1 _g116303_))
                ((##fx= _g116304_ 2)
                 (apply make-string-table/lock__% _g116303_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table/lock
                  _g116303_))))))
    (define string-table-ref
      (lambda (_%tab114581%_ _%key114582%_ _%default114583%_)
        (let ((_%table114585%_ (&raw-table-table _%tab114581%_))
              (_%seed114586%_ (&raw-table-seed _%tab114581%_)))
          (let* ((_%h114588%_
                  (fxxor (##string=?-hash _%key114582%_) _%seed114586%_))
                 (_%size114591%_ (vector-length _%table114585%_))
                 (_%entries114594%_ (##fxquotient _%size114591%_ '2))
                 (_%start114597%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h114588%_ _%entries114594%_)
                   '1)))
            (let _%loop114601%_ ((_%probe114604%_ _%start114597%_)
                                 (_%i114606%_ '1)
                                 (_%deleted114608%_ '#f))
              (let ((_%k114611%_ (vector-ref _%table114585%_ _%probe114604%_)))
                (if (eq? _%k114611%_ (macro-unused-obj))
                    _%default114583%_
                    (if (eq? _%k114611%_ (macro-deleted-obj))
                        (_%loop114601%_
                         (let ((_%next-probe114616%_
                                (fx+ _%start114597%_
                                     _%i114606%_
                                     (fx* _%i114606%_ _%i114606%_))))
                           (##fxmodulo _%next-probe114616%_ _%size114591%_))
                         (##fx+ _%i114606%_ '1)
                         (let ((_%$e114619%_ _%deleted114608%_))
                           (if _%$e114619%_ _%$e114619%_ _%probe114604%_)))
                        (if (##string=? _%key114582%_ _%k114611%_)
                            (vector-ref
                             _%table114585%_
                             (##fx+ _%probe114604%_ '1))
                            (_%loop114601%_
                             (let ((_%next-probe114624%_
                                    (fx+ _%start114597%_
                                         _%i114606%_
                                         (fx* _%i114606%_ _%i114606%_))))
                               (##fxmodulo
                                _%next-probe114624%_
                                _%size114591%_))
                             (##fx+ _%i114606%_ '1)
                             _%deleted114608%_))))))))))
    (define string-table-ref/lock
      (lambda (_%tab114554%_ _%key114555%_ _%default114556%_)
        (let ((_%lock114558%_ (&raw-table-lock _%tab114554%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again114563%_ ((_%spin114566%_ '0))
              (if (##fx= (##vector-cas! _%lock114558%_ '0 '1 '0) '0)
                  (##vector-set! _%lock114558%_ '1 (current-thread))
                  (if (##fx< _%spin114566%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again114563%_ (##fx+ _%spin114566%_ '1)))
                      (let ((_%owner114572%_ (##vector-ref _%lock114558%_ '1)))
                        (if (eq? _%owner114572%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner114572%_)
                                (let () (##thread-yield!) (_%again114563%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r114578%_
                 (string-table-ref
                  _%tab114554%_
                  _%key114555%_
                  _%default114556%_)))
            (##vector-set! _%lock114558%_ '1 '#f)
            (##vector-cas! _%lock114558%_ '0 '0 '1)
            _%$r114578%_))))
    (define __string-table-set!
      (lambda (_%tab114506%_ _%key114507%_ _%value114508%_)
        (let ((_%table114510%_ (&raw-table-table _%tab114506%_))
              (_%seed114511%_ (&raw-table-seed _%tab114506%_)))
          (let* ((_%h114513%_
                  (fxxor (##string=?-hash _%key114507%_) _%seed114511%_))
                 (_%size114516%_ (vector-length _%table114510%_))
                 (_%entries114519%_ (##fxquotient _%size114516%_ '2))
                 (_%start114522%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h114513%_ _%entries114519%_)
                   '1)))
            (let _%loop114526%_ ((_%probe114529%_ _%start114522%_)
                                 (_%i114531%_ '1)
                                 (_%deleted114533%_ '#f))
              (let ((_%k114536%_ (vector-ref _%table114510%_ _%probe114529%_)))
                (if (eq? _%k114536%_ (macro-unused-obj))
                    (if _%deleted114533%_
                        (begin
                          (vector-set!
                           _%table114510%_
                           _%deleted114533%_
                           _%key114507%_)
                          (vector-set!
                           _%table114510%_
                           (##fx+ _%deleted114533%_ '1)
                           _%value114508%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab114506%_
                              (##fx+ (&raw-table-count _%tab114506%_) '1)))))
                        (begin
                          (vector-set!
                           _%table114510%_
                           _%probe114529%_
                           _%key114507%_)
                          (vector-set!
                           _%table114510%_
                           (##fx+ _%probe114529%_ '1)
                           _%value114508%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab114506%_
                              (##fx- (&raw-table-free _%tab114506%_) '1))
                             (&raw-table-count-set!
                              _%tab114506%_
                              (##fx+ (&raw-table-count _%tab114506%_) '1))))))
                    (if (eq? _%k114536%_ (macro-deleted-obj))
                        (_%loop114526%_
                         (let ((_%next-probe114543%_
                                (fx+ _%start114522%_
                                     _%i114531%_
                                     (fx* _%i114531%_ _%i114531%_))))
                           (##fxmodulo _%next-probe114543%_ _%size114516%_))
                         (##fx+ _%i114531%_ '1)
                         (let ((_%$e114546%_ _%deleted114533%_))
                           (if _%$e114546%_ _%$e114546%_ _%probe114529%_)))
                        (if (##string=? _%key114507%_ _%k114536%_)
                            (let ()
                              (vector-set!
                               _%table114510%_
                               _%probe114529%_
                               _%key114507%_)
                              (vector-set!
                               _%table114510%_
                               (##fx+ _%probe114529%_ '1)
                               _%value114508%_))
                            (_%loop114526%_
                             (let ((_%next-probe114551%_
                                    (fx+ _%start114522%_
                                         _%i114531%_
                                         (fx* _%i114531%_ _%i114531%_))))
                               (##fxmodulo
                                _%next-probe114551%_
                                _%size114516%_))
                             (##fx+ _%i114531%_ '1)
                             _%deleted114533%_))))))))))
    (define string-table-set!
      (lambda (_%tab114502%_ _%key114503%_ _%value114504%_)
        (if (##fx< (&raw-table-free _%tab114502%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab114502%_))
                    '4))
            (__raw-table-rehash! _%tab114502%_)
            '#!void)
        (__string-table-set! _%tab114502%_ _%key114503%_ _%value114504%_)))
    (define string-table-set!/lock
      (lambda (_%tab114474%_ _%key114475%_ _%value114476%_)
        (let ((_%lock114479%_ (&raw-table-lock _%tab114474%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again114484%_ ((_%spin114487%_ '0))
              (if (##fx= (##vector-cas! _%lock114479%_ '0 '1 '0) '0)
                  (##vector-set! _%lock114479%_ '1 (current-thread))
                  (if (##fx< _%spin114487%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again114484%_ (##fx+ _%spin114487%_ '1)))
                      (let ((_%owner114493%_ (##vector-ref _%lock114479%_ '1)))
                        (if (eq? _%owner114493%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner114493%_)
                                (let () (##thread-yield!) (_%again114484%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r114499%_
                 (string-table-set!
                  _%tab114474%_
                  _%key114475%_
                  _%value114476%_)))
            (##vector-set! _%lock114479%_ '1 '#f)
            (##vector-cas! _%lock114479%_ '0 '0 '1)
            _%$r114499%_))))
    (define __string-table-update!
      (lambda (_%tab114425%_
               _%key114426%_
               _%string-table-update!114427%_
               _%default114428%_)
        (let ((_%table114430%_ (&raw-table-table _%tab114425%_))
              (_%seed114431%_ (&raw-table-seed _%tab114425%_)))
          (let* ((_%h114433%_
                  (fxxor (##string=?-hash _%key114426%_) _%seed114431%_))
                 (_%size114436%_ (vector-length _%table114430%_))
                 (_%entries114439%_ (##fxquotient _%size114436%_ '2))
                 (_%start114442%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h114433%_ _%entries114439%_)
                   '1)))
            (let _%loop114446%_ ((_%probe114449%_ _%start114442%_)
                                 (_%i114451%_ '1)
                                 (_%deleted114453%_ '#f))
              (let ((_%k114456%_ (vector-ref _%table114430%_ _%probe114449%_)))
                (if (eq? _%k114456%_ (macro-unused-obj))
                    (if _%deleted114453%_
                        (begin
                          (vector-set!
                           _%table114430%_
                           _%deleted114453%_
                           _%key114426%_)
                          (vector-set!
                           _%table114430%_
                           (##fx+ _%deleted114453%_ '1)
                           (_%string-table-update!114427%_ _%default114428%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab114425%_
                              (##fx+ (&raw-table-count _%tab114425%_) '1)))))
                        (begin
                          (vector-set!
                           _%table114430%_
                           _%probe114449%_
                           _%key114426%_)
                          (vector-set!
                           _%table114430%_
                           (##fx+ _%probe114449%_ '1)
                           (_%string-table-update!114427%_ _%default114428%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab114425%_
                              (##fx- (&raw-table-free _%tab114425%_) '1))
                             (&raw-table-count-set!
                              _%tab114425%_
                              (##fx+ (&raw-table-count _%tab114425%_) '1))))))
                    (if (eq? _%k114456%_ (macro-deleted-obj))
                        (_%loop114446%_
                         (let ((_%next-probe114463%_
                                (fx+ _%start114442%_
                                     _%i114451%_
                                     (fx* _%i114451%_ _%i114451%_))))
                           (##fxmodulo _%next-probe114463%_ _%size114436%_))
                         (##fx+ _%i114451%_ '1)
                         (let ((_%$e114466%_ _%deleted114453%_))
                           (if _%$e114466%_ _%$e114466%_ _%probe114449%_)))
                        (if (##string=? _%key114426%_ _%k114456%_)
                            (let ()
                              (vector-set!
                               _%table114430%_
                               _%probe114449%_
                               _%key114426%_)
                              (vector-set!
                               _%table114430%_
                               (##fx+ _%probe114449%_ '1)
                               (_%string-table-update!114427%_
                                (vector-ref
                                 _%table114430%_
                                 (##fx+ _%probe114449%_ '1)))))
                            (_%loop114446%_
                             (let ((_%next-probe114471%_
                                    (fx+ _%start114442%_
                                         _%i114451%_
                                         (fx* _%i114451%_ _%i114451%_))))
                               (##fxmodulo
                                _%next-probe114471%_
                                _%size114436%_))
                             (##fx+ _%i114451%_ '1)
                             _%deleted114453%_))))))))))
    (define string-table-update!
      (lambda (_%tab114420%_
               _%key114421%_
               _%string-table-update!114422%_
               _%default114423%_)
        (if (##fx< (&raw-table-free _%tab114420%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab114420%_))
                    '4))
            (__raw-table-rehash! _%tab114420%_)
            '#!void)
        (__string-table-update!
         _%tab114420%_
         _%key114421%_
         _%string-table-update!114422%_
         _%default114423%_)))
    (define string-table-update!/lock
      (lambda (_%tab114391%_
               _%key114392%_
               _%string-table-update!114393%_
               _%default114394%_)
        (let ((_%lock114397%_ (&raw-table-lock _%tab114391%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again114402%_ ((_%spin114405%_ '0))
              (if (##fx= (##vector-cas! _%lock114397%_ '0 '1 '0) '0)
                  (##vector-set! _%lock114397%_ '1 (current-thread))
                  (if (##fx< _%spin114405%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again114402%_ (##fx+ _%spin114405%_ '1)))
                      (let ((_%owner114411%_ (##vector-ref _%lock114397%_ '1)))
                        (if (eq? _%owner114411%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner114411%_)
                                (let () (##thread-yield!) (_%again114402%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r114417%_
                 (_%string-table-update!114393%_
                  _%tab114391%_
                  _%key114392%_
                  _%string-table-update!114393%_
                  _%default114394%_)))
            (##vector-set! _%lock114397%_ '1 '#f)
            (##vector-cas! _%lock114397%_ '0 '0 '1)
            _%$r114417%_))))
    (define string-table-delete!
      (lambda (_%tab114348%_ _%key114349%_)
        (let ((_%table114351%_ (&raw-table-table _%tab114348%_))
              (_%seed114353%_ (&raw-table-seed _%tab114348%_)))
          (let* ((_%h114356%_
                  (fxxor (##string=?-hash _%key114349%_) _%seed114353%_))
                 (_%size114359%_ (vector-length _%table114351%_))
                 (_%entries114362%_ (##fxquotient _%size114359%_ '2))
                 (_%start114365%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h114356%_ _%entries114362%_)
                   '1)))
            (let _%loop114369%_ ((_%probe114372%_ _%start114365%_)
                                 (_%i114374%_ '1))
              (let ((_%k114377%_ (vector-ref _%table114351%_ _%probe114372%_)))
                (if (eq? _%k114377%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k114377%_ (macro-deleted-obj))
                        (_%loop114369%_
                         (let ((_%next-probe114382%_
                                (fx+ _%start114365%_
                                     _%i114374%_
                                     (fx* _%i114374%_ _%i114374%_))))
                           (##fxmodulo _%next-probe114382%_ _%size114359%_))
                         (##fx+ _%i114374%_ '1))
                        (if (##string=? _%key114349%_ _%k114377%_)
                            (let ()
                              (vector-set!
                               _%table114351%_
                               _%probe114372%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table114351%_
                               (##fx+ _%probe114372%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab114348%_
                                  (##fx- (&raw-table-count _%tab114348%_)
                                         '1)))))
                            (_%loop114369%_
                             (let ((_%next-probe114388%_
                                    (fx+ _%start114365%_
                                         _%i114374%_
                                         (fx* _%i114374%_ _%i114374%_))))
                               (##fxmodulo
                                _%next-probe114388%_
                                _%size114359%_))
                             (##fx+ _%i114374%_ '1)))))))))))
    (define string-table-delete!/lock
      (lambda (_%tab114320%_ _%key114322%_)
        (let ((_%lock114325%_ (&raw-table-lock _%tab114320%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again114330%_ ((_%spin114333%_ '0))
              (if (##fx= (##vector-cas! _%lock114325%_ '0 '1 '0) '0)
                  (##vector-set! _%lock114325%_ '1 (current-thread))
                  (if (##fx< _%spin114333%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again114330%_ (##fx+ _%spin114333%_ '1)))
                      (let ((_%owner114339%_ (##vector-ref _%lock114325%_ '1)))
                        (if (eq? _%owner114339%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner114339%_)
                                (let () (##thread-yield!) (_%again114330%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r114345%_
                 (string-table-delete! _%tab114320%_ _%key114322%_)))
            (##vector-set! _%lock114325%_ '1 '#f)
            (##vector-cas! _%lock114325%_ '0 '0 '1)
            _%$r114345%_))))
    (define make-immediate-table__%
      (lambda (_%size-hint114302%_ _%seed114303%_)
        (make-raw-table__1
         _%size-hint114302%_
         immediate-hash
         eq?
         _%seed114303%_)))
    (define make-immediate-table__0
      (lambda ()
        (let* ((_%size-hint114309%_ '#f) (_%seed114311%_ '0))
          (make-immediate-table__% _%size-hint114309%_ _%seed114311%_))))
    (define make-immediate-table__1
      (lambda (_%size-hint114313%_)
        (let ((_%seed114315%_ '0))
          (make-immediate-table__% _%size-hint114313%_ _%seed114315%_))))
    (define make-immediate-table
      (lambda _g116305_
        (let ((_g116306_ (##length _g116305_)))
          (cond ((##fx= _g116306_ 0) (apply make-immediate-table__0 _g116305_))
                ((##fx= _g116306_ 1) (apply make-immediate-table__1 _g116305_))
                ((##fx= _g116306_ 2) (apply make-immediate-table__% _g116305_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table
                  _g116305_))))))
    (define make-immediate-table/lock__%
      (lambda (_%size-hint114282%_ _%seed114284%_)
        (make-raw-table/lock__%
         _%size-hint114282%_
         immediate-hash
         eq?
         _%seed114284%_)))
    (define make-immediate-table/lock__0
      (lambda ()
        (let* ((_%size-hint114290%_ '#f) (_%seed114292%_ '0))
          (make-immediate-table/lock__% _%size-hint114290%_ _%seed114292%_))))
    (define make-immediate-table/lock__1
      (lambda (_%size-hint114294%_)
        (let ((_%seed114296%_ '0))
          (make-immediate-table/lock__% _%size-hint114294%_ _%seed114296%_))))
    (define make-immediate-table/lock
      (lambda _g116307_
        (let ((_g116308_ (##length _g116307_)))
          (cond ((##fx= _g116308_ 0)
                 (apply make-immediate-table/lock__0 _g116307_))
                ((##fx= _g116308_ 1)
                 (apply make-immediate-table/lock__1 _g116307_))
                ((##fx= _g116308_ 2)
                 (apply make-immediate-table/lock__% _g116307_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table/lock
                  _g116307_))))))
    (define immediate-table-ref
      (lambda (_%tab114235%_ _%key114236%_ _%default114237%_)
        (let ((_%table114239%_ (&raw-table-table _%tab114235%_))
              (_%seed114240%_ (&raw-table-seed _%tab114235%_)))
          (let* ((_%h114242%_
                  (fxxor (immediate-hash _%key114236%_) _%seed114240%_))
                 (_%size114245%_ (vector-length _%table114239%_))
                 (_%entries114248%_ (##fxquotient _%size114245%_ '2))
                 (_%start114251%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h114242%_ _%entries114248%_)
                   '1)))
            (let _%loop114255%_ ((_%probe114258%_ _%start114251%_)
                                 (_%i114260%_ '1)
                                 (_%deleted114262%_ '#f))
              (let ((_%k114265%_ (vector-ref _%table114239%_ _%probe114258%_)))
                (if (eq? _%k114265%_ (macro-unused-obj))
                    _%default114237%_
                    (if (eq? _%k114265%_ (macro-deleted-obj))
                        (_%loop114255%_
                         (let ((_%next-probe114270%_
                                (fx+ _%start114251%_
                                     _%i114260%_
                                     (fx* _%i114260%_ _%i114260%_))))
                           (##fxmodulo _%next-probe114270%_ _%size114245%_))
                         (##fx+ _%i114260%_ '1)
                         (let ((_%$e114273%_ _%deleted114262%_))
                           (if _%$e114273%_ _%$e114273%_ _%probe114258%_)))
                        (if (eq? _%key114236%_ _%k114265%_)
                            (vector-ref
                             _%table114239%_
                             (##fx+ _%probe114258%_ '1))
                            (_%loop114255%_
                             (let ((_%next-probe114278%_
                                    (fx+ _%start114251%_
                                         _%i114260%_
                                         (fx* _%i114260%_ _%i114260%_))))
                               (##fxmodulo
                                _%next-probe114278%_
                                _%size114245%_))
                             (##fx+ _%i114260%_ '1)
                             _%deleted114262%_))))))))))
    (define immediate-table-ref/lock
      (lambda (_%tab114208%_ _%key114209%_ _%default114210%_)
        (let ((_%lock114212%_ (&raw-table-lock _%tab114208%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again114217%_ ((_%spin114220%_ '0))
              (if (##fx= (##vector-cas! _%lock114212%_ '0 '1 '0) '0)
                  (##vector-set! _%lock114212%_ '1 (current-thread))
                  (if (##fx< _%spin114220%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again114217%_ (##fx+ _%spin114220%_ '1)))
                      (let ((_%owner114226%_ (##vector-ref _%lock114212%_ '1)))
                        (if (eq? _%owner114226%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner114226%_)
                                (let () (##thread-yield!) (_%again114217%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r114232%_
                 (immediate-table-ref
                  _%tab114208%_
                  _%key114209%_
                  _%default114210%_)))
            (##vector-set! _%lock114212%_ '1 '#f)
            (##vector-cas! _%lock114212%_ '0 '0 '1)
            _%$r114232%_))))
    (define __immediate-table-set!
      (lambda (_%tab114160%_ _%key114161%_ _%value114162%_)
        (let ((_%table114164%_ (&raw-table-table _%tab114160%_))
              (_%seed114165%_ (&raw-table-seed _%tab114160%_)))
          (let* ((_%h114167%_
                  (fxxor (immediate-hash _%key114161%_) _%seed114165%_))
                 (_%size114170%_ (vector-length _%table114164%_))
                 (_%entries114173%_ (##fxquotient _%size114170%_ '2))
                 (_%start114176%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h114167%_ _%entries114173%_)
                   '1)))
            (let _%loop114180%_ ((_%probe114183%_ _%start114176%_)
                                 (_%i114185%_ '1)
                                 (_%deleted114187%_ '#f))
              (let ((_%k114190%_ (vector-ref _%table114164%_ _%probe114183%_)))
                (if (eq? _%k114190%_ (macro-unused-obj))
                    (if _%deleted114187%_
                        (begin
                          (vector-set!
                           _%table114164%_
                           _%deleted114187%_
                           _%key114161%_)
                          (vector-set!
                           _%table114164%_
                           (##fx+ _%deleted114187%_ '1)
                           _%value114162%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab114160%_
                              (##fx+ (&raw-table-count _%tab114160%_) '1)))))
                        (begin
                          (vector-set!
                           _%table114164%_
                           _%probe114183%_
                           _%key114161%_)
                          (vector-set!
                           _%table114164%_
                           (##fx+ _%probe114183%_ '1)
                           _%value114162%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab114160%_
                              (##fx- (&raw-table-free _%tab114160%_) '1))
                             (&raw-table-count-set!
                              _%tab114160%_
                              (##fx+ (&raw-table-count _%tab114160%_) '1))))))
                    (if (eq? _%k114190%_ (macro-deleted-obj))
                        (_%loop114180%_
                         (let ((_%next-probe114197%_
                                (fx+ _%start114176%_
                                     _%i114185%_
                                     (fx* _%i114185%_ _%i114185%_))))
                           (##fxmodulo _%next-probe114197%_ _%size114170%_))
                         (##fx+ _%i114185%_ '1)
                         (let ((_%$e114200%_ _%deleted114187%_))
                           (if _%$e114200%_ _%$e114200%_ _%probe114183%_)))
                        (if (eq? _%key114161%_ _%k114190%_)
                            (let ()
                              (vector-set!
                               _%table114164%_
                               _%probe114183%_
                               _%key114161%_)
                              (vector-set!
                               _%table114164%_
                               (##fx+ _%probe114183%_ '1)
                               _%value114162%_))
                            (_%loop114180%_
                             (let ((_%next-probe114205%_
                                    (fx+ _%start114176%_
                                         _%i114185%_
                                         (fx* _%i114185%_ _%i114185%_))))
                               (##fxmodulo
                                _%next-probe114205%_
                                _%size114170%_))
                             (##fx+ _%i114185%_ '1)
                             _%deleted114187%_))))))))))
    (define immediate-table-set!
      (lambda (_%tab114156%_ _%key114157%_ _%value114158%_)
        (if (##fx< (&raw-table-free _%tab114156%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab114156%_))
                    '4))
            (__raw-table-rehash! _%tab114156%_)
            '#!void)
        (__immediate-table-set! _%tab114156%_ _%key114157%_ _%value114158%_)))
    (define immediate-table-set!/lock
      (lambda (_%tab114128%_ _%key114129%_ _%value114130%_)
        (let ((_%lock114133%_ (&raw-table-lock _%tab114128%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again114138%_ ((_%spin114141%_ '0))
              (if (##fx= (##vector-cas! _%lock114133%_ '0 '1 '0) '0)
                  (##vector-set! _%lock114133%_ '1 (current-thread))
                  (if (##fx< _%spin114141%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again114138%_ (##fx+ _%spin114141%_ '1)))
                      (let ((_%owner114147%_ (##vector-ref _%lock114133%_ '1)))
                        (if (eq? _%owner114147%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner114147%_)
                                (let () (##thread-yield!) (_%again114138%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r114153%_
                 (immediate-table-set!
                  _%tab114128%_
                  _%key114129%_
                  _%value114130%_)))
            (##vector-set! _%lock114133%_ '1 '#f)
            (##vector-cas! _%lock114133%_ '0 '0 '1)
            _%$r114153%_))))
    (define __immediate-table-update!
      (lambda (_%tab114079%_
               _%key114080%_
               _%immediate-table-update!114081%_
               _%default114082%_)
        (let ((_%table114084%_ (&raw-table-table _%tab114079%_))
              (_%seed114085%_ (&raw-table-seed _%tab114079%_)))
          (let* ((_%h114087%_
                  (fxxor (immediate-hash _%key114080%_) _%seed114085%_))
                 (_%size114090%_ (vector-length _%table114084%_))
                 (_%entries114093%_ (##fxquotient _%size114090%_ '2))
                 (_%start114096%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h114087%_ _%entries114093%_)
                   '1)))
            (let _%loop114100%_ ((_%probe114103%_ _%start114096%_)
                                 (_%i114105%_ '1)
                                 (_%deleted114107%_ '#f))
              (let ((_%k114110%_ (vector-ref _%table114084%_ _%probe114103%_)))
                (if (eq? _%k114110%_ (macro-unused-obj))
                    (if _%deleted114107%_
                        (begin
                          (vector-set!
                           _%table114084%_
                           _%deleted114107%_
                           _%key114080%_)
                          (vector-set!
                           _%table114084%_
                           (##fx+ _%deleted114107%_ '1)
                           (_%immediate-table-update!114081%_
                            _%default114082%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab114079%_
                              (##fx+ (&raw-table-count _%tab114079%_) '1)))))
                        (begin
                          (vector-set!
                           _%table114084%_
                           _%probe114103%_
                           _%key114080%_)
                          (vector-set!
                           _%table114084%_
                           (##fx+ _%probe114103%_ '1)
                           (_%immediate-table-update!114081%_
                            _%default114082%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab114079%_
                              (##fx- (&raw-table-free _%tab114079%_) '1))
                             (&raw-table-count-set!
                              _%tab114079%_
                              (##fx+ (&raw-table-count _%tab114079%_) '1))))))
                    (if (eq? _%k114110%_ (macro-deleted-obj))
                        (_%loop114100%_
                         (let ((_%next-probe114117%_
                                (fx+ _%start114096%_
                                     _%i114105%_
                                     (fx* _%i114105%_ _%i114105%_))))
                           (##fxmodulo _%next-probe114117%_ _%size114090%_))
                         (##fx+ _%i114105%_ '1)
                         (let ((_%$e114120%_ _%deleted114107%_))
                           (if _%$e114120%_ _%$e114120%_ _%probe114103%_)))
                        (if (eq? _%key114080%_ _%k114110%_)
                            (let ()
                              (vector-set!
                               _%table114084%_
                               _%probe114103%_
                               _%key114080%_)
                              (vector-set!
                               _%table114084%_
                               (##fx+ _%probe114103%_ '1)
                               (_%immediate-table-update!114081%_
                                (vector-ref
                                 _%table114084%_
                                 (##fx+ _%probe114103%_ '1)))))
                            (_%loop114100%_
                             (let ((_%next-probe114125%_
                                    (fx+ _%start114096%_
                                         _%i114105%_
                                         (fx* _%i114105%_ _%i114105%_))))
                               (##fxmodulo
                                _%next-probe114125%_
                                _%size114090%_))
                             (##fx+ _%i114105%_ '1)
                             _%deleted114107%_))))))))))
    (define immediate-table-update!
      (lambda (_%tab114074%_
               _%key114075%_
               _%immediate-table-update!114076%_
               _%default114077%_)
        (if (##fx< (&raw-table-free _%tab114074%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab114074%_))
                    '4))
            (__raw-table-rehash! _%tab114074%_)
            '#!void)
        (__immediate-table-update!
         _%tab114074%_
         _%key114075%_
         _%immediate-table-update!114076%_
         _%default114077%_)))
    (define immediate-table-update!/lock
      (lambda (_%tab114045%_
               _%key114046%_
               _%immediate-table-update!114047%_
               _%default114048%_)
        (let ((_%lock114051%_ (&raw-table-lock _%tab114045%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again114056%_ ((_%spin114059%_ '0))
              (if (##fx= (##vector-cas! _%lock114051%_ '0 '1 '0) '0)
                  (##vector-set! _%lock114051%_ '1 (current-thread))
                  (if (##fx< _%spin114059%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again114056%_ (##fx+ _%spin114059%_ '1)))
                      (let ((_%owner114065%_ (##vector-ref _%lock114051%_ '1)))
                        (if (eq? _%owner114065%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner114065%_)
                                (let () (##thread-yield!) (_%again114056%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r114071%_
                 (_%immediate-table-update!114047%_
                  _%tab114045%_
                  _%key114046%_
                  _%immediate-table-update!114047%_
                  _%default114048%_)))
            (##vector-set! _%lock114051%_ '1 '#f)
            (##vector-cas! _%lock114051%_ '0 '0 '1)
            _%$r114071%_))))
    (define immediate-table-delete!
      (lambda (_%tab114002%_ _%key114003%_)
        (let ((_%table114005%_ (&raw-table-table _%tab114002%_))
              (_%seed114007%_ (&raw-table-seed _%tab114002%_)))
          (let* ((_%h114010%_
                  (fxxor (immediate-hash _%key114003%_) _%seed114007%_))
                 (_%size114013%_ (vector-length _%table114005%_))
                 (_%entries114016%_ (##fxquotient _%size114013%_ '2))
                 (_%start114019%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h114010%_ _%entries114016%_)
                   '1)))
            (let _%loop114023%_ ((_%probe114026%_ _%start114019%_)
                                 (_%i114028%_ '1))
              (let ((_%k114031%_ (vector-ref _%table114005%_ _%probe114026%_)))
                (if (eq? _%k114031%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k114031%_ (macro-deleted-obj))
                        (_%loop114023%_
                         (let ((_%next-probe114036%_
                                (fx+ _%start114019%_
                                     _%i114028%_
                                     (fx* _%i114028%_ _%i114028%_))))
                           (##fxmodulo _%next-probe114036%_ _%size114013%_))
                         (##fx+ _%i114028%_ '1))
                        (if (eq? _%key114003%_ _%k114031%_)
                            (let ()
                              (vector-set!
                               _%table114005%_
                               _%probe114026%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table114005%_
                               (##fx+ _%probe114026%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab114002%_
                                  (##fx- (&raw-table-count _%tab114002%_)
                                         '1)))))
                            (_%loop114023%_
                             (let ((_%next-probe114042%_
                                    (fx+ _%start114019%_
                                         _%i114028%_
                                         (fx* _%i114028%_ _%i114028%_))))
                               (##fxmodulo
                                _%next-probe114042%_
                                _%size114013%_))
                             (##fx+ _%i114028%_ '1)))))))))))
    (define immediate-table-delete!/lock
      (lambda (_%tab113974%_ _%key113976%_)
        (let ((_%lock113979%_ (&raw-table-lock _%tab113974%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again113984%_ ((_%spin113987%_ '0))
              (if (##fx= (##vector-cas! _%lock113979%_ '0 '1 '0) '0)
                  (##vector-set! _%lock113979%_ '1 (current-thread))
                  (if (##fx< _%spin113987%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again113984%_ (##fx+ _%spin113987%_ '1)))
                      (let ((_%owner113993%_ (##vector-ref _%lock113979%_ '1)))
                        (if (eq? _%owner113993%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner113993%_)
                                (let () (##thread-yield!) (_%again113984%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r113999%_
                 (immediate-table-delete! _%tab113974%_ _%key113976%_)))
            (##vector-set! _%lock113979%_ '1 '#f)
            (##vector-cas! _%lock113979%_ '0 '0 '1)
            _%$r113999%_))))
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
      (lambda (_%tab113972%_)
        (##unchecked-structure-ref
         _%tab113972%_
         '1
         __gc-table::t
         'gc-table-gcht)))
    (define &gc-table-immediate
      (lambda (_%tab113970%_)
        (##unchecked-structure-ref
         _%tab113970%_
         '2
         __gc-table::t
         'gc-table-immediate)))
    (define &gc-table-lock
      (lambda (_%tab113968%_)
        (##unchecked-structure-ref
         _%tab113968%_
         '3
         __gc-table::t
         'gc-table-lock)))
    (define &gc-table-gcht-set!
      (lambda (_%tab113965%_ _%val113966%_)
        (##unchecked-structure-set!
         _%tab113965%_
         _%val113966%_
         '1
         __gc-table::t
         'gc-table-gcht-set!)))
    (define &gc-table-immediate-set!
      (lambda (_%tab113962%_ _%val113963%_)
        (##unchecked-structure-set!
         _%tab113962%_
         _%val113963%_
         '2
         __gc-table::t
         'gc-table-immediate-set!)))
    (define &gc-table-lock-set!
      (lambda (_%tab113959%_ _%val113960%_)
        (##unchecked-structure-set!
         _%tab113959%_
         _%val113960%_
         '3
         __gc-table::t
         'gc-table-lock-set!)))
    (define make-gc-table__%
      (lambda (_%size-hint113923%_
               _%klass113924%_
               _%flags113925%_
               _%lock113926%_)
        (let ((_%gcht113928%_
               (__gc-table-new
                (if (fixnum? _%size-hint113923%_) _%size-hint113923%_ '16)
                _%flags113925%_)))
          (##structure _%klass113924%_ _%gcht113928%_ '#f _%lock113926%_))))
    (define make-gc-table__0
      (lambda (_%size-hint113933%_)
        (let* ((_%klass113935%_ __gc-table::t)
               (_%flags113937%_ '0)
               (_%lock113939%_ '#f))
          (make-gc-table__%
           _%size-hint113933%_
           _%klass113935%_
           _%flags113937%_
           _%lock113939%_))))
    (define make-gc-table__1
      (lambda (_%size-hint113941%_ _%klass113942%_)
        (let* ((_%flags113944%_ '0) (_%lock113946%_ '#f))
          (make-gc-table__%
           _%size-hint113941%_
           _%klass113942%_
           _%flags113944%_
           _%lock113946%_))))
    (define make-gc-table__2
      (lambda (_%size-hint113948%_ _%klass113949%_ _%flags113950%_)
        (let ((_%lock113952%_ '#f))
          (make-gc-table__%
           _%size-hint113948%_
           _%klass113949%_
           _%flags113950%_
           _%lock113952%_))))
    (define make-gc-table
      (lambda _g116309_
        (let ((_g116310_ (##length _g116309_)))
          (cond ((##fx= _g116310_ 1) (apply make-gc-table__0 _g116309_))
                ((##fx= _g116310_ 2) (apply make-gc-table__1 _g116309_))
                ((##fx= _g116310_ 3) (apply make-gc-table__2 _g116309_))
                ((##fx= _g116310_ 4) (apply make-gc-table__% _g116309_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table
                  _g116309_))))))
    (define make-gc-table/lock__%
      (lambda (_%size-hint113900%_ _%klass113901%_ _%flags113902%_)
        (make-gc-table__%
         _%size-hint113900%_
         _%klass113901%_
         _%flags113902%_
         (vector '0 '#f))))
    (define make-gc-table/lock__0
      (lambda (_%size-hint113907%_)
        (let* ((_%klass113909%_ __gc-table::t) (_%flags113911%_ '0))
          (make-gc-table/lock__%
           _%size-hint113907%_
           _%klass113909%_
           _%flags113911%_))))
    (define make-gc-table/lock__1
      (lambda (_%size-hint113913%_ _%klass113914%_)
        (let ((_%flags113916%_ '0))
          (make-gc-table/lock__%
           _%size-hint113913%_
           _%klass113914%_
           _%flags113916%_))))
    (define make-gc-table/lock
      (lambda _g116311_
        (let ((_g116312_ (##length _g116311_)))
          (cond ((##fx= _g116312_ 1) (apply make-gc-table/lock__0 _g116311_))
                ((##fx= _g116312_ 2) (apply make-gc-table/lock__1 _g116311_))
                ((##fx= _g116312_ 3) (apply make-gc-table/lock__% _g116311_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table/lock
                  _g116311_))))))
    (define __gc-table-immediate
      (lambda (_%tab113891%_)
        (let ((_%$e113893%_ (&gc-table-immediate _%tab113891%_)))
          (if _%$e113893%_
              _%$e113893%_
              (let ((_%immediate113897%_ (make-immediate-table__% '#f '0)))
                (&gc-table-immediate-set! _%tab113891%_ _%immediate113897%_)
                _%immediate113897%_)))))
    (define __gc-table-new
      (lambda (_%size113881%_ _%flags113882%_)
        (let* ((_%flags113884%_
                (##fxand _%flags113882%_
                         (fxnot (macro-gc-hash-table-flag-need-rehash))))
               (_%flags113886%_
                (fxior _%flags113884%_
                       (macro-gc-hash-table-flag-mem-alloc-keys)))
               (_%gcht113888%_
                (##gc-hash-table-allocate
                 _%size113881%_
                 _%flags113886%_
                 __gc-table-loads)))
          _%gcht113888%_)))
    (define __gc-table-e
      (lambda (_%tab113876%_)
        (declare (not interrupts-enabled))
        (let ((_%gcht113879%_ (&gc-table-gcht _%tab113876%_)))
          (if (##fx= '0
                     (fxand (macro-gc-hash-table-flags _%gcht113879%_)
                            (macro-gc-hash-table-flag-need-rehash)))
              _%gcht113879%_
              (begin
                (__gc-table-rehash! _%tab113876%_)
                (&gc-table-gcht _%tab113876%_))))))
    (define __gc-table-rehash!
      (lambda (_%tab113867%_)
        (let* ((_%old-table113869%_ (&gc-table-gcht _%tab113867%_))
               (_%new-table113871%_
                (##gc-hash-table-resize! _%old-table113869%_ __gc-table-loads))
               (_%gcht113873%_
                (##gc-hash-table-rehash!
                 _%old-table113869%_
                 _%new-table113871%_)))
          (&gc-table-gcht-set! _%tab113867%_ _%gcht113873%_))))
    (define gc-table-ref
      (lambda (_%tab113851%_ _%key113852%_ _%default113853%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key113852%_)
            (let* ((_%gcht113857%_ (__gc-table-e _%tab113851%_))
                   (_%value113859%_
                    (##gc-hash-table-ref _%gcht113857%_ _%key113852%_)))
              (if (eq? _%value113859%_ (macro-unused-obj))
                  _%default113853%_
                  _%value113859%_))
            (let ((_%$e113861%_ (&gc-table-immediate _%tab113851%_)))
              (if _%$e113861%_
                  ((lambda (_%immediate113864%_)
                     (immediate-table-ref
                      _%immediate113864%_
                      _%key113852%_
                      _%default113853%_))
                   _%$e113861%_)
                  _%default113853%_)))))
    (define gc-table-ref/lock
      (lambda (_%tab113827%_ _%key113828%_ _%default113829%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again113833%_ ((_%spin113836%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab113827%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab113827%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin113836%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again113833%_ (##fx+ _%spin113836%_ '1)))
                    (let ((_%owner113842%_
                           (##vector-ref (&gc-table-lock _%tab113827%_) '1)))
                      (if (eq? _%owner113842%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner113842%_)
                              (let () (##thread-yield!) (_%again113833%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r113848%_
               (gc-table-ref _%tab113827%_ _%key113828%_ _%default113829%_)))
          (##vector-set! (&gc-table-lock _%tab113827%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab113827%_) '0 '0 '1)
          _%$r113848%_)))
    (define gc-table-set!
      (lambda (_%tab113820%_ _%key113821%_ _%value113822%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key113821%_)
            (let ((_%gcht113825%_ (__gc-table-e _%tab113820%_)))
              (if (##gc-hash-table-set!
                   _%gcht113825%_
                   _%key113821%_
                   _%value113822%_)
                  (begin
                    (__gc-table-rehash! _%tab113820%_)
                    (gc-table-set!
                     _%tab113820%_
                     _%key113821%_
                     _%value113822%_))
                  '#!void))
            (immediate-table-set!
             (__gc-table-immediate _%tab113820%_)
             _%key113821%_
             _%value113822%_))))
    (define gc-table-set/lock!
      (lambda (_%tab113796%_ _%key113797%_ _%value113798%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again113802%_ ((_%spin113805%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab113796%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab113796%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin113805%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again113802%_ (##fx+ _%spin113805%_ '1)))
                    (let ((_%owner113811%_
                           (##vector-ref (&gc-table-lock _%tab113796%_) '1)))
                      (if (eq? _%owner113811%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner113811%_)
                              (let () (##thread-yield!) (_%again113802%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r113817%_
               (gc-table-set! _%tab113796%_ _%key113797%_ _%value113798%_)))
          (##vector-set! (&gc-table-lock _%tab113796%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab113796%_) '0 '0 '1)
          _%$r113817%_)))
    (define gc-table-update!
      (lambda (_%tab113789%_ _%key113790%_ _%update113791%_ _%default113792%_)
        (if (##mem-allocated? _%key113790%_)
            (let ((_%value113794%_
                   (gc-table-ref
                    _%tab113789%_
                    _%key113790%_
                    _%default113792%_)))
              (gc-table-set!
               _%tab113789%_
               _%key113790%_
               (_%update113791%_ _%value113794%_)))
            (immediate-table-update!
             (__gc-table-immediate _%tab113789%_)
             _%key113790%_
             _%update113791%_
             _%default113792%_))))
    (define gc-table-update!/lock
      (lambda (_%tab113764%_ _%key113765%_ _%update113766%_ _%default113767%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again113771%_ ((_%spin113774%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab113764%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab113764%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin113774%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again113771%_ (##fx+ _%spin113774%_ '1)))
                    (let ((_%owner113780%_
                           (##vector-ref (&gc-table-lock _%tab113764%_) '1)))
                      (if (eq? _%owner113780%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner113780%_)
                              (let () (##thread-yield!) (_%again113771%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r113786%_
               (gc-table-update!
                _%tab113764%_
                _%key113765%_
                _%update113766%_
                _%default113767%_)))
          (##vector-set! (&gc-table-lock _%tab113764%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab113764%_) '0 '0 '1)
          _%$r113786%_)))
    (define gc-table-delete!
      (lambda (_%tab113752%_ _%key113753%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key113753%_)
            (let ((_%gcht113757%_ (__gc-table-e _%tab113752%_)))
              (if (##gc-hash-table-set!
                   _%gcht113757%_
                   _%key113753%_
                   (macro-absent-obj))
                  (begin
                    (__gc-table-rehash! _%tab113752%_)
                    (gc-table-delete! _%tab113752%_ _%key113753%_))
                  '#!void))
            (let ((_%$e113759%_ (&gc-table-immediate _%tab113752%_)))
              (if _%$e113759%_
                  ((lambda (_%immediate113762%_)
                     (immediate-table-delete!
                      _%immediate113762%_
                      _%key113753%_))
                   _%$e113759%_)
                  '#!void)))))
    (define gc-table-delete!/lock
      (lambda (_%tab113729%_ _%key113730%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again113734%_ ((_%spin113737%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab113729%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab113729%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin113737%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again113734%_ (##fx+ _%spin113737%_ '1)))
                    (let ((_%owner113743%_
                           (##vector-ref (&gc-table-lock _%tab113729%_) '1)))
                      (if (eq? _%owner113743%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner113743%_)
                              (let () (##thread-yield!) (_%again113734%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r113749%_ (gc-table-delete! _%tab113729%_ _%key113730%_)))
          (##vector-set! (&gc-table-lock _%tab113729%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab113729%_) '0 '0 '1)
          _%$r113749%_)))
    (define gc-table-for-each
      (lambda (_%tab113718%_ _%proc113719%_)
        (declare (not interrupts-enabled))
        (begin
          (let ((_%gcht113722%_ (__gc-table-e _%tab113718%_)))
            (##gc-hash-table-for-each _%proc113719%_ _%gcht113722%_))
          (let ((_%$e113724%_ (&gc-table-immediate _%tab113718%_)))
            (if _%$e113724%_
                ((lambda (_%immediate113727%_)
                   (raw-table-for-each _%immediate113727%_ _%proc113719%_))
                 _%$e113724%_)
                '#!void)))))
    (define gc-table-for-each/lock
      (lambda (_%tab113695%_ _%proc113696%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again113700%_ ((_%spin113703%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab113695%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab113695%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin113703%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again113700%_ (##fx+ _%spin113703%_ '1)))
                    (let ((_%owner113709%_
                           (##vector-ref (&gc-table-lock _%tab113695%_) '1)))
                      (if (eq? _%owner113709%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner113709%_)
                              (let () (##thread-yield!) (_%again113700%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r113715%_ (gc-table-for-each _%tab113695%_ _%proc113696%_)))
          (##vector-set! (&gc-table-lock _%tab113695%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab113695%_) '0 '0 '1)
          _%$r113715%_)))
    (define gc-table-copy
      (lambda (_%tab113683%_)
        (let* ((_%gcht113685%_ (__gc-table-e _%tab113683%_))
               (_%new-table113687%_
                (__gc-table-new
                 (macro-gc-hash-table-count _%gcht113685%_)
                 (macro-gc-hash-table-flags _%gcht113685%_)))
               (_%result113689%_
                (##structure
                 (##structure-type _%tab113683%_)
                 _%new-table113687%_
                 '#f)))
          (gc-table-for-each
           _%tab113683%_
           (lambda (_%k113692%_ _%v113693%_)
             (gc-table-set! _%result113689%_ _%k113692%_ _%v113693%_)))
          _%result113689%_)))
    (define gc-table-copy/lock
      (lambda (_%tab113661%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again113665%_ ((_%spin113668%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab113661%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab113661%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin113668%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again113665%_ (##fx+ _%spin113668%_ '1)))
                    (let ((_%owner113674%_
                           (##vector-ref (&gc-table-lock _%tab113661%_) '1)))
                      (if (eq? _%owner113674%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner113674%_)
                              (let () (##thread-yield!) (_%again113665%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r113680%_ (gc-table-copy _%tab113661%_)))
          (##vector-set! (&gc-table-lock _%tab113661%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab113661%_) '0 '0 '1)
          _%$r113680%_)))
    (define gc-table-clear!
      (lambda (_%tab113654%_)
        (let* ((_%gcht113656%_ (__gc-table-e _%tab113654%_))
               (_%new-table113658%_
                (__gc-table-new
                 '16
                 (macro-gc-hash-table-flags _%gcht113656%_))))
          (&gc-table-gcht-set! _%tab113654%_ _%new-table113658%_)
          (&gc-table-immediate-set! _%tab113654%_ '#f))))
    (define gc-table-clear!/lock
      (lambda (_%tab113632%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again113636%_ ((_%spin113639%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab113632%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab113632%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin113639%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again113636%_ (##fx+ _%spin113639%_ '1)))
                    (let ((_%owner113645%_
                           (##vector-ref (&gc-table-lock _%tab113632%_) '1)))
                      (if (eq? _%owner113645%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner113645%_)
                              (let () (##thread-yield!) (_%again113636%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r113651%_ (gc-table-clear! _%tab113632%_)))
          (##vector-set! (&gc-table-lock _%tab113632%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab113632%_) '0 '0 '1)
          _%$r113651%_)))
    (define gc-table-length
      (lambda (_%tab113624%_)
        (let ((_%gcht113626%_ (__gc-table-e _%tab113624%_)))
          (fx+ (macro-gc-hash-table-count _%gcht113626%_)
               (let ((_%$e113628%_ (&gc-table-immediate _%tab113624%_)))
                 (if _%$e113628%_ (&raw-table-count _%$e113628%_) '0))))))
    (define gc-table-length/lock
      (lambda (_%tab113602%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again113606%_ ((_%spin113609%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab113602%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab113602%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin113609%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again113606%_ (##fx+ _%spin113609%_ '1)))
                    (let ((_%owner113615%_
                           (##vector-ref (&gc-table-lock _%tab113602%_) '1)))
                      (if (eq? _%owner113615%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner113615%_)
                              (let () (##thread-yield!) (_%again113606%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r113621%_ (gc-table-length _%tab113602%_)))
          (##vector-set! (&gc-table-lock _%tab113602%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab113602%_) '0 '0 '1)
          _%$r113621%_)))
    (define __object-eq-hash-lock (vector '0 '#f))
    (define __object-eq-hash-next '0)
    (define __object-eq-hash
      (make-gc-table__2
       '1024
       __gc-table::t
       (macro-gc-hash-table-flag-weak-keys)))
    (define __object->eq-hash
      (lambda (_%obj113572%_)
        (declare (not interrupts-enabled))
        (begin
          (let ()
            (declare (not interrupts-enabled))
            (let _%again113577%_ ((_%spin113580%_ '0))
              (if (##fx= (##vector-cas! __object-eq-hash-lock '0 '1 '0) '0)
                  (##vector-set! __object-eq-hash-lock '1 (current-thread))
                  (if (##fx< _%spin113580%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again113577%_ (##fx+ _%spin113580%_ '1)))
                      (let ((_%owner113586%_
                             (##vector-ref __object-eq-hash-lock '1)))
                        (if (eq? _%owner113586%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner113586%_)
                                (let () (##thread-yield!) (_%again113577%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r113599%_
                 (let ((_%val113592%_
                        (gc-table-ref __object-eq-hash _%obj113572%_ '#f)))
                   (if _%val113592%_
                       _%val113592%_
                       (let ((_%h113594%_
                              (fxand __object-eq-hash (macro-max-fixnum32))))
                         (set! __object-eq-hash-next
                               (let ((_%$e113596%_
                                      (##fx+? __object-eq-hash-next '1)))
                                 (if _%$e113596%_ _%$e113596%_ '0)))
                         (gc-table-set!
                          __object-eq-hash
                          _%obj113572%_
                          _%h113594%_)
                         _%h113594%_)))))
            (##vector-set! __object-eq-hash-lock '1 '#f)
            (##vector-cas! __object-eq-hash-lock '0 '0 '1)
            _%$r113599%_))))))
