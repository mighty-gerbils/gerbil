(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1770341474)
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
      (lambda (_%tab108760%_)
        (##unchecked-structure-ref
         _%tab108760%_
         '1
         __table::t
         'raw-table-table)))
    (define &raw-table-count
      (lambda (_%tab108758%_)
        (##unchecked-structure-ref
         _%tab108758%_
         '2
         __table::t
         'raw-table-count)))
    (define &raw-table-free
      (lambda (_%tab108756%_)
        (##unchecked-structure-ref
         _%tab108756%_
         '3
         __table::t
         'raw-table-free)))
    (define &raw-table-hash
      (lambda (_%tab108754%_)
        (##unchecked-structure-ref
         _%tab108754%_
         '4
         __table::t
         'raw-table-hash)))
    (define &raw-table-test
      (lambda (_%tab108752%_)
        (##unchecked-structure-ref
         _%tab108752%_
         '5
         __table::t
         'raw-table-test)))
    (define &raw-table-seed
      (lambda (_%tab108750%_)
        (##unchecked-structure-ref
         _%tab108750%_
         '6
         __table::t
         'raw-table-seed)))
    (define &raw-table-lock
      (lambda (_%tab108748%_)
        (##unchecked-structure-ref
         _%tab108748%_
         '7
         __table::t
         'raw-table-lock)))
    (define &raw-table-table-set!
      (lambda (_%tab108745%_ _%val108746%_)
        (##unchecked-structure-set!
         _%tab108745%_
         _%val108746%_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_%tab108742%_ _%val108743%_)
        (##unchecked-structure-set!
         _%tab108742%_
         _%val108743%_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_%tab108739%_ _%val108740%_)
        (##unchecked-structure-set!
         _%tab108739%_
         _%val108740%_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_%tab108736%_ _%val108737%_)
        (##unchecked-structure-set!
         _%tab108736%_
         _%val108737%_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_%tab108733%_ _%val108734%_)
        (##unchecked-structure-set!
         _%tab108733%_
         _%val108734%_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_%tab108730%_ _%val108731%_)
        (##unchecked-structure-set!
         _%tab108730%_
         _%val108731%_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define &raw-table-lock-set!
      (lambda (_%tab108727%_ _%val108728%_)
        (##unchecked-structure-set!
         _%tab108727%_
         _%val108728%_
         '7
         __table::t
         'raw-table-lock-set!)))
    (define raw-table-size-hint->size
      (lambda (_%size-hint108725%_)
        (if (and (fixnum? _%size-hint108725%_) (##fx> _%size-hint108725%_ '0))
            (##fx* (fxmax '2 (expt '2 (integer-length _%size-hint108725%_)))
                   '4)
            '16)))
    (define make-raw-table__%
      (lambda (_%size-hint108690%_
               _%hash108691%_
               _%test108692%_
               _%seed108693%_
               _%lock108694%_)
        (let* ((_%size108696%_ (raw-table-size-hint->size _%size-hint108690%_))
               (_%table108698%_
                (##make-vector _%size108696%_ (macro-unused-obj))))
          (##structure
           __table::t
           _%table108698%_
           '0
           (##fxquotient _%size108696%_ '2)
           _%hash108691%_
           _%test108692%_
           _%seed108693%_
           _%lock108694%_))))
    (define make-raw-table__0
      (lambda (_%size-hint108704%_ _%hash108705%_ _%test108706%_)
        (let* ((_%seed108708%_ '0) (_%lock108710%_ '#f))
          (make-raw-table__%
           _%size-hint108704%_
           _%hash108705%_
           _%test108706%_
           _%seed108708%_
           _%lock108710%_))))
    (define make-raw-table__1
      (lambda (_%size-hint108712%_
               _%hash108713%_
               _%test108714%_
               _%seed108715%_)
        (let ((_%lock108717%_ '#f))
          (make-raw-table__%
           _%size-hint108712%_
           _%hash108713%_
           _%test108714%_
           _%seed108715%_
           _%lock108717%_))))
    (define make-raw-table
      (lambda _g108761_
        (let ((_g108762_ (##length _g108761_)))
          (cond ((##fx= _g108762_ 3) (apply make-raw-table__0 _g108761_))
                ((##fx= _g108762_ 4) (apply make-raw-table__1 _g108761_))
                ((##fx= _g108762_ 5) (apply make-raw-table__% _g108761_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g108761_))))))
    (define make-raw-table/lock__%
      (lambda (_%size-hint108670%_
               _%hash108671%_
               _%test108672%_
               _%seed108673%_)
        (make-raw-table__%
         _%size-hint108670%_
         _%hash108671%_
         _%test108672%_
         _%seed108673%_
         (vector '0 '#f))))
    (define make-raw-table/lock__0
      (lambda (_%size-hint108678%_ _%hash108679%_ _%test108680%_)
        (let ((_%seed108682%_ '0))
          (make-raw-table/lock__%
           _%size-hint108678%_
           _%hash108679%_
           _%test108680%_
           _%seed108682%_))))
    (define make-raw-table/lock
      (lambda _g108763_
        (let ((_g108764_ (##length _g108763_)))
          (cond ((##fx= _g108764_ 3) (apply make-raw-table/lock__0 _g108763_))
                ((##fx= _g108764_ 4) (apply make-raw-table/lock__% _g108763_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table/lock
                  _g108763_))))))
    (define raw-table-length
      (lambda (_%tab108667%_) (&raw-table-count _%tab108667%_)))
    (define raw-table-length/lock
      (lambda (_%tab108642%_)
        (let ((_%lock108644%_ (&raw-table-lock _%tab108642%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again108649%_ ((_%spin108652%_ '0))
              (if (##fx= (##vector-cas! _%lock108644%_ '0 '1 '0) '0)
                  (##vector-set! _%lock108644%_ '1 (current-thread))
                  (if (##fx< _%spin108652%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again108649%_ (##fx+ _%spin108652%_ '1)))
                      (let ((_%owner108658%_ (##vector-ref _%lock108644%_ '1)))
                        (if (eq? _%owner108658%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner108658%_)
                                (let () (##thread-yield!) (_%again108649%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r108664%_ (&raw-table-count _%tab108642%_)))
            (##vector-set! _%lock108644%_ '1 '#f)
            (##vector-cas! _%lock108644%_ '0 '0 '1)
            _%$r108664%_))))
    (define raw-table-ref
      (lambda (_%tab108594%_ _%key108595%_ _%default108596%_)
        (let ((_%table108598%_ (&raw-table-table _%tab108594%_))
              (_%seed108599%_ (&raw-table-seed _%tab108594%_))
              (_%hash108600%_ (&raw-table-hash _%tab108594%_))
              (_%test108601%_ (&raw-table-test _%tab108594%_)))
          (let* ((_%h108603%_
                  (fxxor (_%hash108600%_ _%key108595%_) _%seed108599%_))
                 (_%size108606%_ (vector-length _%table108598%_))
                 (_%entries108609%_ (##fxquotient _%size108606%_ '2))
                 (_%start108612%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h108603%_ _%entries108609%_)
                   '1)))
            (let _%loop108616%_ ((_%probe108619%_ _%start108612%_)
                                 (_%i108621%_ '1)
                                 (_%deleted108623%_ '#f))
              (let ((_%k108626%_ (vector-ref _%table108598%_ _%probe108619%_)))
                (if (eq? _%k108626%_ (macro-unused-obj))
                    _%default108596%_
                    (if (eq? _%k108626%_ (macro-deleted-obj))
                        (_%loop108616%_
                         (let ((_%next-probe108631%_
                                (fx+ _%start108612%_
                                     _%i108621%_
                                     (fx* _%i108621%_ _%i108621%_))))
                           (##fxmodulo _%next-probe108631%_ _%size108606%_))
                         (##fx+ _%i108621%_ '1)
                         (let ((_%$e108634%_ _%deleted108623%_))
                           (if _%$e108634%_ _%$e108634%_ _%probe108619%_)))
                        (if (_%test108601%_ _%key108595%_ _%k108626%_)
                            (vector-ref
                             _%table108598%_
                             (##fx+ _%probe108619%_ '1))
                            (_%loop108616%_
                             (let ((_%next-probe108639%_
                                    (fx+ _%start108612%_
                                         _%i108621%_
                                         (fx* _%i108621%_ _%i108621%_))))
                               (##fxmodulo
                                _%next-probe108639%_
                                _%size108606%_))
                             (##fx+ _%i108621%_ '1)
                             _%deleted108623%_))))))))))
    (define raw-table-ref/lock
      (lambda (_%tab108567%_ _%key108568%_ _%default108569%_)
        (let ((_%lock108571%_ (&raw-table-lock _%tab108567%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again108576%_ ((_%spin108579%_ '0))
              (if (##fx= (##vector-cas! _%lock108571%_ '0 '1 '0) '0)
                  (##vector-set! _%lock108571%_ '1 (current-thread))
                  (if (##fx< _%spin108579%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again108576%_ (##fx+ _%spin108579%_ '1)))
                      (let ((_%owner108585%_ (##vector-ref _%lock108571%_ '1)))
                        (if (eq? _%owner108585%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner108585%_)
                                (let () (##thread-yield!) (_%again108576%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r108591%_
                 (raw-table-ref
                  _%tab108567%_
                  _%key108568%_
                  _%default108569%_)))
            (##vector-set! _%lock108571%_ '1 '#f)
            (##vector-cas! _%lock108571%_ '0 '0 '1)
            _%$r108591%_))))
    (define raw-table-set!
      (lambda (_%tab108563%_ _%key108564%_ _%value108565%_)
        (if (##fx< (&raw-table-free _%tab108563%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab108563%_))
                    '4))
            (__raw-table-rehash! _%tab108563%_)
            '#!void)
        (__raw-table-set! _%tab108563%_ _%key108564%_ _%value108565%_)))
    (define raw-table-set!/lock
      (lambda (_%tab108536%_ _%key108537%_ _%value108538%_)
        (let ((_%lock108540%_ (&raw-table-lock _%tab108536%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again108545%_ ((_%spin108548%_ '0))
              (if (##fx= (##vector-cas! _%lock108540%_ '0 '1 '0) '0)
                  (##vector-set! _%lock108540%_ '1 (current-thread))
                  (if (##fx< _%spin108548%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again108545%_ (##fx+ _%spin108548%_ '1)))
                      (let ((_%owner108554%_ (##vector-ref _%lock108540%_ '1)))
                        (if (eq? _%owner108554%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner108554%_)
                                (let () (##thread-yield!) (_%again108545%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r108560%_
                 (raw-table-set! _%tab108536%_ _%key108537%_ _%value108538%_)))
            (##vector-set! _%lock108540%_ '1 '#f)
            (##vector-cas! _%lock108540%_ '0 '0 '1)
            _%$r108560%_))))
    (define raw-table-update!
      (lambda (_%tab108531%_ _%key108532%_ _%update108533%_ _%default108534%_)
        (if (##fx< (&raw-table-free _%tab108531%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab108531%_))
                    '4))
            (__raw-table-rehash! _%tab108531%_)
            '#!void)
        (__raw-table-update!
         _%tab108531%_
         _%key108532%_
         _%update108533%_
         _%default108534%_)))
    (define raw-table-update!/lock
      (lambda (_%tab108503%_ _%key108504%_ _%update108505%_ _%default108506%_)
        (let ((_%lock108508%_ (&raw-table-lock _%tab108503%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again108513%_ ((_%spin108516%_ '0))
              (if (##fx= (##vector-cas! _%lock108508%_ '0 '1 '0) '0)
                  (##vector-set! _%lock108508%_ '1 (current-thread))
                  (if (##fx< _%spin108516%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again108513%_ (##fx+ _%spin108516%_ '1)))
                      (let ((_%owner108522%_ (##vector-ref _%lock108508%_ '1)))
                        (if (eq? _%owner108522%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner108522%_)
                                (let () (##thread-yield!) (_%again108513%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r108528%_
                 (raw-table-update!
                  _%tab108503%_
                  _%key108504%_
                  _%update108505%_
                  _%default108506%_)))
            (##vector-set! _%lock108508%_ '1 '#f)
            (##vector-cas! _%lock108508%_ '0 '0 '1)
            _%$r108528%_))))
    (define raw-table-delete!
      (lambda (_%tab108460%_ _%key108461%_)
        (let ((_%table108463%_ (&raw-table-table _%tab108460%_))
              (_%seed108464%_ (&raw-table-seed _%tab108460%_))
              (_%hash108465%_ (&raw-table-hash _%tab108460%_))
              (_%test108466%_ (&raw-table-test _%tab108460%_)))
          (let* ((_%h108468%_
                  (fxxor (_%hash108465%_ _%key108461%_) _%seed108464%_))
                 (_%size108471%_ (vector-length _%table108463%_))
                 (_%entries108474%_ (##fxquotient _%size108471%_ '2))
                 (_%start108477%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h108468%_ _%entries108474%_)
                   '1)))
            (let _%loop108481%_ ((_%probe108484%_ _%start108477%_)
                                 (_%i108486%_ '1))
              (let ((_%k108489%_ (vector-ref _%table108463%_ _%probe108484%_)))
                (if (eq? _%k108489%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k108489%_ (macro-deleted-obj))
                        (_%loop108481%_
                         (let ((_%next-probe108494%_
                                (fx+ _%start108477%_
                                     _%i108486%_
                                     (fx* _%i108486%_ _%i108486%_))))
                           (##fxmodulo _%next-probe108494%_ _%size108471%_))
                         (##fx+ _%i108486%_ '1))
                        (if (_%test108466%_ _%key108461%_ _%k108489%_)
                            (let ()
                              (vector-set!
                               _%table108463%_
                               _%probe108484%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table108463%_
                               (##fx+ _%probe108484%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab108460%_
                                  (##fx- (&raw-table-count _%tab108460%_)
                                         '1)))))
                            (_%loop108481%_
                             (let ((_%next-probe108500%_
                                    (fx+ _%start108477%_
                                         _%i108486%_
                                         (fx* _%i108486%_ _%i108486%_))))
                               (##fxmodulo
                                _%next-probe108500%_
                                _%size108471%_))
                             (##fx+ _%i108486%_ '1)))))))))))
    (define raw-table-delete!/lock
      (lambda (_%tab108434%_ _%key108435%_)
        (let ((_%lock108437%_ (&raw-table-lock _%tab108434%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again108442%_ ((_%spin108445%_ '0))
              (if (##fx= (##vector-cas! _%lock108437%_ '0 '1 '0) '0)
                  (##vector-set! _%lock108437%_ '1 (current-thread))
                  (if (##fx< _%spin108445%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again108442%_ (##fx+ _%spin108445%_ '1)))
                      (let ((_%owner108451%_ (##vector-ref _%lock108437%_ '1)))
                        (if (eq? _%owner108451%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner108451%_)
                                (let () (##thread-yield!) (_%again108442%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r108457%_ (raw-table-delete! _%tab108434%_ _%key108435%_)))
            (##vector-set! _%lock108437%_ '1 '#f)
            (##vector-cas! _%lock108437%_ '0 '0 '1)
            _%$r108457%_))))
    (define raw-table-for-each
      (lambda (_%tab108418%_ _%proc108419%_)
        (let* ((_%table108421%_ (&raw-table-table _%tab108418%_))
               (_%size108423%_ (vector-length _%table108421%_)))
          (let _%loop108426%_ ((_%i108428%_ '0))
            (if (##fx< _%i108428%_ _%size108423%_)
                (begin
                  (let ((_%key108430%_
                         (vector-ref _%table108421%_ _%i108428%_)))
                    (if (if (eq? _%key108430%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key108430%_ (macro-deleted-obj))))
                        (let ((_%value108432%_
                               (vector-ref
                                _%table108421%_
                                (##fx+ _%i108428%_ '1))))
                          (_%proc108419%_ _%key108430%_ _%value108432%_))
                        '#!void))
                  (_%loop108426%_ (##fx+ _%i108428%_ '2)))
                '#!void)))))
    (define raw-table-for-each/lock
      (lambda (_%tab108392%_ _%proc108393%_)
        (let ((_%lock108395%_ (&raw-table-lock _%tab108392%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again108400%_ ((_%spin108403%_ '0))
              (if (##fx= (##vector-cas! _%lock108395%_ '0 '1 '0) '0)
                  (##vector-set! _%lock108395%_ '1 (current-thread))
                  (if (##fx< _%spin108403%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again108400%_ (##fx+ _%spin108403%_ '1)))
                      (let ((_%owner108409%_ (##vector-ref _%lock108395%_ '1)))
                        (if (eq? _%owner108409%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner108409%_)
                                (let () (##thread-yield!) (_%again108400%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r108415%_
                 (raw-table-for-each _%tab108392%_ _%proc108393%_)))
            (##vector-set! _%lock108395%_ '1 '#f)
            (##vector-cas! _%lock108395%_ '0 '0 '1)
            _%$r108415%_))))
    (define raw-table-copy
      (lambda (_%tab108388%_)
        (let ((_%new-tab108390%_ (##structure-copy _%tab108388%_)))
          (&raw-table-table-set!
           _%new-tab108390%_
           (vector-copy (&raw-table-table _%tab108388%_)))
          _%new-tab108390%_)))
    (define raw-table-copy/lock
      (lambda (_%tab108363%_)
        (let ((_%lock108365%_ (&raw-table-lock _%tab108363%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again108370%_ ((_%spin108373%_ '0))
              (if (##fx= (##vector-cas! _%lock108365%_ '0 '1 '0) '0)
                  (##vector-set! _%lock108365%_ '1 (current-thread))
                  (if (##fx< _%spin108373%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again108370%_ (##fx+ _%spin108373%_ '1)))
                      (let ((_%owner108379%_ (##vector-ref _%lock108365%_ '1)))
                        (if (eq? _%owner108379%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner108379%_)
                                (let () (##thread-yield!) (_%again108370%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r108385%_ (raw-table-copy _%tab108363%_)))
            (##vector-set! _%lock108365%_ '1 '#f)
            (##vector-cas! _%lock108365%_ '0 '0 '1)
            _%$r108385%_))))
    (define raw-table-clear!
      (lambda (_%tab108361%_)
        (vector-fill! (&raw-table-table _%tab108361%_) (macro-unused-obj))
        (&raw-table-count-set! _%tab108361%_ '0)
        (&raw-table-free-set!
         _%tab108361%_
         (##fxquotient (vector-length (&raw-table-table _%tab108361%_)) '2))))
    (define raw-table-clear!/lock
      (lambda (_%tab108336%_)
        (let ((_%lock108338%_ (&raw-table-lock _%tab108336%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again108343%_ ((_%spin108346%_ '0))
              (if (##fx= (##vector-cas! _%lock108338%_ '0 '1 '0) '0)
                  (##vector-set! _%lock108338%_ '1 (current-thread))
                  (if (##fx< _%spin108346%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again108343%_ (##fx+ _%spin108346%_ '1)))
                      (let ((_%owner108352%_ (##vector-ref _%lock108338%_ '1)))
                        (if (eq? _%owner108352%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner108352%_)
                                (let () (##thread-yield!) (_%again108343%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r108358%_ (raw-table-clear! _%tab108336%_)))
            (##vector-set! _%lock108338%_ '1 '#f)
            (##vector-cas! _%lock108338%_ '0 '0 '1)
            _%$r108358%_))))
    (define __raw-table-set!
      (lambda (_%tab108286%_ _%key108287%_ _%value108288%_)
        (let ((_%table108290%_ (&raw-table-table _%tab108286%_))
              (_%seed108291%_ (&raw-table-seed _%tab108286%_))
              (_%hash108292%_ (&raw-table-hash _%tab108286%_))
              (_%test108293%_ (&raw-table-test _%tab108286%_)))
          (let* ((_%h108295%_
                  (fxxor (_%hash108292%_ _%key108287%_) _%seed108291%_))
                 (_%size108298%_ (vector-length _%table108290%_))
                 (_%entries108301%_ (##fxquotient _%size108298%_ '2))
                 (_%start108304%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h108295%_ _%entries108301%_)
                   '1)))
            (let _%loop108308%_ ((_%probe108311%_ _%start108304%_)
                                 (_%i108313%_ '1)
                                 (_%deleted108315%_ '#f))
              (let ((_%k108318%_ (vector-ref _%table108290%_ _%probe108311%_)))
                (if (eq? _%k108318%_ (macro-unused-obj))
                    (if _%deleted108315%_
                        (begin
                          (vector-set!
                           _%table108290%_
                           _%deleted108315%_
                           _%key108287%_)
                          (vector-set!
                           _%table108290%_
                           (##fx+ _%deleted108315%_ '1)
                           _%value108288%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab108286%_
                              (##fx+ (&raw-table-count _%tab108286%_) '1)))))
                        (begin
                          (vector-set!
                           _%table108290%_
                           _%probe108311%_
                           _%key108287%_)
                          (vector-set!
                           _%table108290%_
                           (##fx+ _%probe108311%_ '1)
                           _%value108288%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab108286%_
                              (##fx- (&raw-table-free _%tab108286%_) '1))
                             (&raw-table-count-set!
                              _%tab108286%_
                              (##fx+ (&raw-table-count _%tab108286%_) '1))))))
                    (if (eq? _%k108318%_ (macro-deleted-obj))
                        (_%loop108308%_
                         (let ((_%next-probe108325%_
                                (fx+ _%start108304%_
                                     _%i108313%_
                                     (fx* _%i108313%_ _%i108313%_))))
                           (##fxmodulo _%next-probe108325%_ _%size108298%_))
                         (##fx+ _%i108313%_ '1)
                         (let ((_%$e108328%_ _%deleted108315%_))
                           (if _%$e108328%_ _%$e108328%_ _%probe108311%_)))
                        (if (_%test108293%_ _%key108287%_ _%k108318%_)
                            (let ()
                              (vector-set!
                               _%table108290%_
                               _%probe108311%_
                               _%key108287%_)
                              (vector-set!
                               _%table108290%_
                               (##fx+ _%probe108311%_ '1)
                               _%value108288%_))
                            (_%loop108308%_
                             (let ((_%next-probe108333%_
                                    (fx+ _%start108304%_
                                         _%i108313%_
                                         (fx* _%i108313%_ _%i108313%_))))
                               (##fxmodulo
                                _%next-probe108333%_
                                _%size108298%_))
                             (##fx+ _%i108313%_ '1)
                             _%deleted108315%_))))))))))
    (define __raw-table-update!
      (lambda (_%tab108235%_ _%key108236%_ _%update108237%_ _%default108238%_)
        (let ((_%table108240%_ (&raw-table-table _%tab108235%_))
              (_%seed108241%_ (&raw-table-seed _%tab108235%_))
              (_%hash108242%_ (&raw-table-hash _%tab108235%_))
              (_%test108243%_ (&raw-table-test _%tab108235%_)))
          (let* ((_%h108245%_
                  (fxxor (_%hash108242%_ _%key108236%_) _%seed108241%_))
                 (_%size108248%_ (vector-length _%table108240%_))
                 (_%entries108251%_ (##fxquotient _%size108248%_ '2))
                 (_%start108254%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h108245%_ _%entries108251%_)
                   '1)))
            (let _%loop108258%_ ((_%probe108261%_ _%start108254%_)
                                 (_%i108263%_ '1)
                                 (_%deleted108265%_ '#f))
              (let ((_%k108268%_ (vector-ref _%table108240%_ _%probe108261%_)))
                (if (eq? _%k108268%_ (macro-unused-obj))
                    (if _%deleted108265%_
                        (begin
                          (vector-set!
                           _%table108240%_
                           _%deleted108265%_
                           _%key108236%_)
                          (vector-set!
                           _%table108240%_
                           (##fx+ _%deleted108265%_ '1)
                           (_%update108237%_ _%default108238%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab108235%_
                              (##fx+ (&raw-table-count _%tab108235%_) '1)))))
                        (begin
                          (vector-set!
                           _%table108240%_
                           _%probe108261%_
                           _%key108236%_)
                          (vector-set!
                           _%table108240%_
                           (##fx+ _%probe108261%_ '1)
                           (_%update108237%_ _%default108238%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab108235%_
                              (##fx- (&raw-table-free _%tab108235%_) '1))
                             (&raw-table-count-set!
                              _%tab108235%_
                              (##fx+ (&raw-table-count _%tab108235%_) '1))))))
                    (if (eq? _%k108268%_ (macro-deleted-obj))
                        (_%loop108258%_
                         (let ((_%next-probe108275%_
                                (fx+ _%start108254%_
                                     _%i108263%_
                                     (fx* _%i108263%_ _%i108263%_))))
                           (##fxmodulo _%next-probe108275%_ _%size108248%_))
                         (##fx+ _%i108263%_ '1)
                         (let ((_%$e108278%_ _%deleted108265%_))
                           (if _%$e108278%_ _%$e108278%_ _%probe108261%_)))
                        (if (_%test108243%_ _%key108236%_ _%k108268%_)
                            (let ()
                              (vector-set!
                               _%table108240%_
                               _%probe108261%_
                               _%key108236%_)
                              (vector-set!
                               _%table108240%_
                               (##fx+ _%probe108261%_ '1)
                               (_%update108237%_
                                (vector-ref
                                 _%table108240%_
                                 (##fx+ _%probe108261%_ '1)))))
                            (_%loop108258%_
                             (let ((_%next-probe108283%_
                                    (fx+ _%start108254%_
                                         _%i108263%_
                                         (fx* _%i108263%_ _%i108263%_))))
                               (##fxmodulo
                                _%next-probe108283%_
                                _%size108248%_))
                             (##fx+ _%i108263%_ '1)
                             _%deleted108265%_))))))))))
    (define __raw-table-rehash!
      (lambda (_%tab108216%_)
        (let* ((_%old-table108218%_ (&raw-table-table _%tab108216%_))
               (_%old-size108220%_ (vector-length _%old-table108218%_))
               (_%new-size108222%_
                (if (##fx< (&raw-table-count _%tab108216%_)
                           (##fxquotient _%old-size108220%_ '4))
                    (vector-length _%old-table108218%_)
                    (##fx* '2 (vector-length _%old-table108218%_))))
               (_%new-table108224%_
                (##make-vector _%new-size108222%_ (macro-unused-obj))))
          (&raw-table-table-set! _%tab108216%_ _%new-table108224%_)
          (&raw-table-count-set! _%tab108216%_ '0)
          (&raw-table-free-set!
           _%tab108216%_
           (##fxquotient _%new-size108222%_ '2))
          (let _%lp108227%_ ((_%i108229%_ '0))
            (if (##fx< _%i108229%_ _%old-size108220%_)
                (begin
                  (let ((_%key108231%_
                         (vector-ref _%old-table108218%_ _%i108229%_)))
                    (if (if (eq? _%key108231%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key108231%_ (macro-deleted-obj))))
                        (let ((_%value108233%_
                               (vector-ref
                                _%old-table108218%_
                                (##fx+ _%i108229%_ '1))))
                          (__raw-table-set!
                           _%tab108216%_
                           _%key108231%_
                           _%value108233%_))
                        '#!void))
                  (_%lp108227%_ (##fx+ _%i108229%_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_%obj108208%_)
        (let ((_%t108210%_ (##type _%obj108208%_)))
          (if (##fx= (##fxand _%t108210%_ '1) '0)
              (fxand (##type-cast _%obj108208%_ (macro-type-fixnum))
                     (macro-max-fixnum32))
              (if (symbolic? _%obj108208%_)
                  (##symbol-hash _%obj108208%_)
                  (if (procedure? _%obj108208%_)
                      (procedure-hash _%obj108208%_)
                      (fxand (__eq-hash _%obj108208%_)
                             (macro-max-fixnum32))))))))
    (define procedure-hash
      (lambda (_%obj108204%_)
        (let ((_%h108206%_
               (if (##closure? _%obj108204%_)
                   (__eq-hash _%obj108204%_)
                   (##type-cast _%obj108204%_ '0))))
          (fxand _%h108206%_ (macro-max-fixnum32)))))
    (define __eq-hash
      (lambda (_%obj108201%_)
        (declare (not interrupts-enabled))
        (__object->eq-hash _%obj108201%_)))
    (define eqv-hash
      (lambda (_%obj108191%_)
        (letrec ((_%combine108193%_
                  (lambda (_%a108198%_ _%b108199%_)
                    (fxand (##fx* (##fx+ _%a108198%_
                                         (fxarithmetic-shift-left
                                          _%b108199%_
                                          '1))
                                  '331804471)
                           (macro-max-fixnum32))))
                 (_%hash108194%_
                  (lambda (_%obj108196%_)
                    (macro-number-dispatch
                     _%obj108196%_
                     (eq-hash _%obj108196%_)
                     (fxand _%obj108196%_ (macro-max-fixnum32))
                     (modulo _%obj108196%_ '331804481)
                     (_%combine108193%_
                      (_%hash108194%_ (macro-ratnum-numerator _%obj108196%_))
                      (_%hash108194%_
                       (macro-ratnum-denominator _%obj108196%_)))
                     (_%combine108193%_
                      (##u16vector-ref _%obj108196%_ '0)
                      (_%combine108193%_
                       (##u16vector-ref _%obj108196%_ '1)
                       (_%combine108193%_
                        (##u16vector-ref _%obj108196%_ '2)
                        (##u16vector-ref _%obj108196%_ '3))))
                     (_%combine108193%_
                      (_%hash108194%_ (macro-cpxnum-real _%obj108196%_))
                      (_%hash108194%_ (macro-cpxnum-imag _%obj108196%_)))))))
          (_%hash108194%_ _%obj108191%_))))
    (define symbolic?
      (lambda (_%obj108186%_)
        (let ((_%$e108188%_ (symbol? _%obj108186%_)))
          (if _%$e108188%_ _%$e108188%_ (keyword? _%obj108186%_)))))
    (define symbolic-hash
      (lambda (_%obj108184%_) (##symbol-hash _%obj108184%_)))
    (define string-hash
      (lambda (_%obj108182%_) (##string=?-hash _%obj108182%_)))
    (define immediate-hash
      (lambda (_%obj108180%_) (##type-cast _%obj108180%_ (macro-type-fixnum))))
    (define make-eq-table__%
      (lambda (_%size-hint108162%_ _%seed108163%_)
        (make-raw-table__1 _%size-hint108162%_ eq-hash eq? _%seed108163%_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_%size-hint108169%_ '#f) (_%seed108171%_ '0))
          (make-eq-table__% _%size-hint108169%_ _%seed108171%_))))
    (define make-eq-table__1
      (lambda (_%size-hint108173%_)
        (let ((_%seed108175%_ '0))
          (make-eq-table__% _%size-hint108173%_ _%seed108175%_))))
    (define make-eq-table
      (lambda _g108765_
        (let ((_g108766_ (##length _g108765_)))
          (cond ((##fx= _g108766_ 0) (apply make-eq-table__0 _g108765_))
                ((##fx= _g108766_ 1) (apply make-eq-table__1 _g108765_))
                ((##fx= _g108766_ 2) (apply make-eq-table__% _g108765_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g108765_))))))
    (define make-eq-table/lock__%
      (lambda (_%size-hint108142%_ _%seed108144%_)
        (make-raw-table/lock__%
         _%size-hint108142%_
         eq-hash
         eq?
         _%seed108144%_)))
    (define make-eq-table/lock__0
      (lambda ()
        (let* ((_%size-hint108150%_ '#f) (_%seed108152%_ '0))
          (make-eq-table/lock__% _%size-hint108150%_ _%seed108152%_))))
    (define make-eq-table/lock__1
      (lambda (_%size-hint108154%_)
        (let ((_%seed108156%_ '0))
          (make-eq-table/lock__% _%size-hint108154%_ _%seed108156%_))))
    (define make-eq-table/lock
      (lambda _g108767_
        (let ((_g108768_ (##length _g108767_)))
          (cond ((##fx= _g108768_ 0) (apply make-eq-table/lock__0 _g108767_))
                ((##fx= _g108768_ 1) (apply make-eq-table/lock__1 _g108767_))
                ((##fx= _g108768_ 2) (apply make-eq-table/lock__% _g108767_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table/lock
                  _g108767_))))))
    (define eq-table-ref
      (lambda (_%tab108095%_ _%key108096%_ _%default108097%_)
        (let ((_%table108099%_ (&raw-table-table _%tab108095%_))
              (_%seed108100%_ (&raw-table-seed _%tab108095%_)))
          (let* ((_%h108102%_ (fxxor (eq-hash _%key108096%_) _%seed108100%_))
                 (_%size108105%_ (vector-length _%table108099%_))
                 (_%entries108108%_ (##fxquotient _%size108105%_ '2))
                 (_%start108111%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h108102%_ _%entries108108%_)
                   '1)))
            (let _%loop108115%_ ((_%probe108118%_ _%start108111%_)
                                 (_%i108120%_ '1)
                                 (_%deleted108122%_ '#f))
              (let ((_%k108125%_ (vector-ref _%table108099%_ _%probe108118%_)))
                (if (eq? _%k108125%_ (macro-unused-obj))
                    _%default108097%_
                    (if (eq? _%k108125%_ (macro-deleted-obj))
                        (_%loop108115%_
                         (let ((_%next-probe108130%_
                                (fx+ _%start108111%_
                                     _%i108120%_
                                     (fx* _%i108120%_ _%i108120%_))))
                           (##fxmodulo _%next-probe108130%_ _%size108105%_))
                         (##fx+ _%i108120%_ '1)
                         (let ((_%$e108133%_ _%deleted108122%_))
                           (if _%$e108133%_ _%$e108133%_ _%probe108118%_)))
                        (if (eq? _%key108096%_ _%k108125%_)
                            (vector-ref
                             _%table108099%_
                             (##fx+ _%probe108118%_ '1))
                            (_%loop108115%_
                             (let ((_%next-probe108138%_
                                    (fx+ _%start108111%_
                                         _%i108120%_
                                         (fx* _%i108120%_ _%i108120%_))))
                               (##fxmodulo
                                _%next-probe108138%_
                                _%size108105%_))
                             (##fx+ _%i108120%_ '1)
                             _%deleted108122%_))))))))))
    (define eq-table-ref/lock
      (lambda (_%tab108068%_ _%key108069%_ _%default108070%_)
        (let ((_%lock108072%_ (&raw-table-lock _%tab108068%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again108077%_ ((_%spin108080%_ '0))
              (if (##fx= (##vector-cas! _%lock108072%_ '0 '1 '0) '0)
                  (##vector-set! _%lock108072%_ '1 (current-thread))
                  (if (##fx< _%spin108080%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again108077%_ (##fx+ _%spin108080%_ '1)))
                      (let ((_%owner108086%_ (##vector-ref _%lock108072%_ '1)))
                        (if (eq? _%owner108086%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner108086%_)
                                (let () (##thread-yield!) (_%again108077%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r108092%_
                 (eq-table-ref _%tab108068%_ _%key108069%_ _%default108070%_)))
            (##vector-set! _%lock108072%_ '1 '#f)
            (##vector-cas! _%lock108072%_ '0 '0 '1)
            _%$r108092%_))))
    (define __eq-table-set!
      (lambda (_%tab108020%_ _%key108021%_ _%value108022%_)
        (let ((_%table108024%_ (&raw-table-table _%tab108020%_))
              (_%seed108025%_ (&raw-table-seed _%tab108020%_)))
          (let* ((_%h108027%_ (fxxor (eq-hash _%key108021%_) _%seed108025%_))
                 (_%size108030%_ (vector-length _%table108024%_))
                 (_%entries108033%_ (##fxquotient _%size108030%_ '2))
                 (_%start108036%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h108027%_ _%entries108033%_)
                   '1)))
            (let _%loop108040%_ ((_%probe108043%_ _%start108036%_)
                                 (_%i108045%_ '1)
                                 (_%deleted108047%_ '#f))
              (let ((_%k108050%_ (vector-ref _%table108024%_ _%probe108043%_)))
                (if (eq? _%k108050%_ (macro-unused-obj))
                    (if _%deleted108047%_
                        (begin
                          (vector-set!
                           _%table108024%_
                           _%deleted108047%_
                           _%key108021%_)
                          (vector-set!
                           _%table108024%_
                           (##fx+ _%deleted108047%_ '1)
                           _%value108022%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab108020%_
                              (##fx+ (&raw-table-count _%tab108020%_) '1)))))
                        (begin
                          (vector-set!
                           _%table108024%_
                           _%probe108043%_
                           _%key108021%_)
                          (vector-set!
                           _%table108024%_
                           (##fx+ _%probe108043%_ '1)
                           _%value108022%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab108020%_
                              (##fx- (&raw-table-free _%tab108020%_) '1))
                             (&raw-table-count-set!
                              _%tab108020%_
                              (##fx+ (&raw-table-count _%tab108020%_) '1))))))
                    (if (eq? _%k108050%_ (macro-deleted-obj))
                        (_%loop108040%_
                         (let ((_%next-probe108057%_
                                (fx+ _%start108036%_
                                     _%i108045%_
                                     (fx* _%i108045%_ _%i108045%_))))
                           (##fxmodulo _%next-probe108057%_ _%size108030%_))
                         (##fx+ _%i108045%_ '1)
                         (let ((_%$e108060%_ _%deleted108047%_))
                           (if _%$e108060%_ _%$e108060%_ _%probe108043%_)))
                        (if (eq? _%key108021%_ _%k108050%_)
                            (let ()
                              (vector-set!
                               _%table108024%_
                               _%probe108043%_
                               _%key108021%_)
                              (vector-set!
                               _%table108024%_
                               (##fx+ _%probe108043%_ '1)
                               _%value108022%_))
                            (_%loop108040%_
                             (let ((_%next-probe108065%_
                                    (fx+ _%start108036%_
                                         _%i108045%_
                                         (fx* _%i108045%_ _%i108045%_))))
                               (##fxmodulo
                                _%next-probe108065%_
                                _%size108030%_))
                             (##fx+ _%i108045%_ '1)
                             _%deleted108047%_))))))))))
    (define eq-table-set!
      (lambda (_%tab108016%_ _%key108017%_ _%value108018%_)
        (if (##fx< (&raw-table-free _%tab108016%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab108016%_))
                    '4))
            (__raw-table-rehash! _%tab108016%_)
            '#!void)
        (__eq-table-set! _%tab108016%_ _%key108017%_ _%value108018%_)))
    (define eq-table-set!/lock
      (lambda (_%tab107988%_ _%key107989%_ _%value107990%_)
        (let ((_%lock107993%_ (&raw-table-lock _%tab107988%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again107998%_ ((_%spin108001%_ '0))
              (if (##fx= (##vector-cas! _%lock107993%_ '0 '1 '0) '0)
                  (##vector-set! _%lock107993%_ '1 (current-thread))
                  (if (##fx< _%spin108001%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again107998%_ (##fx+ _%spin108001%_ '1)))
                      (let ((_%owner108007%_ (##vector-ref _%lock107993%_ '1)))
                        (if (eq? _%owner108007%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner108007%_)
                                (let () (##thread-yield!) (_%again107998%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r108013%_
                 (eq-table-set! _%tab107988%_ _%key107989%_ _%value107990%_)))
            (##vector-set! _%lock107993%_ '1 '#f)
            (##vector-cas! _%lock107993%_ '0 '0 '1)
            _%$r108013%_))))
    (define __eq-table-update!
      (lambda (_%tab107939%_
               _%key107940%_
               _%eq-table-update!107941%_
               _%default107942%_)
        (let ((_%table107944%_ (&raw-table-table _%tab107939%_))
              (_%seed107945%_ (&raw-table-seed _%tab107939%_)))
          (let* ((_%h107947%_ (fxxor (eq-hash _%key107940%_) _%seed107945%_))
                 (_%size107950%_ (vector-length _%table107944%_))
                 (_%entries107953%_ (##fxquotient _%size107950%_ '2))
                 (_%start107956%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h107947%_ _%entries107953%_)
                   '1)))
            (let _%loop107960%_ ((_%probe107963%_ _%start107956%_)
                                 (_%i107965%_ '1)
                                 (_%deleted107967%_ '#f))
              (let ((_%k107970%_ (vector-ref _%table107944%_ _%probe107963%_)))
                (if (eq? _%k107970%_ (macro-unused-obj))
                    (if _%deleted107967%_
                        (begin
                          (vector-set!
                           _%table107944%_
                           _%deleted107967%_
                           _%key107940%_)
                          (vector-set!
                           _%table107944%_
                           (##fx+ _%deleted107967%_ '1)
                           (_%eq-table-update!107941%_ _%default107942%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab107939%_
                              (##fx+ (&raw-table-count _%tab107939%_) '1)))))
                        (begin
                          (vector-set!
                           _%table107944%_
                           _%probe107963%_
                           _%key107940%_)
                          (vector-set!
                           _%table107944%_
                           (##fx+ _%probe107963%_ '1)
                           (_%eq-table-update!107941%_ _%default107942%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab107939%_
                              (##fx- (&raw-table-free _%tab107939%_) '1))
                             (&raw-table-count-set!
                              _%tab107939%_
                              (##fx+ (&raw-table-count _%tab107939%_) '1))))))
                    (if (eq? _%k107970%_ (macro-deleted-obj))
                        (_%loop107960%_
                         (let ((_%next-probe107977%_
                                (fx+ _%start107956%_
                                     _%i107965%_
                                     (fx* _%i107965%_ _%i107965%_))))
                           (##fxmodulo _%next-probe107977%_ _%size107950%_))
                         (##fx+ _%i107965%_ '1)
                         (let ((_%$e107980%_ _%deleted107967%_))
                           (if _%$e107980%_ _%$e107980%_ _%probe107963%_)))
                        (if (eq? _%key107940%_ _%k107970%_)
                            (let ()
                              (vector-set!
                               _%table107944%_
                               _%probe107963%_
                               _%key107940%_)
                              (vector-set!
                               _%table107944%_
                               (##fx+ _%probe107963%_ '1)
                               (_%eq-table-update!107941%_
                                (vector-ref
                                 _%table107944%_
                                 (##fx+ _%probe107963%_ '1)))))
                            (_%loop107960%_
                             (let ((_%next-probe107985%_
                                    (fx+ _%start107956%_
                                         _%i107965%_
                                         (fx* _%i107965%_ _%i107965%_))))
                               (##fxmodulo
                                _%next-probe107985%_
                                _%size107950%_))
                             (##fx+ _%i107965%_ '1)
                             _%deleted107967%_))))))))))
    (define eq-table-update!
      (lambda (_%tab107934%_
               _%key107935%_
               _%eq-table-update!107936%_
               _%default107937%_)
        (if (##fx< (&raw-table-free _%tab107934%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab107934%_))
                    '4))
            (__raw-table-rehash! _%tab107934%_)
            '#!void)
        (__eq-table-update!
         _%tab107934%_
         _%key107935%_
         _%eq-table-update!107936%_
         _%default107937%_)))
    (define eq-table-update!/lock
      (lambda (_%tab107905%_
               _%key107906%_
               _%eq-table-update!107907%_
               _%default107908%_)
        (let ((_%lock107911%_ (&raw-table-lock _%tab107905%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again107916%_ ((_%spin107919%_ '0))
              (if (##fx= (##vector-cas! _%lock107911%_ '0 '1 '0) '0)
                  (##vector-set! _%lock107911%_ '1 (current-thread))
                  (if (##fx< _%spin107919%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again107916%_ (##fx+ _%spin107919%_ '1)))
                      (let ((_%owner107925%_ (##vector-ref _%lock107911%_ '1)))
                        (if (eq? _%owner107925%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner107925%_)
                                (let () (##thread-yield!) (_%again107916%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r107931%_
                 (_%eq-table-update!107907%_
                  _%tab107905%_
                  _%key107906%_
                  _%eq-table-update!107907%_
                  _%default107908%_)))
            (##vector-set! _%lock107911%_ '1 '#f)
            (##vector-cas! _%lock107911%_ '0 '0 '1)
            _%$r107931%_))))
    (define eq-table-delete!
      (lambda (_%tab107862%_ _%key107863%_)
        (let ((_%table107865%_ (&raw-table-table _%tab107862%_))
              (_%seed107867%_ (&raw-table-seed _%tab107862%_)))
          (let* ((_%h107870%_ (fxxor (eq-hash _%key107863%_) _%seed107867%_))
                 (_%size107873%_ (vector-length _%table107865%_))
                 (_%entries107876%_ (##fxquotient _%size107873%_ '2))
                 (_%start107879%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h107870%_ _%entries107876%_)
                   '1)))
            (let _%loop107883%_ ((_%probe107886%_ _%start107879%_)
                                 (_%i107888%_ '1))
              (let ((_%k107891%_ (vector-ref _%table107865%_ _%probe107886%_)))
                (if (eq? _%k107891%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k107891%_ (macro-deleted-obj))
                        (_%loop107883%_
                         (let ((_%next-probe107896%_
                                (fx+ _%start107879%_
                                     _%i107888%_
                                     (fx* _%i107888%_ _%i107888%_))))
                           (##fxmodulo _%next-probe107896%_ _%size107873%_))
                         (##fx+ _%i107888%_ '1))
                        (if (eq? _%key107863%_ _%k107891%_)
                            (let ()
                              (vector-set!
                               _%table107865%_
                               _%probe107886%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table107865%_
                               (##fx+ _%probe107886%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab107862%_
                                  (##fx- (&raw-table-count _%tab107862%_)
                                         '1)))))
                            (_%loop107883%_
                             (let ((_%next-probe107902%_
                                    (fx+ _%start107879%_
                                         _%i107888%_
                                         (fx* _%i107888%_ _%i107888%_))))
                               (##fxmodulo
                                _%next-probe107902%_
                                _%size107873%_))
                             (##fx+ _%i107888%_ '1)))))))))))
    (define eq-table-delete!/lock
      (lambda (_%tab107834%_ _%key107836%_)
        (let ((_%lock107839%_ (&raw-table-lock _%tab107834%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again107844%_ ((_%spin107847%_ '0))
              (if (##fx= (##vector-cas! _%lock107839%_ '0 '1 '0) '0)
                  (##vector-set! _%lock107839%_ '1 (current-thread))
                  (if (##fx< _%spin107847%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again107844%_ (##fx+ _%spin107847%_ '1)))
                      (let ((_%owner107853%_ (##vector-ref _%lock107839%_ '1)))
                        (if (eq? _%owner107853%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner107853%_)
                                (let () (##thread-yield!) (_%again107844%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r107859%_ (eq-table-delete! _%tab107834%_ _%key107836%_)))
            (##vector-set! _%lock107839%_ '1 '#f)
            (##vector-cas! _%lock107839%_ '0 '0 '1)
            _%$r107859%_))))
    (define make-eqv-table__%
      (lambda (_%size-hint107816%_ _%seed107817%_)
        (make-raw-table__1 _%size-hint107816%_ eqv-hash eqv? _%seed107817%_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_%size-hint107823%_ '#f) (_%seed107825%_ '0))
          (make-eqv-table__% _%size-hint107823%_ _%seed107825%_))))
    (define make-eqv-table__1
      (lambda (_%size-hint107827%_)
        (let ((_%seed107829%_ '0))
          (make-eqv-table__% _%size-hint107827%_ _%seed107829%_))))
    (define make-eqv-table
      (lambda _g108769_
        (let ((_g108770_ (##length _g108769_)))
          (cond ((##fx= _g108770_ 0) (apply make-eqv-table__0 _g108769_))
                ((##fx= _g108770_ 1) (apply make-eqv-table__1 _g108769_))
                ((##fx= _g108770_ 2) (apply make-eqv-table__% _g108769_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g108769_))))))
    (define make-eqv-table/lock__%
      (lambda (_%size-hint107796%_ _%seed107798%_)
        (make-raw-table/lock__%
         _%size-hint107796%_
         eqv-hash
         eqv?
         _%seed107798%_)))
    (define make-eqv-table/lock__0
      (lambda ()
        (let* ((_%size-hint107804%_ '#f) (_%seed107806%_ '0))
          (make-eqv-table/lock__% _%size-hint107804%_ _%seed107806%_))))
    (define make-eqv-table/lock__1
      (lambda (_%size-hint107808%_)
        (let ((_%seed107810%_ '0))
          (make-eqv-table/lock__% _%size-hint107808%_ _%seed107810%_))))
    (define make-eqv-table/lock
      (lambda _g108771_
        (let ((_g108772_ (##length _g108771_)))
          (cond ((##fx= _g108772_ 0) (apply make-eqv-table/lock__0 _g108771_))
                ((##fx= _g108772_ 1) (apply make-eqv-table/lock__1 _g108771_))
                ((##fx= _g108772_ 2) (apply make-eqv-table/lock__% _g108771_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table/lock
                  _g108771_))))))
    (define eqv-table-ref
      (lambda (_%tab107749%_ _%key107750%_ _%default107751%_)
        (let ((_%table107753%_ (&raw-table-table _%tab107749%_))
              (_%seed107754%_ (&raw-table-seed _%tab107749%_)))
          (let* ((_%h107756%_ (fxxor (eqv-hash _%key107750%_) _%seed107754%_))
                 (_%size107759%_ (vector-length _%table107753%_))
                 (_%entries107762%_ (##fxquotient _%size107759%_ '2))
                 (_%start107765%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h107756%_ _%entries107762%_)
                   '1)))
            (let _%loop107769%_ ((_%probe107772%_ _%start107765%_)
                                 (_%i107774%_ '1)
                                 (_%deleted107776%_ '#f))
              (let ((_%k107779%_ (vector-ref _%table107753%_ _%probe107772%_)))
                (if (eq? _%k107779%_ (macro-unused-obj))
                    _%default107751%_
                    (if (eq? _%k107779%_ (macro-deleted-obj))
                        (_%loop107769%_
                         (let ((_%next-probe107784%_
                                (fx+ _%start107765%_
                                     _%i107774%_
                                     (fx* _%i107774%_ _%i107774%_))))
                           (##fxmodulo _%next-probe107784%_ _%size107759%_))
                         (##fx+ _%i107774%_ '1)
                         (let ((_%$e107787%_ _%deleted107776%_))
                           (if _%$e107787%_ _%$e107787%_ _%probe107772%_)))
                        (if (eqv? _%key107750%_ _%k107779%_)
                            (vector-ref
                             _%table107753%_
                             (##fx+ _%probe107772%_ '1))
                            (_%loop107769%_
                             (let ((_%next-probe107792%_
                                    (fx+ _%start107765%_
                                         _%i107774%_
                                         (fx* _%i107774%_ _%i107774%_))))
                               (##fxmodulo
                                _%next-probe107792%_
                                _%size107759%_))
                             (##fx+ _%i107774%_ '1)
                             _%deleted107776%_))))))))))
    (define eqv-table-ref/lock
      (lambda (_%tab107722%_ _%key107723%_ _%default107724%_)
        (let ((_%lock107726%_ (&raw-table-lock _%tab107722%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again107731%_ ((_%spin107734%_ '0))
              (if (##fx= (##vector-cas! _%lock107726%_ '0 '1 '0) '0)
                  (##vector-set! _%lock107726%_ '1 (current-thread))
                  (if (##fx< _%spin107734%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again107731%_ (##fx+ _%spin107734%_ '1)))
                      (let ((_%owner107740%_ (##vector-ref _%lock107726%_ '1)))
                        (if (eq? _%owner107740%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner107740%_)
                                (let () (##thread-yield!) (_%again107731%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r107746%_
                 (eqv-table-ref
                  _%tab107722%_
                  _%key107723%_
                  _%default107724%_)))
            (##vector-set! _%lock107726%_ '1 '#f)
            (##vector-cas! _%lock107726%_ '0 '0 '1)
            _%$r107746%_))))
    (define __eqv-table-set!
      (lambda (_%tab107674%_ _%key107675%_ _%value107676%_)
        (let ((_%table107678%_ (&raw-table-table _%tab107674%_))
              (_%seed107679%_ (&raw-table-seed _%tab107674%_)))
          (let* ((_%h107681%_ (fxxor (eqv-hash _%key107675%_) _%seed107679%_))
                 (_%size107684%_ (vector-length _%table107678%_))
                 (_%entries107687%_ (##fxquotient _%size107684%_ '2))
                 (_%start107690%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h107681%_ _%entries107687%_)
                   '1)))
            (let _%loop107694%_ ((_%probe107697%_ _%start107690%_)
                                 (_%i107699%_ '1)
                                 (_%deleted107701%_ '#f))
              (let ((_%k107704%_ (vector-ref _%table107678%_ _%probe107697%_)))
                (if (eq? _%k107704%_ (macro-unused-obj))
                    (if _%deleted107701%_
                        (begin
                          (vector-set!
                           _%table107678%_
                           _%deleted107701%_
                           _%key107675%_)
                          (vector-set!
                           _%table107678%_
                           (##fx+ _%deleted107701%_ '1)
                           _%value107676%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab107674%_
                              (##fx+ (&raw-table-count _%tab107674%_) '1)))))
                        (begin
                          (vector-set!
                           _%table107678%_
                           _%probe107697%_
                           _%key107675%_)
                          (vector-set!
                           _%table107678%_
                           (##fx+ _%probe107697%_ '1)
                           _%value107676%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab107674%_
                              (##fx- (&raw-table-free _%tab107674%_) '1))
                             (&raw-table-count-set!
                              _%tab107674%_
                              (##fx+ (&raw-table-count _%tab107674%_) '1))))))
                    (if (eq? _%k107704%_ (macro-deleted-obj))
                        (_%loop107694%_
                         (let ((_%next-probe107711%_
                                (fx+ _%start107690%_
                                     _%i107699%_
                                     (fx* _%i107699%_ _%i107699%_))))
                           (##fxmodulo _%next-probe107711%_ _%size107684%_))
                         (##fx+ _%i107699%_ '1)
                         (let ((_%$e107714%_ _%deleted107701%_))
                           (if _%$e107714%_ _%$e107714%_ _%probe107697%_)))
                        (if (eqv? _%key107675%_ _%k107704%_)
                            (let ()
                              (vector-set!
                               _%table107678%_
                               _%probe107697%_
                               _%key107675%_)
                              (vector-set!
                               _%table107678%_
                               (##fx+ _%probe107697%_ '1)
                               _%value107676%_))
                            (_%loop107694%_
                             (let ((_%next-probe107719%_
                                    (fx+ _%start107690%_
                                         _%i107699%_
                                         (fx* _%i107699%_ _%i107699%_))))
                               (##fxmodulo
                                _%next-probe107719%_
                                _%size107684%_))
                             (##fx+ _%i107699%_ '1)
                             _%deleted107701%_))))))))))
    (define eqv-table-set!
      (lambda (_%tab107670%_ _%key107671%_ _%value107672%_)
        (if (##fx< (&raw-table-free _%tab107670%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab107670%_))
                    '4))
            (__raw-table-rehash! _%tab107670%_)
            '#!void)
        (__eqv-table-set! _%tab107670%_ _%key107671%_ _%value107672%_)))
    (define eqv-table-set!/lock
      (lambda (_%tab107642%_ _%key107643%_ _%value107644%_)
        (let ((_%lock107647%_ (&raw-table-lock _%tab107642%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again107652%_ ((_%spin107655%_ '0))
              (if (##fx= (##vector-cas! _%lock107647%_ '0 '1 '0) '0)
                  (##vector-set! _%lock107647%_ '1 (current-thread))
                  (if (##fx< _%spin107655%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again107652%_ (##fx+ _%spin107655%_ '1)))
                      (let ((_%owner107661%_ (##vector-ref _%lock107647%_ '1)))
                        (if (eq? _%owner107661%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner107661%_)
                                (let () (##thread-yield!) (_%again107652%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r107667%_
                 (eqv-table-set! _%tab107642%_ _%key107643%_ _%value107644%_)))
            (##vector-set! _%lock107647%_ '1 '#f)
            (##vector-cas! _%lock107647%_ '0 '0 '1)
            _%$r107667%_))))
    (define __eqv-table-update!
      (lambda (_%tab107593%_
               _%key107594%_
               _%eqv-table-update!107595%_
               _%default107596%_)
        (let ((_%table107598%_ (&raw-table-table _%tab107593%_))
              (_%seed107599%_ (&raw-table-seed _%tab107593%_)))
          (let* ((_%h107601%_ (fxxor (eqv-hash _%key107594%_) _%seed107599%_))
                 (_%size107604%_ (vector-length _%table107598%_))
                 (_%entries107607%_ (##fxquotient _%size107604%_ '2))
                 (_%start107610%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h107601%_ _%entries107607%_)
                   '1)))
            (let _%loop107614%_ ((_%probe107617%_ _%start107610%_)
                                 (_%i107619%_ '1)
                                 (_%deleted107621%_ '#f))
              (let ((_%k107624%_ (vector-ref _%table107598%_ _%probe107617%_)))
                (if (eq? _%k107624%_ (macro-unused-obj))
                    (if _%deleted107621%_
                        (begin
                          (vector-set!
                           _%table107598%_
                           _%deleted107621%_
                           _%key107594%_)
                          (vector-set!
                           _%table107598%_
                           (##fx+ _%deleted107621%_ '1)
                           (_%eqv-table-update!107595%_ _%default107596%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab107593%_
                              (##fx+ (&raw-table-count _%tab107593%_) '1)))))
                        (begin
                          (vector-set!
                           _%table107598%_
                           _%probe107617%_
                           _%key107594%_)
                          (vector-set!
                           _%table107598%_
                           (##fx+ _%probe107617%_ '1)
                           (_%eqv-table-update!107595%_ _%default107596%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab107593%_
                              (##fx- (&raw-table-free _%tab107593%_) '1))
                             (&raw-table-count-set!
                              _%tab107593%_
                              (##fx+ (&raw-table-count _%tab107593%_) '1))))))
                    (if (eq? _%k107624%_ (macro-deleted-obj))
                        (_%loop107614%_
                         (let ((_%next-probe107631%_
                                (fx+ _%start107610%_
                                     _%i107619%_
                                     (fx* _%i107619%_ _%i107619%_))))
                           (##fxmodulo _%next-probe107631%_ _%size107604%_))
                         (##fx+ _%i107619%_ '1)
                         (let ((_%$e107634%_ _%deleted107621%_))
                           (if _%$e107634%_ _%$e107634%_ _%probe107617%_)))
                        (if (eqv? _%key107594%_ _%k107624%_)
                            (let ()
                              (vector-set!
                               _%table107598%_
                               _%probe107617%_
                               _%key107594%_)
                              (vector-set!
                               _%table107598%_
                               (##fx+ _%probe107617%_ '1)
                               (_%eqv-table-update!107595%_
                                (vector-ref
                                 _%table107598%_
                                 (##fx+ _%probe107617%_ '1)))))
                            (_%loop107614%_
                             (let ((_%next-probe107639%_
                                    (fx+ _%start107610%_
                                         _%i107619%_
                                         (fx* _%i107619%_ _%i107619%_))))
                               (##fxmodulo
                                _%next-probe107639%_
                                _%size107604%_))
                             (##fx+ _%i107619%_ '1)
                             _%deleted107621%_))))))))))
    (define eqv-table-update!
      (lambda (_%tab107588%_
               _%key107589%_
               _%eqv-table-update!107590%_
               _%default107591%_)
        (if (##fx< (&raw-table-free _%tab107588%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab107588%_))
                    '4))
            (__raw-table-rehash! _%tab107588%_)
            '#!void)
        (__eqv-table-update!
         _%tab107588%_
         _%key107589%_
         _%eqv-table-update!107590%_
         _%default107591%_)))
    (define eqv-table-update!/lock
      (lambda (_%tab107559%_
               _%key107560%_
               _%eqv-table-update!107561%_
               _%default107562%_)
        (let ((_%lock107565%_ (&raw-table-lock _%tab107559%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again107570%_ ((_%spin107573%_ '0))
              (if (##fx= (##vector-cas! _%lock107565%_ '0 '1 '0) '0)
                  (##vector-set! _%lock107565%_ '1 (current-thread))
                  (if (##fx< _%spin107573%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again107570%_ (##fx+ _%spin107573%_ '1)))
                      (let ((_%owner107579%_ (##vector-ref _%lock107565%_ '1)))
                        (if (eq? _%owner107579%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner107579%_)
                                (let () (##thread-yield!) (_%again107570%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r107585%_
                 (_%eqv-table-update!107561%_
                  _%tab107559%_
                  _%key107560%_
                  _%eqv-table-update!107561%_
                  _%default107562%_)))
            (##vector-set! _%lock107565%_ '1 '#f)
            (##vector-cas! _%lock107565%_ '0 '0 '1)
            _%$r107585%_))))
    (define eqv-table-delete!
      (lambda (_%tab107516%_ _%key107517%_)
        (let ((_%table107519%_ (&raw-table-table _%tab107516%_))
              (_%seed107521%_ (&raw-table-seed _%tab107516%_)))
          (let* ((_%h107524%_ (fxxor (eqv-hash _%key107517%_) _%seed107521%_))
                 (_%size107527%_ (vector-length _%table107519%_))
                 (_%entries107530%_ (##fxquotient _%size107527%_ '2))
                 (_%start107533%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h107524%_ _%entries107530%_)
                   '1)))
            (let _%loop107537%_ ((_%probe107540%_ _%start107533%_)
                                 (_%i107542%_ '1))
              (let ((_%k107545%_ (vector-ref _%table107519%_ _%probe107540%_)))
                (if (eq? _%k107545%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k107545%_ (macro-deleted-obj))
                        (_%loop107537%_
                         (let ((_%next-probe107550%_
                                (fx+ _%start107533%_
                                     _%i107542%_
                                     (fx* _%i107542%_ _%i107542%_))))
                           (##fxmodulo _%next-probe107550%_ _%size107527%_))
                         (##fx+ _%i107542%_ '1))
                        (if (eqv? _%key107517%_ _%k107545%_)
                            (let ()
                              (vector-set!
                               _%table107519%_
                               _%probe107540%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table107519%_
                               (##fx+ _%probe107540%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab107516%_
                                  (##fx- (&raw-table-count _%tab107516%_)
                                         '1)))))
                            (_%loop107537%_
                             (let ((_%next-probe107556%_
                                    (fx+ _%start107533%_
                                         _%i107542%_
                                         (fx* _%i107542%_ _%i107542%_))))
                               (##fxmodulo
                                _%next-probe107556%_
                                _%size107527%_))
                             (##fx+ _%i107542%_ '1)))))))))))
    (define eqv-table-delete!/lock
      (lambda (_%tab107488%_ _%key107490%_)
        (let ((_%lock107493%_ (&raw-table-lock _%tab107488%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again107498%_ ((_%spin107501%_ '0))
              (if (##fx= (##vector-cas! _%lock107493%_ '0 '1 '0) '0)
                  (##vector-set! _%lock107493%_ '1 (current-thread))
                  (if (##fx< _%spin107501%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again107498%_ (##fx+ _%spin107501%_ '1)))
                      (let ((_%owner107507%_ (##vector-ref _%lock107493%_ '1)))
                        (if (eq? _%owner107507%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner107507%_)
                                (let () (##thread-yield!) (_%again107498%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r107513%_ (eqv-table-delete! _%tab107488%_ _%key107490%_)))
            (##vector-set! _%lock107493%_ '1 '#f)
            (##vector-cas! _%lock107493%_ '0 '0 '1)
            _%$r107513%_))))
    (define make-symbolic-table__%
      (lambda (_%size-hint107470%_ _%seed107471%_)
        (make-raw-table__1
         _%size-hint107470%_
         symbolic-hash
         eq?
         _%seed107471%_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_%size-hint107477%_ '#f) (_%seed107479%_ '0))
          (make-symbolic-table__% _%size-hint107477%_ _%seed107479%_))))
    (define make-symbolic-table__1
      (lambda (_%size-hint107481%_)
        (let ((_%seed107483%_ '0))
          (make-symbolic-table__% _%size-hint107481%_ _%seed107483%_))))
    (define make-symbolic-table
      (lambda _g108773_
        (let ((_g108774_ (##length _g108773_)))
          (cond ((##fx= _g108774_ 0) (apply make-symbolic-table__0 _g108773_))
                ((##fx= _g108774_ 1) (apply make-symbolic-table__1 _g108773_))
                ((##fx= _g108774_ 2) (apply make-symbolic-table__% _g108773_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g108773_))))))
    (define make-symbolic-table/lock__%
      (lambda (_%size-hint107450%_ _%seed107452%_)
        (make-raw-table/lock__%
         _%size-hint107450%_
         symbolic-hash
         eq?
         _%seed107452%_)))
    (define make-symbolic-table/lock__0
      (lambda ()
        (let* ((_%size-hint107458%_ '#f) (_%seed107460%_ '0))
          (make-symbolic-table/lock__% _%size-hint107458%_ _%seed107460%_))))
    (define make-symbolic-table/lock__1
      (lambda (_%size-hint107462%_)
        (let ((_%seed107464%_ '0))
          (make-symbolic-table/lock__% _%size-hint107462%_ _%seed107464%_))))
    (define make-symbolic-table/lock
      (lambda _g108775_
        (let ((_g108776_ (##length _g108775_)))
          (cond ((##fx= _g108776_ 0)
                 (apply make-symbolic-table/lock__0 _g108775_))
                ((##fx= _g108776_ 1)
                 (apply make-symbolic-table/lock__1 _g108775_))
                ((##fx= _g108776_ 2)
                 (apply make-symbolic-table/lock__% _g108775_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table/lock
                  _g108775_))))))
    (define symbolic-table-ref
      (lambda (_%tab107403%_ _%key107404%_ _%default107405%_)
        (let ((_%table107407%_ (&raw-table-table _%tab107403%_))
              (_%seed107408%_ (&raw-table-seed _%tab107403%_)))
          (let* ((_%h107410%_
                  (fxxor (##symbol-hash _%key107404%_) _%seed107408%_))
                 (_%size107413%_ (vector-length _%table107407%_))
                 (_%entries107416%_ (##fxquotient _%size107413%_ '2))
                 (_%start107419%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h107410%_ _%entries107416%_)
                   '1)))
            (let _%loop107423%_ ((_%probe107426%_ _%start107419%_)
                                 (_%i107428%_ '1)
                                 (_%deleted107430%_ '#f))
              (let ((_%k107433%_ (vector-ref _%table107407%_ _%probe107426%_)))
                (if (eq? _%k107433%_ (macro-unused-obj))
                    _%default107405%_
                    (if (eq? _%k107433%_ (macro-deleted-obj))
                        (_%loop107423%_
                         (let ((_%next-probe107438%_
                                (fx+ _%start107419%_
                                     _%i107428%_
                                     (fx* _%i107428%_ _%i107428%_))))
                           (##fxmodulo _%next-probe107438%_ _%size107413%_))
                         (##fx+ _%i107428%_ '1)
                         (let ((_%$e107441%_ _%deleted107430%_))
                           (if _%$e107441%_ _%$e107441%_ _%probe107426%_)))
                        (if (eq? _%key107404%_ _%k107433%_)
                            (vector-ref
                             _%table107407%_
                             (##fx+ _%probe107426%_ '1))
                            (_%loop107423%_
                             (let ((_%next-probe107446%_
                                    (fx+ _%start107419%_
                                         _%i107428%_
                                         (fx* _%i107428%_ _%i107428%_))))
                               (##fxmodulo
                                _%next-probe107446%_
                                _%size107413%_))
                             (##fx+ _%i107428%_ '1)
                             _%deleted107430%_))))))))))
    (define symbolic-table-ref/lock
      (lambda (_%tab107376%_ _%key107377%_ _%default107378%_)
        (let ((_%lock107380%_ (&raw-table-lock _%tab107376%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again107385%_ ((_%spin107388%_ '0))
              (if (##fx= (##vector-cas! _%lock107380%_ '0 '1 '0) '0)
                  (##vector-set! _%lock107380%_ '1 (current-thread))
                  (if (##fx< _%spin107388%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again107385%_ (##fx+ _%spin107388%_ '1)))
                      (let ((_%owner107394%_ (##vector-ref _%lock107380%_ '1)))
                        (if (eq? _%owner107394%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner107394%_)
                                (let () (##thread-yield!) (_%again107385%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r107400%_
                 (symbolic-table-ref
                  _%tab107376%_
                  _%key107377%_
                  _%default107378%_)))
            (##vector-set! _%lock107380%_ '1 '#f)
            (##vector-cas! _%lock107380%_ '0 '0 '1)
            _%$r107400%_))))
    (define __symbolic-table-set!
      (lambda (_%tab107328%_ _%key107329%_ _%value107330%_)
        (let ((_%table107332%_ (&raw-table-table _%tab107328%_))
              (_%seed107333%_ (&raw-table-seed _%tab107328%_)))
          (let* ((_%h107335%_
                  (fxxor (##symbol-hash _%key107329%_) _%seed107333%_))
                 (_%size107338%_ (vector-length _%table107332%_))
                 (_%entries107341%_ (##fxquotient _%size107338%_ '2))
                 (_%start107344%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h107335%_ _%entries107341%_)
                   '1)))
            (let _%loop107348%_ ((_%probe107351%_ _%start107344%_)
                                 (_%i107353%_ '1)
                                 (_%deleted107355%_ '#f))
              (let ((_%k107358%_ (vector-ref _%table107332%_ _%probe107351%_)))
                (if (eq? _%k107358%_ (macro-unused-obj))
                    (if _%deleted107355%_
                        (begin
                          (vector-set!
                           _%table107332%_
                           _%deleted107355%_
                           _%key107329%_)
                          (vector-set!
                           _%table107332%_
                           (##fx+ _%deleted107355%_ '1)
                           _%value107330%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab107328%_
                              (##fx+ (&raw-table-count _%tab107328%_) '1)))))
                        (begin
                          (vector-set!
                           _%table107332%_
                           _%probe107351%_
                           _%key107329%_)
                          (vector-set!
                           _%table107332%_
                           (##fx+ _%probe107351%_ '1)
                           _%value107330%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab107328%_
                              (##fx- (&raw-table-free _%tab107328%_) '1))
                             (&raw-table-count-set!
                              _%tab107328%_
                              (##fx+ (&raw-table-count _%tab107328%_) '1))))))
                    (if (eq? _%k107358%_ (macro-deleted-obj))
                        (_%loop107348%_
                         (let ((_%next-probe107365%_
                                (fx+ _%start107344%_
                                     _%i107353%_
                                     (fx* _%i107353%_ _%i107353%_))))
                           (##fxmodulo _%next-probe107365%_ _%size107338%_))
                         (##fx+ _%i107353%_ '1)
                         (let ((_%$e107368%_ _%deleted107355%_))
                           (if _%$e107368%_ _%$e107368%_ _%probe107351%_)))
                        (if (eq? _%key107329%_ _%k107358%_)
                            (let ()
                              (vector-set!
                               _%table107332%_
                               _%probe107351%_
                               _%key107329%_)
                              (vector-set!
                               _%table107332%_
                               (##fx+ _%probe107351%_ '1)
                               _%value107330%_))
                            (_%loop107348%_
                             (let ((_%next-probe107373%_
                                    (fx+ _%start107344%_
                                         _%i107353%_
                                         (fx* _%i107353%_ _%i107353%_))))
                               (##fxmodulo
                                _%next-probe107373%_
                                _%size107338%_))
                             (##fx+ _%i107353%_ '1)
                             _%deleted107355%_))))))))))
    (define symbolic-table-set!
      (lambda (_%tab107324%_ _%key107325%_ _%value107326%_)
        (if (##fx< (&raw-table-free _%tab107324%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab107324%_))
                    '4))
            (__raw-table-rehash! _%tab107324%_)
            '#!void)
        (__symbolic-table-set! _%tab107324%_ _%key107325%_ _%value107326%_)))
    (define symbolic-table-set!/lock
      (lambda (_%tab107296%_ _%key107297%_ _%value107298%_)
        (let ((_%lock107301%_ (&raw-table-lock _%tab107296%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again107306%_ ((_%spin107309%_ '0))
              (if (##fx= (##vector-cas! _%lock107301%_ '0 '1 '0) '0)
                  (##vector-set! _%lock107301%_ '1 (current-thread))
                  (if (##fx< _%spin107309%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again107306%_ (##fx+ _%spin107309%_ '1)))
                      (let ((_%owner107315%_ (##vector-ref _%lock107301%_ '1)))
                        (if (eq? _%owner107315%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner107315%_)
                                (let () (##thread-yield!) (_%again107306%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r107321%_
                 (symbolic-table-set!
                  _%tab107296%_
                  _%key107297%_
                  _%value107298%_)))
            (##vector-set! _%lock107301%_ '1 '#f)
            (##vector-cas! _%lock107301%_ '0 '0 '1)
            _%$r107321%_))))
    (define __symbolic-table-update!
      (lambda (_%tab107247%_
               _%key107248%_
               _%symbolic-table-update!107249%_
               _%default107250%_)
        (let ((_%table107252%_ (&raw-table-table _%tab107247%_))
              (_%seed107253%_ (&raw-table-seed _%tab107247%_)))
          (let* ((_%h107255%_
                  (fxxor (##symbol-hash _%key107248%_) _%seed107253%_))
                 (_%size107258%_ (vector-length _%table107252%_))
                 (_%entries107261%_ (##fxquotient _%size107258%_ '2))
                 (_%start107264%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h107255%_ _%entries107261%_)
                   '1)))
            (let _%loop107268%_ ((_%probe107271%_ _%start107264%_)
                                 (_%i107273%_ '1)
                                 (_%deleted107275%_ '#f))
              (let ((_%k107278%_ (vector-ref _%table107252%_ _%probe107271%_)))
                (if (eq? _%k107278%_ (macro-unused-obj))
                    (if _%deleted107275%_
                        (begin
                          (vector-set!
                           _%table107252%_
                           _%deleted107275%_
                           _%key107248%_)
                          (vector-set!
                           _%table107252%_
                           (##fx+ _%deleted107275%_ '1)
                           (_%symbolic-table-update!107249%_
                            _%default107250%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab107247%_
                              (##fx+ (&raw-table-count _%tab107247%_) '1)))))
                        (begin
                          (vector-set!
                           _%table107252%_
                           _%probe107271%_
                           _%key107248%_)
                          (vector-set!
                           _%table107252%_
                           (##fx+ _%probe107271%_ '1)
                           (_%symbolic-table-update!107249%_
                            _%default107250%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab107247%_
                              (##fx- (&raw-table-free _%tab107247%_) '1))
                             (&raw-table-count-set!
                              _%tab107247%_
                              (##fx+ (&raw-table-count _%tab107247%_) '1))))))
                    (if (eq? _%k107278%_ (macro-deleted-obj))
                        (_%loop107268%_
                         (let ((_%next-probe107285%_
                                (fx+ _%start107264%_
                                     _%i107273%_
                                     (fx* _%i107273%_ _%i107273%_))))
                           (##fxmodulo _%next-probe107285%_ _%size107258%_))
                         (##fx+ _%i107273%_ '1)
                         (let ((_%$e107288%_ _%deleted107275%_))
                           (if _%$e107288%_ _%$e107288%_ _%probe107271%_)))
                        (if (eq? _%key107248%_ _%k107278%_)
                            (let ()
                              (vector-set!
                               _%table107252%_
                               _%probe107271%_
                               _%key107248%_)
                              (vector-set!
                               _%table107252%_
                               (##fx+ _%probe107271%_ '1)
                               (_%symbolic-table-update!107249%_
                                (vector-ref
                                 _%table107252%_
                                 (##fx+ _%probe107271%_ '1)))))
                            (_%loop107268%_
                             (let ((_%next-probe107293%_
                                    (fx+ _%start107264%_
                                         _%i107273%_
                                         (fx* _%i107273%_ _%i107273%_))))
                               (##fxmodulo
                                _%next-probe107293%_
                                _%size107258%_))
                             (##fx+ _%i107273%_ '1)
                             _%deleted107275%_))))))))))
    (define symbolic-table-update!
      (lambda (_%tab107242%_
               _%key107243%_
               _%symbolic-table-update!107244%_
               _%default107245%_)
        (if (##fx< (&raw-table-free _%tab107242%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab107242%_))
                    '4))
            (__raw-table-rehash! _%tab107242%_)
            '#!void)
        (__symbolic-table-update!
         _%tab107242%_
         _%key107243%_
         _%symbolic-table-update!107244%_
         _%default107245%_)))
    (define symbolic-table-update!/lock
      (lambda (_%tab107213%_
               _%key107214%_
               _%symbolic-table-update!107215%_
               _%default107216%_)
        (let ((_%lock107219%_ (&raw-table-lock _%tab107213%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again107224%_ ((_%spin107227%_ '0))
              (if (##fx= (##vector-cas! _%lock107219%_ '0 '1 '0) '0)
                  (##vector-set! _%lock107219%_ '1 (current-thread))
                  (if (##fx< _%spin107227%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again107224%_ (##fx+ _%spin107227%_ '1)))
                      (let ((_%owner107233%_ (##vector-ref _%lock107219%_ '1)))
                        (if (eq? _%owner107233%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner107233%_)
                                (let () (##thread-yield!) (_%again107224%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r107239%_
                 (_%symbolic-table-update!107215%_
                  _%tab107213%_
                  _%key107214%_
                  _%symbolic-table-update!107215%_
                  _%default107216%_)))
            (##vector-set! _%lock107219%_ '1 '#f)
            (##vector-cas! _%lock107219%_ '0 '0 '1)
            _%$r107239%_))))
    (define symbolic-table-delete!
      (lambda (_%tab107170%_ _%key107171%_)
        (let ((_%table107173%_ (&raw-table-table _%tab107170%_))
              (_%seed107175%_ (&raw-table-seed _%tab107170%_)))
          (let* ((_%h107178%_
                  (fxxor (##symbol-hash _%key107171%_) _%seed107175%_))
                 (_%size107181%_ (vector-length _%table107173%_))
                 (_%entries107184%_ (##fxquotient _%size107181%_ '2))
                 (_%start107187%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h107178%_ _%entries107184%_)
                   '1)))
            (let _%loop107191%_ ((_%probe107194%_ _%start107187%_)
                                 (_%i107196%_ '1))
              (let ((_%k107199%_ (vector-ref _%table107173%_ _%probe107194%_)))
                (if (eq? _%k107199%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k107199%_ (macro-deleted-obj))
                        (_%loop107191%_
                         (let ((_%next-probe107204%_
                                (fx+ _%start107187%_
                                     _%i107196%_
                                     (fx* _%i107196%_ _%i107196%_))))
                           (##fxmodulo _%next-probe107204%_ _%size107181%_))
                         (##fx+ _%i107196%_ '1))
                        (if (eq? _%key107171%_ _%k107199%_)
                            (let ()
                              (vector-set!
                               _%table107173%_
                               _%probe107194%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table107173%_
                               (##fx+ _%probe107194%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab107170%_
                                  (##fx- (&raw-table-count _%tab107170%_)
                                         '1)))))
                            (_%loop107191%_
                             (let ((_%next-probe107210%_
                                    (fx+ _%start107187%_
                                         _%i107196%_
                                         (fx* _%i107196%_ _%i107196%_))))
                               (##fxmodulo
                                _%next-probe107210%_
                                _%size107181%_))
                             (##fx+ _%i107196%_ '1)))))))))))
    (define symbolic-table-delete!/lock
      (lambda (_%tab107142%_ _%key107144%_)
        (let ((_%lock107147%_ (&raw-table-lock _%tab107142%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again107152%_ ((_%spin107155%_ '0))
              (if (##fx= (##vector-cas! _%lock107147%_ '0 '1 '0) '0)
                  (##vector-set! _%lock107147%_ '1 (current-thread))
                  (if (##fx< _%spin107155%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again107152%_ (##fx+ _%spin107155%_ '1)))
                      (let ((_%owner107161%_ (##vector-ref _%lock107147%_ '1)))
                        (if (eq? _%owner107161%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner107161%_)
                                (let () (##thread-yield!) (_%again107152%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r107167%_
                 (symbolic-table-delete! _%tab107142%_ _%key107144%_)))
            (##vector-set! _%lock107147%_ '1 '#f)
            (##vector-cas! _%lock107147%_ '0 '0 '1)
            _%$r107167%_))))
    (define make-string-table__%
      (lambda (_%size-hint107124%_ _%seed107125%_)
        (make-raw-table__1
         _%size-hint107124%_
         string-hash
         ##string=?
         _%seed107125%_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_%size-hint107131%_ '#f) (_%seed107133%_ '0))
          (make-string-table__% _%size-hint107131%_ _%seed107133%_))))
    (define make-string-table__1
      (lambda (_%size-hint107135%_)
        (let ((_%seed107137%_ '0))
          (make-string-table__% _%size-hint107135%_ _%seed107137%_))))
    (define make-string-table
      (lambda _g108777_
        (let ((_g108778_ (##length _g108777_)))
          (cond ((##fx= _g108778_ 0) (apply make-string-table__0 _g108777_))
                ((##fx= _g108778_ 1) (apply make-string-table__1 _g108777_))
                ((##fx= _g108778_ 2) (apply make-string-table__% _g108777_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g108777_))))))
    (define make-string-table/lock__%
      (lambda (_%size-hint107104%_ _%seed107106%_)
        (make-raw-table/lock__%
         _%size-hint107104%_
         string-hash
         ##string=?
         _%seed107106%_)))
    (define make-string-table/lock__0
      (lambda ()
        (let* ((_%size-hint107112%_ '#f) (_%seed107114%_ '0))
          (make-string-table/lock__% _%size-hint107112%_ _%seed107114%_))))
    (define make-string-table/lock__1
      (lambda (_%size-hint107116%_)
        (let ((_%seed107118%_ '0))
          (make-string-table/lock__% _%size-hint107116%_ _%seed107118%_))))
    (define make-string-table/lock
      (lambda _g108779_
        (let ((_g108780_ (##length _g108779_)))
          (cond ((##fx= _g108780_ 0)
                 (apply make-string-table/lock__0 _g108779_))
                ((##fx= _g108780_ 1)
                 (apply make-string-table/lock__1 _g108779_))
                ((##fx= _g108780_ 2)
                 (apply make-string-table/lock__% _g108779_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table/lock
                  _g108779_))))))
    (define string-table-ref
      (lambda (_%tab107057%_ _%key107058%_ _%default107059%_)
        (let ((_%table107061%_ (&raw-table-table _%tab107057%_))
              (_%seed107062%_ (&raw-table-seed _%tab107057%_)))
          (let* ((_%h107064%_
                  (fxxor (##string=?-hash _%key107058%_) _%seed107062%_))
                 (_%size107067%_ (vector-length _%table107061%_))
                 (_%entries107070%_ (##fxquotient _%size107067%_ '2))
                 (_%start107073%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h107064%_ _%entries107070%_)
                   '1)))
            (let _%loop107077%_ ((_%probe107080%_ _%start107073%_)
                                 (_%i107082%_ '1)
                                 (_%deleted107084%_ '#f))
              (let ((_%k107087%_ (vector-ref _%table107061%_ _%probe107080%_)))
                (if (eq? _%k107087%_ (macro-unused-obj))
                    _%default107059%_
                    (if (eq? _%k107087%_ (macro-deleted-obj))
                        (_%loop107077%_
                         (let ((_%next-probe107092%_
                                (fx+ _%start107073%_
                                     _%i107082%_
                                     (fx* _%i107082%_ _%i107082%_))))
                           (##fxmodulo _%next-probe107092%_ _%size107067%_))
                         (##fx+ _%i107082%_ '1)
                         (let ((_%$e107095%_ _%deleted107084%_))
                           (if _%$e107095%_ _%$e107095%_ _%probe107080%_)))
                        (if (##string=? _%key107058%_ _%k107087%_)
                            (vector-ref
                             _%table107061%_
                             (##fx+ _%probe107080%_ '1))
                            (_%loop107077%_
                             (let ((_%next-probe107100%_
                                    (fx+ _%start107073%_
                                         _%i107082%_
                                         (fx* _%i107082%_ _%i107082%_))))
                               (##fxmodulo
                                _%next-probe107100%_
                                _%size107067%_))
                             (##fx+ _%i107082%_ '1)
                             _%deleted107084%_))))))))))
    (define string-table-ref/lock
      (lambda (_%tab107030%_ _%key107031%_ _%default107032%_)
        (let ((_%lock107034%_ (&raw-table-lock _%tab107030%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again107039%_ ((_%spin107042%_ '0))
              (if (##fx= (##vector-cas! _%lock107034%_ '0 '1 '0) '0)
                  (##vector-set! _%lock107034%_ '1 (current-thread))
                  (if (##fx< _%spin107042%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again107039%_ (##fx+ _%spin107042%_ '1)))
                      (let ((_%owner107048%_ (##vector-ref _%lock107034%_ '1)))
                        (if (eq? _%owner107048%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner107048%_)
                                (let () (##thread-yield!) (_%again107039%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r107054%_
                 (string-table-ref
                  _%tab107030%_
                  _%key107031%_
                  _%default107032%_)))
            (##vector-set! _%lock107034%_ '1 '#f)
            (##vector-cas! _%lock107034%_ '0 '0 '1)
            _%$r107054%_))))
    (define __string-table-set!
      (lambda (_%tab106982%_ _%key106983%_ _%value106984%_)
        (let ((_%table106986%_ (&raw-table-table _%tab106982%_))
              (_%seed106987%_ (&raw-table-seed _%tab106982%_)))
          (let* ((_%h106989%_
                  (fxxor (##string=?-hash _%key106983%_) _%seed106987%_))
                 (_%size106992%_ (vector-length _%table106986%_))
                 (_%entries106995%_ (##fxquotient _%size106992%_ '2))
                 (_%start106998%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h106989%_ _%entries106995%_)
                   '1)))
            (let _%loop107002%_ ((_%probe107005%_ _%start106998%_)
                                 (_%i107007%_ '1)
                                 (_%deleted107009%_ '#f))
              (let ((_%k107012%_ (vector-ref _%table106986%_ _%probe107005%_)))
                (if (eq? _%k107012%_ (macro-unused-obj))
                    (if _%deleted107009%_
                        (begin
                          (vector-set!
                           _%table106986%_
                           _%deleted107009%_
                           _%key106983%_)
                          (vector-set!
                           _%table106986%_
                           (##fx+ _%deleted107009%_ '1)
                           _%value106984%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab106982%_
                              (##fx+ (&raw-table-count _%tab106982%_) '1)))))
                        (begin
                          (vector-set!
                           _%table106986%_
                           _%probe107005%_
                           _%key106983%_)
                          (vector-set!
                           _%table106986%_
                           (##fx+ _%probe107005%_ '1)
                           _%value106984%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab106982%_
                              (##fx- (&raw-table-free _%tab106982%_) '1))
                             (&raw-table-count-set!
                              _%tab106982%_
                              (##fx+ (&raw-table-count _%tab106982%_) '1))))))
                    (if (eq? _%k107012%_ (macro-deleted-obj))
                        (_%loop107002%_
                         (let ((_%next-probe107019%_
                                (fx+ _%start106998%_
                                     _%i107007%_
                                     (fx* _%i107007%_ _%i107007%_))))
                           (##fxmodulo _%next-probe107019%_ _%size106992%_))
                         (##fx+ _%i107007%_ '1)
                         (let ((_%$e107022%_ _%deleted107009%_))
                           (if _%$e107022%_ _%$e107022%_ _%probe107005%_)))
                        (if (##string=? _%key106983%_ _%k107012%_)
                            (let ()
                              (vector-set!
                               _%table106986%_
                               _%probe107005%_
                               _%key106983%_)
                              (vector-set!
                               _%table106986%_
                               (##fx+ _%probe107005%_ '1)
                               _%value106984%_))
                            (_%loop107002%_
                             (let ((_%next-probe107027%_
                                    (fx+ _%start106998%_
                                         _%i107007%_
                                         (fx* _%i107007%_ _%i107007%_))))
                               (##fxmodulo
                                _%next-probe107027%_
                                _%size106992%_))
                             (##fx+ _%i107007%_ '1)
                             _%deleted107009%_))))))))))
    (define string-table-set!
      (lambda (_%tab106978%_ _%key106979%_ _%value106980%_)
        (if (##fx< (&raw-table-free _%tab106978%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab106978%_))
                    '4))
            (__raw-table-rehash! _%tab106978%_)
            '#!void)
        (__string-table-set! _%tab106978%_ _%key106979%_ _%value106980%_)))
    (define string-table-set!/lock
      (lambda (_%tab106950%_ _%key106951%_ _%value106952%_)
        (let ((_%lock106955%_ (&raw-table-lock _%tab106950%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again106960%_ ((_%spin106963%_ '0))
              (if (##fx= (##vector-cas! _%lock106955%_ '0 '1 '0) '0)
                  (##vector-set! _%lock106955%_ '1 (current-thread))
                  (if (##fx< _%spin106963%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again106960%_ (##fx+ _%spin106963%_ '1)))
                      (let ((_%owner106969%_ (##vector-ref _%lock106955%_ '1)))
                        (if (eq? _%owner106969%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner106969%_)
                                (let () (##thread-yield!) (_%again106960%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r106975%_
                 (string-table-set!
                  _%tab106950%_
                  _%key106951%_
                  _%value106952%_)))
            (##vector-set! _%lock106955%_ '1 '#f)
            (##vector-cas! _%lock106955%_ '0 '0 '1)
            _%$r106975%_))))
    (define __string-table-update!
      (lambda (_%tab106901%_
               _%key106902%_
               _%string-table-update!106903%_
               _%default106904%_)
        (let ((_%table106906%_ (&raw-table-table _%tab106901%_))
              (_%seed106907%_ (&raw-table-seed _%tab106901%_)))
          (let* ((_%h106909%_
                  (fxxor (##string=?-hash _%key106902%_) _%seed106907%_))
                 (_%size106912%_ (vector-length _%table106906%_))
                 (_%entries106915%_ (##fxquotient _%size106912%_ '2))
                 (_%start106918%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h106909%_ _%entries106915%_)
                   '1)))
            (let _%loop106922%_ ((_%probe106925%_ _%start106918%_)
                                 (_%i106927%_ '1)
                                 (_%deleted106929%_ '#f))
              (let ((_%k106932%_ (vector-ref _%table106906%_ _%probe106925%_)))
                (if (eq? _%k106932%_ (macro-unused-obj))
                    (if _%deleted106929%_
                        (begin
                          (vector-set!
                           _%table106906%_
                           _%deleted106929%_
                           _%key106902%_)
                          (vector-set!
                           _%table106906%_
                           (##fx+ _%deleted106929%_ '1)
                           (_%string-table-update!106903%_ _%default106904%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab106901%_
                              (##fx+ (&raw-table-count _%tab106901%_) '1)))))
                        (begin
                          (vector-set!
                           _%table106906%_
                           _%probe106925%_
                           _%key106902%_)
                          (vector-set!
                           _%table106906%_
                           (##fx+ _%probe106925%_ '1)
                           (_%string-table-update!106903%_ _%default106904%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab106901%_
                              (##fx- (&raw-table-free _%tab106901%_) '1))
                             (&raw-table-count-set!
                              _%tab106901%_
                              (##fx+ (&raw-table-count _%tab106901%_) '1))))))
                    (if (eq? _%k106932%_ (macro-deleted-obj))
                        (_%loop106922%_
                         (let ((_%next-probe106939%_
                                (fx+ _%start106918%_
                                     _%i106927%_
                                     (fx* _%i106927%_ _%i106927%_))))
                           (##fxmodulo _%next-probe106939%_ _%size106912%_))
                         (##fx+ _%i106927%_ '1)
                         (let ((_%$e106942%_ _%deleted106929%_))
                           (if _%$e106942%_ _%$e106942%_ _%probe106925%_)))
                        (if (##string=? _%key106902%_ _%k106932%_)
                            (let ()
                              (vector-set!
                               _%table106906%_
                               _%probe106925%_
                               _%key106902%_)
                              (vector-set!
                               _%table106906%_
                               (##fx+ _%probe106925%_ '1)
                               (_%string-table-update!106903%_
                                (vector-ref
                                 _%table106906%_
                                 (##fx+ _%probe106925%_ '1)))))
                            (_%loop106922%_
                             (let ((_%next-probe106947%_
                                    (fx+ _%start106918%_
                                         _%i106927%_
                                         (fx* _%i106927%_ _%i106927%_))))
                               (##fxmodulo
                                _%next-probe106947%_
                                _%size106912%_))
                             (##fx+ _%i106927%_ '1)
                             _%deleted106929%_))))))))))
    (define string-table-update!
      (lambda (_%tab106896%_
               _%key106897%_
               _%string-table-update!106898%_
               _%default106899%_)
        (if (##fx< (&raw-table-free _%tab106896%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab106896%_))
                    '4))
            (__raw-table-rehash! _%tab106896%_)
            '#!void)
        (__string-table-update!
         _%tab106896%_
         _%key106897%_
         _%string-table-update!106898%_
         _%default106899%_)))
    (define string-table-update!/lock
      (lambda (_%tab106867%_
               _%key106868%_
               _%string-table-update!106869%_
               _%default106870%_)
        (let ((_%lock106873%_ (&raw-table-lock _%tab106867%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again106878%_ ((_%spin106881%_ '0))
              (if (##fx= (##vector-cas! _%lock106873%_ '0 '1 '0) '0)
                  (##vector-set! _%lock106873%_ '1 (current-thread))
                  (if (##fx< _%spin106881%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again106878%_ (##fx+ _%spin106881%_ '1)))
                      (let ((_%owner106887%_ (##vector-ref _%lock106873%_ '1)))
                        (if (eq? _%owner106887%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner106887%_)
                                (let () (##thread-yield!) (_%again106878%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r106893%_
                 (_%string-table-update!106869%_
                  _%tab106867%_
                  _%key106868%_
                  _%string-table-update!106869%_
                  _%default106870%_)))
            (##vector-set! _%lock106873%_ '1 '#f)
            (##vector-cas! _%lock106873%_ '0 '0 '1)
            _%$r106893%_))))
    (define string-table-delete!
      (lambda (_%tab106824%_ _%key106825%_)
        (let ((_%table106827%_ (&raw-table-table _%tab106824%_))
              (_%seed106829%_ (&raw-table-seed _%tab106824%_)))
          (let* ((_%h106832%_
                  (fxxor (##string=?-hash _%key106825%_) _%seed106829%_))
                 (_%size106835%_ (vector-length _%table106827%_))
                 (_%entries106838%_ (##fxquotient _%size106835%_ '2))
                 (_%start106841%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h106832%_ _%entries106838%_)
                   '1)))
            (let _%loop106845%_ ((_%probe106848%_ _%start106841%_)
                                 (_%i106850%_ '1))
              (let ((_%k106853%_ (vector-ref _%table106827%_ _%probe106848%_)))
                (if (eq? _%k106853%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k106853%_ (macro-deleted-obj))
                        (_%loop106845%_
                         (let ((_%next-probe106858%_
                                (fx+ _%start106841%_
                                     _%i106850%_
                                     (fx* _%i106850%_ _%i106850%_))))
                           (##fxmodulo _%next-probe106858%_ _%size106835%_))
                         (##fx+ _%i106850%_ '1))
                        (if (##string=? _%key106825%_ _%k106853%_)
                            (let ()
                              (vector-set!
                               _%table106827%_
                               _%probe106848%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table106827%_
                               (##fx+ _%probe106848%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab106824%_
                                  (##fx- (&raw-table-count _%tab106824%_)
                                         '1)))))
                            (_%loop106845%_
                             (let ((_%next-probe106864%_
                                    (fx+ _%start106841%_
                                         _%i106850%_
                                         (fx* _%i106850%_ _%i106850%_))))
                               (##fxmodulo
                                _%next-probe106864%_
                                _%size106835%_))
                             (##fx+ _%i106850%_ '1)))))))))))
    (define string-table-delete!/lock
      (lambda (_%tab106796%_ _%key106798%_)
        (let ((_%lock106801%_ (&raw-table-lock _%tab106796%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again106806%_ ((_%spin106809%_ '0))
              (if (##fx= (##vector-cas! _%lock106801%_ '0 '1 '0) '0)
                  (##vector-set! _%lock106801%_ '1 (current-thread))
                  (if (##fx< _%spin106809%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again106806%_ (##fx+ _%spin106809%_ '1)))
                      (let ((_%owner106815%_ (##vector-ref _%lock106801%_ '1)))
                        (if (eq? _%owner106815%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner106815%_)
                                (let () (##thread-yield!) (_%again106806%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r106821%_
                 (string-table-delete! _%tab106796%_ _%key106798%_)))
            (##vector-set! _%lock106801%_ '1 '#f)
            (##vector-cas! _%lock106801%_ '0 '0 '1)
            _%$r106821%_))))
    (define make-immediate-table__%
      (lambda (_%size-hint106778%_ _%seed106779%_)
        (make-raw-table__1
         _%size-hint106778%_
         immediate-hash
         eq?
         _%seed106779%_)))
    (define make-immediate-table__0
      (lambda ()
        (let* ((_%size-hint106785%_ '#f) (_%seed106787%_ '0))
          (make-immediate-table__% _%size-hint106785%_ _%seed106787%_))))
    (define make-immediate-table__1
      (lambda (_%size-hint106789%_)
        (let ((_%seed106791%_ '0))
          (make-immediate-table__% _%size-hint106789%_ _%seed106791%_))))
    (define make-immediate-table
      (lambda _g108781_
        (let ((_g108782_ (##length _g108781_)))
          (cond ((##fx= _g108782_ 0) (apply make-immediate-table__0 _g108781_))
                ((##fx= _g108782_ 1) (apply make-immediate-table__1 _g108781_))
                ((##fx= _g108782_ 2) (apply make-immediate-table__% _g108781_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table
                  _g108781_))))))
    (define make-immediate-table/lock__%
      (lambda (_%size-hint106758%_ _%seed106760%_)
        (make-raw-table/lock__%
         _%size-hint106758%_
         immediate-hash
         eq?
         _%seed106760%_)))
    (define make-immediate-table/lock__0
      (lambda ()
        (let* ((_%size-hint106766%_ '#f) (_%seed106768%_ '0))
          (make-immediate-table/lock__% _%size-hint106766%_ _%seed106768%_))))
    (define make-immediate-table/lock__1
      (lambda (_%size-hint106770%_)
        (let ((_%seed106772%_ '0))
          (make-immediate-table/lock__% _%size-hint106770%_ _%seed106772%_))))
    (define make-immediate-table/lock
      (lambda _g108783_
        (let ((_g108784_ (##length _g108783_)))
          (cond ((##fx= _g108784_ 0)
                 (apply make-immediate-table/lock__0 _g108783_))
                ((##fx= _g108784_ 1)
                 (apply make-immediate-table/lock__1 _g108783_))
                ((##fx= _g108784_ 2)
                 (apply make-immediate-table/lock__% _g108783_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table/lock
                  _g108783_))))))
    (define immediate-table-ref
      (lambda (_%tab106711%_ _%key106712%_ _%default106713%_)
        (let ((_%table106715%_ (&raw-table-table _%tab106711%_))
              (_%seed106716%_ (&raw-table-seed _%tab106711%_)))
          (let* ((_%h106718%_
                  (fxxor (immediate-hash _%key106712%_) _%seed106716%_))
                 (_%size106721%_ (vector-length _%table106715%_))
                 (_%entries106724%_ (##fxquotient _%size106721%_ '2))
                 (_%start106727%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h106718%_ _%entries106724%_)
                   '1)))
            (let _%loop106731%_ ((_%probe106734%_ _%start106727%_)
                                 (_%i106736%_ '1)
                                 (_%deleted106738%_ '#f))
              (let ((_%k106741%_ (vector-ref _%table106715%_ _%probe106734%_)))
                (if (eq? _%k106741%_ (macro-unused-obj))
                    _%default106713%_
                    (if (eq? _%k106741%_ (macro-deleted-obj))
                        (_%loop106731%_
                         (let ((_%next-probe106746%_
                                (fx+ _%start106727%_
                                     _%i106736%_
                                     (fx* _%i106736%_ _%i106736%_))))
                           (##fxmodulo _%next-probe106746%_ _%size106721%_))
                         (##fx+ _%i106736%_ '1)
                         (let ((_%$e106749%_ _%deleted106738%_))
                           (if _%$e106749%_ _%$e106749%_ _%probe106734%_)))
                        (if (eq? _%key106712%_ _%k106741%_)
                            (vector-ref
                             _%table106715%_
                             (##fx+ _%probe106734%_ '1))
                            (_%loop106731%_
                             (let ((_%next-probe106754%_
                                    (fx+ _%start106727%_
                                         _%i106736%_
                                         (fx* _%i106736%_ _%i106736%_))))
                               (##fxmodulo
                                _%next-probe106754%_
                                _%size106721%_))
                             (##fx+ _%i106736%_ '1)
                             _%deleted106738%_))))))))))
    (define immediate-table-ref/lock
      (lambda (_%tab106684%_ _%key106685%_ _%default106686%_)
        (let ((_%lock106688%_ (&raw-table-lock _%tab106684%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again106693%_ ((_%spin106696%_ '0))
              (if (##fx= (##vector-cas! _%lock106688%_ '0 '1 '0) '0)
                  (##vector-set! _%lock106688%_ '1 (current-thread))
                  (if (##fx< _%spin106696%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again106693%_ (##fx+ _%spin106696%_ '1)))
                      (let ((_%owner106702%_ (##vector-ref _%lock106688%_ '1)))
                        (if (eq? _%owner106702%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner106702%_)
                                (let () (##thread-yield!) (_%again106693%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r106708%_
                 (immediate-table-ref
                  _%tab106684%_
                  _%key106685%_
                  _%default106686%_)))
            (##vector-set! _%lock106688%_ '1 '#f)
            (##vector-cas! _%lock106688%_ '0 '0 '1)
            _%$r106708%_))))
    (define __immediate-table-set!
      (lambda (_%tab106636%_ _%key106637%_ _%value106638%_)
        (let ((_%table106640%_ (&raw-table-table _%tab106636%_))
              (_%seed106641%_ (&raw-table-seed _%tab106636%_)))
          (let* ((_%h106643%_
                  (fxxor (immediate-hash _%key106637%_) _%seed106641%_))
                 (_%size106646%_ (vector-length _%table106640%_))
                 (_%entries106649%_ (##fxquotient _%size106646%_ '2))
                 (_%start106652%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h106643%_ _%entries106649%_)
                   '1)))
            (let _%loop106656%_ ((_%probe106659%_ _%start106652%_)
                                 (_%i106661%_ '1)
                                 (_%deleted106663%_ '#f))
              (let ((_%k106666%_ (vector-ref _%table106640%_ _%probe106659%_)))
                (if (eq? _%k106666%_ (macro-unused-obj))
                    (if _%deleted106663%_
                        (begin
                          (vector-set!
                           _%table106640%_
                           _%deleted106663%_
                           _%key106637%_)
                          (vector-set!
                           _%table106640%_
                           (##fx+ _%deleted106663%_ '1)
                           _%value106638%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab106636%_
                              (##fx+ (&raw-table-count _%tab106636%_) '1)))))
                        (begin
                          (vector-set!
                           _%table106640%_
                           _%probe106659%_
                           _%key106637%_)
                          (vector-set!
                           _%table106640%_
                           (##fx+ _%probe106659%_ '1)
                           _%value106638%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab106636%_
                              (##fx- (&raw-table-free _%tab106636%_) '1))
                             (&raw-table-count-set!
                              _%tab106636%_
                              (##fx+ (&raw-table-count _%tab106636%_) '1))))))
                    (if (eq? _%k106666%_ (macro-deleted-obj))
                        (_%loop106656%_
                         (let ((_%next-probe106673%_
                                (fx+ _%start106652%_
                                     _%i106661%_
                                     (fx* _%i106661%_ _%i106661%_))))
                           (##fxmodulo _%next-probe106673%_ _%size106646%_))
                         (##fx+ _%i106661%_ '1)
                         (let ((_%$e106676%_ _%deleted106663%_))
                           (if _%$e106676%_ _%$e106676%_ _%probe106659%_)))
                        (if (eq? _%key106637%_ _%k106666%_)
                            (let ()
                              (vector-set!
                               _%table106640%_
                               _%probe106659%_
                               _%key106637%_)
                              (vector-set!
                               _%table106640%_
                               (##fx+ _%probe106659%_ '1)
                               _%value106638%_))
                            (_%loop106656%_
                             (let ((_%next-probe106681%_
                                    (fx+ _%start106652%_
                                         _%i106661%_
                                         (fx* _%i106661%_ _%i106661%_))))
                               (##fxmodulo
                                _%next-probe106681%_
                                _%size106646%_))
                             (##fx+ _%i106661%_ '1)
                             _%deleted106663%_))))))))))
    (define immediate-table-set!
      (lambda (_%tab106632%_ _%key106633%_ _%value106634%_)
        (if (##fx< (&raw-table-free _%tab106632%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab106632%_))
                    '4))
            (__raw-table-rehash! _%tab106632%_)
            '#!void)
        (__immediate-table-set! _%tab106632%_ _%key106633%_ _%value106634%_)))
    (define immediate-table-set!/lock
      (lambda (_%tab106604%_ _%key106605%_ _%value106606%_)
        (let ((_%lock106609%_ (&raw-table-lock _%tab106604%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again106614%_ ((_%spin106617%_ '0))
              (if (##fx= (##vector-cas! _%lock106609%_ '0 '1 '0) '0)
                  (##vector-set! _%lock106609%_ '1 (current-thread))
                  (if (##fx< _%spin106617%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again106614%_ (##fx+ _%spin106617%_ '1)))
                      (let ((_%owner106623%_ (##vector-ref _%lock106609%_ '1)))
                        (if (eq? _%owner106623%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner106623%_)
                                (let () (##thread-yield!) (_%again106614%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r106629%_
                 (immediate-table-set!
                  _%tab106604%_
                  _%key106605%_
                  _%value106606%_)))
            (##vector-set! _%lock106609%_ '1 '#f)
            (##vector-cas! _%lock106609%_ '0 '0 '1)
            _%$r106629%_))))
    (define __immediate-table-update!
      (lambda (_%tab106555%_
               _%key106556%_
               _%immediate-table-update!106557%_
               _%default106558%_)
        (let ((_%table106560%_ (&raw-table-table _%tab106555%_))
              (_%seed106561%_ (&raw-table-seed _%tab106555%_)))
          (let* ((_%h106563%_
                  (fxxor (immediate-hash _%key106556%_) _%seed106561%_))
                 (_%size106566%_ (vector-length _%table106560%_))
                 (_%entries106569%_ (##fxquotient _%size106566%_ '2))
                 (_%start106572%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h106563%_ _%entries106569%_)
                   '1)))
            (let _%loop106576%_ ((_%probe106579%_ _%start106572%_)
                                 (_%i106581%_ '1)
                                 (_%deleted106583%_ '#f))
              (let ((_%k106586%_ (vector-ref _%table106560%_ _%probe106579%_)))
                (if (eq? _%k106586%_ (macro-unused-obj))
                    (if _%deleted106583%_
                        (begin
                          (vector-set!
                           _%table106560%_
                           _%deleted106583%_
                           _%key106556%_)
                          (vector-set!
                           _%table106560%_
                           (##fx+ _%deleted106583%_ '1)
                           (_%immediate-table-update!106557%_
                            _%default106558%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab106555%_
                              (##fx+ (&raw-table-count _%tab106555%_) '1)))))
                        (begin
                          (vector-set!
                           _%table106560%_
                           _%probe106579%_
                           _%key106556%_)
                          (vector-set!
                           _%table106560%_
                           (##fx+ _%probe106579%_ '1)
                           (_%immediate-table-update!106557%_
                            _%default106558%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab106555%_
                              (##fx- (&raw-table-free _%tab106555%_) '1))
                             (&raw-table-count-set!
                              _%tab106555%_
                              (##fx+ (&raw-table-count _%tab106555%_) '1))))))
                    (if (eq? _%k106586%_ (macro-deleted-obj))
                        (_%loop106576%_
                         (let ((_%next-probe106593%_
                                (fx+ _%start106572%_
                                     _%i106581%_
                                     (fx* _%i106581%_ _%i106581%_))))
                           (##fxmodulo _%next-probe106593%_ _%size106566%_))
                         (##fx+ _%i106581%_ '1)
                         (let ((_%$e106596%_ _%deleted106583%_))
                           (if _%$e106596%_ _%$e106596%_ _%probe106579%_)))
                        (if (eq? _%key106556%_ _%k106586%_)
                            (let ()
                              (vector-set!
                               _%table106560%_
                               _%probe106579%_
                               _%key106556%_)
                              (vector-set!
                               _%table106560%_
                               (##fx+ _%probe106579%_ '1)
                               (_%immediate-table-update!106557%_
                                (vector-ref
                                 _%table106560%_
                                 (##fx+ _%probe106579%_ '1)))))
                            (_%loop106576%_
                             (let ((_%next-probe106601%_
                                    (fx+ _%start106572%_
                                         _%i106581%_
                                         (fx* _%i106581%_ _%i106581%_))))
                               (##fxmodulo
                                _%next-probe106601%_
                                _%size106566%_))
                             (##fx+ _%i106581%_ '1)
                             _%deleted106583%_))))))))))
    (define immediate-table-update!
      (lambda (_%tab106550%_
               _%key106551%_
               _%immediate-table-update!106552%_
               _%default106553%_)
        (if (##fx< (&raw-table-free _%tab106550%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab106550%_))
                    '4))
            (__raw-table-rehash! _%tab106550%_)
            '#!void)
        (__immediate-table-update!
         _%tab106550%_
         _%key106551%_
         _%immediate-table-update!106552%_
         _%default106553%_)))
    (define immediate-table-update!/lock
      (lambda (_%tab106521%_
               _%key106522%_
               _%immediate-table-update!106523%_
               _%default106524%_)
        (let ((_%lock106527%_ (&raw-table-lock _%tab106521%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again106532%_ ((_%spin106535%_ '0))
              (if (##fx= (##vector-cas! _%lock106527%_ '0 '1 '0) '0)
                  (##vector-set! _%lock106527%_ '1 (current-thread))
                  (if (##fx< _%spin106535%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again106532%_ (##fx+ _%spin106535%_ '1)))
                      (let ((_%owner106541%_ (##vector-ref _%lock106527%_ '1)))
                        (if (eq? _%owner106541%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner106541%_)
                                (let () (##thread-yield!) (_%again106532%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r106547%_
                 (_%immediate-table-update!106523%_
                  _%tab106521%_
                  _%key106522%_
                  _%immediate-table-update!106523%_
                  _%default106524%_)))
            (##vector-set! _%lock106527%_ '1 '#f)
            (##vector-cas! _%lock106527%_ '0 '0 '1)
            _%$r106547%_))))
    (define immediate-table-delete!
      (lambda (_%tab106478%_ _%key106479%_)
        (let ((_%table106481%_ (&raw-table-table _%tab106478%_))
              (_%seed106483%_ (&raw-table-seed _%tab106478%_)))
          (let* ((_%h106486%_
                  (fxxor (immediate-hash _%key106479%_) _%seed106483%_))
                 (_%size106489%_ (vector-length _%table106481%_))
                 (_%entries106492%_ (##fxquotient _%size106489%_ '2))
                 (_%start106495%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h106486%_ _%entries106492%_)
                   '1)))
            (let _%loop106499%_ ((_%probe106502%_ _%start106495%_)
                                 (_%i106504%_ '1))
              (let ((_%k106507%_ (vector-ref _%table106481%_ _%probe106502%_)))
                (if (eq? _%k106507%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k106507%_ (macro-deleted-obj))
                        (_%loop106499%_
                         (let ((_%next-probe106512%_
                                (fx+ _%start106495%_
                                     _%i106504%_
                                     (fx* _%i106504%_ _%i106504%_))))
                           (##fxmodulo _%next-probe106512%_ _%size106489%_))
                         (##fx+ _%i106504%_ '1))
                        (if (eq? _%key106479%_ _%k106507%_)
                            (let ()
                              (vector-set!
                               _%table106481%_
                               _%probe106502%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table106481%_
                               (##fx+ _%probe106502%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab106478%_
                                  (##fx- (&raw-table-count _%tab106478%_)
                                         '1)))))
                            (_%loop106499%_
                             (let ((_%next-probe106518%_
                                    (fx+ _%start106495%_
                                         _%i106504%_
                                         (fx* _%i106504%_ _%i106504%_))))
                               (##fxmodulo
                                _%next-probe106518%_
                                _%size106489%_))
                             (##fx+ _%i106504%_ '1)))))))))))
    (define immediate-table-delete!/lock
      (lambda (_%tab106450%_ _%key106452%_)
        (let ((_%lock106455%_ (&raw-table-lock _%tab106450%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again106460%_ ((_%spin106463%_ '0))
              (if (##fx= (##vector-cas! _%lock106455%_ '0 '1 '0) '0)
                  (##vector-set! _%lock106455%_ '1 (current-thread))
                  (if (##fx< _%spin106463%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again106460%_ (##fx+ _%spin106463%_ '1)))
                      (let ((_%owner106469%_ (##vector-ref _%lock106455%_ '1)))
                        (if (eq? _%owner106469%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner106469%_)
                                (let () (##thread-yield!) (_%again106460%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r106475%_
                 (immediate-table-delete! _%tab106450%_ _%key106452%_)))
            (##vector-set! _%lock106455%_ '1 '#f)
            (##vector-cas! _%lock106455%_ '0 '0 '1)
            _%$r106475%_))))
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
      (lambda (_%tab106448%_)
        (##unchecked-structure-ref
         _%tab106448%_
         '1
         __gc-table::t
         'gc-table-gcht)))
    (define &gc-table-immediate
      (lambda (_%tab106446%_)
        (##unchecked-structure-ref
         _%tab106446%_
         '2
         __gc-table::t
         'gc-table-immediate)))
    (define &gc-table-lock
      (lambda (_%tab106444%_)
        (##unchecked-structure-ref
         _%tab106444%_
         '3
         __gc-table::t
         'gc-table-lock)))
    (define &gc-table-gcht-set!
      (lambda (_%tab106441%_ _%val106442%_)
        (##unchecked-structure-set!
         _%tab106441%_
         _%val106442%_
         '1
         __gc-table::t
         'gc-table-gcht-set!)))
    (define &gc-table-immediate-set!
      (lambda (_%tab106438%_ _%val106439%_)
        (##unchecked-structure-set!
         _%tab106438%_
         _%val106439%_
         '2
         __gc-table::t
         'gc-table-immediate-set!)))
    (define &gc-table-lock-set!
      (lambda (_%tab106435%_ _%val106436%_)
        (##unchecked-structure-set!
         _%tab106435%_
         _%val106436%_
         '3
         __gc-table::t
         'gc-table-lock-set!)))
    (define make-gc-table__%
      (lambda (_%size-hint106399%_
               _%klass106400%_
               _%flags106401%_
               _%lock106402%_)
        (let ((_%gcht106404%_
               (__gc-table-new
                (if (fixnum? _%size-hint106399%_) _%size-hint106399%_ '16)
                _%flags106401%_)))
          (##structure _%klass106400%_ _%gcht106404%_ '#f _%lock106402%_))))
    (define make-gc-table__0
      (lambda (_%size-hint106409%_)
        (let* ((_%klass106411%_ __gc-table::t)
               (_%flags106413%_ '0)
               (_%lock106415%_ '#f))
          (make-gc-table__%
           _%size-hint106409%_
           _%klass106411%_
           _%flags106413%_
           _%lock106415%_))))
    (define make-gc-table__1
      (lambda (_%size-hint106417%_ _%klass106418%_)
        (let* ((_%flags106420%_ '0) (_%lock106422%_ '#f))
          (make-gc-table__%
           _%size-hint106417%_
           _%klass106418%_
           _%flags106420%_
           _%lock106422%_))))
    (define make-gc-table__2
      (lambda (_%size-hint106424%_ _%klass106425%_ _%flags106426%_)
        (let ((_%lock106428%_ '#f))
          (make-gc-table__%
           _%size-hint106424%_
           _%klass106425%_
           _%flags106426%_
           _%lock106428%_))))
    (define make-gc-table
      (lambda _g108785_
        (let ((_g108786_ (##length _g108785_)))
          (cond ((##fx= _g108786_ 1) (apply make-gc-table__0 _g108785_))
                ((##fx= _g108786_ 2) (apply make-gc-table__1 _g108785_))
                ((##fx= _g108786_ 3) (apply make-gc-table__2 _g108785_))
                ((##fx= _g108786_ 4) (apply make-gc-table__% _g108785_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table
                  _g108785_))))))
    (define make-gc-table/lock__%
      (lambda (_%size-hint106376%_ _%klass106377%_ _%flags106378%_)
        (make-gc-table__%
         _%size-hint106376%_
         _%klass106377%_
         _%flags106378%_
         (vector '0 '#f))))
    (define make-gc-table/lock__0
      (lambda (_%size-hint106383%_)
        (let* ((_%klass106385%_ __gc-table::t) (_%flags106387%_ '0))
          (make-gc-table/lock__%
           _%size-hint106383%_
           _%klass106385%_
           _%flags106387%_))))
    (define make-gc-table/lock__1
      (lambda (_%size-hint106389%_ _%klass106390%_)
        (let ((_%flags106392%_ '0))
          (make-gc-table/lock__%
           _%size-hint106389%_
           _%klass106390%_
           _%flags106392%_))))
    (define make-gc-table/lock
      (lambda _g108787_
        (let ((_g108788_ (##length _g108787_)))
          (cond ((##fx= _g108788_ 1) (apply make-gc-table/lock__0 _g108787_))
                ((##fx= _g108788_ 2) (apply make-gc-table/lock__1 _g108787_))
                ((##fx= _g108788_ 3) (apply make-gc-table/lock__% _g108787_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table/lock
                  _g108787_))))))
    (define __gc-table-immediate
      (lambda (_%tab106367%_)
        (let ((_%$e106369%_ (&gc-table-immediate _%tab106367%_)))
          (if _%$e106369%_
              _%$e106369%_
              (let ((_%immediate106373%_ (make-immediate-table__% '#f '0)))
                (&gc-table-immediate-set! _%tab106367%_ _%immediate106373%_)
                _%immediate106373%_)))))
    (define __gc-table-new
      (lambda (_%size106357%_ _%flags106358%_)
        (let* ((_%flags106360%_
                (##fxand _%flags106358%_
                         (fxnot (macro-gc-hash-table-flag-need-rehash))))
               (_%flags106362%_
                (fxior _%flags106360%_
                       (macro-gc-hash-table-flag-mem-alloc-keys)))
               (_%gcht106364%_
                (##gc-hash-table-allocate
                 _%size106357%_
                 _%flags106362%_
                 __gc-table-loads)))
          _%gcht106364%_)))
    (define __gc-table-e
      (lambda (_%tab106352%_)
        (declare (not interrupts-enabled))
        (let ((_%gcht106355%_ (&gc-table-gcht _%tab106352%_)))
          (if (##fx= '0
                     (fxand (macro-gc-hash-table-flags _%gcht106355%_)
                            (macro-gc-hash-table-flag-need-rehash)))
              _%gcht106355%_
              (begin
                (__gc-table-rehash! _%tab106352%_)
                (&gc-table-gcht _%tab106352%_))))))
    (define __gc-table-rehash!
      (lambda (_%tab106343%_)
        (let* ((_%old-table106345%_ (&gc-table-gcht _%tab106343%_))
               (_%new-table106347%_
                (##gc-hash-table-resize! _%old-table106345%_ __gc-table-loads))
               (_%gcht106349%_
                (##gc-hash-table-rehash!
                 _%old-table106345%_
                 _%new-table106347%_)))
          (&gc-table-gcht-set! _%tab106343%_ _%gcht106349%_))))
    (define gc-table-ref
      (lambda (_%tab106327%_ _%key106328%_ _%default106329%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key106328%_)
            (let* ((_%gcht106333%_ (__gc-table-e _%tab106327%_))
                   (_%value106335%_
                    (##gc-hash-table-ref _%gcht106333%_ _%key106328%_)))
              (if (eq? _%value106335%_ (macro-unused-obj))
                  _%default106329%_
                  _%value106335%_))
            (let ((_%$e106337%_ (&gc-table-immediate _%tab106327%_)))
              (if _%$e106337%_
                  ((lambda (_%immediate106340%_)
                     (immediate-table-ref
                      _%immediate106340%_
                      _%key106328%_
                      _%default106329%_))
                   _%$e106337%_)
                  _%default106329%_)))))
    (define gc-table-ref/lock
      (lambda (_%tab106303%_ _%key106304%_ _%default106305%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again106309%_ ((_%spin106312%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab106303%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab106303%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin106312%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again106309%_ (##fx+ _%spin106312%_ '1)))
                    (let ((_%owner106318%_
                           (##vector-ref (&gc-table-lock _%tab106303%_) '1)))
                      (if (eq? _%owner106318%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner106318%_)
                              (let () (##thread-yield!) (_%again106309%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r106324%_
               (gc-table-ref _%tab106303%_ _%key106304%_ _%default106305%_)))
          (##vector-set! (&gc-table-lock _%tab106303%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab106303%_) '0 '0 '1)
          _%$r106324%_)))
    (define gc-table-set!
      (lambda (_%tab106296%_ _%key106297%_ _%value106298%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key106297%_)
            (let ((_%gcht106301%_ (__gc-table-e _%tab106296%_)))
              (if (##gc-hash-table-set!
                   _%gcht106301%_
                   _%key106297%_
                   _%value106298%_)
                  (begin
                    (__gc-table-rehash! _%tab106296%_)
                    (gc-table-set!
                     _%tab106296%_
                     _%key106297%_
                     _%value106298%_))
                  '#!void))
            (immediate-table-set!
             (__gc-table-immediate _%tab106296%_)
             _%key106297%_
             _%value106298%_))))
    (define gc-table-set/lock!
      (lambda (_%tab106272%_ _%key106273%_ _%value106274%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again106278%_ ((_%spin106281%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab106272%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab106272%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin106281%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again106278%_ (##fx+ _%spin106281%_ '1)))
                    (let ((_%owner106287%_
                           (##vector-ref (&gc-table-lock _%tab106272%_) '1)))
                      (if (eq? _%owner106287%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner106287%_)
                              (let () (##thread-yield!) (_%again106278%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r106293%_
               (gc-table-set! _%tab106272%_ _%key106273%_ _%value106274%_)))
          (##vector-set! (&gc-table-lock _%tab106272%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab106272%_) '0 '0 '1)
          _%$r106293%_)))
    (define gc-table-update!
      (lambda (_%tab106265%_ _%key106266%_ _%update106267%_ _%default106268%_)
        (if (##mem-allocated? _%key106266%_)
            (let ((_%value106270%_
                   (gc-table-ref
                    _%tab106265%_
                    _%key106266%_
                    _%default106268%_)))
              (gc-table-set!
               _%tab106265%_
               _%key106266%_
               (_%update106267%_ _%value106270%_)))
            (immediate-table-update!
             (__gc-table-immediate _%tab106265%_)
             _%key106266%_
             _%update106267%_
             _%default106268%_))))
    (define gc-table-update!/lock
      (lambda (_%tab106240%_ _%key106241%_ _%update106242%_ _%default106243%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again106247%_ ((_%spin106250%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab106240%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab106240%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin106250%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again106247%_ (##fx+ _%spin106250%_ '1)))
                    (let ((_%owner106256%_
                           (##vector-ref (&gc-table-lock _%tab106240%_) '1)))
                      (if (eq? _%owner106256%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner106256%_)
                              (let () (##thread-yield!) (_%again106247%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r106262%_
               (gc-table-update!
                _%tab106240%_
                _%key106241%_
                _%update106242%_
                _%default106243%_)))
          (##vector-set! (&gc-table-lock _%tab106240%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab106240%_) '0 '0 '1)
          _%$r106262%_)))
    (define gc-table-delete!
      (lambda (_%tab106228%_ _%key106229%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key106229%_)
            (let ((_%gcht106233%_ (__gc-table-e _%tab106228%_)))
              (if (##gc-hash-table-set!
                   _%gcht106233%_
                   _%key106229%_
                   (macro-absent-obj))
                  (begin
                    (__gc-table-rehash! _%tab106228%_)
                    (gc-table-delete! _%tab106228%_ _%key106229%_))
                  '#!void))
            (let ((_%$e106235%_ (&gc-table-immediate _%tab106228%_)))
              (if _%$e106235%_
                  ((lambda (_%immediate106238%_)
                     (immediate-table-delete!
                      _%immediate106238%_
                      _%key106229%_))
                   _%$e106235%_)
                  '#!void)))))
    (define gc-table-delete!/lock
      (lambda (_%tab106205%_ _%key106206%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again106210%_ ((_%spin106213%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab106205%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab106205%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin106213%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again106210%_ (##fx+ _%spin106213%_ '1)))
                    (let ((_%owner106219%_
                           (##vector-ref (&gc-table-lock _%tab106205%_) '1)))
                      (if (eq? _%owner106219%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner106219%_)
                              (let () (##thread-yield!) (_%again106210%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r106225%_ (gc-table-delete! _%tab106205%_ _%key106206%_)))
          (##vector-set! (&gc-table-lock _%tab106205%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab106205%_) '0 '0 '1)
          _%$r106225%_)))
    (define gc-table-for-each
      (lambda (_%tab106194%_ _%proc106195%_)
        (declare (not interrupts-enabled))
        (begin
          (let ((_%gcht106198%_ (__gc-table-e _%tab106194%_)))
            (##gc-hash-table-for-each _%proc106195%_ _%gcht106198%_))
          (let ((_%$e106200%_ (&gc-table-immediate _%tab106194%_)))
            (if _%$e106200%_
                ((lambda (_%immediate106203%_)
                   (raw-table-for-each _%immediate106203%_ _%proc106195%_))
                 _%$e106200%_)
                '#!void)))))
    (define gc-table-for-each/lock
      (lambda (_%tab106171%_ _%proc106172%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again106176%_ ((_%spin106179%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab106171%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab106171%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin106179%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again106176%_ (##fx+ _%spin106179%_ '1)))
                    (let ((_%owner106185%_
                           (##vector-ref (&gc-table-lock _%tab106171%_) '1)))
                      (if (eq? _%owner106185%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner106185%_)
                              (let () (##thread-yield!) (_%again106176%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r106191%_ (gc-table-for-each _%tab106171%_ _%proc106172%_)))
          (##vector-set! (&gc-table-lock _%tab106171%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab106171%_) '0 '0 '1)
          _%$r106191%_)))
    (define gc-table-copy
      (lambda (_%tab106159%_)
        (let* ((_%gcht106161%_ (__gc-table-e _%tab106159%_))
               (_%new-table106163%_
                (__gc-table-new
                 (macro-gc-hash-table-count _%gcht106161%_)
                 (macro-gc-hash-table-flags _%gcht106161%_)))
               (_%result106165%_
                (##structure
                 (##structure-type _%tab106159%_)
                 _%new-table106163%_
                 '#f)))
          (gc-table-for-each
           _%tab106159%_
           (lambda (_%k106168%_ _%v106169%_)
             (gc-table-set! _%result106165%_ _%k106168%_ _%v106169%_)))
          _%result106165%_)))
    (define gc-table-copy/lock
      (lambda (_%tab106137%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again106141%_ ((_%spin106144%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab106137%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab106137%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin106144%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again106141%_ (##fx+ _%spin106144%_ '1)))
                    (let ((_%owner106150%_
                           (##vector-ref (&gc-table-lock _%tab106137%_) '1)))
                      (if (eq? _%owner106150%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner106150%_)
                              (let () (##thread-yield!) (_%again106141%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r106156%_ (gc-table-copy _%tab106137%_)))
          (##vector-set! (&gc-table-lock _%tab106137%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab106137%_) '0 '0 '1)
          _%$r106156%_)))
    (define gc-table-clear!
      (lambda (_%tab106130%_)
        (let* ((_%gcht106132%_ (__gc-table-e _%tab106130%_))
               (_%new-table106134%_
                (__gc-table-new
                 '16
                 (macro-gc-hash-table-flags _%gcht106132%_))))
          (&gc-table-gcht-set! _%tab106130%_ _%new-table106134%_)
          (&gc-table-immediate-set! _%tab106130%_ '#f))))
    (define gc-table-clear!/lock
      (lambda (_%tab106108%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again106112%_ ((_%spin106115%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab106108%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab106108%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin106115%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again106112%_ (##fx+ _%spin106115%_ '1)))
                    (let ((_%owner106121%_
                           (##vector-ref (&gc-table-lock _%tab106108%_) '1)))
                      (if (eq? _%owner106121%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner106121%_)
                              (let () (##thread-yield!) (_%again106112%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r106127%_ (gc-table-clear! _%tab106108%_)))
          (##vector-set! (&gc-table-lock _%tab106108%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab106108%_) '0 '0 '1)
          _%$r106127%_)))
    (define gc-table-length
      (lambda (_%tab106100%_)
        (let ((_%gcht106102%_ (__gc-table-e _%tab106100%_)))
          (fx+ (macro-gc-hash-table-count _%gcht106102%_)
               (let ((_%$e106104%_ (&gc-table-immediate _%tab106100%_)))
                 (if _%$e106104%_ (&raw-table-count _%$e106104%_) '0))))))
    (define gc-table-length/lock
      (lambda (_%tab106078%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again106082%_ ((_%spin106085%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab106078%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab106078%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin106085%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again106082%_ (##fx+ _%spin106085%_ '1)))
                    (let ((_%owner106091%_
                           (##vector-ref (&gc-table-lock _%tab106078%_) '1)))
                      (if (eq? _%owner106091%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner106091%_)
                              (let () (##thread-yield!) (_%again106082%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r106097%_ (gc-table-length _%tab106078%_)))
          (##vector-set! (&gc-table-lock _%tab106078%_) '1 '#f)
          (##vector-cas! (&gc-table-lock _%tab106078%_) '0 '0 '1)
          _%$r106097%_)))
    (define __object-eq-hash-lock (vector '0 '#f))
    (define __object-eq-hash-next '0)
    (define __object-eq-hash
      (make-gc-table__2
       '1024
       __gc-table::t
       (macro-gc-hash-table-flag-weak-keys)))
    (define __object->eq-hash
      (lambda (_%obj106048%_)
        (declare (not interrupts-enabled))
        (begin
          (let ()
            (declare (not interrupts-enabled))
            (let _%again106053%_ ((_%spin106056%_ '0))
              (if (##fx= (##vector-cas! __object-eq-hash-lock '0 '1 '0) '0)
                  (##vector-set! __object-eq-hash-lock '1 (current-thread))
                  (if (##fx< _%spin106056%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again106053%_ (##fx+ _%spin106056%_ '1)))
                      (let ((_%owner106062%_
                             (##vector-ref __object-eq-hash-lock '1)))
                        (if (eq? _%owner106062%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner106062%_)
                                (let () (##thread-yield!) (_%again106053%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r106075%_
                 (let ((_%val106068%_
                        (gc-table-ref __object-eq-hash _%obj106048%_ '#f)))
                   (if _%val106068%_
                       _%val106068%_
                       (let ((_%h106070%_
                              (fxand __object-eq-hash (macro-max-fixnum32))))
                         (set! __object-eq-hash-next
                               (let ((_%$e106072%_
                                      (##fx+? __object-eq-hash-next '1)))
                                 (if _%$e106072%_ _%$e106072%_ '0)))
                         (gc-table-set!
                          __object-eq-hash
                          _%obj106048%_
                          _%h106070%_)
                         _%h106070%_)))))
            (##vector-set! __object-eq-hash-lock '1 '#f)
            (##vector-cas! __object-eq-hash-lock '0 '0 '1)
            _%$r106075%_))))))
