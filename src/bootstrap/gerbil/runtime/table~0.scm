(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1770513293)
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
      (lambda (_%obj116376%_)
        (if (##structure? _%obj116376%_)
            (##structure-instance-of? _%obj116376%_ __table::t.id)
            '#f)))
    (define &raw-table-table
      (lambda (_%tab116374%_)
        (##unchecked-structure-ref
         _%tab116374%_
         '1
         __table::t
         'raw-table-table)))
    (define &raw-table-count
      (lambda (_%tab116372%_)
        (##unchecked-structure-ref
         _%tab116372%_
         '2
         __table::t
         'raw-table-count)))
    (define &raw-table-free
      (lambda (_%tab116370%_)
        (##unchecked-structure-ref
         _%tab116370%_
         '3
         __table::t
         'raw-table-free)))
    (define &raw-table-hash
      (lambda (_%tab116368%_)
        (##unchecked-structure-ref
         _%tab116368%_
         '4
         __table::t
         'raw-table-hash)))
    (define &raw-table-test
      (lambda (_%tab116366%_)
        (##unchecked-structure-ref
         _%tab116366%_
         '5
         __table::t
         'raw-table-test)))
    (define &raw-table-seed
      (lambda (_%tab116364%_)
        (##unchecked-structure-ref
         _%tab116364%_
         '6
         __table::t
         'raw-table-seed)))
    (define &raw-table-lock
      (lambda (_%tab116362%_)
        (##unchecked-structure-ref
         _%tab116362%_
         '7
         __table::t
         'raw-table-lock)))
    (define &raw-table-table-set!
      (lambda (_%tab116359%_ _%val116360%_)
        (##unchecked-structure-set!
         _%tab116359%_
         _%val116360%_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_%tab116356%_ _%val116357%_)
        (##unchecked-structure-set!
         _%tab116356%_
         _%val116357%_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_%tab116353%_ _%val116354%_)
        (##unchecked-structure-set!
         _%tab116353%_
         _%val116354%_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_%tab116350%_ _%val116351%_)
        (##unchecked-structure-set!
         _%tab116350%_
         _%val116351%_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_%tab116347%_ _%val116348%_)
        (##unchecked-structure-set!
         _%tab116347%_
         _%val116348%_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_%tab116344%_ _%val116345%_)
        (##unchecked-structure-set!
         _%tab116344%_
         _%val116345%_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define &raw-table-lock-set!
      (lambda (_%tab116341%_ _%val116342%_)
        (##unchecked-structure-set!
         _%tab116341%_
         _%val116342%_
         '7
         __table::t
         'raw-table-lock-set!)))
    (define raw-table-size-hint->size
      (lambda (_%size-hint116339%_)
        (if (and (fixnum? _%size-hint116339%_) (##fx> _%size-hint116339%_ '0))
            (##fx* (fxmax '2 (expt '2 (integer-length _%size-hint116339%_)))
                   '4)
            '16)))
    (define make-raw-table__%
      (lambda (_%size-hint116304%_
               _%hash116305%_
               _%test116306%_
               _%seed116307%_
               _%lock116308%_)
        (let* ((_%size116310%_ (raw-table-size-hint->size _%size-hint116304%_))
               (_%table116312%_
                (##make-vector _%size116310%_ (macro-unused-obj))))
          (##structure
           __table::t
           _%table116312%_
           '0
           (##fxquotient _%size116310%_ '2)
           _%hash116305%_
           _%test116306%_
           _%seed116307%_
           _%lock116308%_))))
    (define make-raw-table__0
      (lambda (_%size-hint116318%_ _%hash116319%_ _%test116320%_)
        (let* ((_%seed116322%_ '0) (_%lock116324%_ '#f))
          (make-raw-table__%
           _%size-hint116318%_
           _%hash116319%_
           _%test116320%_
           _%seed116322%_
           _%lock116324%_))))
    (define make-raw-table__1
      (lambda (_%size-hint116326%_
               _%hash116327%_
               _%test116328%_
               _%seed116329%_)
        (let ((_%lock116331%_ '#f))
          (make-raw-table__%
           _%size-hint116326%_
           _%hash116327%_
           _%test116328%_
           _%seed116329%_
           _%lock116331%_))))
    (define make-raw-table
      (lambda _g116377_
        (let ((_g116378_ (##length _g116377_)))
          (cond ((##fx= _g116378_ 3) (apply make-raw-table__0 _g116377_))
                ((##fx= _g116378_ 4) (apply make-raw-table__1 _g116377_))
                ((##fx= _g116378_ 5) (apply make-raw-table__% _g116377_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g116377_))))))
    (define make-raw-table/lock__%
      (lambda (_%size-hint116284%_
               _%hash116285%_
               _%test116286%_
               _%seed116287%_)
        (make-raw-table__%
         _%size-hint116284%_
         _%hash116285%_
         _%test116286%_
         _%seed116287%_
         (vector '0 '#f))))
    (define make-raw-table/lock__0
      (lambda (_%size-hint116292%_ _%hash116293%_ _%test116294%_)
        (let ((_%seed116296%_ '0))
          (make-raw-table/lock__%
           _%size-hint116292%_
           _%hash116293%_
           _%test116294%_
           _%seed116296%_))))
    (define make-raw-table/lock
      (lambda _g116379_
        (let ((_g116380_ (##length _g116379_)))
          (cond ((##fx= _g116380_ 3) (apply make-raw-table/lock__0 _g116379_))
                ((##fx= _g116380_ 4) (apply make-raw-table/lock__% _g116379_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table/lock
                  _g116379_))))))
    (define raw-table-length
      (lambda (_%tab116281%_) (&raw-table-count _%tab116281%_)))
    (define raw-table-length/lock
      (lambda (_%tab116256%_)
        (let ((_%lock116258%_ (&raw-table-lock _%tab116256%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again116263%_ ((_%spin116266%_ '0))
              (if (##fx= (##vector-cas! _%lock116258%_ '0 '1 '0) '0)
                  (##vector-set! _%lock116258%_ '1 (current-thread))
                  (if (##fx< _%spin116266%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again116263%_ (##fx+ _%spin116266%_ '1)))
                      (let ((_%owner116272%_ (##vector-ref _%lock116258%_ '1)))
                        (if (eq? _%owner116272%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner116272%_)
                                (let () (##thread-yield!) (_%again116263%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r116278%_ (&raw-table-count _%tab116256%_)))
            (##vector-set! _%lock116258%_ '1 '#f)
            (##vector-cas! _%lock116258%_ '0 '0 '1)
            _%$r116278%_))))
    (define raw-table-ref
      (lambda (_%tab116208%_ _%key116209%_ _%default116210%_)
        (let ((_%table116212%_ (&raw-table-table _%tab116208%_))
              (_%seed116213%_ (&raw-table-seed _%tab116208%_))
              (_%hash116214%_ (&raw-table-hash _%tab116208%_))
              (_%test116215%_ (&raw-table-test _%tab116208%_)))
          (let* ((_%h116217%_
                  (fxxor (_%hash116214%_ _%key116209%_) _%seed116213%_))
                 (_%size116220%_ (vector-length _%table116212%_))
                 (_%entries116223%_ (##fxquotient _%size116220%_ '2))
                 (_%start116226%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h116217%_ _%entries116223%_)
                   '1)))
            (let _%loop116230%_ ((_%probe116233%_ _%start116226%_)
                                 (_%i116235%_ '1)
                                 (_%deleted116237%_ '#f))
              (let ((_%k116240%_ (vector-ref _%table116212%_ _%probe116233%_)))
                (if (eq? _%k116240%_ (macro-unused-obj))
                    _%default116210%_
                    (if (eq? _%k116240%_ (macro-deleted-obj))
                        (_%loop116230%_
                         (let ((_%next-probe116245%_
                                (fx+ _%start116226%_
                                     _%i116235%_
                                     (fx* _%i116235%_ _%i116235%_))))
                           (##fxmodulo _%next-probe116245%_ _%size116220%_))
                         (##fx+ _%i116235%_ '1)
                         (let ((_%$e116248%_ _%deleted116237%_))
                           (if _%$e116248%_ _%$e116248%_ _%probe116233%_)))
                        (if (_%test116215%_ _%key116209%_ _%k116240%_)
                            (vector-ref
                             _%table116212%_
                             (##fx+ _%probe116233%_ '1))
                            (_%loop116230%_
                             (let ((_%next-probe116253%_
                                    (fx+ _%start116226%_
                                         _%i116235%_
                                         (fx* _%i116235%_ _%i116235%_))))
                               (##fxmodulo
                                _%next-probe116253%_
                                _%size116220%_))
                             (##fx+ _%i116235%_ '1)
                             _%deleted116237%_))))))))))
    (define raw-table-ref/lock
      (lambda (_%tab116181%_ _%key116182%_ _%default116183%_)
        (let ((_%lock116185%_ (&raw-table-lock _%tab116181%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again116190%_ ((_%spin116193%_ '0))
              (if (##fx= (##vector-cas! _%lock116185%_ '0 '1 '0) '0)
                  (##vector-set! _%lock116185%_ '1 (current-thread))
                  (if (##fx< _%spin116193%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again116190%_ (##fx+ _%spin116193%_ '1)))
                      (let ((_%owner116199%_ (##vector-ref _%lock116185%_ '1)))
                        (if (eq? _%owner116199%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner116199%_)
                                (let () (##thread-yield!) (_%again116190%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r116205%_
                 (raw-table-ref
                  _%tab116181%_
                  _%key116182%_
                  _%default116183%_)))
            (##vector-set! _%lock116185%_ '1 '#f)
            (##vector-cas! _%lock116185%_ '0 '0 '1)
            _%$r116205%_))))
    (define raw-table-set!
      (lambda (_%tab116177%_ _%key116178%_ _%value116179%_)
        (if (##fx< (&raw-table-free _%tab116177%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab116177%_))
                    '4))
            (__raw-table-rehash! _%tab116177%_)
            '#!void)
        (__raw-table-set! _%tab116177%_ _%key116178%_ _%value116179%_)))
    (define raw-table-set!/lock
      (lambda (_%tab116150%_ _%key116151%_ _%value116152%_)
        (let ((_%lock116154%_ (&raw-table-lock _%tab116150%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again116159%_ ((_%spin116162%_ '0))
              (if (##fx= (##vector-cas! _%lock116154%_ '0 '1 '0) '0)
                  (##vector-set! _%lock116154%_ '1 (current-thread))
                  (if (##fx< _%spin116162%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again116159%_ (##fx+ _%spin116162%_ '1)))
                      (let ((_%owner116168%_ (##vector-ref _%lock116154%_ '1)))
                        (if (eq? _%owner116168%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner116168%_)
                                (let () (##thread-yield!) (_%again116159%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r116174%_
                 (raw-table-set! _%tab116150%_ _%key116151%_ _%value116152%_)))
            (##vector-set! _%lock116154%_ '1 '#f)
            (##vector-cas! _%lock116154%_ '0 '0 '1)
            _%$r116174%_))))
    (define raw-table-update!
      (lambda (_%tab116145%_ _%key116146%_ _%update116147%_ _%default116148%_)
        (if (##fx< (&raw-table-free _%tab116145%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab116145%_))
                    '4))
            (__raw-table-rehash! _%tab116145%_)
            '#!void)
        (__raw-table-update!
         _%tab116145%_
         _%key116146%_
         _%update116147%_
         _%default116148%_)))
    (define raw-table-update!/lock
      (lambda (_%tab116117%_ _%key116118%_ _%update116119%_ _%default116120%_)
        (let ((_%lock116122%_ (&raw-table-lock _%tab116117%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again116127%_ ((_%spin116130%_ '0))
              (if (##fx= (##vector-cas! _%lock116122%_ '0 '1 '0) '0)
                  (##vector-set! _%lock116122%_ '1 (current-thread))
                  (if (##fx< _%spin116130%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again116127%_ (##fx+ _%spin116130%_ '1)))
                      (let ((_%owner116136%_ (##vector-ref _%lock116122%_ '1)))
                        (if (eq? _%owner116136%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner116136%_)
                                (let () (##thread-yield!) (_%again116127%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r116142%_
                 (raw-table-update!
                  _%tab116117%_
                  _%key116118%_
                  _%update116119%_
                  _%default116120%_)))
            (##vector-set! _%lock116122%_ '1 '#f)
            (##vector-cas! _%lock116122%_ '0 '0 '1)
            _%$r116142%_))))
    (define raw-table-delete!
      (lambda (_%tab116074%_ _%key116075%_)
        (let ((_%table116077%_ (&raw-table-table _%tab116074%_))
              (_%seed116078%_ (&raw-table-seed _%tab116074%_))
              (_%hash116079%_ (&raw-table-hash _%tab116074%_))
              (_%test116080%_ (&raw-table-test _%tab116074%_)))
          (let* ((_%h116082%_
                  (fxxor (_%hash116079%_ _%key116075%_) _%seed116078%_))
                 (_%size116085%_ (vector-length _%table116077%_))
                 (_%entries116088%_ (##fxquotient _%size116085%_ '2))
                 (_%start116091%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h116082%_ _%entries116088%_)
                   '1)))
            (let _%loop116095%_ ((_%probe116098%_ _%start116091%_)
                                 (_%i116100%_ '1))
              (let ((_%k116103%_ (vector-ref _%table116077%_ _%probe116098%_)))
                (if (eq? _%k116103%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k116103%_ (macro-deleted-obj))
                        (_%loop116095%_
                         (let ((_%next-probe116108%_
                                (fx+ _%start116091%_
                                     _%i116100%_
                                     (fx* _%i116100%_ _%i116100%_))))
                           (##fxmodulo _%next-probe116108%_ _%size116085%_))
                         (##fx+ _%i116100%_ '1))
                        (if (_%test116080%_ _%key116075%_ _%k116103%_)
                            (let ()
                              (vector-set!
                               _%table116077%_
                               _%probe116098%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table116077%_
                               (##fx+ _%probe116098%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab116074%_
                                  (##fx- (&raw-table-count _%tab116074%_)
                                         '1)))))
                            (_%loop116095%_
                             (let ((_%next-probe116114%_
                                    (fx+ _%start116091%_
                                         _%i116100%_
                                         (fx* _%i116100%_ _%i116100%_))))
                               (##fxmodulo
                                _%next-probe116114%_
                                _%size116085%_))
                             (##fx+ _%i116100%_ '1)))))))))))
    (define raw-table-delete!/lock
      (lambda (_%tab116048%_ _%key116049%_)
        (let ((_%lock116051%_ (&raw-table-lock _%tab116048%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again116056%_ ((_%spin116059%_ '0))
              (if (##fx= (##vector-cas! _%lock116051%_ '0 '1 '0) '0)
                  (##vector-set! _%lock116051%_ '1 (current-thread))
                  (if (##fx< _%spin116059%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again116056%_ (##fx+ _%spin116059%_ '1)))
                      (let ((_%owner116065%_ (##vector-ref _%lock116051%_ '1)))
                        (if (eq? _%owner116065%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner116065%_)
                                (let () (##thread-yield!) (_%again116056%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r116071%_ (raw-table-delete! _%tab116048%_ _%key116049%_)))
            (##vector-set! _%lock116051%_ '1 '#f)
            (##vector-cas! _%lock116051%_ '0 '0 '1)
            _%$r116071%_))))
    (define raw-table-for-each
      (lambda (_%tab116032%_ _%proc116033%_)
        (let* ((_%table116035%_ (&raw-table-table _%tab116032%_))
               (_%size116037%_ (vector-length _%table116035%_)))
          (let _%loop116040%_ ((_%i116042%_ '0))
            (if (##fx< _%i116042%_ _%size116037%_)
                (begin
                  (let ((_%key116044%_
                         (vector-ref _%table116035%_ _%i116042%_)))
                    (if (if (eq? _%key116044%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key116044%_ (macro-deleted-obj))))
                        (let ((_%value116046%_
                               (vector-ref
                                _%table116035%_
                                (##fx+ _%i116042%_ '1))))
                          (_%proc116033%_ _%key116044%_ _%value116046%_))
                        '#!void))
                  (_%loop116040%_ (##fx+ _%i116042%_ '2)))
                '#!void)))))
    (define raw-table-for-each/lock
      (lambda (_%tab116006%_ _%proc116007%_)
        (let ((_%lock116009%_ (&raw-table-lock _%tab116006%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again116014%_ ((_%spin116017%_ '0))
              (if (##fx= (##vector-cas! _%lock116009%_ '0 '1 '0) '0)
                  (##vector-set! _%lock116009%_ '1 (current-thread))
                  (if (##fx< _%spin116017%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again116014%_ (##fx+ _%spin116017%_ '1)))
                      (let ((_%owner116023%_ (##vector-ref _%lock116009%_ '1)))
                        (if (eq? _%owner116023%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner116023%_)
                                (let () (##thread-yield!) (_%again116014%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r116029%_
                 (raw-table-for-each _%tab116006%_ _%proc116007%_)))
            (##vector-set! _%lock116009%_ '1 '#f)
            (##vector-cas! _%lock116009%_ '0 '0 '1)
            _%$r116029%_))))
    (define raw-table-copy
      (lambda (_%tab116002%_)
        (let ((_%new-tab116004%_ (##structure-copy _%tab116002%_)))
          (&raw-table-table-set!
           _%new-tab116004%_
           (vector-copy (&raw-table-table _%tab116002%_)))
          _%new-tab116004%_)))
    (define raw-table-copy/lock
      (lambda (_%tab115977%_)
        (let ((_%lock115979%_ (&raw-table-lock _%tab115977%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again115984%_ ((_%spin115987%_ '0))
              (if (##fx= (##vector-cas! _%lock115979%_ '0 '1 '0) '0)
                  (##vector-set! _%lock115979%_ '1 (current-thread))
                  (if (##fx< _%spin115987%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again115984%_ (##fx+ _%spin115987%_ '1)))
                      (let ((_%owner115993%_ (##vector-ref _%lock115979%_ '1)))
                        (if (eq? _%owner115993%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner115993%_)
                                (let () (##thread-yield!) (_%again115984%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r115999%_ (raw-table-copy _%tab115977%_)))
            (##vector-set! _%lock115979%_ '1 '#f)
            (##vector-cas! _%lock115979%_ '0 '0 '1)
            _%$r115999%_))))
    (define raw-table-clear!
      (lambda (_%tab115975%_)
        (vector-fill! (&raw-table-table _%tab115975%_) (macro-unused-obj))
        (&raw-table-count-set! _%tab115975%_ '0)
        (&raw-table-free-set!
         _%tab115975%_
         (##fxquotient (vector-length (&raw-table-table _%tab115975%_)) '2))))
    (define raw-table-clear!/lock
      (lambda (_%tab115950%_)
        (let ((_%lock115952%_ (&raw-table-lock _%tab115950%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again115957%_ ((_%spin115960%_ '0))
              (if (##fx= (##vector-cas! _%lock115952%_ '0 '1 '0) '0)
                  (##vector-set! _%lock115952%_ '1 (current-thread))
                  (if (##fx< _%spin115960%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again115957%_ (##fx+ _%spin115960%_ '1)))
                      (let ((_%owner115966%_ (##vector-ref _%lock115952%_ '1)))
                        (if (eq? _%owner115966%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner115966%_)
                                (let () (##thread-yield!) (_%again115957%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r115972%_ (raw-table-clear! _%tab115950%_)))
            (##vector-set! _%lock115952%_ '1 '#f)
            (##vector-cas! _%lock115952%_ '0 '0 '1)
            _%$r115972%_))))
    (define __raw-table-set!
      (lambda (_%tab115900%_ _%key115901%_ _%value115902%_)
        (let ((_%table115904%_ (&raw-table-table _%tab115900%_))
              (_%seed115905%_ (&raw-table-seed _%tab115900%_))
              (_%hash115906%_ (&raw-table-hash _%tab115900%_))
              (_%test115907%_ (&raw-table-test _%tab115900%_)))
          (let* ((_%h115909%_
                  (fxxor (_%hash115906%_ _%key115901%_) _%seed115905%_))
                 (_%size115912%_ (vector-length _%table115904%_))
                 (_%entries115915%_ (##fxquotient _%size115912%_ '2))
                 (_%start115918%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h115909%_ _%entries115915%_)
                   '1)))
            (let _%loop115922%_ ((_%probe115925%_ _%start115918%_)
                                 (_%i115927%_ '1)
                                 (_%deleted115929%_ '#f))
              (let ((_%k115932%_ (vector-ref _%table115904%_ _%probe115925%_)))
                (if (eq? _%k115932%_ (macro-unused-obj))
                    (if _%deleted115929%_
                        (begin
                          (vector-set!
                           _%table115904%_
                           _%deleted115929%_
                           _%key115901%_)
                          (vector-set!
                           _%table115904%_
                           (##fx+ _%deleted115929%_ '1)
                           _%value115902%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab115900%_
                              (##fx+ (&raw-table-count _%tab115900%_) '1)))))
                        (begin
                          (vector-set!
                           _%table115904%_
                           _%probe115925%_
                           _%key115901%_)
                          (vector-set!
                           _%table115904%_
                           (##fx+ _%probe115925%_ '1)
                           _%value115902%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab115900%_
                              (##fx- (&raw-table-free _%tab115900%_) '1))
                             (&raw-table-count-set!
                              _%tab115900%_
                              (##fx+ (&raw-table-count _%tab115900%_) '1))))))
                    (if (eq? _%k115932%_ (macro-deleted-obj))
                        (_%loop115922%_
                         (let ((_%next-probe115939%_
                                (fx+ _%start115918%_
                                     _%i115927%_
                                     (fx* _%i115927%_ _%i115927%_))))
                           (##fxmodulo _%next-probe115939%_ _%size115912%_))
                         (##fx+ _%i115927%_ '1)
                         (let ((_%$e115942%_ _%deleted115929%_))
                           (if _%$e115942%_ _%$e115942%_ _%probe115925%_)))
                        (if (_%test115907%_ _%key115901%_ _%k115932%_)
                            (let ()
                              (vector-set!
                               _%table115904%_
                               _%probe115925%_
                               _%key115901%_)
                              (vector-set!
                               _%table115904%_
                               (##fx+ _%probe115925%_ '1)
                               _%value115902%_))
                            (_%loop115922%_
                             (let ((_%next-probe115947%_
                                    (fx+ _%start115918%_
                                         _%i115927%_
                                         (fx* _%i115927%_ _%i115927%_))))
                               (##fxmodulo
                                _%next-probe115947%_
                                _%size115912%_))
                             (##fx+ _%i115927%_ '1)
                             _%deleted115929%_))))))))))
    (define __raw-table-update!
      (lambda (_%tab115849%_ _%key115850%_ _%update115851%_ _%default115852%_)
        (let ((_%table115854%_ (&raw-table-table _%tab115849%_))
              (_%seed115855%_ (&raw-table-seed _%tab115849%_))
              (_%hash115856%_ (&raw-table-hash _%tab115849%_))
              (_%test115857%_ (&raw-table-test _%tab115849%_)))
          (let* ((_%h115859%_
                  (fxxor (_%hash115856%_ _%key115850%_) _%seed115855%_))
                 (_%size115862%_ (vector-length _%table115854%_))
                 (_%entries115865%_ (##fxquotient _%size115862%_ '2))
                 (_%start115868%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h115859%_ _%entries115865%_)
                   '1)))
            (let _%loop115872%_ ((_%probe115875%_ _%start115868%_)
                                 (_%i115877%_ '1)
                                 (_%deleted115879%_ '#f))
              (let ((_%k115882%_ (vector-ref _%table115854%_ _%probe115875%_)))
                (if (eq? _%k115882%_ (macro-unused-obj))
                    (if _%deleted115879%_
                        (begin
                          (vector-set!
                           _%table115854%_
                           _%deleted115879%_
                           _%key115850%_)
                          (vector-set!
                           _%table115854%_
                           (##fx+ _%deleted115879%_ '1)
                           (_%update115851%_ _%default115852%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab115849%_
                              (##fx+ (&raw-table-count _%tab115849%_) '1)))))
                        (begin
                          (vector-set!
                           _%table115854%_
                           _%probe115875%_
                           _%key115850%_)
                          (vector-set!
                           _%table115854%_
                           (##fx+ _%probe115875%_ '1)
                           (_%update115851%_ _%default115852%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab115849%_
                              (##fx- (&raw-table-free _%tab115849%_) '1))
                             (&raw-table-count-set!
                              _%tab115849%_
                              (##fx+ (&raw-table-count _%tab115849%_) '1))))))
                    (if (eq? _%k115882%_ (macro-deleted-obj))
                        (_%loop115872%_
                         (let ((_%next-probe115889%_
                                (fx+ _%start115868%_
                                     _%i115877%_
                                     (fx* _%i115877%_ _%i115877%_))))
                           (##fxmodulo _%next-probe115889%_ _%size115862%_))
                         (##fx+ _%i115877%_ '1)
                         (let ((_%$e115892%_ _%deleted115879%_))
                           (if _%$e115892%_ _%$e115892%_ _%probe115875%_)))
                        (if (_%test115857%_ _%key115850%_ _%k115882%_)
                            (let ()
                              (vector-set!
                               _%table115854%_
                               _%probe115875%_
                               _%key115850%_)
                              (vector-set!
                               _%table115854%_
                               (##fx+ _%probe115875%_ '1)
                               (_%update115851%_
                                (vector-ref
                                 _%table115854%_
                                 (##fx+ _%probe115875%_ '1)))))
                            (_%loop115872%_
                             (let ((_%next-probe115897%_
                                    (fx+ _%start115868%_
                                         _%i115877%_
                                         (fx* _%i115877%_ _%i115877%_))))
                               (##fxmodulo
                                _%next-probe115897%_
                                _%size115862%_))
                             (##fx+ _%i115877%_ '1)
                             _%deleted115879%_))))))))))
    (define __raw-table-rehash!
      (lambda (_%tab115830%_)
        (let* ((_%old-table115832%_ (&raw-table-table _%tab115830%_))
               (_%old-size115834%_ (vector-length _%old-table115832%_))
               (_%new-size115836%_
                (if (##fx< (&raw-table-count _%tab115830%_)
                           (##fxquotient _%old-size115834%_ '4))
                    (vector-length _%old-table115832%_)
                    (##fx* '2 (vector-length _%old-table115832%_))))
               (_%new-table115838%_
                (##make-vector _%new-size115836%_ (macro-unused-obj))))
          (&raw-table-table-set! _%tab115830%_ _%new-table115838%_)
          (&raw-table-count-set! _%tab115830%_ '0)
          (&raw-table-free-set!
           _%tab115830%_
           (##fxquotient _%new-size115836%_ '2))
          (let _%lp115841%_ ((_%i115843%_ '0))
            (if (##fx< _%i115843%_ _%old-size115834%_)
                (begin
                  (let ((_%key115845%_
                         (vector-ref _%old-table115832%_ _%i115843%_)))
                    (if (if (eq? _%key115845%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key115845%_ (macro-deleted-obj))))
                        (let ((_%value115847%_
                               (vector-ref
                                _%old-table115832%_
                                (##fx+ _%i115843%_ '1))))
                          (__raw-table-set!
                           _%tab115830%_
                           _%key115845%_
                           _%value115847%_))
                        '#!void))
                  (_%lp115841%_ (##fx+ _%i115843%_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_%obj115822%_)
        (let ((_%t115824%_ (##type _%obj115822%_)))
          (if (##fx= (##fxand _%t115824%_ '1) '0)
              (fxand (##type-cast _%obj115822%_ (macro-type-fixnum))
                     (macro-max-fixnum32))
              (if (symbolic? _%obj115822%_)
                  (##symbol-hash _%obj115822%_)
                  (if (procedure? _%obj115822%_)
                      (procedure-hash _%obj115822%_)
                      (fxand (__eq-hash _%obj115822%_)
                             (macro-max-fixnum32))))))))
    (define procedure-hash
      (lambda (_%obj115818%_)
        (let ((_%h115820%_
               (if (##closure? _%obj115818%_)
                   (__eq-hash _%obj115818%_)
                   (##type-cast _%obj115818%_ '0))))
          (fxand _%h115820%_ (macro-max-fixnum32)))))
    (define __eq-hash
      (lambda (_%obj115815%_)
        (declare (not interrupts-enabled))
        (__object->eq-hash _%obj115815%_)))
    (define eqv-hash
      (lambda (_%obj115805%_)
        (letrec ((_%combine115807%_
                  (lambda (_%a115812%_ _%b115813%_)
                    (fxand (##fx* (##fx+ _%a115812%_
                                         (fxarithmetic-shift-left
                                          _%b115813%_
                                          '1))
                                  '331804471)
                           (macro-max-fixnum32))))
                 (_%hash115808%_
                  (lambda (_%obj115810%_)
                    (macro-number-dispatch
                     _%obj115810%_
                     (eq-hash _%obj115810%_)
                     (fxand _%obj115810%_ (macro-max-fixnum32))
                     (modulo _%obj115810%_ '331804481)
                     (_%combine115807%_
                      (_%hash115808%_ (macro-ratnum-numerator _%obj115810%_))
                      (_%hash115808%_
                       (macro-ratnum-denominator _%obj115810%_)))
                     (_%combine115807%_
                      (##u16vector-ref _%obj115810%_ '0)
                      (_%combine115807%_
                       (##u16vector-ref _%obj115810%_ '1)
                       (_%combine115807%_
                        (##u16vector-ref _%obj115810%_ '2)
                        (##u16vector-ref _%obj115810%_ '3))))
                     (_%combine115807%_
                      (_%hash115808%_ (macro-cpxnum-real _%obj115810%_))
                      (_%hash115808%_ (macro-cpxnum-imag _%obj115810%_)))))))
          (_%hash115808%_ _%obj115805%_))))
    (define symbolic?
      (lambda (_%obj115800%_)
        (let ((_%$e115802%_ (symbol? _%obj115800%_)))
          (if _%$e115802%_ _%$e115802%_ (keyword? _%obj115800%_)))))
    (define symbolic-hash
      (lambda (_%obj115798%_) (##symbol-hash _%obj115798%_)))
    (define string-hash
      (lambda (_%obj115796%_) (##string=?-hash _%obj115796%_)))
    (define immediate-hash
      (lambda (_%obj115794%_) (##type-cast _%obj115794%_ (macro-type-fixnum))))
    (define make-eq-table__%
      (lambda (_%size-hint115776%_ _%seed115777%_)
        (make-raw-table__1 _%size-hint115776%_ eq-hash eq? _%seed115777%_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_%size-hint115783%_ '#f) (_%seed115785%_ '0))
          (make-eq-table__% _%size-hint115783%_ _%seed115785%_))))
    (define make-eq-table__1
      (lambda (_%size-hint115787%_)
        (let ((_%seed115789%_ '0))
          (make-eq-table__% _%size-hint115787%_ _%seed115789%_))))
    (define make-eq-table
      (lambda _g116381_
        (let ((_g116382_ (##length _g116381_)))
          (cond ((##fx= _g116382_ 0) (apply make-eq-table__0 _g116381_))
                ((##fx= _g116382_ 1) (apply make-eq-table__1 _g116381_))
                ((##fx= _g116382_ 2) (apply make-eq-table__% _g116381_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g116381_))))))
    (define make-eq-table/lock__%
      (lambda (_%size-hint115756%_ _%seed115758%_)
        (make-raw-table/lock__%
         _%size-hint115756%_
         eq-hash
         eq?
         _%seed115758%_)))
    (define make-eq-table/lock__0
      (lambda ()
        (let* ((_%size-hint115764%_ '#f) (_%seed115766%_ '0))
          (make-eq-table/lock__% _%size-hint115764%_ _%seed115766%_))))
    (define make-eq-table/lock__1
      (lambda (_%size-hint115768%_)
        (let ((_%seed115770%_ '0))
          (make-eq-table/lock__% _%size-hint115768%_ _%seed115770%_))))
    (define make-eq-table/lock
      (lambda _g116383_
        (let ((_g116384_ (##length _g116383_)))
          (cond ((##fx= _g116384_ 0) (apply make-eq-table/lock__0 _g116383_))
                ((##fx= _g116384_ 1) (apply make-eq-table/lock__1 _g116383_))
                ((##fx= _g116384_ 2) (apply make-eq-table/lock__% _g116383_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table/lock
                  _g116383_))))))
    (define eq-table-ref
      (lambda (_%tab115709%_ _%key115710%_ _%default115711%_)
        (let ((_%table115713%_ (&raw-table-table _%tab115709%_))
              (_%seed115714%_ (&raw-table-seed _%tab115709%_)))
          (let* ((_%h115716%_ (fxxor (eq-hash _%key115710%_) _%seed115714%_))
                 (_%size115719%_ (vector-length _%table115713%_))
                 (_%entries115722%_ (##fxquotient _%size115719%_ '2))
                 (_%start115725%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h115716%_ _%entries115722%_)
                   '1)))
            (let _%loop115729%_ ((_%probe115732%_ _%start115725%_)
                                 (_%i115734%_ '1)
                                 (_%deleted115736%_ '#f))
              (let ((_%k115739%_ (vector-ref _%table115713%_ _%probe115732%_)))
                (if (eq? _%k115739%_ (macro-unused-obj))
                    _%default115711%_
                    (if (eq? _%k115739%_ (macro-deleted-obj))
                        (_%loop115729%_
                         (let ((_%next-probe115744%_
                                (fx+ _%start115725%_
                                     _%i115734%_
                                     (fx* _%i115734%_ _%i115734%_))))
                           (##fxmodulo _%next-probe115744%_ _%size115719%_))
                         (##fx+ _%i115734%_ '1)
                         (let ((_%$e115747%_ _%deleted115736%_))
                           (if _%$e115747%_ _%$e115747%_ _%probe115732%_)))
                        (if (eq? _%key115710%_ _%k115739%_)
                            (vector-ref
                             _%table115713%_
                             (##fx+ _%probe115732%_ '1))
                            (_%loop115729%_
                             (let ((_%next-probe115752%_
                                    (fx+ _%start115725%_
                                         _%i115734%_
                                         (fx* _%i115734%_ _%i115734%_))))
                               (##fxmodulo
                                _%next-probe115752%_
                                _%size115719%_))
                             (##fx+ _%i115734%_ '1)
                             _%deleted115736%_))))))))))
    (define eq-table-ref/lock
      (lambda (_%tab115682%_ _%key115683%_ _%default115684%_)
        (let ((_%lock115686%_ (&raw-table-lock _%tab115682%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again115691%_ ((_%spin115694%_ '0))
              (if (##fx= (##vector-cas! _%lock115686%_ '0 '1 '0) '0)
                  (##vector-set! _%lock115686%_ '1 (current-thread))
                  (if (##fx< _%spin115694%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again115691%_ (##fx+ _%spin115694%_ '1)))
                      (let ((_%owner115700%_ (##vector-ref _%lock115686%_ '1)))
                        (if (eq? _%owner115700%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner115700%_)
                                (let () (##thread-yield!) (_%again115691%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r115706%_
                 (eq-table-ref _%tab115682%_ _%key115683%_ _%default115684%_)))
            (##vector-set! _%lock115686%_ '1 '#f)
            (##vector-cas! _%lock115686%_ '0 '0 '1)
            _%$r115706%_))))
    (define __eq-table-set!
      (lambda (_%tab115634%_ _%key115635%_ _%value115636%_)
        (let ((_%table115638%_ (&raw-table-table _%tab115634%_))
              (_%seed115639%_ (&raw-table-seed _%tab115634%_)))
          (let* ((_%h115641%_ (fxxor (eq-hash _%key115635%_) _%seed115639%_))
                 (_%size115644%_ (vector-length _%table115638%_))
                 (_%entries115647%_ (##fxquotient _%size115644%_ '2))
                 (_%start115650%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h115641%_ _%entries115647%_)
                   '1)))
            (let _%loop115654%_ ((_%probe115657%_ _%start115650%_)
                                 (_%i115659%_ '1)
                                 (_%deleted115661%_ '#f))
              (let ((_%k115664%_ (vector-ref _%table115638%_ _%probe115657%_)))
                (if (eq? _%k115664%_ (macro-unused-obj))
                    (if _%deleted115661%_
                        (begin
                          (vector-set!
                           _%table115638%_
                           _%deleted115661%_
                           _%key115635%_)
                          (vector-set!
                           _%table115638%_
                           (##fx+ _%deleted115661%_ '1)
                           _%value115636%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab115634%_
                              (##fx+ (&raw-table-count _%tab115634%_) '1)))))
                        (begin
                          (vector-set!
                           _%table115638%_
                           _%probe115657%_
                           _%key115635%_)
                          (vector-set!
                           _%table115638%_
                           (##fx+ _%probe115657%_ '1)
                           _%value115636%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab115634%_
                              (##fx- (&raw-table-free _%tab115634%_) '1))
                             (&raw-table-count-set!
                              _%tab115634%_
                              (##fx+ (&raw-table-count _%tab115634%_) '1))))))
                    (if (eq? _%k115664%_ (macro-deleted-obj))
                        (_%loop115654%_
                         (let ((_%next-probe115671%_
                                (fx+ _%start115650%_
                                     _%i115659%_
                                     (fx* _%i115659%_ _%i115659%_))))
                           (##fxmodulo _%next-probe115671%_ _%size115644%_))
                         (##fx+ _%i115659%_ '1)
                         (let ((_%$e115674%_ _%deleted115661%_))
                           (if _%$e115674%_ _%$e115674%_ _%probe115657%_)))
                        (if (eq? _%key115635%_ _%k115664%_)
                            (let ()
                              (vector-set!
                               _%table115638%_
                               _%probe115657%_
                               _%key115635%_)
                              (vector-set!
                               _%table115638%_
                               (##fx+ _%probe115657%_ '1)
                               _%value115636%_))
                            (_%loop115654%_
                             (let ((_%next-probe115679%_
                                    (fx+ _%start115650%_
                                         _%i115659%_
                                         (fx* _%i115659%_ _%i115659%_))))
                               (##fxmodulo
                                _%next-probe115679%_
                                _%size115644%_))
                             (##fx+ _%i115659%_ '1)
                             _%deleted115661%_))))))))))
    (define eq-table-set!
      (lambda (_%tab115630%_ _%key115631%_ _%value115632%_)
        (if (##fx< (&raw-table-free _%tab115630%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab115630%_))
                    '4))
            (__raw-table-rehash! _%tab115630%_)
            '#!void)
        (__eq-table-set! _%tab115630%_ _%key115631%_ _%value115632%_)))
    (define eq-table-set!/lock
      (lambda (_%tab115602%_ _%key115603%_ _%value115604%_)
        (let ((_%lock115607%_ (&raw-table-lock _%tab115602%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again115612%_ ((_%spin115615%_ '0))
              (if (##fx= (##vector-cas! _%lock115607%_ '0 '1 '0) '0)
                  (##vector-set! _%lock115607%_ '1 (current-thread))
                  (if (##fx< _%spin115615%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again115612%_ (##fx+ _%spin115615%_ '1)))
                      (let ((_%owner115621%_ (##vector-ref _%lock115607%_ '1)))
                        (if (eq? _%owner115621%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner115621%_)
                                (let () (##thread-yield!) (_%again115612%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r115627%_
                 (eq-table-set! _%tab115602%_ _%key115603%_ _%value115604%_)))
            (##vector-set! _%lock115607%_ '1 '#f)
            (##vector-cas! _%lock115607%_ '0 '0 '1)
            _%$r115627%_))))
    (define __eq-table-update!
      (lambda (_%tab115553%_
               _%key115554%_
               _%eq-table-update!115555%_
               _%default115556%_)
        (let ((_%table115558%_ (&raw-table-table _%tab115553%_))
              (_%seed115559%_ (&raw-table-seed _%tab115553%_)))
          (let* ((_%h115561%_ (fxxor (eq-hash _%key115554%_) _%seed115559%_))
                 (_%size115564%_ (vector-length _%table115558%_))
                 (_%entries115567%_ (##fxquotient _%size115564%_ '2))
                 (_%start115570%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h115561%_ _%entries115567%_)
                   '1)))
            (let _%loop115574%_ ((_%probe115577%_ _%start115570%_)
                                 (_%i115579%_ '1)
                                 (_%deleted115581%_ '#f))
              (let ((_%k115584%_ (vector-ref _%table115558%_ _%probe115577%_)))
                (if (eq? _%k115584%_ (macro-unused-obj))
                    (if _%deleted115581%_
                        (begin
                          (vector-set!
                           _%table115558%_
                           _%deleted115581%_
                           _%key115554%_)
                          (vector-set!
                           _%table115558%_
                           (##fx+ _%deleted115581%_ '1)
                           (_%eq-table-update!115555%_ _%default115556%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab115553%_
                              (##fx+ (&raw-table-count _%tab115553%_) '1)))))
                        (begin
                          (vector-set!
                           _%table115558%_
                           _%probe115577%_
                           _%key115554%_)
                          (vector-set!
                           _%table115558%_
                           (##fx+ _%probe115577%_ '1)
                           (_%eq-table-update!115555%_ _%default115556%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab115553%_
                              (##fx- (&raw-table-free _%tab115553%_) '1))
                             (&raw-table-count-set!
                              _%tab115553%_
                              (##fx+ (&raw-table-count _%tab115553%_) '1))))))
                    (if (eq? _%k115584%_ (macro-deleted-obj))
                        (_%loop115574%_
                         (let ((_%next-probe115591%_
                                (fx+ _%start115570%_
                                     _%i115579%_
                                     (fx* _%i115579%_ _%i115579%_))))
                           (##fxmodulo _%next-probe115591%_ _%size115564%_))
                         (##fx+ _%i115579%_ '1)
                         (let ((_%$e115594%_ _%deleted115581%_))
                           (if _%$e115594%_ _%$e115594%_ _%probe115577%_)))
                        (if (eq? _%key115554%_ _%k115584%_)
                            (let ()
                              (vector-set!
                               _%table115558%_
                               _%probe115577%_
                               _%key115554%_)
                              (vector-set!
                               _%table115558%_
                               (##fx+ _%probe115577%_ '1)
                               (_%eq-table-update!115555%_
                                (vector-ref
                                 _%table115558%_
                                 (##fx+ _%probe115577%_ '1)))))
                            (_%loop115574%_
                             (let ((_%next-probe115599%_
                                    (fx+ _%start115570%_
                                         _%i115579%_
                                         (fx* _%i115579%_ _%i115579%_))))
                               (##fxmodulo
                                _%next-probe115599%_
                                _%size115564%_))
                             (##fx+ _%i115579%_ '1)
                             _%deleted115581%_))))))))))
    (define eq-table-update!
      (lambda (_%tab115548%_
               _%key115549%_
               _%eq-table-update!115550%_
               _%default115551%_)
        (if (##fx< (&raw-table-free _%tab115548%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab115548%_))
                    '4))
            (__raw-table-rehash! _%tab115548%_)
            '#!void)
        (__eq-table-update!
         _%tab115548%_
         _%key115549%_
         _%eq-table-update!115550%_
         _%default115551%_)))
    (define eq-table-update!/lock
      (lambda (_%tab115519%_
               _%key115520%_
               _%eq-table-update!115521%_
               _%default115522%_)
        (let ((_%lock115525%_ (&raw-table-lock _%tab115519%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again115530%_ ((_%spin115533%_ '0))
              (if (##fx= (##vector-cas! _%lock115525%_ '0 '1 '0) '0)
                  (##vector-set! _%lock115525%_ '1 (current-thread))
                  (if (##fx< _%spin115533%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again115530%_ (##fx+ _%spin115533%_ '1)))
                      (let ((_%owner115539%_ (##vector-ref _%lock115525%_ '1)))
                        (if (eq? _%owner115539%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner115539%_)
                                (let () (##thread-yield!) (_%again115530%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r115545%_
                 (_%eq-table-update!115521%_
                  _%tab115519%_
                  _%key115520%_
                  _%eq-table-update!115521%_
                  _%default115522%_)))
            (##vector-set! _%lock115525%_ '1 '#f)
            (##vector-cas! _%lock115525%_ '0 '0 '1)
            _%$r115545%_))))
    (define eq-table-delete!
      (lambda (_%tab115476%_ _%key115477%_)
        (let ((_%table115479%_ (&raw-table-table _%tab115476%_))
              (_%seed115481%_ (&raw-table-seed _%tab115476%_)))
          (let* ((_%h115484%_ (fxxor (eq-hash _%key115477%_) _%seed115481%_))
                 (_%size115487%_ (vector-length _%table115479%_))
                 (_%entries115490%_ (##fxquotient _%size115487%_ '2))
                 (_%start115493%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h115484%_ _%entries115490%_)
                   '1)))
            (let _%loop115497%_ ((_%probe115500%_ _%start115493%_)
                                 (_%i115502%_ '1))
              (let ((_%k115505%_ (vector-ref _%table115479%_ _%probe115500%_)))
                (if (eq? _%k115505%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k115505%_ (macro-deleted-obj))
                        (_%loop115497%_
                         (let ((_%next-probe115510%_
                                (fx+ _%start115493%_
                                     _%i115502%_
                                     (fx* _%i115502%_ _%i115502%_))))
                           (##fxmodulo _%next-probe115510%_ _%size115487%_))
                         (##fx+ _%i115502%_ '1))
                        (if (eq? _%key115477%_ _%k115505%_)
                            (let ()
                              (vector-set!
                               _%table115479%_
                               _%probe115500%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table115479%_
                               (##fx+ _%probe115500%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab115476%_
                                  (##fx- (&raw-table-count _%tab115476%_)
                                         '1)))))
                            (_%loop115497%_
                             (let ((_%next-probe115516%_
                                    (fx+ _%start115493%_
                                         _%i115502%_
                                         (fx* _%i115502%_ _%i115502%_))))
                               (##fxmodulo
                                _%next-probe115516%_
                                _%size115487%_))
                             (##fx+ _%i115502%_ '1)))))))))))
    (define eq-table-delete!/lock
      (lambda (_%tab115448%_ _%key115450%_)
        (let ((_%lock115453%_ (&raw-table-lock _%tab115448%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again115458%_ ((_%spin115461%_ '0))
              (if (##fx= (##vector-cas! _%lock115453%_ '0 '1 '0) '0)
                  (##vector-set! _%lock115453%_ '1 (current-thread))
                  (if (##fx< _%spin115461%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again115458%_ (##fx+ _%spin115461%_ '1)))
                      (let ((_%owner115467%_ (##vector-ref _%lock115453%_ '1)))
                        (if (eq? _%owner115467%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner115467%_)
                                (let () (##thread-yield!) (_%again115458%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r115473%_ (eq-table-delete! _%tab115448%_ _%key115450%_)))
            (##vector-set! _%lock115453%_ '1 '#f)
            (##vector-cas! _%lock115453%_ '0 '0 '1)
            _%$r115473%_))))
    (define make-eqv-table__%
      (lambda (_%size-hint115430%_ _%seed115431%_)
        (make-raw-table__1 _%size-hint115430%_ eqv-hash eqv? _%seed115431%_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_%size-hint115437%_ '#f) (_%seed115439%_ '0))
          (make-eqv-table__% _%size-hint115437%_ _%seed115439%_))))
    (define make-eqv-table__1
      (lambda (_%size-hint115441%_)
        (let ((_%seed115443%_ '0))
          (make-eqv-table__% _%size-hint115441%_ _%seed115443%_))))
    (define make-eqv-table
      (lambda _g116385_
        (let ((_g116386_ (##length _g116385_)))
          (cond ((##fx= _g116386_ 0) (apply make-eqv-table__0 _g116385_))
                ((##fx= _g116386_ 1) (apply make-eqv-table__1 _g116385_))
                ((##fx= _g116386_ 2) (apply make-eqv-table__% _g116385_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g116385_))))))
    (define make-eqv-table/lock__%
      (lambda (_%size-hint115410%_ _%seed115412%_)
        (make-raw-table/lock__%
         _%size-hint115410%_
         eqv-hash
         eqv?
         _%seed115412%_)))
    (define make-eqv-table/lock__0
      (lambda ()
        (let* ((_%size-hint115418%_ '#f) (_%seed115420%_ '0))
          (make-eqv-table/lock__% _%size-hint115418%_ _%seed115420%_))))
    (define make-eqv-table/lock__1
      (lambda (_%size-hint115422%_)
        (let ((_%seed115424%_ '0))
          (make-eqv-table/lock__% _%size-hint115422%_ _%seed115424%_))))
    (define make-eqv-table/lock
      (lambda _g116387_
        (let ((_g116388_ (##length _g116387_)))
          (cond ((##fx= _g116388_ 0) (apply make-eqv-table/lock__0 _g116387_))
                ((##fx= _g116388_ 1) (apply make-eqv-table/lock__1 _g116387_))
                ((##fx= _g116388_ 2) (apply make-eqv-table/lock__% _g116387_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table/lock
                  _g116387_))))))
    (define eqv-table-ref
      (lambda (_%tab115363%_ _%key115364%_ _%default115365%_)
        (let ((_%table115367%_ (&raw-table-table _%tab115363%_))
              (_%seed115368%_ (&raw-table-seed _%tab115363%_)))
          (let* ((_%h115370%_ (fxxor (eqv-hash _%key115364%_) _%seed115368%_))
                 (_%size115373%_ (vector-length _%table115367%_))
                 (_%entries115376%_ (##fxquotient _%size115373%_ '2))
                 (_%start115379%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h115370%_ _%entries115376%_)
                   '1)))
            (let _%loop115383%_ ((_%probe115386%_ _%start115379%_)
                                 (_%i115388%_ '1)
                                 (_%deleted115390%_ '#f))
              (let ((_%k115393%_ (vector-ref _%table115367%_ _%probe115386%_)))
                (if (eq? _%k115393%_ (macro-unused-obj))
                    _%default115365%_
                    (if (eq? _%k115393%_ (macro-deleted-obj))
                        (_%loop115383%_
                         (let ((_%next-probe115398%_
                                (fx+ _%start115379%_
                                     _%i115388%_
                                     (fx* _%i115388%_ _%i115388%_))))
                           (##fxmodulo _%next-probe115398%_ _%size115373%_))
                         (##fx+ _%i115388%_ '1)
                         (let ((_%$e115401%_ _%deleted115390%_))
                           (if _%$e115401%_ _%$e115401%_ _%probe115386%_)))
                        (if (eqv? _%key115364%_ _%k115393%_)
                            (vector-ref
                             _%table115367%_
                             (##fx+ _%probe115386%_ '1))
                            (_%loop115383%_
                             (let ((_%next-probe115406%_
                                    (fx+ _%start115379%_
                                         _%i115388%_
                                         (fx* _%i115388%_ _%i115388%_))))
                               (##fxmodulo
                                _%next-probe115406%_
                                _%size115373%_))
                             (##fx+ _%i115388%_ '1)
                             _%deleted115390%_))))))))))
    (define eqv-table-ref/lock
      (lambda (_%tab115336%_ _%key115337%_ _%default115338%_)
        (let ((_%lock115340%_ (&raw-table-lock _%tab115336%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again115345%_ ((_%spin115348%_ '0))
              (if (##fx= (##vector-cas! _%lock115340%_ '0 '1 '0) '0)
                  (##vector-set! _%lock115340%_ '1 (current-thread))
                  (if (##fx< _%spin115348%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again115345%_ (##fx+ _%spin115348%_ '1)))
                      (let ((_%owner115354%_ (##vector-ref _%lock115340%_ '1)))
                        (if (eq? _%owner115354%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner115354%_)
                                (let () (##thread-yield!) (_%again115345%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r115360%_
                 (eqv-table-ref
                  _%tab115336%_
                  _%key115337%_
                  _%default115338%_)))
            (##vector-set! _%lock115340%_ '1 '#f)
            (##vector-cas! _%lock115340%_ '0 '0 '1)
            _%$r115360%_))))
    (define __eqv-table-set!
      (lambda (_%tab115288%_ _%key115289%_ _%value115290%_)
        (let ((_%table115292%_ (&raw-table-table _%tab115288%_))
              (_%seed115293%_ (&raw-table-seed _%tab115288%_)))
          (let* ((_%h115295%_ (fxxor (eqv-hash _%key115289%_) _%seed115293%_))
                 (_%size115298%_ (vector-length _%table115292%_))
                 (_%entries115301%_ (##fxquotient _%size115298%_ '2))
                 (_%start115304%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h115295%_ _%entries115301%_)
                   '1)))
            (let _%loop115308%_ ((_%probe115311%_ _%start115304%_)
                                 (_%i115313%_ '1)
                                 (_%deleted115315%_ '#f))
              (let ((_%k115318%_ (vector-ref _%table115292%_ _%probe115311%_)))
                (if (eq? _%k115318%_ (macro-unused-obj))
                    (if _%deleted115315%_
                        (begin
                          (vector-set!
                           _%table115292%_
                           _%deleted115315%_
                           _%key115289%_)
                          (vector-set!
                           _%table115292%_
                           (##fx+ _%deleted115315%_ '1)
                           _%value115290%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab115288%_
                              (##fx+ (&raw-table-count _%tab115288%_) '1)))))
                        (begin
                          (vector-set!
                           _%table115292%_
                           _%probe115311%_
                           _%key115289%_)
                          (vector-set!
                           _%table115292%_
                           (##fx+ _%probe115311%_ '1)
                           _%value115290%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab115288%_
                              (##fx- (&raw-table-free _%tab115288%_) '1))
                             (&raw-table-count-set!
                              _%tab115288%_
                              (##fx+ (&raw-table-count _%tab115288%_) '1))))))
                    (if (eq? _%k115318%_ (macro-deleted-obj))
                        (_%loop115308%_
                         (let ((_%next-probe115325%_
                                (fx+ _%start115304%_
                                     _%i115313%_
                                     (fx* _%i115313%_ _%i115313%_))))
                           (##fxmodulo _%next-probe115325%_ _%size115298%_))
                         (##fx+ _%i115313%_ '1)
                         (let ((_%$e115328%_ _%deleted115315%_))
                           (if _%$e115328%_ _%$e115328%_ _%probe115311%_)))
                        (if (eqv? _%key115289%_ _%k115318%_)
                            (let ()
                              (vector-set!
                               _%table115292%_
                               _%probe115311%_
                               _%key115289%_)
                              (vector-set!
                               _%table115292%_
                               (##fx+ _%probe115311%_ '1)
                               _%value115290%_))
                            (_%loop115308%_
                             (let ((_%next-probe115333%_
                                    (fx+ _%start115304%_
                                         _%i115313%_
                                         (fx* _%i115313%_ _%i115313%_))))
                               (##fxmodulo
                                _%next-probe115333%_
                                _%size115298%_))
                             (##fx+ _%i115313%_ '1)
                             _%deleted115315%_))))))))))
    (define eqv-table-set!
      (lambda (_%tab115284%_ _%key115285%_ _%value115286%_)
        (if (##fx< (&raw-table-free _%tab115284%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab115284%_))
                    '4))
            (__raw-table-rehash! _%tab115284%_)
            '#!void)
        (__eqv-table-set! _%tab115284%_ _%key115285%_ _%value115286%_)))
    (define eqv-table-set!/lock
      (lambda (_%tab115256%_ _%key115257%_ _%value115258%_)
        (let ((_%lock115261%_ (&raw-table-lock _%tab115256%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again115266%_ ((_%spin115269%_ '0))
              (if (##fx= (##vector-cas! _%lock115261%_ '0 '1 '0) '0)
                  (##vector-set! _%lock115261%_ '1 (current-thread))
                  (if (##fx< _%spin115269%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again115266%_ (##fx+ _%spin115269%_ '1)))
                      (let ((_%owner115275%_ (##vector-ref _%lock115261%_ '1)))
                        (if (eq? _%owner115275%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner115275%_)
                                (let () (##thread-yield!) (_%again115266%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r115281%_
                 (eqv-table-set! _%tab115256%_ _%key115257%_ _%value115258%_)))
            (##vector-set! _%lock115261%_ '1 '#f)
            (##vector-cas! _%lock115261%_ '0 '0 '1)
            _%$r115281%_))))
    (define __eqv-table-update!
      (lambda (_%tab115207%_
               _%key115208%_
               _%eqv-table-update!115209%_
               _%default115210%_)
        (let ((_%table115212%_ (&raw-table-table _%tab115207%_))
              (_%seed115213%_ (&raw-table-seed _%tab115207%_)))
          (let* ((_%h115215%_ (fxxor (eqv-hash _%key115208%_) _%seed115213%_))
                 (_%size115218%_ (vector-length _%table115212%_))
                 (_%entries115221%_ (##fxquotient _%size115218%_ '2))
                 (_%start115224%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h115215%_ _%entries115221%_)
                   '1)))
            (let _%loop115228%_ ((_%probe115231%_ _%start115224%_)
                                 (_%i115233%_ '1)
                                 (_%deleted115235%_ '#f))
              (let ((_%k115238%_ (vector-ref _%table115212%_ _%probe115231%_)))
                (if (eq? _%k115238%_ (macro-unused-obj))
                    (if _%deleted115235%_
                        (begin
                          (vector-set!
                           _%table115212%_
                           _%deleted115235%_
                           _%key115208%_)
                          (vector-set!
                           _%table115212%_
                           (##fx+ _%deleted115235%_ '1)
                           (_%eqv-table-update!115209%_ _%default115210%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab115207%_
                              (##fx+ (&raw-table-count _%tab115207%_) '1)))))
                        (begin
                          (vector-set!
                           _%table115212%_
                           _%probe115231%_
                           _%key115208%_)
                          (vector-set!
                           _%table115212%_
                           (##fx+ _%probe115231%_ '1)
                           (_%eqv-table-update!115209%_ _%default115210%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab115207%_
                              (##fx- (&raw-table-free _%tab115207%_) '1))
                             (&raw-table-count-set!
                              _%tab115207%_
                              (##fx+ (&raw-table-count _%tab115207%_) '1))))))
                    (if (eq? _%k115238%_ (macro-deleted-obj))
                        (_%loop115228%_
                         (let ((_%next-probe115245%_
                                (fx+ _%start115224%_
                                     _%i115233%_
                                     (fx* _%i115233%_ _%i115233%_))))
                           (##fxmodulo _%next-probe115245%_ _%size115218%_))
                         (##fx+ _%i115233%_ '1)
                         (let ((_%$e115248%_ _%deleted115235%_))
                           (if _%$e115248%_ _%$e115248%_ _%probe115231%_)))
                        (if (eqv? _%key115208%_ _%k115238%_)
                            (let ()
                              (vector-set!
                               _%table115212%_
                               _%probe115231%_
                               _%key115208%_)
                              (vector-set!
                               _%table115212%_
                               (##fx+ _%probe115231%_ '1)
                               (_%eqv-table-update!115209%_
                                (vector-ref
                                 _%table115212%_
                                 (##fx+ _%probe115231%_ '1)))))
                            (_%loop115228%_
                             (let ((_%next-probe115253%_
                                    (fx+ _%start115224%_
                                         _%i115233%_
                                         (fx* _%i115233%_ _%i115233%_))))
                               (##fxmodulo
                                _%next-probe115253%_
                                _%size115218%_))
                             (##fx+ _%i115233%_ '1)
                             _%deleted115235%_))))))))))
    (define eqv-table-update!
      (lambda (_%tab115202%_
               _%key115203%_
               _%eqv-table-update!115204%_
               _%default115205%_)
        (if (##fx< (&raw-table-free _%tab115202%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab115202%_))
                    '4))
            (__raw-table-rehash! _%tab115202%_)
            '#!void)
        (__eqv-table-update!
         _%tab115202%_
         _%key115203%_
         _%eqv-table-update!115204%_
         _%default115205%_)))
    (define eqv-table-update!/lock
      (lambda (_%tab115173%_
               _%key115174%_
               _%eqv-table-update!115175%_
               _%default115176%_)
        (let ((_%lock115179%_ (&raw-table-lock _%tab115173%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again115184%_ ((_%spin115187%_ '0))
              (if (##fx= (##vector-cas! _%lock115179%_ '0 '1 '0) '0)
                  (##vector-set! _%lock115179%_ '1 (current-thread))
                  (if (##fx< _%spin115187%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again115184%_ (##fx+ _%spin115187%_ '1)))
                      (let ((_%owner115193%_ (##vector-ref _%lock115179%_ '1)))
                        (if (eq? _%owner115193%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner115193%_)
                                (let () (##thread-yield!) (_%again115184%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r115199%_
                 (_%eqv-table-update!115175%_
                  _%tab115173%_
                  _%key115174%_
                  _%eqv-table-update!115175%_
                  _%default115176%_)))
            (##vector-set! _%lock115179%_ '1 '#f)
            (##vector-cas! _%lock115179%_ '0 '0 '1)
            _%$r115199%_))))
    (define eqv-table-delete!
      (lambda (_%tab115130%_ _%key115131%_)
        (let ((_%table115133%_ (&raw-table-table _%tab115130%_))
              (_%seed115135%_ (&raw-table-seed _%tab115130%_)))
          (let* ((_%h115138%_ (fxxor (eqv-hash _%key115131%_) _%seed115135%_))
                 (_%size115141%_ (vector-length _%table115133%_))
                 (_%entries115144%_ (##fxquotient _%size115141%_ '2))
                 (_%start115147%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h115138%_ _%entries115144%_)
                   '1)))
            (let _%loop115151%_ ((_%probe115154%_ _%start115147%_)
                                 (_%i115156%_ '1))
              (let ((_%k115159%_ (vector-ref _%table115133%_ _%probe115154%_)))
                (if (eq? _%k115159%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k115159%_ (macro-deleted-obj))
                        (_%loop115151%_
                         (let ((_%next-probe115164%_
                                (fx+ _%start115147%_
                                     _%i115156%_
                                     (fx* _%i115156%_ _%i115156%_))))
                           (##fxmodulo _%next-probe115164%_ _%size115141%_))
                         (##fx+ _%i115156%_ '1))
                        (if (eqv? _%key115131%_ _%k115159%_)
                            (let ()
                              (vector-set!
                               _%table115133%_
                               _%probe115154%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table115133%_
                               (##fx+ _%probe115154%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab115130%_
                                  (##fx- (&raw-table-count _%tab115130%_)
                                         '1)))))
                            (_%loop115151%_
                             (let ((_%next-probe115170%_
                                    (fx+ _%start115147%_
                                         _%i115156%_
                                         (fx* _%i115156%_ _%i115156%_))))
                               (##fxmodulo
                                _%next-probe115170%_
                                _%size115141%_))
                             (##fx+ _%i115156%_ '1)))))))))))
    (define eqv-table-delete!/lock
      (lambda (_%tab115102%_ _%key115104%_)
        (let ((_%lock115107%_ (&raw-table-lock _%tab115102%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again115112%_ ((_%spin115115%_ '0))
              (if (##fx= (##vector-cas! _%lock115107%_ '0 '1 '0) '0)
                  (##vector-set! _%lock115107%_ '1 (current-thread))
                  (if (##fx< _%spin115115%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again115112%_ (##fx+ _%spin115115%_ '1)))
                      (let ((_%owner115121%_ (##vector-ref _%lock115107%_ '1)))
                        (if (eq? _%owner115121%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner115121%_)
                                (let () (##thread-yield!) (_%again115112%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r115127%_ (eqv-table-delete! _%tab115102%_ _%key115104%_)))
            (##vector-set! _%lock115107%_ '1 '#f)
            (##vector-cas! _%lock115107%_ '0 '0 '1)
            _%$r115127%_))))
    (define make-symbolic-table__%
      (lambda (_%size-hint115084%_ _%seed115085%_)
        (make-raw-table__1
         _%size-hint115084%_
         symbolic-hash
         eq?
         _%seed115085%_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_%size-hint115091%_ '#f) (_%seed115093%_ '0))
          (make-symbolic-table__% _%size-hint115091%_ _%seed115093%_))))
    (define make-symbolic-table__1
      (lambda (_%size-hint115095%_)
        (let ((_%seed115097%_ '0))
          (make-symbolic-table__% _%size-hint115095%_ _%seed115097%_))))
    (define make-symbolic-table
      (lambda _g116389_
        (let ((_g116390_ (##length _g116389_)))
          (cond ((##fx= _g116390_ 0) (apply make-symbolic-table__0 _g116389_))
                ((##fx= _g116390_ 1) (apply make-symbolic-table__1 _g116389_))
                ((##fx= _g116390_ 2) (apply make-symbolic-table__% _g116389_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g116389_))))))
    (define make-symbolic-table/lock__%
      (lambda (_%size-hint115064%_ _%seed115066%_)
        (make-raw-table/lock__%
         _%size-hint115064%_
         symbolic-hash
         eq?
         _%seed115066%_)))
    (define make-symbolic-table/lock__0
      (lambda ()
        (let* ((_%size-hint115072%_ '#f) (_%seed115074%_ '0))
          (make-symbolic-table/lock__% _%size-hint115072%_ _%seed115074%_))))
    (define make-symbolic-table/lock__1
      (lambda (_%size-hint115076%_)
        (let ((_%seed115078%_ '0))
          (make-symbolic-table/lock__% _%size-hint115076%_ _%seed115078%_))))
    (define make-symbolic-table/lock
      (lambda _g116391_
        (let ((_g116392_ (##length _g116391_)))
          (cond ((##fx= _g116392_ 0)
                 (apply make-symbolic-table/lock__0 _g116391_))
                ((##fx= _g116392_ 1)
                 (apply make-symbolic-table/lock__1 _g116391_))
                ((##fx= _g116392_ 2)
                 (apply make-symbolic-table/lock__% _g116391_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table/lock
                  _g116391_))))))
    (define symbolic-table-ref
      (lambda (_%tab115017%_ _%key115018%_ _%default115019%_)
        (let ((_%table115021%_ (&raw-table-table _%tab115017%_))
              (_%seed115022%_ (&raw-table-seed _%tab115017%_)))
          (let* ((_%h115024%_
                  (fxxor (##symbol-hash _%key115018%_) _%seed115022%_))
                 (_%size115027%_ (vector-length _%table115021%_))
                 (_%entries115030%_ (##fxquotient _%size115027%_ '2))
                 (_%start115033%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h115024%_ _%entries115030%_)
                   '1)))
            (let _%loop115037%_ ((_%probe115040%_ _%start115033%_)
                                 (_%i115042%_ '1)
                                 (_%deleted115044%_ '#f))
              (let ((_%k115047%_ (vector-ref _%table115021%_ _%probe115040%_)))
                (if (eq? _%k115047%_ (macro-unused-obj))
                    _%default115019%_
                    (if (eq? _%k115047%_ (macro-deleted-obj))
                        (_%loop115037%_
                         (let ((_%next-probe115052%_
                                (fx+ _%start115033%_
                                     _%i115042%_
                                     (fx* _%i115042%_ _%i115042%_))))
                           (##fxmodulo _%next-probe115052%_ _%size115027%_))
                         (##fx+ _%i115042%_ '1)
                         (let ((_%$e115055%_ _%deleted115044%_))
                           (if _%$e115055%_ _%$e115055%_ _%probe115040%_)))
                        (if (eq? _%key115018%_ _%k115047%_)
                            (vector-ref
                             _%table115021%_
                             (##fx+ _%probe115040%_ '1))
                            (_%loop115037%_
                             (let ((_%next-probe115060%_
                                    (fx+ _%start115033%_
                                         _%i115042%_
                                         (fx* _%i115042%_ _%i115042%_))))
                               (##fxmodulo
                                _%next-probe115060%_
                                _%size115027%_))
                             (##fx+ _%i115042%_ '1)
                             _%deleted115044%_))))))))))
    (define symbolic-table-ref/lock
      (lambda (_%tab114990%_ _%key114991%_ _%default114992%_)
        (let ((_%lock114994%_ (&raw-table-lock _%tab114990%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again114999%_ ((_%spin115002%_ '0))
              (if (##fx= (##vector-cas! _%lock114994%_ '0 '1 '0) '0)
                  (##vector-set! _%lock114994%_ '1 (current-thread))
                  (if (##fx< _%spin115002%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again114999%_ (##fx+ _%spin115002%_ '1)))
                      (let ((_%owner115008%_ (##vector-ref _%lock114994%_ '1)))
                        (if (eq? _%owner115008%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner115008%_)
                                (let () (##thread-yield!) (_%again114999%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r115014%_
                 (symbolic-table-ref
                  _%tab114990%_
                  _%key114991%_
                  _%default114992%_)))
            (##vector-set! _%lock114994%_ '1 '#f)
            (##vector-cas! _%lock114994%_ '0 '0 '1)
            _%$r115014%_))))
    (define __symbolic-table-set!
      (lambda (_%tab114942%_ _%key114943%_ _%value114944%_)
        (let ((_%table114946%_ (&raw-table-table _%tab114942%_))
              (_%seed114947%_ (&raw-table-seed _%tab114942%_)))
          (let* ((_%h114949%_
                  (fxxor (##symbol-hash _%key114943%_) _%seed114947%_))
                 (_%size114952%_ (vector-length _%table114946%_))
                 (_%entries114955%_ (##fxquotient _%size114952%_ '2))
                 (_%start114958%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h114949%_ _%entries114955%_)
                   '1)))
            (let _%loop114962%_ ((_%probe114965%_ _%start114958%_)
                                 (_%i114967%_ '1)
                                 (_%deleted114969%_ '#f))
              (let ((_%k114972%_ (vector-ref _%table114946%_ _%probe114965%_)))
                (if (eq? _%k114972%_ (macro-unused-obj))
                    (if _%deleted114969%_
                        (begin
                          (vector-set!
                           _%table114946%_
                           _%deleted114969%_
                           _%key114943%_)
                          (vector-set!
                           _%table114946%_
                           (##fx+ _%deleted114969%_ '1)
                           _%value114944%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab114942%_
                              (##fx+ (&raw-table-count _%tab114942%_) '1)))))
                        (begin
                          (vector-set!
                           _%table114946%_
                           _%probe114965%_
                           _%key114943%_)
                          (vector-set!
                           _%table114946%_
                           (##fx+ _%probe114965%_ '1)
                           _%value114944%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab114942%_
                              (##fx- (&raw-table-free _%tab114942%_) '1))
                             (&raw-table-count-set!
                              _%tab114942%_
                              (##fx+ (&raw-table-count _%tab114942%_) '1))))))
                    (if (eq? _%k114972%_ (macro-deleted-obj))
                        (_%loop114962%_
                         (let ((_%next-probe114979%_
                                (fx+ _%start114958%_
                                     _%i114967%_
                                     (fx* _%i114967%_ _%i114967%_))))
                           (##fxmodulo _%next-probe114979%_ _%size114952%_))
                         (##fx+ _%i114967%_ '1)
                         (let ((_%$e114982%_ _%deleted114969%_))
                           (if _%$e114982%_ _%$e114982%_ _%probe114965%_)))
                        (if (eq? _%key114943%_ _%k114972%_)
                            (let ()
                              (vector-set!
                               _%table114946%_
                               _%probe114965%_
                               _%key114943%_)
                              (vector-set!
                               _%table114946%_
                               (##fx+ _%probe114965%_ '1)
                               _%value114944%_))
                            (_%loop114962%_
                             (let ((_%next-probe114987%_
                                    (fx+ _%start114958%_
                                         _%i114967%_
                                         (fx* _%i114967%_ _%i114967%_))))
                               (##fxmodulo
                                _%next-probe114987%_
                                _%size114952%_))
                             (##fx+ _%i114967%_ '1)
                             _%deleted114969%_))))))))))
    (define symbolic-table-set!
      (lambda (_%tab114938%_ _%key114939%_ _%value114940%_)
        (if (##fx< (&raw-table-free _%tab114938%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab114938%_))
                    '4))
            (__raw-table-rehash! _%tab114938%_)
            '#!void)
        (__symbolic-table-set! _%tab114938%_ _%key114939%_ _%value114940%_)))
    (define symbolic-table-set!/lock
      (lambda (_%tab114910%_ _%key114911%_ _%value114912%_)
        (let ((_%lock114915%_ (&raw-table-lock _%tab114910%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again114920%_ ((_%spin114923%_ '0))
              (if (##fx= (##vector-cas! _%lock114915%_ '0 '1 '0) '0)
                  (##vector-set! _%lock114915%_ '1 (current-thread))
                  (if (##fx< _%spin114923%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again114920%_ (##fx+ _%spin114923%_ '1)))
                      (let ((_%owner114929%_ (##vector-ref _%lock114915%_ '1)))
                        (if (eq? _%owner114929%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner114929%_)
                                (let () (##thread-yield!) (_%again114920%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r114935%_
                 (symbolic-table-set!
                  _%tab114910%_
                  _%key114911%_
                  _%value114912%_)))
            (##vector-set! _%lock114915%_ '1 '#f)
            (##vector-cas! _%lock114915%_ '0 '0 '1)
            _%$r114935%_))))
    (define __symbolic-table-update!
      (lambda (_%tab114861%_
               _%key114862%_
               _%symbolic-table-update!114863%_
               _%default114864%_)
        (let ((_%table114866%_ (&raw-table-table _%tab114861%_))
              (_%seed114867%_ (&raw-table-seed _%tab114861%_)))
          (let* ((_%h114869%_
                  (fxxor (##symbol-hash _%key114862%_) _%seed114867%_))
                 (_%size114872%_ (vector-length _%table114866%_))
                 (_%entries114875%_ (##fxquotient _%size114872%_ '2))
                 (_%start114878%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h114869%_ _%entries114875%_)
                   '1)))
            (let _%loop114882%_ ((_%probe114885%_ _%start114878%_)
                                 (_%i114887%_ '1)
                                 (_%deleted114889%_ '#f))
              (let ((_%k114892%_ (vector-ref _%table114866%_ _%probe114885%_)))
                (if (eq? _%k114892%_ (macro-unused-obj))
                    (if _%deleted114889%_
                        (begin
                          (vector-set!
                           _%table114866%_
                           _%deleted114889%_
                           _%key114862%_)
                          (vector-set!
                           _%table114866%_
                           (##fx+ _%deleted114889%_ '1)
                           (_%symbolic-table-update!114863%_
                            _%default114864%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab114861%_
                              (##fx+ (&raw-table-count _%tab114861%_) '1)))))
                        (begin
                          (vector-set!
                           _%table114866%_
                           _%probe114885%_
                           _%key114862%_)
                          (vector-set!
                           _%table114866%_
                           (##fx+ _%probe114885%_ '1)
                           (_%symbolic-table-update!114863%_
                            _%default114864%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab114861%_
                              (##fx- (&raw-table-free _%tab114861%_) '1))
                             (&raw-table-count-set!
                              _%tab114861%_
                              (##fx+ (&raw-table-count _%tab114861%_) '1))))))
                    (if (eq? _%k114892%_ (macro-deleted-obj))
                        (_%loop114882%_
                         (let ((_%next-probe114899%_
                                (fx+ _%start114878%_
                                     _%i114887%_
                                     (fx* _%i114887%_ _%i114887%_))))
                           (##fxmodulo _%next-probe114899%_ _%size114872%_))
                         (##fx+ _%i114887%_ '1)
                         (let ((_%$e114902%_ _%deleted114889%_))
                           (if _%$e114902%_ _%$e114902%_ _%probe114885%_)))
                        (if (eq? _%key114862%_ _%k114892%_)
                            (let ()
                              (vector-set!
                               _%table114866%_
                               _%probe114885%_
                               _%key114862%_)
                              (vector-set!
                               _%table114866%_
                               (##fx+ _%probe114885%_ '1)
                               (_%symbolic-table-update!114863%_
                                (vector-ref
                                 _%table114866%_
                                 (##fx+ _%probe114885%_ '1)))))
                            (_%loop114882%_
                             (let ((_%next-probe114907%_
                                    (fx+ _%start114878%_
                                         _%i114887%_
                                         (fx* _%i114887%_ _%i114887%_))))
                               (##fxmodulo
                                _%next-probe114907%_
                                _%size114872%_))
                             (##fx+ _%i114887%_ '1)
                             _%deleted114889%_))))))))))
    (define symbolic-table-update!
      (lambda (_%tab114856%_
               _%key114857%_
               _%symbolic-table-update!114858%_
               _%default114859%_)
        (if (##fx< (&raw-table-free _%tab114856%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab114856%_))
                    '4))
            (__raw-table-rehash! _%tab114856%_)
            '#!void)
        (__symbolic-table-update!
         _%tab114856%_
         _%key114857%_
         _%symbolic-table-update!114858%_
         _%default114859%_)))
    (define symbolic-table-update!/lock
      (lambda (_%tab114827%_
               _%key114828%_
               _%symbolic-table-update!114829%_
               _%default114830%_)
        (let ((_%lock114833%_ (&raw-table-lock _%tab114827%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again114838%_ ((_%spin114841%_ '0))
              (if (##fx= (##vector-cas! _%lock114833%_ '0 '1 '0) '0)
                  (##vector-set! _%lock114833%_ '1 (current-thread))
                  (if (##fx< _%spin114841%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again114838%_ (##fx+ _%spin114841%_ '1)))
                      (let ((_%owner114847%_ (##vector-ref _%lock114833%_ '1)))
                        (if (eq? _%owner114847%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner114847%_)
                                (let () (##thread-yield!) (_%again114838%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r114853%_
                 (_%symbolic-table-update!114829%_
                  _%tab114827%_
                  _%key114828%_
                  _%symbolic-table-update!114829%_
                  _%default114830%_)))
            (##vector-set! _%lock114833%_ '1 '#f)
            (##vector-cas! _%lock114833%_ '0 '0 '1)
            _%$r114853%_))))
    (define symbolic-table-delete!
      (lambda (_%tab114784%_ _%key114785%_)
        (let ((_%table114787%_ (&raw-table-table _%tab114784%_))
              (_%seed114789%_ (&raw-table-seed _%tab114784%_)))
          (let* ((_%h114792%_
                  (fxxor (##symbol-hash _%key114785%_) _%seed114789%_))
                 (_%size114795%_ (vector-length _%table114787%_))
                 (_%entries114798%_ (##fxquotient _%size114795%_ '2))
                 (_%start114801%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h114792%_ _%entries114798%_)
                   '1)))
            (let _%loop114805%_ ((_%probe114808%_ _%start114801%_)
                                 (_%i114810%_ '1))
              (let ((_%k114813%_ (vector-ref _%table114787%_ _%probe114808%_)))
                (if (eq? _%k114813%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k114813%_ (macro-deleted-obj))
                        (_%loop114805%_
                         (let ((_%next-probe114818%_
                                (fx+ _%start114801%_
                                     _%i114810%_
                                     (fx* _%i114810%_ _%i114810%_))))
                           (##fxmodulo _%next-probe114818%_ _%size114795%_))
                         (##fx+ _%i114810%_ '1))
                        (if (eq? _%key114785%_ _%k114813%_)
                            (let ()
                              (vector-set!
                               _%table114787%_
                               _%probe114808%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table114787%_
                               (##fx+ _%probe114808%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab114784%_
                                  (##fx- (&raw-table-count _%tab114784%_)
                                         '1)))))
                            (_%loop114805%_
                             (let ((_%next-probe114824%_
                                    (fx+ _%start114801%_
                                         _%i114810%_
                                         (fx* _%i114810%_ _%i114810%_))))
                               (##fxmodulo
                                _%next-probe114824%_
                                _%size114795%_))
                             (##fx+ _%i114810%_ '1)))))))))))
    (define symbolic-table-delete!/lock
      (lambda (_%tab114756%_ _%key114758%_)
        (let ((_%lock114761%_ (&raw-table-lock _%tab114756%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again114766%_ ((_%spin114769%_ '0))
              (if (##fx= (##vector-cas! _%lock114761%_ '0 '1 '0) '0)
                  (##vector-set! _%lock114761%_ '1 (current-thread))
                  (if (##fx< _%spin114769%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again114766%_ (##fx+ _%spin114769%_ '1)))
                      (let ((_%owner114775%_ (##vector-ref _%lock114761%_ '1)))
                        (if (eq? _%owner114775%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner114775%_)
                                (let () (##thread-yield!) (_%again114766%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r114781%_
                 (symbolic-table-delete! _%tab114756%_ _%key114758%_)))
            (##vector-set! _%lock114761%_ '1 '#f)
            (##vector-cas! _%lock114761%_ '0 '0 '1)
            _%$r114781%_))))
    (define make-string-table__%
      (lambda (_%size-hint114738%_ _%seed114739%_)
        (make-raw-table__1
         _%size-hint114738%_
         string-hash
         ##string=?
         _%seed114739%_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_%size-hint114745%_ '#f) (_%seed114747%_ '0))
          (make-string-table__% _%size-hint114745%_ _%seed114747%_))))
    (define make-string-table__1
      (lambda (_%size-hint114749%_)
        (let ((_%seed114751%_ '0))
          (make-string-table__% _%size-hint114749%_ _%seed114751%_))))
    (define make-string-table
      (lambda _g116393_
        (let ((_g116394_ (##length _g116393_)))
          (cond ((##fx= _g116394_ 0) (apply make-string-table__0 _g116393_))
                ((##fx= _g116394_ 1) (apply make-string-table__1 _g116393_))
                ((##fx= _g116394_ 2) (apply make-string-table__% _g116393_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g116393_))))))
    (define make-string-table/lock__%
      (lambda (_%size-hint114718%_ _%seed114720%_)
        (make-raw-table/lock__%
         _%size-hint114718%_
         string-hash
         ##string=?
         _%seed114720%_)))
    (define make-string-table/lock__0
      (lambda ()
        (let* ((_%size-hint114726%_ '#f) (_%seed114728%_ '0))
          (make-string-table/lock__% _%size-hint114726%_ _%seed114728%_))))
    (define make-string-table/lock__1
      (lambda (_%size-hint114730%_)
        (let ((_%seed114732%_ '0))
          (make-string-table/lock__% _%size-hint114730%_ _%seed114732%_))))
    (define make-string-table/lock
      (lambda _g116395_
        (let ((_g116396_ (##length _g116395_)))
          (cond ((##fx= _g116396_ 0)
                 (apply make-string-table/lock__0 _g116395_))
                ((##fx= _g116396_ 1)
                 (apply make-string-table/lock__1 _g116395_))
                ((##fx= _g116396_ 2)
                 (apply make-string-table/lock__% _g116395_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table/lock
                  _g116395_))))))
    (define string-table-ref
      (lambda (_%tab114671%_ _%key114672%_ _%default114673%_)
        (let ((_%table114675%_ (&raw-table-table _%tab114671%_))
              (_%seed114676%_ (&raw-table-seed _%tab114671%_)))
          (let* ((_%h114678%_
                  (fxxor (##string=?-hash _%key114672%_) _%seed114676%_))
                 (_%size114681%_ (vector-length _%table114675%_))
                 (_%entries114684%_ (##fxquotient _%size114681%_ '2))
                 (_%start114687%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h114678%_ _%entries114684%_)
                   '1)))
            (let _%loop114691%_ ((_%probe114694%_ _%start114687%_)
                                 (_%i114696%_ '1)
                                 (_%deleted114698%_ '#f))
              (let ((_%k114701%_ (vector-ref _%table114675%_ _%probe114694%_)))
                (if (eq? _%k114701%_ (macro-unused-obj))
                    _%default114673%_
                    (if (eq? _%k114701%_ (macro-deleted-obj))
                        (_%loop114691%_
                         (let ((_%next-probe114706%_
                                (fx+ _%start114687%_
                                     _%i114696%_
                                     (fx* _%i114696%_ _%i114696%_))))
                           (##fxmodulo _%next-probe114706%_ _%size114681%_))
                         (##fx+ _%i114696%_ '1)
                         (let ((_%$e114709%_ _%deleted114698%_))
                           (if _%$e114709%_ _%$e114709%_ _%probe114694%_)))
                        (if (##string=? _%key114672%_ _%k114701%_)
                            (vector-ref
                             _%table114675%_
                             (##fx+ _%probe114694%_ '1))
                            (_%loop114691%_
                             (let ((_%next-probe114714%_
                                    (fx+ _%start114687%_
                                         _%i114696%_
                                         (fx* _%i114696%_ _%i114696%_))))
                               (##fxmodulo
                                _%next-probe114714%_
                                _%size114681%_))
                             (##fx+ _%i114696%_ '1)
                             _%deleted114698%_))))))))))
    (define string-table-ref/lock
      (lambda (_%tab114644%_ _%key114645%_ _%default114646%_)
        (let ((_%lock114648%_ (&raw-table-lock _%tab114644%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again114653%_ ((_%spin114656%_ '0))
              (if (##fx= (##vector-cas! _%lock114648%_ '0 '1 '0) '0)
                  (##vector-set! _%lock114648%_ '1 (current-thread))
                  (if (##fx< _%spin114656%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again114653%_ (##fx+ _%spin114656%_ '1)))
                      (let ((_%owner114662%_ (##vector-ref _%lock114648%_ '1)))
                        (if (eq? _%owner114662%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner114662%_)
                                (let () (##thread-yield!) (_%again114653%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r114668%_
                 (string-table-ref
                  _%tab114644%_
                  _%key114645%_
                  _%default114646%_)))
            (##vector-set! _%lock114648%_ '1 '#f)
            (##vector-cas! _%lock114648%_ '0 '0 '1)
            _%$r114668%_))))
    (define __string-table-set!
      (lambda (_%tab114596%_ _%key114597%_ _%value114598%_)
        (let ((_%table114600%_ (&raw-table-table _%tab114596%_))
              (_%seed114601%_ (&raw-table-seed _%tab114596%_)))
          (let* ((_%h114603%_
                  (fxxor (##string=?-hash _%key114597%_) _%seed114601%_))
                 (_%size114606%_ (vector-length _%table114600%_))
                 (_%entries114609%_ (##fxquotient _%size114606%_ '2))
                 (_%start114612%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h114603%_ _%entries114609%_)
                   '1)))
            (let _%loop114616%_ ((_%probe114619%_ _%start114612%_)
                                 (_%i114621%_ '1)
                                 (_%deleted114623%_ '#f))
              (let ((_%k114626%_ (vector-ref _%table114600%_ _%probe114619%_)))
                (if (eq? _%k114626%_ (macro-unused-obj))
                    (if _%deleted114623%_
                        (begin
                          (vector-set!
                           _%table114600%_
                           _%deleted114623%_
                           _%key114597%_)
                          (vector-set!
                           _%table114600%_
                           (##fx+ _%deleted114623%_ '1)
                           _%value114598%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab114596%_
                              (##fx+ (&raw-table-count _%tab114596%_) '1)))))
                        (begin
                          (vector-set!
                           _%table114600%_
                           _%probe114619%_
                           _%key114597%_)
                          (vector-set!
                           _%table114600%_
                           (##fx+ _%probe114619%_ '1)
                           _%value114598%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab114596%_
                              (##fx- (&raw-table-free _%tab114596%_) '1))
                             (&raw-table-count-set!
                              _%tab114596%_
                              (##fx+ (&raw-table-count _%tab114596%_) '1))))))
                    (if (eq? _%k114626%_ (macro-deleted-obj))
                        (_%loop114616%_
                         (let ((_%next-probe114633%_
                                (fx+ _%start114612%_
                                     _%i114621%_
                                     (fx* _%i114621%_ _%i114621%_))))
                           (##fxmodulo _%next-probe114633%_ _%size114606%_))
                         (##fx+ _%i114621%_ '1)
                         (let ((_%$e114636%_ _%deleted114623%_))
                           (if _%$e114636%_ _%$e114636%_ _%probe114619%_)))
                        (if (##string=? _%key114597%_ _%k114626%_)
                            (let ()
                              (vector-set!
                               _%table114600%_
                               _%probe114619%_
                               _%key114597%_)
                              (vector-set!
                               _%table114600%_
                               (##fx+ _%probe114619%_ '1)
                               _%value114598%_))
                            (_%loop114616%_
                             (let ((_%next-probe114641%_
                                    (fx+ _%start114612%_
                                         _%i114621%_
                                         (fx* _%i114621%_ _%i114621%_))))
                               (##fxmodulo
                                _%next-probe114641%_
                                _%size114606%_))
                             (##fx+ _%i114621%_ '1)
                             _%deleted114623%_))))))))))
    (define string-table-set!
      (lambda (_%tab114592%_ _%key114593%_ _%value114594%_)
        (if (##fx< (&raw-table-free _%tab114592%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab114592%_))
                    '4))
            (__raw-table-rehash! _%tab114592%_)
            '#!void)
        (__string-table-set! _%tab114592%_ _%key114593%_ _%value114594%_)))
    (define string-table-set!/lock
      (lambda (_%tab114564%_ _%key114565%_ _%value114566%_)
        (let ((_%lock114569%_ (&raw-table-lock _%tab114564%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again114574%_ ((_%spin114577%_ '0))
              (if (##fx= (##vector-cas! _%lock114569%_ '0 '1 '0) '0)
                  (##vector-set! _%lock114569%_ '1 (current-thread))
                  (if (##fx< _%spin114577%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again114574%_ (##fx+ _%spin114577%_ '1)))
                      (let ((_%owner114583%_ (##vector-ref _%lock114569%_ '1)))
                        (if (eq? _%owner114583%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner114583%_)
                                (let () (##thread-yield!) (_%again114574%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r114589%_
                 (string-table-set!
                  _%tab114564%_
                  _%key114565%_
                  _%value114566%_)))
            (##vector-set! _%lock114569%_ '1 '#f)
            (##vector-cas! _%lock114569%_ '0 '0 '1)
            _%$r114589%_))))
    (define __string-table-update!
      (lambda (_%tab114515%_
               _%key114516%_
               _%string-table-update!114517%_
               _%default114518%_)
        (let ((_%table114520%_ (&raw-table-table _%tab114515%_))
              (_%seed114521%_ (&raw-table-seed _%tab114515%_)))
          (let* ((_%h114523%_
                  (fxxor (##string=?-hash _%key114516%_) _%seed114521%_))
                 (_%size114526%_ (vector-length _%table114520%_))
                 (_%entries114529%_ (##fxquotient _%size114526%_ '2))
                 (_%start114532%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h114523%_ _%entries114529%_)
                   '1)))
            (let _%loop114536%_ ((_%probe114539%_ _%start114532%_)
                                 (_%i114541%_ '1)
                                 (_%deleted114543%_ '#f))
              (let ((_%k114546%_ (vector-ref _%table114520%_ _%probe114539%_)))
                (if (eq? _%k114546%_ (macro-unused-obj))
                    (if _%deleted114543%_
                        (begin
                          (vector-set!
                           _%table114520%_
                           _%deleted114543%_
                           _%key114516%_)
                          (vector-set!
                           _%table114520%_
                           (##fx+ _%deleted114543%_ '1)
                           (_%string-table-update!114517%_ _%default114518%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab114515%_
                              (##fx+ (&raw-table-count _%tab114515%_) '1)))))
                        (begin
                          (vector-set!
                           _%table114520%_
                           _%probe114539%_
                           _%key114516%_)
                          (vector-set!
                           _%table114520%_
                           (##fx+ _%probe114539%_ '1)
                           (_%string-table-update!114517%_ _%default114518%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab114515%_
                              (##fx- (&raw-table-free _%tab114515%_) '1))
                             (&raw-table-count-set!
                              _%tab114515%_
                              (##fx+ (&raw-table-count _%tab114515%_) '1))))))
                    (if (eq? _%k114546%_ (macro-deleted-obj))
                        (_%loop114536%_
                         (let ((_%next-probe114553%_
                                (fx+ _%start114532%_
                                     _%i114541%_
                                     (fx* _%i114541%_ _%i114541%_))))
                           (##fxmodulo _%next-probe114553%_ _%size114526%_))
                         (##fx+ _%i114541%_ '1)
                         (let ((_%$e114556%_ _%deleted114543%_))
                           (if _%$e114556%_ _%$e114556%_ _%probe114539%_)))
                        (if (##string=? _%key114516%_ _%k114546%_)
                            (let ()
                              (vector-set!
                               _%table114520%_
                               _%probe114539%_
                               _%key114516%_)
                              (vector-set!
                               _%table114520%_
                               (##fx+ _%probe114539%_ '1)
                               (_%string-table-update!114517%_
                                (vector-ref
                                 _%table114520%_
                                 (##fx+ _%probe114539%_ '1)))))
                            (_%loop114536%_
                             (let ((_%next-probe114561%_
                                    (fx+ _%start114532%_
                                         _%i114541%_
                                         (fx* _%i114541%_ _%i114541%_))))
                               (##fxmodulo
                                _%next-probe114561%_
                                _%size114526%_))
                             (##fx+ _%i114541%_ '1)
                             _%deleted114543%_))))))))))
    (define string-table-update!
      (lambda (_%tab114510%_
               _%key114511%_
               _%string-table-update!114512%_
               _%default114513%_)
        (if (##fx< (&raw-table-free _%tab114510%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab114510%_))
                    '4))
            (__raw-table-rehash! _%tab114510%_)
            '#!void)
        (__string-table-update!
         _%tab114510%_
         _%key114511%_
         _%string-table-update!114512%_
         _%default114513%_)))
    (define string-table-update!/lock
      (lambda (_%tab114481%_
               _%key114482%_
               _%string-table-update!114483%_
               _%default114484%_)
        (let ((_%lock114487%_ (&raw-table-lock _%tab114481%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again114492%_ ((_%spin114495%_ '0))
              (if (##fx= (##vector-cas! _%lock114487%_ '0 '1 '0) '0)
                  (##vector-set! _%lock114487%_ '1 (current-thread))
                  (if (##fx< _%spin114495%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again114492%_ (##fx+ _%spin114495%_ '1)))
                      (let ((_%owner114501%_ (##vector-ref _%lock114487%_ '1)))
                        (if (eq? _%owner114501%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner114501%_)
                                (let () (##thread-yield!) (_%again114492%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r114507%_
                 (_%string-table-update!114483%_
                  _%tab114481%_
                  _%key114482%_
                  _%string-table-update!114483%_
                  _%default114484%_)))
            (##vector-set! _%lock114487%_ '1 '#f)
            (##vector-cas! _%lock114487%_ '0 '0 '1)
            _%$r114507%_))))
    (define string-table-delete!
      (lambda (_%tab114438%_ _%key114439%_)
        (let ((_%table114441%_ (&raw-table-table _%tab114438%_))
              (_%seed114443%_ (&raw-table-seed _%tab114438%_)))
          (let* ((_%h114446%_
                  (fxxor (##string=?-hash _%key114439%_) _%seed114443%_))
                 (_%size114449%_ (vector-length _%table114441%_))
                 (_%entries114452%_ (##fxquotient _%size114449%_ '2))
                 (_%start114455%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h114446%_ _%entries114452%_)
                   '1)))
            (let _%loop114459%_ ((_%probe114462%_ _%start114455%_)
                                 (_%i114464%_ '1))
              (let ((_%k114467%_ (vector-ref _%table114441%_ _%probe114462%_)))
                (if (eq? _%k114467%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k114467%_ (macro-deleted-obj))
                        (_%loop114459%_
                         (let ((_%next-probe114472%_
                                (fx+ _%start114455%_
                                     _%i114464%_
                                     (fx* _%i114464%_ _%i114464%_))))
                           (##fxmodulo _%next-probe114472%_ _%size114449%_))
                         (##fx+ _%i114464%_ '1))
                        (if (##string=? _%key114439%_ _%k114467%_)
                            (let ()
                              (vector-set!
                               _%table114441%_
                               _%probe114462%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table114441%_
                               (##fx+ _%probe114462%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab114438%_
                                  (##fx- (&raw-table-count _%tab114438%_)
                                         '1)))))
                            (_%loop114459%_
                             (let ((_%next-probe114478%_
                                    (fx+ _%start114455%_
                                         _%i114464%_
                                         (fx* _%i114464%_ _%i114464%_))))
                               (##fxmodulo
                                _%next-probe114478%_
                                _%size114449%_))
                             (##fx+ _%i114464%_ '1)))))))))))
    (define string-table-delete!/lock
      (lambda (_%tab114410%_ _%key114412%_)
        (let ((_%lock114415%_ (&raw-table-lock _%tab114410%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again114420%_ ((_%spin114423%_ '0))
              (if (##fx= (##vector-cas! _%lock114415%_ '0 '1 '0) '0)
                  (##vector-set! _%lock114415%_ '1 (current-thread))
                  (if (##fx< _%spin114423%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again114420%_ (##fx+ _%spin114423%_ '1)))
                      (let ((_%owner114429%_ (##vector-ref _%lock114415%_ '1)))
                        (if (eq? _%owner114429%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner114429%_)
                                (let () (##thread-yield!) (_%again114420%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r114435%_
                 (string-table-delete! _%tab114410%_ _%key114412%_)))
            (##vector-set! _%lock114415%_ '1 '#f)
            (##vector-cas! _%lock114415%_ '0 '0 '1)
            _%$r114435%_))))
    (define make-immediate-table__%
      (lambda (_%size-hint114392%_ _%seed114393%_)
        (make-raw-table__1
         _%size-hint114392%_
         immediate-hash
         eq?
         _%seed114393%_)))
    (define make-immediate-table__0
      (lambda ()
        (let* ((_%size-hint114399%_ '#f) (_%seed114401%_ '0))
          (make-immediate-table__% _%size-hint114399%_ _%seed114401%_))))
    (define make-immediate-table__1
      (lambda (_%size-hint114403%_)
        (let ((_%seed114405%_ '0))
          (make-immediate-table__% _%size-hint114403%_ _%seed114405%_))))
    (define make-immediate-table
      (lambda _g116397_
        (let ((_g116398_ (##length _g116397_)))
          (cond ((##fx= _g116398_ 0) (apply make-immediate-table__0 _g116397_))
                ((##fx= _g116398_ 1) (apply make-immediate-table__1 _g116397_))
                ((##fx= _g116398_ 2) (apply make-immediate-table__% _g116397_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table
                  _g116397_))))))
    (define make-immediate-table/lock__%
      (lambda (_%size-hint114372%_ _%seed114374%_)
        (make-raw-table/lock__%
         _%size-hint114372%_
         immediate-hash
         eq?
         _%seed114374%_)))
    (define make-immediate-table/lock__0
      (lambda ()
        (let* ((_%size-hint114380%_ '#f) (_%seed114382%_ '0))
          (make-immediate-table/lock__% _%size-hint114380%_ _%seed114382%_))))
    (define make-immediate-table/lock__1
      (lambda (_%size-hint114384%_)
        (let ((_%seed114386%_ '0))
          (make-immediate-table/lock__% _%size-hint114384%_ _%seed114386%_))))
    (define make-immediate-table/lock
      (lambda _g116399_
        (let ((_g116400_ (##length _g116399_)))
          (cond ((##fx= _g116400_ 0)
                 (apply make-immediate-table/lock__0 _g116399_))
                ((##fx= _g116400_ 1)
                 (apply make-immediate-table/lock__1 _g116399_))
                ((##fx= _g116400_ 2)
                 (apply make-immediate-table/lock__% _g116399_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table/lock
                  _g116399_))))))
    (define immediate-table-ref
      (lambda (_%tab114325%_ _%key114326%_ _%default114327%_)
        (let ((_%table114329%_ (&raw-table-table _%tab114325%_))
              (_%seed114330%_ (&raw-table-seed _%tab114325%_)))
          (let* ((_%h114332%_
                  (fxxor (immediate-hash _%key114326%_) _%seed114330%_))
                 (_%size114335%_ (vector-length _%table114329%_))
                 (_%entries114338%_ (##fxquotient _%size114335%_ '2))
                 (_%start114341%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h114332%_ _%entries114338%_)
                   '1)))
            (let _%loop114345%_ ((_%probe114348%_ _%start114341%_)
                                 (_%i114350%_ '1)
                                 (_%deleted114352%_ '#f))
              (let ((_%k114355%_ (vector-ref _%table114329%_ _%probe114348%_)))
                (if (eq? _%k114355%_ (macro-unused-obj))
                    _%default114327%_
                    (if (eq? _%k114355%_ (macro-deleted-obj))
                        (_%loop114345%_
                         (let ((_%next-probe114360%_
                                (fx+ _%start114341%_
                                     _%i114350%_
                                     (fx* _%i114350%_ _%i114350%_))))
                           (##fxmodulo _%next-probe114360%_ _%size114335%_))
                         (##fx+ _%i114350%_ '1)
                         (let ((_%$e114363%_ _%deleted114352%_))
                           (if _%$e114363%_ _%$e114363%_ _%probe114348%_)))
                        (if (eq? _%key114326%_ _%k114355%_)
                            (vector-ref
                             _%table114329%_
                             (##fx+ _%probe114348%_ '1))
                            (_%loop114345%_
                             (let ((_%next-probe114368%_
                                    (fx+ _%start114341%_
                                         _%i114350%_
                                         (fx* _%i114350%_ _%i114350%_))))
                               (##fxmodulo
                                _%next-probe114368%_
                                _%size114335%_))
                             (##fx+ _%i114350%_ '1)
                             _%deleted114352%_))))))))))
    (define immediate-table-ref/lock
      (lambda (_%tab114298%_ _%key114299%_ _%default114300%_)
        (let ((_%lock114302%_ (&raw-table-lock _%tab114298%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again114307%_ ((_%spin114310%_ '0))
              (if (##fx= (##vector-cas! _%lock114302%_ '0 '1 '0) '0)
                  (##vector-set! _%lock114302%_ '1 (current-thread))
                  (if (##fx< _%spin114310%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again114307%_ (##fx+ _%spin114310%_ '1)))
                      (let ((_%owner114316%_ (##vector-ref _%lock114302%_ '1)))
                        (if (eq? _%owner114316%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner114316%_)
                                (let () (##thread-yield!) (_%again114307%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r114322%_
                 (immediate-table-ref
                  _%tab114298%_
                  _%key114299%_
                  _%default114300%_)))
            (##vector-set! _%lock114302%_ '1 '#f)
            (##vector-cas! _%lock114302%_ '0 '0 '1)
            _%$r114322%_))))
    (define __immediate-table-set!
      (lambda (_%tab114250%_ _%key114251%_ _%value114252%_)
        (let ((_%table114254%_ (&raw-table-table _%tab114250%_))
              (_%seed114255%_ (&raw-table-seed _%tab114250%_)))
          (let* ((_%h114257%_
                  (fxxor (immediate-hash _%key114251%_) _%seed114255%_))
                 (_%size114260%_ (vector-length _%table114254%_))
                 (_%entries114263%_ (##fxquotient _%size114260%_ '2))
                 (_%start114266%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h114257%_ _%entries114263%_)
                   '1)))
            (let _%loop114270%_ ((_%probe114273%_ _%start114266%_)
                                 (_%i114275%_ '1)
                                 (_%deleted114277%_ '#f))
              (let ((_%k114280%_ (vector-ref _%table114254%_ _%probe114273%_)))
                (if (eq? _%k114280%_ (macro-unused-obj))
                    (if _%deleted114277%_
                        (begin
                          (vector-set!
                           _%table114254%_
                           _%deleted114277%_
                           _%key114251%_)
                          (vector-set!
                           _%table114254%_
                           (##fx+ _%deleted114277%_ '1)
                           _%value114252%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab114250%_
                              (##fx+ (&raw-table-count _%tab114250%_) '1)))))
                        (begin
                          (vector-set!
                           _%table114254%_
                           _%probe114273%_
                           _%key114251%_)
                          (vector-set!
                           _%table114254%_
                           (##fx+ _%probe114273%_ '1)
                           _%value114252%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab114250%_
                              (##fx- (&raw-table-free _%tab114250%_) '1))
                             (&raw-table-count-set!
                              _%tab114250%_
                              (##fx+ (&raw-table-count _%tab114250%_) '1))))))
                    (if (eq? _%k114280%_ (macro-deleted-obj))
                        (_%loop114270%_
                         (let ((_%next-probe114287%_
                                (fx+ _%start114266%_
                                     _%i114275%_
                                     (fx* _%i114275%_ _%i114275%_))))
                           (##fxmodulo _%next-probe114287%_ _%size114260%_))
                         (##fx+ _%i114275%_ '1)
                         (let ((_%$e114290%_ _%deleted114277%_))
                           (if _%$e114290%_ _%$e114290%_ _%probe114273%_)))
                        (if (eq? _%key114251%_ _%k114280%_)
                            (let ()
                              (vector-set!
                               _%table114254%_
                               _%probe114273%_
                               _%key114251%_)
                              (vector-set!
                               _%table114254%_
                               (##fx+ _%probe114273%_ '1)
                               _%value114252%_))
                            (_%loop114270%_
                             (let ((_%next-probe114295%_
                                    (fx+ _%start114266%_
                                         _%i114275%_
                                         (fx* _%i114275%_ _%i114275%_))))
                               (##fxmodulo
                                _%next-probe114295%_
                                _%size114260%_))
                             (##fx+ _%i114275%_ '1)
                             _%deleted114277%_))))))))))
    (define immediate-table-set!
      (lambda (_%tab114246%_ _%key114247%_ _%value114248%_)
        (if (##fx< (&raw-table-free _%tab114246%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab114246%_))
                    '4))
            (__raw-table-rehash! _%tab114246%_)
            '#!void)
        (__immediate-table-set! _%tab114246%_ _%key114247%_ _%value114248%_)))
    (define immediate-table-set!/lock
      (lambda (_%tab114218%_ _%key114219%_ _%value114220%_)
        (let ((_%lock114223%_ (&raw-table-lock _%tab114218%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again114228%_ ((_%spin114231%_ '0))
              (if (##fx= (##vector-cas! _%lock114223%_ '0 '1 '0) '0)
                  (##vector-set! _%lock114223%_ '1 (current-thread))
                  (if (##fx< _%spin114231%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again114228%_ (##fx+ _%spin114231%_ '1)))
                      (let ((_%owner114237%_ (##vector-ref _%lock114223%_ '1)))
                        (if (eq? _%owner114237%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner114237%_)
                                (let () (##thread-yield!) (_%again114228%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r114243%_
                 (immediate-table-set!
                  _%tab114218%_
                  _%key114219%_
                  _%value114220%_)))
            (##vector-set! _%lock114223%_ '1 '#f)
            (##vector-cas! _%lock114223%_ '0 '0 '1)
            _%$r114243%_))))
    (define __immediate-table-update!
      (lambda (_%tab114169%_
               _%key114170%_
               _%immediate-table-update!114171%_
               _%default114172%_)
        (let ((_%table114174%_ (&raw-table-table _%tab114169%_))
              (_%seed114175%_ (&raw-table-seed _%tab114169%_)))
          (let* ((_%h114177%_
                  (fxxor (immediate-hash _%key114170%_) _%seed114175%_))
                 (_%size114180%_ (vector-length _%table114174%_))
                 (_%entries114183%_ (##fxquotient _%size114180%_ '2))
                 (_%start114186%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h114177%_ _%entries114183%_)
                   '1)))
            (let _%loop114190%_ ((_%probe114193%_ _%start114186%_)
                                 (_%i114195%_ '1)
                                 (_%deleted114197%_ '#f))
              (let ((_%k114200%_ (vector-ref _%table114174%_ _%probe114193%_)))
                (if (eq? _%k114200%_ (macro-unused-obj))
                    (if _%deleted114197%_
                        (begin
                          (vector-set!
                           _%table114174%_
                           _%deleted114197%_
                           _%key114170%_)
                          (vector-set!
                           _%table114174%_
                           (##fx+ _%deleted114197%_ '1)
                           (_%immediate-table-update!114171%_
                            _%default114172%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab114169%_
                              (##fx+ (&raw-table-count _%tab114169%_) '1)))))
                        (begin
                          (vector-set!
                           _%table114174%_
                           _%probe114193%_
                           _%key114170%_)
                          (vector-set!
                           _%table114174%_
                           (##fx+ _%probe114193%_ '1)
                           (_%immediate-table-update!114171%_
                            _%default114172%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab114169%_
                              (##fx- (&raw-table-free _%tab114169%_) '1))
                             (&raw-table-count-set!
                              _%tab114169%_
                              (##fx+ (&raw-table-count _%tab114169%_) '1))))))
                    (if (eq? _%k114200%_ (macro-deleted-obj))
                        (_%loop114190%_
                         (let ((_%next-probe114207%_
                                (fx+ _%start114186%_
                                     _%i114195%_
                                     (fx* _%i114195%_ _%i114195%_))))
                           (##fxmodulo _%next-probe114207%_ _%size114180%_))
                         (##fx+ _%i114195%_ '1)
                         (let ((_%$e114210%_ _%deleted114197%_))
                           (if _%$e114210%_ _%$e114210%_ _%probe114193%_)))
                        (if (eq? _%key114170%_ _%k114200%_)
                            (let ()
                              (vector-set!
                               _%table114174%_
                               _%probe114193%_
                               _%key114170%_)
                              (vector-set!
                               _%table114174%_
                               (##fx+ _%probe114193%_ '1)
                               (_%immediate-table-update!114171%_
                                (vector-ref
                                 _%table114174%_
                                 (##fx+ _%probe114193%_ '1)))))
                            (_%loop114190%_
                             (let ((_%next-probe114215%_
                                    (fx+ _%start114186%_
                                         _%i114195%_
                                         (fx* _%i114195%_ _%i114195%_))))
                               (##fxmodulo
                                _%next-probe114215%_
                                _%size114180%_))
                             (##fx+ _%i114195%_ '1)
                             _%deleted114197%_))))))))))
    (define immediate-table-update!
      (lambda (_%tab114164%_
               _%key114165%_
               _%immediate-table-update!114166%_
               _%default114167%_)
        (if (##fx< (&raw-table-free _%tab114164%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab114164%_))
                    '4))
            (__raw-table-rehash! _%tab114164%_)
            '#!void)
        (__immediate-table-update!
         _%tab114164%_
         _%key114165%_
         _%immediate-table-update!114166%_
         _%default114167%_)))
    (define immediate-table-update!/lock
      (lambda (_%tab114135%_
               _%key114136%_
               _%immediate-table-update!114137%_
               _%default114138%_)
        (let ((_%lock114141%_ (&raw-table-lock _%tab114135%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again114146%_ ((_%spin114149%_ '0))
              (if (##fx= (##vector-cas! _%lock114141%_ '0 '1 '0) '0)
                  (##vector-set! _%lock114141%_ '1 (current-thread))
                  (if (##fx< _%spin114149%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again114146%_ (##fx+ _%spin114149%_ '1)))
                      (let ((_%owner114155%_ (##vector-ref _%lock114141%_ '1)))
                        (if (eq? _%owner114155%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner114155%_)
                                (let () (##thread-yield!) (_%again114146%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r114161%_
                 (_%immediate-table-update!114137%_
                  _%tab114135%_
                  _%key114136%_
                  _%immediate-table-update!114137%_
                  _%default114138%_)))
            (##vector-set! _%lock114141%_ '1 '#f)
            (##vector-cas! _%lock114141%_ '0 '0 '1)
            _%$r114161%_))))
    (define immediate-table-delete!
      (lambda (_%tab114092%_ _%key114093%_)
        (let ((_%table114095%_ (&raw-table-table _%tab114092%_))
              (_%seed114097%_ (&raw-table-seed _%tab114092%_)))
          (let* ((_%h114100%_
                  (fxxor (immediate-hash _%key114093%_) _%seed114097%_))
                 (_%size114103%_ (vector-length _%table114095%_))
                 (_%entries114106%_ (##fxquotient _%size114103%_ '2))
                 (_%start114109%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h114100%_ _%entries114106%_)
                   '1)))
            (let _%loop114113%_ ((_%probe114116%_ _%start114109%_)
                                 (_%i114118%_ '1))
              (let ((_%k114121%_ (vector-ref _%table114095%_ _%probe114116%_)))
                (if (eq? _%k114121%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k114121%_ (macro-deleted-obj))
                        (_%loop114113%_
                         (let ((_%next-probe114126%_
                                (fx+ _%start114109%_
                                     _%i114118%_
                                     (fx* _%i114118%_ _%i114118%_))))
                           (##fxmodulo _%next-probe114126%_ _%size114103%_))
                         (##fx+ _%i114118%_ '1))
                        (if (eq? _%key114093%_ _%k114121%_)
                            (let ()
                              (vector-set!
                               _%table114095%_
                               _%probe114116%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table114095%_
                               (##fx+ _%probe114116%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab114092%_
                                  (##fx- (&raw-table-count _%tab114092%_)
                                         '1)))))
                            (_%loop114113%_
                             (let ((_%next-probe114132%_
                                    (fx+ _%start114109%_
                                         _%i114118%_
                                         (fx* _%i114118%_ _%i114118%_))))
                               (##fxmodulo
                                _%next-probe114132%_
                                _%size114103%_))
                             (##fx+ _%i114118%_ '1)))))))))))
    (define immediate-table-delete!/lock
      (lambda (_%tab114064%_ _%key114066%_)
        (let ((_%lock114069%_ (&raw-table-lock _%tab114064%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again114074%_ ((_%spin114077%_ '0))
              (if (##fx= (##vector-cas! _%lock114069%_ '0 '1 '0) '0)
                  (##vector-set! _%lock114069%_ '1 (current-thread))
                  (if (##fx< _%spin114077%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again114074%_ (##fx+ _%spin114077%_ '1)))
                      (let ((_%owner114083%_ (##vector-ref _%lock114069%_ '1)))
                        (if (eq? _%owner114083%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner114083%_)
                                (let () (##thread-yield!) (_%again114074%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r114089%_
                 (immediate-table-delete! _%tab114064%_ _%key114066%_)))
            (##vector-set! _%lock114069%_ '1 '#f)
            (##vector-cas! _%lock114069%_ '0 '0 '1)
            _%$r114089%_))))
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
      (lambda (_%tab114062%_)
        (##unchecked-structure-ref
         _%tab114062%_
         '1
         __gc-table::t
         'gc-table-gcht)))
    (define &gc-table-immediate
      (lambda (_%tab114060%_)
        (##unchecked-structure-ref
         _%tab114060%_
         '2
         __gc-table::t
         'gc-table-immediate)))
    (define &gc-table-lock
      (lambda (_%tab114058%_)
        (##unchecked-structure-ref
         _%tab114058%_
         '3
         __gc-table::t
         'gc-table-lock)))
    (define &gc-table-gcht-set!
      (lambda (_%tab114055%_ _%val114056%_)
        (##unchecked-structure-set!
         _%tab114055%_
         _%val114056%_
         '1
         __gc-table::t
         'gc-table-gcht-set!)))
    (define &gc-table-immediate-set!
      (lambda (_%tab114052%_ _%val114053%_)
        (##unchecked-structure-set!
         _%tab114052%_
         _%val114053%_
         '2
         __gc-table::t
         'gc-table-immediate-set!)))
    (define &gc-table-lock-set!
      (lambda (_%tab114049%_ _%val114050%_)
        (##unchecked-structure-set!
         _%tab114049%_
         _%val114050%_
         '3
         __gc-table::t
         'gc-table-lock-set!)))
    (define make-gc-table__%
      (lambda (_%size-hint114013%_
               _%klass114014%_
               _%flags114015%_
               _%lock114016%_)
        (let ((_%gcht114018%_
               (__gc-table-new
                (if (fixnum? _%size-hint114013%_) _%size-hint114013%_ '16)
                _%flags114015%_)))
          (##structure _%klass114014%_ _%gcht114018%_ '#f _%lock114016%_))))
    (define make-gc-table__0
      (lambda (_%size-hint114023%_)
        (let* ((_%klass114025%_ __gc-table::t)
               (_%flags114027%_ '0)
               (_%lock114029%_ '#f))
          (make-gc-table__%
           _%size-hint114023%_
           _%klass114025%_
           _%flags114027%_
           _%lock114029%_))))
    (define make-gc-table__1
      (lambda (_%size-hint114031%_ _%klass114032%_)
        (let* ((_%flags114034%_ '0) (_%lock114036%_ '#f))
          (make-gc-table__%
           _%size-hint114031%_
           _%klass114032%_
           _%flags114034%_
           _%lock114036%_))))
    (define make-gc-table__2
      (lambda (_%size-hint114038%_ _%klass114039%_ _%flags114040%_)
        (let ((_%lock114042%_ '#f))
          (make-gc-table__%
           _%size-hint114038%_
           _%klass114039%_
           _%flags114040%_
           _%lock114042%_))))
    (define make-gc-table
      (lambda _g116401_
        (let ((_g116402_ (##length _g116401_)))
          (cond ((##fx= _g116402_ 1) (apply make-gc-table__0 _g116401_))
                ((##fx= _g116402_ 2) (apply make-gc-table__1 _g116401_))
                ((##fx= _g116402_ 3) (apply make-gc-table__2 _g116401_))
                ((##fx= _g116402_ 4) (apply make-gc-table__% _g116401_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table
                  _g116401_))))))
    (define make-gc-table/lock__%
      (lambda (_%size-hint113990%_ _%klass113991%_ _%flags113992%_)
        (make-gc-table__%
         _%size-hint113990%_
         _%klass113991%_
         _%flags113992%_
         (vector '0 '#f))))
    (define make-gc-table/lock__0
      (lambda (_%size-hint113997%_)
        (let* ((_%klass113999%_ __gc-table::t) (_%flags114001%_ '0))
          (make-gc-table/lock__%
           _%size-hint113997%_
           _%klass113999%_
           _%flags114001%_))))
    (define make-gc-table/lock__1
      (lambda (_%size-hint114003%_ _%klass114004%_)
        (let ((_%flags114006%_ '0))
          (make-gc-table/lock__%
           _%size-hint114003%_
           _%klass114004%_
           _%flags114006%_))))
    (define make-gc-table/lock
      (lambda _g116403_
        (let ((_g116404_ (##length _g116403_)))
          (cond ((##fx= _g116404_ 1) (apply make-gc-table/lock__0 _g116403_))
                ((##fx= _g116404_ 2) (apply make-gc-table/lock__1 _g116403_))
                ((##fx= _g116404_ 3) (apply make-gc-table/lock__% _g116403_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table/lock
                  _g116403_))))))
    (define __gc-table-immediate
      (lambda (_%tab113981%_)
        (let ((_%$e113983%_ (&gc-table-immediate _%tab113981%_)))
          (if _%$e113983%_
              _%$e113983%_
              (let ((_%immediate113987%_ (make-immediate-table__% '#f '0)))
                (&gc-table-immediate-set! _%tab113981%_ _%immediate113987%_)
                _%immediate113987%_)))))
    (define __gc-table-new
      (lambda (_%size113971%_ _%flags113972%_)
        (let* ((_%flags113974%_
                (##fxand _%flags113972%_
                         (fxnot (macro-gc-hash-table-flag-need-rehash))))
               (_%flags113976%_
                (fxior _%flags113974%_
                       (macro-gc-hash-table-flag-mem-alloc-keys)))
               (_%gcht113978%_
                (##gc-hash-table-allocate
                 _%size113971%_
                 _%flags113976%_
                 __gc-table-loads)))
          _%gcht113978%_)))
    (define __gc-table-e
      (lambda (_%tab113966%_)
        (declare (not interrupts-enabled))
        (let ((_%gcht113969%_ (&gc-table-gcht _%tab113966%_)))
          (if (##fx= '0
                     (fxand (macro-gc-hash-table-flags _%gcht113969%_)
                            (macro-gc-hash-table-flag-need-rehash)))
              _%gcht113969%_
              (begin
                (__gc-table-rehash! _%tab113966%_)
                (&gc-table-gcht _%tab113966%_))))))
    (define __gc-table-rehash!
      (lambda (_%tab113957%_)
        (let* ((_%old-table113959%_ (&gc-table-gcht _%tab113957%_))
               (_%new-table113961%_
                (##gc-hash-table-resize! _%old-table113959%_ __gc-table-loads))
               (_%gcht113963%_
                (##gc-hash-table-rehash!
                 _%old-table113959%_
                 _%new-table113961%_)))
          (&gc-table-gcht-set! _%tab113957%_ _%gcht113963%_))))
    (define gc-table-ref
      (lambda (_%tab113941%_ _%key113942%_ _%default113943%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key113942%_)
            (let* ((_%gcht113947%_ (__gc-table-e _%tab113941%_))
                   (_%value113949%_
                    (##gc-hash-table-ref _%gcht113947%_ _%key113942%_)))
              (if (eq? _%value113949%_ (macro-unused-obj))
                  _%default113943%_
                  _%value113949%_))
            (let ((_%$e113951%_ (&gc-table-immediate _%tab113941%_)))
              (if _%$e113951%_
                  ((lambda (_%immediate113954%_)
                     (immediate-table-ref
                      _%immediate113954%_
                      _%key113942%_
                      _%default113943%_))
                   _%$e113951%_)
                  _%default113943%_)))))
    (define gc-table-ref/lock
      (lambda (_%tab113917%_ _%key113918%_ _%default113919%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again113923%_ ((_%spin113926%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab113917%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab113917%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin113926%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again113923%_ (##fx+ _%spin113926%_ '1)))
                    (let ((_%owner113932%_
                           (##vector-ref (&gc-table-lock _%tab113917%_) '1)))
                      (if (eq? _%owner113932%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner113932%_)
                              (let () (##thread-yield!) (_%again113923%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r113938%_
               (gc-table-ref _%tab113917%_ _%key113918%_ _%default113919%_)))
          (##vector-set! (&gc-table-lock _%tab113917%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab113917%_) '0 '0 '1)
          _%$r113938%_)))
    (define gc-table-set!
      (lambda (_%tab113910%_ _%key113911%_ _%value113912%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key113911%_)
            (let ((_%gcht113915%_ (__gc-table-e _%tab113910%_)))
              (if (##gc-hash-table-set!
                   _%gcht113915%_
                   _%key113911%_
                   _%value113912%_)
                  (begin
                    (__gc-table-rehash! _%tab113910%_)
                    (gc-table-set!
                     _%tab113910%_
                     _%key113911%_
                     _%value113912%_))
                  '#!void))
            (immediate-table-set!
             (__gc-table-immediate _%tab113910%_)
             _%key113911%_
             _%value113912%_))))
    (define gc-table-set/lock!
      (lambda (_%tab113886%_ _%key113887%_ _%value113888%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again113892%_ ((_%spin113895%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab113886%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab113886%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin113895%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again113892%_ (##fx+ _%spin113895%_ '1)))
                    (let ((_%owner113901%_
                           (##vector-ref (&gc-table-lock _%tab113886%_) '1)))
                      (if (eq? _%owner113901%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner113901%_)
                              (let () (##thread-yield!) (_%again113892%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r113907%_
               (gc-table-set! _%tab113886%_ _%key113887%_ _%value113888%_)))
          (##vector-set! (&gc-table-lock _%tab113886%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab113886%_) '0 '0 '1)
          _%$r113907%_)))
    (define gc-table-update!
      (lambda (_%tab113879%_ _%key113880%_ _%update113881%_ _%default113882%_)
        (if (##mem-allocated? _%key113880%_)
            (let ((_%value113884%_
                   (gc-table-ref
                    _%tab113879%_
                    _%key113880%_
                    _%default113882%_)))
              (gc-table-set!
               _%tab113879%_
               _%key113880%_
               (_%update113881%_ _%value113884%_)))
            (immediate-table-update!
             (__gc-table-immediate _%tab113879%_)
             _%key113880%_
             _%update113881%_
             _%default113882%_))))
    (define gc-table-update!/lock
      (lambda (_%tab113854%_ _%key113855%_ _%update113856%_ _%default113857%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again113861%_ ((_%spin113864%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab113854%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab113854%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin113864%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again113861%_ (##fx+ _%spin113864%_ '1)))
                    (let ((_%owner113870%_
                           (##vector-ref (&gc-table-lock _%tab113854%_) '1)))
                      (if (eq? _%owner113870%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner113870%_)
                              (let () (##thread-yield!) (_%again113861%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r113876%_
               (gc-table-update!
                _%tab113854%_
                _%key113855%_
                _%update113856%_
                _%default113857%_)))
          (##vector-set! (&gc-table-lock _%tab113854%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab113854%_) '0 '0 '1)
          _%$r113876%_)))
    (define gc-table-delete!
      (lambda (_%tab113842%_ _%key113843%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key113843%_)
            (let ((_%gcht113847%_ (__gc-table-e _%tab113842%_)))
              (if (##gc-hash-table-set!
                   _%gcht113847%_
                   _%key113843%_
                   (macro-absent-obj))
                  (begin
                    (__gc-table-rehash! _%tab113842%_)
                    (gc-table-delete! _%tab113842%_ _%key113843%_))
                  '#!void))
            (let ((_%$e113849%_ (&gc-table-immediate _%tab113842%_)))
              (if _%$e113849%_
                  ((lambda (_%immediate113852%_)
                     (immediate-table-delete!
                      _%immediate113852%_
                      _%key113843%_))
                   _%$e113849%_)
                  '#!void)))))
    (define gc-table-delete!/lock
      (lambda (_%tab113819%_ _%key113820%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again113824%_ ((_%spin113827%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab113819%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab113819%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin113827%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again113824%_ (##fx+ _%spin113827%_ '1)))
                    (let ((_%owner113833%_
                           (##vector-ref (&gc-table-lock _%tab113819%_) '1)))
                      (if (eq? _%owner113833%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner113833%_)
                              (let () (##thread-yield!) (_%again113824%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r113839%_ (gc-table-delete! _%tab113819%_ _%key113820%_)))
          (##vector-set! (&gc-table-lock _%tab113819%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab113819%_) '0 '0 '1)
          _%$r113839%_)))
    (define gc-table-for-each
      (lambda (_%tab113808%_ _%proc113809%_)
        (declare (not interrupts-enabled))
        (begin
          (let ((_%gcht113812%_ (__gc-table-e _%tab113808%_)))
            (##gc-hash-table-for-each _%proc113809%_ _%gcht113812%_))
          (let ((_%$e113814%_ (&gc-table-immediate _%tab113808%_)))
            (if _%$e113814%_
                ((lambda (_%immediate113817%_)
                   (raw-table-for-each _%immediate113817%_ _%proc113809%_))
                 _%$e113814%_)
                '#!void)))))
    (define gc-table-for-each/lock
      (lambda (_%tab113785%_ _%proc113786%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again113790%_ ((_%spin113793%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab113785%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab113785%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin113793%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again113790%_ (##fx+ _%spin113793%_ '1)))
                    (let ((_%owner113799%_
                           (##vector-ref (&gc-table-lock _%tab113785%_) '1)))
                      (if (eq? _%owner113799%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner113799%_)
                              (let () (##thread-yield!) (_%again113790%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r113805%_ (gc-table-for-each _%tab113785%_ _%proc113786%_)))
          (##vector-set! (&gc-table-lock _%tab113785%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab113785%_) '0 '0 '1)
          _%$r113805%_)))
    (define gc-table-copy
      (lambda (_%tab113773%_)
        (let* ((_%gcht113775%_ (__gc-table-e _%tab113773%_))
               (_%new-table113777%_
                (__gc-table-new
                 (macro-gc-hash-table-count _%gcht113775%_)
                 (macro-gc-hash-table-flags _%gcht113775%_)))
               (_%result113779%_
                (##structure
                 (##structure-type _%tab113773%_)
                 _%new-table113777%_
                 '#f)))
          (gc-table-for-each
           _%tab113773%_
           (lambda (_%k113782%_ _%v113783%_)
             (gc-table-set! _%result113779%_ _%k113782%_ _%v113783%_)))
          _%result113779%_)))
    (define gc-table-copy/lock
      (lambda (_%tab113751%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again113755%_ ((_%spin113758%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab113751%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab113751%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin113758%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again113755%_ (##fx+ _%spin113758%_ '1)))
                    (let ((_%owner113764%_
                           (##vector-ref (&gc-table-lock _%tab113751%_) '1)))
                      (if (eq? _%owner113764%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner113764%_)
                              (let () (##thread-yield!) (_%again113755%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r113770%_ (gc-table-copy _%tab113751%_)))
          (##vector-set! (&gc-table-lock _%tab113751%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab113751%_) '0 '0 '1)
          _%$r113770%_)))
    (define gc-table-clear!
      (lambda (_%tab113744%_)
        (let* ((_%gcht113746%_ (__gc-table-e _%tab113744%_))
               (_%new-table113748%_
                (__gc-table-new
                 '16
                 (macro-gc-hash-table-flags _%gcht113746%_))))
          (&gc-table-gcht-set! _%tab113744%_ _%new-table113748%_)
          (&gc-table-immediate-set! _%tab113744%_ '#f))))
    (define gc-table-clear!/lock
      (lambda (_%tab113722%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again113726%_ ((_%spin113729%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab113722%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab113722%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin113729%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again113726%_ (##fx+ _%spin113729%_ '1)))
                    (let ((_%owner113735%_
                           (##vector-ref (&gc-table-lock _%tab113722%_) '1)))
                      (if (eq? _%owner113735%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner113735%_)
                              (let () (##thread-yield!) (_%again113726%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r113741%_ (gc-table-clear! _%tab113722%_)))
          (##vector-set! (&gc-table-lock _%tab113722%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab113722%_) '0 '0 '1)
          _%$r113741%_)))
    (define gc-table-length
      (lambda (_%tab113714%_)
        (let ((_%gcht113716%_ (__gc-table-e _%tab113714%_)))
          (fx+ (macro-gc-hash-table-count _%gcht113716%_)
               (let ((_%$e113718%_ (&gc-table-immediate _%tab113714%_)))
                 (if _%$e113718%_ (&raw-table-count _%$e113718%_) '0))))))
    (define gc-table-length/lock
      (lambda (_%tab113692%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again113696%_ ((_%spin113699%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab113692%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab113692%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin113699%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again113696%_ (##fx+ _%spin113699%_ '1)))
                    (let ((_%owner113705%_
                           (##vector-ref (&gc-table-lock _%tab113692%_) '1)))
                      (if (eq? _%owner113705%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner113705%_)
                              (let () (##thread-yield!) (_%again113696%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r113711%_ (gc-table-length _%tab113692%_)))
          (##vector-set! (&gc-table-lock _%tab113692%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab113692%_) '0 '0 '1)
          _%$r113711%_)))
    (define __object-eq-hash-lock (vector '0 '#f))
    (define __object-eq-hash-next '0)
    (define __object-eq-hash
      (make-gc-table__2
       '1024
       __gc-table::t
       (macro-gc-hash-table-flag-weak-keys)))
    (define __object->eq-hash
      (lambda (_%obj113662%_)
        (declare (not interrupts-enabled))
        (begin
          (let ()
            (declare (not interrupts-enabled))
            (let _%again113667%_ ((_%spin113670%_ '0))
              (if (##fx= (##vector-cas! __object-eq-hash-lock '0 '1 '0) '0)
                  (##vector-set! __object-eq-hash-lock '1 (current-thread))
                  (if (##fx< _%spin113670%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again113667%_ (##fx+ _%spin113670%_ '1)))
                      (let ((_%owner113676%_
                             (##vector-ref __object-eq-hash-lock '1)))
                        (if (eq? _%owner113676%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner113676%_)
                                (let () (##thread-yield!) (_%again113667%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r113689%_
                 (let ((_%val113682%_
                        (gc-table-ref __object-eq-hash _%obj113662%_ '#f)))
                   (if _%val113682%_
                       _%val113682%_
                       (let ((_%h113684%_
                              (fxand __object-eq-hash (macro-max-fixnum32))))
                         (set! __object-eq-hash-next
                               (let ((_%$e113686%_
                                      (##fx+? __object-eq-hash-next '1)))
                                 (if _%$e113686%_ _%$e113686%_ '0)))
                         (gc-table-set!
                          __object-eq-hash
                          _%obj113662%_
                          _%h113684%_)
                         _%h113684%_)))))
            (##vector-set! __object-eq-hash-lock '1 '#f)
            (##vector-cas! __object-eq-hash-lock '0 '0 '1)
            _%$r113689%_))))))
