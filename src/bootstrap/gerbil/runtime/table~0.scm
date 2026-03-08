(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1773009260)
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
      (lambda (_%obj119479%_)
        (if (##structure? _%obj119479%_)
            (##structure-instance-of? _%obj119479%_ __table::t.id)
            '#f)))
    (define &raw-table-table
      (lambda (_%tab119477%_)
        (##unchecked-structure-ref
         _%tab119477%_
         '1
         __table::t
         'raw-table-table)))
    (define &raw-table-count
      (lambda (_%tab119475%_)
        (##unchecked-structure-ref
         _%tab119475%_
         '2
         __table::t
         'raw-table-count)))
    (define &raw-table-free
      (lambda (_%tab119473%_)
        (##unchecked-structure-ref
         _%tab119473%_
         '3
         __table::t
         'raw-table-free)))
    (define &raw-table-hash
      (lambda (_%tab119471%_)
        (##unchecked-structure-ref
         _%tab119471%_
         '4
         __table::t
         'raw-table-hash)))
    (define &raw-table-test
      (lambda (_%tab119469%_)
        (##unchecked-structure-ref
         _%tab119469%_
         '5
         __table::t
         'raw-table-test)))
    (define &raw-table-seed
      (lambda (_%tab119467%_)
        (##unchecked-structure-ref
         _%tab119467%_
         '6
         __table::t
         'raw-table-seed)))
    (define &raw-table-lock
      (lambda (_%tab119465%_)
        (##unchecked-structure-ref
         _%tab119465%_
         '7
         __table::t
         'raw-table-lock)))
    (define &raw-table-table-set!
      (lambda (_%tab119462%_ _%val119463%_)
        (##unchecked-structure-set!
         _%tab119462%_
         _%val119463%_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_%tab119459%_ _%val119460%_)
        (##unchecked-structure-set!
         _%tab119459%_
         _%val119460%_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_%tab119456%_ _%val119457%_)
        (##unchecked-structure-set!
         _%tab119456%_
         _%val119457%_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_%tab119453%_ _%val119454%_)
        (##unchecked-structure-set!
         _%tab119453%_
         _%val119454%_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_%tab119450%_ _%val119451%_)
        (##unchecked-structure-set!
         _%tab119450%_
         _%val119451%_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_%tab119447%_ _%val119448%_)
        (##unchecked-structure-set!
         _%tab119447%_
         _%val119448%_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define &raw-table-lock-set!
      (lambda (_%tab119444%_ _%val119445%_)
        (##unchecked-structure-set!
         _%tab119444%_
         _%val119445%_
         '7
         __table::t
         'raw-table-lock-set!)))
    (define raw-table-size-hint->size
      (lambda (_%size-hint119442%_)
        (if (and (fixnum? _%size-hint119442%_) (##fx> _%size-hint119442%_ '0))
            (##fx* (fxmax '2 (expt '2 (integer-length _%size-hint119442%_)))
                   '4)
            '16)))
    (define make-raw-table__%
      (lambda (_%size-hint119407%_
               _%hash119408%_
               _%test119409%_
               _%seed119410%_
               _%lock119411%_)
        (let* ((_%size119413%_ (raw-table-size-hint->size _%size-hint119407%_))
               (_%table119415%_
                (##make-vector _%size119413%_ (macro-unused-obj))))
          (##structure
           __table::t
           _%table119415%_
           '0
           (##fxquotient _%size119413%_ '2)
           _%hash119408%_
           _%test119409%_
           _%seed119410%_
           _%lock119411%_))))
    (define make-raw-table__0
      (lambda (_%size-hint119421%_ _%hash119422%_ _%test119423%_)
        (let* ((_%seed119425%_ '0) (_%lock119427%_ '#f))
          (make-raw-table__%
           _%size-hint119421%_
           _%hash119422%_
           _%test119423%_
           _%seed119425%_
           _%lock119427%_))))
    (define make-raw-table__1
      (lambda (_%size-hint119429%_
               _%hash119430%_
               _%test119431%_
               _%seed119432%_)
        (let ((_%lock119434%_ '#f))
          (make-raw-table__%
           _%size-hint119429%_
           _%hash119430%_
           _%test119431%_
           _%seed119432%_
           _%lock119434%_))))
    (define make-raw-table
      (lambda _g119480_
        (let ((_g119481_ (##length _g119480_)))
          (cond ((##fx= _g119481_ 3) (apply make-raw-table__0 _g119480_))
                ((##fx= _g119481_ 4) (apply make-raw-table__1 _g119480_))
                ((##fx= _g119481_ 5) (apply make-raw-table__% _g119480_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g119480_))))))
    (define make-raw-table/lock__%
      (lambda (_%size-hint119387%_
               _%hash119388%_
               _%test119389%_
               _%seed119390%_)
        (make-raw-table__%
         _%size-hint119387%_
         _%hash119388%_
         _%test119389%_
         _%seed119390%_
         (vector '0 '#f))))
    (define make-raw-table/lock__0
      (lambda (_%size-hint119395%_ _%hash119396%_ _%test119397%_)
        (let ((_%seed119399%_ '0))
          (make-raw-table/lock__%
           _%size-hint119395%_
           _%hash119396%_
           _%test119397%_
           _%seed119399%_))))
    (define make-raw-table/lock
      (lambda _g119482_
        (let ((_g119483_ (##length _g119482_)))
          (cond ((##fx= _g119483_ 3) (apply make-raw-table/lock__0 _g119482_))
                ((##fx= _g119483_ 4) (apply make-raw-table/lock__% _g119482_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table/lock
                  _g119482_))))))
    (define raw-table-length
      (lambda (_%tab119384%_) (&raw-table-count _%tab119384%_)))
    (define raw-table-length/lock
      (lambda (_%tab119357%_)
        (let ((_%lock119359%_ (&raw-table-lock _%tab119357%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again119364%_ ((_%spin119367%_ '0))
              (if (##fx= (##vector-cas! _%lock119359%_ '0 '1 '0) '0)
                  (##vector-set! _%lock119359%_ '1 (current-thread))
                  (if (##fx< _%spin119367%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again119364%_ (##fx+ _%spin119367%_ '1)))
                      (let ((_%owner119373%_ (##vector-ref _%lock119359%_ '1)))
                        (if (eq? _%owner119373%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner119373%_)
                                (let () (##thread-yield!) (_%again119364%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r119379%_ (&raw-table-count _%tab119357%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock119359%_ '1 '#f)
                (##vector-cas! _%lock119359%_ '0 '0 '1)))
            _%$r119379%_))))
    (define raw-table-ref
      (lambda (_%tab119309%_ _%key119310%_ _%default119311%_)
        (let ((_%table119313%_ (&raw-table-table _%tab119309%_))
              (_%seed119314%_ (&raw-table-seed _%tab119309%_))
              (_%hash119315%_ (&raw-table-hash _%tab119309%_))
              (_%test119316%_ (&raw-table-test _%tab119309%_)))
          (let* ((_%h119318%_
                  (fxxor (_%hash119315%_ _%key119310%_) _%seed119314%_))
                 (_%size119321%_ (vector-length _%table119313%_))
                 (_%entries119324%_ (##fxquotient _%size119321%_ '2))
                 (_%start119327%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h119318%_ _%entries119324%_)
                   '1)))
            (let _%loop119331%_ ((_%probe119334%_ _%start119327%_)
                                 (_%i119336%_ '1)
                                 (_%deleted119338%_ '#f))
              (let ((_%k119341%_ (vector-ref _%table119313%_ _%probe119334%_)))
                (if (eq? _%k119341%_ (macro-unused-obj))
                    _%default119311%_
                    (if (eq? _%k119341%_ (macro-deleted-obj))
                        (_%loop119331%_
                         (let ((_%next-probe119346%_
                                (fx+ _%start119327%_
                                     _%i119336%_
                                     (fx* _%i119336%_ _%i119336%_))))
                           (##fxmodulo _%next-probe119346%_ _%size119321%_))
                         (##fx+ _%i119336%_ '1)
                         (let ((_%$e119349%_ _%deleted119338%_))
                           (if _%$e119349%_ _%$e119349%_ _%probe119334%_)))
                        (if (_%test119316%_ _%key119310%_ _%k119341%_)
                            (vector-ref
                             _%table119313%_
                             (##fx+ _%probe119334%_ '1))
                            (_%loop119331%_
                             (let ((_%next-probe119354%_
                                    (fx+ _%start119327%_
                                         _%i119336%_
                                         (fx* _%i119336%_ _%i119336%_))))
                               (##fxmodulo
                                _%next-probe119354%_
                                _%size119321%_))
                             (##fx+ _%i119336%_ '1)
                             _%deleted119338%_))))))))))
    (define raw-table-ref/lock
      (lambda (_%tab119280%_ _%key119281%_ _%default119282%_)
        (let ((_%lock119284%_ (&raw-table-lock _%tab119280%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again119289%_ ((_%spin119292%_ '0))
              (if (##fx= (##vector-cas! _%lock119284%_ '0 '1 '0) '0)
                  (##vector-set! _%lock119284%_ '1 (current-thread))
                  (if (##fx< _%spin119292%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again119289%_ (##fx+ _%spin119292%_ '1)))
                      (let ((_%owner119298%_ (##vector-ref _%lock119284%_ '1)))
                        (if (eq? _%owner119298%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner119298%_)
                                (let () (##thread-yield!) (_%again119289%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r119304%_
                 (raw-table-ref
                  _%tab119280%_
                  _%key119281%_
                  _%default119282%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock119284%_ '1 '#f)
                (##vector-cas! _%lock119284%_ '0 '0 '1)))
            _%$r119304%_))))
    (define raw-table-set!
      (lambda (_%tab119276%_ _%key119277%_ _%value119278%_)
        (if (##fx< (&raw-table-free _%tab119276%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab119276%_))
                    '4))
            (__raw-table-rehash! _%tab119276%_)
            '#!void)
        (__raw-table-set! _%tab119276%_ _%key119277%_ _%value119278%_)))
    (define raw-table-set!/lock
      (lambda (_%tab119247%_ _%key119248%_ _%value119249%_)
        (let ((_%lock119251%_ (&raw-table-lock _%tab119247%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again119256%_ ((_%spin119259%_ '0))
              (if (##fx= (##vector-cas! _%lock119251%_ '0 '1 '0) '0)
                  (##vector-set! _%lock119251%_ '1 (current-thread))
                  (if (##fx< _%spin119259%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again119256%_ (##fx+ _%spin119259%_ '1)))
                      (let ((_%owner119265%_ (##vector-ref _%lock119251%_ '1)))
                        (if (eq? _%owner119265%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner119265%_)
                                (let () (##thread-yield!) (_%again119256%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r119271%_
                 (raw-table-set! _%tab119247%_ _%key119248%_ _%value119249%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock119251%_ '1 '#f)
                (##vector-cas! _%lock119251%_ '0 '0 '1)))
            _%$r119271%_))))
    (define raw-table-update!
      (lambda (_%tab119242%_ _%key119243%_ _%update119244%_ _%default119245%_)
        (if (##fx< (&raw-table-free _%tab119242%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab119242%_))
                    '4))
            (__raw-table-rehash! _%tab119242%_)
            '#!void)
        (__raw-table-update!
         _%tab119242%_
         _%key119243%_
         _%update119244%_
         _%default119245%_)))
    (define raw-table-update!/lock
      (lambda (_%tab119212%_ _%key119213%_ _%update119214%_ _%default119215%_)
        (let ((_%lock119217%_ (&raw-table-lock _%tab119212%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again119222%_ ((_%spin119225%_ '0))
              (if (##fx= (##vector-cas! _%lock119217%_ '0 '1 '0) '0)
                  (##vector-set! _%lock119217%_ '1 (current-thread))
                  (if (##fx< _%spin119225%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again119222%_ (##fx+ _%spin119225%_ '1)))
                      (let ((_%owner119231%_ (##vector-ref _%lock119217%_ '1)))
                        (if (eq? _%owner119231%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner119231%_)
                                (let () (##thread-yield!) (_%again119222%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r119237%_
                 (raw-table-update!
                  _%tab119212%_
                  _%key119213%_
                  _%update119214%_
                  _%default119215%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock119217%_ '1 '#f)
                (##vector-cas! _%lock119217%_ '0 '0 '1)))
            _%$r119237%_))))
    (define raw-table-delete!
      (lambda (_%tab119169%_ _%key119170%_)
        (let ((_%table119172%_ (&raw-table-table _%tab119169%_))
              (_%seed119173%_ (&raw-table-seed _%tab119169%_))
              (_%hash119174%_ (&raw-table-hash _%tab119169%_))
              (_%test119175%_ (&raw-table-test _%tab119169%_)))
          (let* ((_%h119177%_
                  (fxxor (_%hash119174%_ _%key119170%_) _%seed119173%_))
                 (_%size119180%_ (vector-length _%table119172%_))
                 (_%entries119183%_ (##fxquotient _%size119180%_ '2))
                 (_%start119186%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h119177%_ _%entries119183%_)
                   '1)))
            (let _%loop119190%_ ((_%probe119193%_ _%start119186%_)
                                 (_%i119195%_ '1))
              (let ((_%k119198%_ (vector-ref _%table119172%_ _%probe119193%_)))
                (if (eq? _%k119198%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k119198%_ (macro-deleted-obj))
                        (_%loop119190%_
                         (let ((_%next-probe119203%_
                                (fx+ _%start119186%_
                                     _%i119195%_
                                     (fx* _%i119195%_ _%i119195%_))))
                           (##fxmodulo _%next-probe119203%_ _%size119180%_))
                         (##fx+ _%i119195%_ '1))
                        (if (_%test119175%_ _%key119170%_ _%k119198%_)
                            (let ()
                              (vector-set!
                               _%table119172%_
                               _%probe119193%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table119172%_
                               (##fx+ _%probe119193%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab119169%_
                                  (##fx- (&raw-table-count _%tab119169%_)
                                         '1)))))
                            (_%loop119190%_
                             (let ((_%next-probe119209%_
                                    (fx+ _%start119186%_
                                         _%i119195%_
                                         (fx* _%i119195%_ _%i119195%_))))
                               (##fxmodulo
                                _%next-probe119209%_
                                _%size119180%_))
                             (##fx+ _%i119195%_ '1)))))))))))
    (define raw-table-delete!/lock
      (lambda (_%tab119141%_ _%key119142%_)
        (let ((_%lock119144%_ (&raw-table-lock _%tab119141%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again119149%_ ((_%spin119152%_ '0))
              (if (##fx= (##vector-cas! _%lock119144%_ '0 '1 '0) '0)
                  (##vector-set! _%lock119144%_ '1 (current-thread))
                  (if (##fx< _%spin119152%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again119149%_ (##fx+ _%spin119152%_ '1)))
                      (let ((_%owner119158%_ (##vector-ref _%lock119144%_ '1)))
                        (if (eq? _%owner119158%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner119158%_)
                                (let () (##thread-yield!) (_%again119149%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r119164%_ (raw-table-delete! _%tab119141%_ _%key119142%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock119144%_ '1 '#f)
                (##vector-cas! _%lock119144%_ '0 '0 '1)))
            _%$r119164%_))))
    (define raw-table-for-each
      (lambda (_%tab119125%_ _%proc119126%_)
        (let* ((_%table119128%_ (&raw-table-table _%tab119125%_))
               (_%size119130%_ (vector-length _%table119128%_)))
          (let _%loop119133%_ ((_%i119135%_ '0))
            (if (##fx< _%i119135%_ _%size119130%_)
                (begin
                  (let ((_%key119137%_
                         (vector-ref _%table119128%_ _%i119135%_)))
                    (if (if (eq? _%key119137%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key119137%_ (macro-deleted-obj))))
                        (let ((_%value119139%_
                               (vector-ref
                                _%table119128%_
                                (##fx+ _%i119135%_ '1))))
                          (_%proc119126%_ _%key119137%_ _%value119139%_))
                        '#!void))
                  (_%loop119133%_ (##fx+ _%i119135%_ '2)))
                '#!void)))))
    (define raw-table-for-each/lock
      (lambda (_%tab119097%_ _%proc119098%_)
        (let ((_%lock119100%_ (&raw-table-lock _%tab119097%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again119105%_ ((_%spin119108%_ '0))
              (if (##fx= (##vector-cas! _%lock119100%_ '0 '1 '0) '0)
                  (##vector-set! _%lock119100%_ '1 (current-thread))
                  (if (##fx< _%spin119108%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again119105%_ (##fx+ _%spin119108%_ '1)))
                      (let ((_%owner119114%_ (##vector-ref _%lock119100%_ '1)))
                        (if (eq? _%owner119114%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner119114%_)
                                (let () (##thread-yield!) (_%again119105%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r119120%_
                 (raw-table-for-each _%tab119097%_ _%proc119098%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock119100%_ '1 '#f)
                (##vector-cas! _%lock119100%_ '0 '0 '1)))
            _%$r119120%_))))
    (define raw-table-copy
      (lambda (_%tab119093%_)
        (let ((_%new-tab119095%_ (##structure-copy _%tab119093%_)))
          (&raw-table-table-set!
           _%new-tab119095%_
           (vector-copy (&raw-table-table _%tab119093%_)))
          _%new-tab119095%_)))
    (define raw-table-copy/lock
      (lambda (_%tab119066%_)
        (let ((_%lock119068%_ (&raw-table-lock _%tab119066%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again119073%_ ((_%spin119076%_ '0))
              (if (##fx= (##vector-cas! _%lock119068%_ '0 '1 '0) '0)
                  (##vector-set! _%lock119068%_ '1 (current-thread))
                  (if (##fx< _%spin119076%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again119073%_ (##fx+ _%spin119076%_ '1)))
                      (let ((_%owner119082%_ (##vector-ref _%lock119068%_ '1)))
                        (if (eq? _%owner119082%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner119082%_)
                                (let () (##thread-yield!) (_%again119073%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r119088%_ (raw-table-copy _%tab119066%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock119068%_ '1 '#f)
                (##vector-cas! _%lock119068%_ '0 '0 '1)))
            _%$r119088%_))))
    (define raw-table-clear!
      (lambda (_%tab119064%_)
        (vector-fill! (&raw-table-table _%tab119064%_) (macro-unused-obj))
        (&raw-table-count-set! _%tab119064%_ '0)
        (&raw-table-free-set!
         _%tab119064%_
         (##fxquotient (vector-length (&raw-table-table _%tab119064%_)) '2))))
    (define raw-table-clear!/lock
      (lambda (_%tab119037%_)
        (let ((_%lock119039%_ (&raw-table-lock _%tab119037%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again119044%_ ((_%spin119047%_ '0))
              (if (##fx= (##vector-cas! _%lock119039%_ '0 '1 '0) '0)
                  (##vector-set! _%lock119039%_ '1 (current-thread))
                  (if (##fx< _%spin119047%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again119044%_ (##fx+ _%spin119047%_ '1)))
                      (let ((_%owner119053%_ (##vector-ref _%lock119039%_ '1)))
                        (if (eq? _%owner119053%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner119053%_)
                                (let () (##thread-yield!) (_%again119044%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r119059%_ (raw-table-clear! _%tab119037%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock119039%_ '1 '#f)
                (##vector-cas! _%lock119039%_ '0 '0 '1)))
            _%$r119059%_))))
    (define __raw-table-set!
      (lambda (_%tab118987%_ _%key118988%_ _%value118989%_)
        (let ((_%table118991%_ (&raw-table-table _%tab118987%_))
              (_%seed118992%_ (&raw-table-seed _%tab118987%_))
              (_%hash118993%_ (&raw-table-hash _%tab118987%_))
              (_%test118994%_ (&raw-table-test _%tab118987%_)))
          (let* ((_%h118996%_
                  (fxxor (_%hash118993%_ _%key118988%_) _%seed118992%_))
                 (_%size118999%_ (vector-length _%table118991%_))
                 (_%entries119002%_ (##fxquotient _%size118999%_ '2))
                 (_%start119005%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h118996%_ _%entries119002%_)
                   '1)))
            (let _%loop119009%_ ((_%probe119012%_ _%start119005%_)
                                 (_%i119014%_ '1)
                                 (_%deleted119016%_ '#f))
              (let ((_%k119019%_ (vector-ref _%table118991%_ _%probe119012%_)))
                (if (eq? _%k119019%_ (macro-unused-obj))
                    (if _%deleted119016%_
                        (begin
                          (vector-set!
                           _%table118991%_
                           _%deleted119016%_
                           _%key118988%_)
                          (vector-set!
                           _%table118991%_
                           (##fx+ _%deleted119016%_ '1)
                           _%value118989%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab118987%_
                              (##fx+ (&raw-table-count _%tab118987%_) '1)))))
                        (begin
                          (vector-set!
                           _%table118991%_
                           _%probe119012%_
                           _%key118988%_)
                          (vector-set!
                           _%table118991%_
                           (##fx+ _%probe119012%_ '1)
                           _%value118989%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab118987%_
                              (##fx- (&raw-table-free _%tab118987%_) '1))
                             (&raw-table-count-set!
                              _%tab118987%_
                              (##fx+ (&raw-table-count _%tab118987%_) '1))))))
                    (if (eq? _%k119019%_ (macro-deleted-obj))
                        (_%loop119009%_
                         (let ((_%next-probe119026%_
                                (fx+ _%start119005%_
                                     _%i119014%_
                                     (fx* _%i119014%_ _%i119014%_))))
                           (##fxmodulo _%next-probe119026%_ _%size118999%_))
                         (##fx+ _%i119014%_ '1)
                         (let ((_%$e119029%_ _%deleted119016%_))
                           (if _%$e119029%_ _%$e119029%_ _%probe119012%_)))
                        (if (_%test118994%_ _%key118988%_ _%k119019%_)
                            (let ()
                              (vector-set!
                               _%table118991%_
                               _%probe119012%_
                               _%key118988%_)
                              (vector-set!
                               _%table118991%_
                               (##fx+ _%probe119012%_ '1)
                               _%value118989%_))
                            (_%loop119009%_
                             (let ((_%next-probe119034%_
                                    (fx+ _%start119005%_
                                         _%i119014%_
                                         (fx* _%i119014%_ _%i119014%_))))
                               (##fxmodulo
                                _%next-probe119034%_
                                _%size118999%_))
                             (##fx+ _%i119014%_ '1)
                             _%deleted119016%_))))))))))
    (define __raw-table-update!
      (lambda (_%tab118936%_ _%key118937%_ _%update118938%_ _%default118939%_)
        (let ((_%table118941%_ (&raw-table-table _%tab118936%_))
              (_%seed118942%_ (&raw-table-seed _%tab118936%_))
              (_%hash118943%_ (&raw-table-hash _%tab118936%_))
              (_%test118944%_ (&raw-table-test _%tab118936%_)))
          (let* ((_%h118946%_
                  (fxxor (_%hash118943%_ _%key118937%_) _%seed118942%_))
                 (_%size118949%_ (vector-length _%table118941%_))
                 (_%entries118952%_ (##fxquotient _%size118949%_ '2))
                 (_%start118955%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h118946%_ _%entries118952%_)
                   '1)))
            (let _%loop118959%_ ((_%probe118962%_ _%start118955%_)
                                 (_%i118964%_ '1)
                                 (_%deleted118966%_ '#f))
              (let ((_%k118969%_ (vector-ref _%table118941%_ _%probe118962%_)))
                (if (eq? _%k118969%_ (macro-unused-obj))
                    (if _%deleted118966%_
                        (begin
                          (vector-set!
                           _%table118941%_
                           _%deleted118966%_
                           _%key118937%_)
                          (vector-set!
                           _%table118941%_
                           (##fx+ _%deleted118966%_ '1)
                           (_%update118938%_ _%default118939%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab118936%_
                              (##fx+ (&raw-table-count _%tab118936%_) '1)))))
                        (begin
                          (vector-set!
                           _%table118941%_
                           _%probe118962%_
                           _%key118937%_)
                          (vector-set!
                           _%table118941%_
                           (##fx+ _%probe118962%_ '1)
                           (_%update118938%_ _%default118939%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab118936%_
                              (##fx- (&raw-table-free _%tab118936%_) '1))
                             (&raw-table-count-set!
                              _%tab118936%_
                              (##fx+ (&raw-table-count _%tab118936%_) '1))))))
                    (if (eq? _%k118969%_ (macro-deleted-obj))
                        (_%loop118959%_
                         (let ((_%next-probe118976%_
                                (fx+ _%start118955%_
                                     _%i118964%_
                                     (fx* _%i118964%_ _%i118964%_))))
                           (##fxmodulo _%next-probe118976%_ _%size118949%_))
                         (##fx+ _%i118964%_ '1)
                         (let ((_%$e118979%_ _%deleted118966%_))
                           (if _%$e118979%_ _%$e118979%_ _%probe118962%_)))
                        (if (_%test118944%_ _%key118937%_ _%k118969%_)
                            (let ()
                              (vector-set!
                               _%table118941%_
                               _%probe118962%_
                               _%key118937%_)
                              (vector-set!
                               _%table118941%_
                               (##fx+ _%probe118962%_ '1)
                               (_%update118938%_
                                (vector-ref
                                 _%table118941%_
                                 (##fx+ _%probe118962%_ '1)))))
                            (_%loop118959%_
                             (let ((_%next-probe118984%_
                                    (fx+ _%start118955%_
                                         _%i118964%_
                                         (fx* _%i118964%_ _%i118964%_))))
                               (##fxmodulo
                                _%next-probe118984%_
                                _%size118949%_))
                             (##fx+ _%i118964%_ '1)
                             _%deleted118966%_))))))))))
    (define __raw-table-rehash!
      (lambda (_%tab118917%_)
        (let* ((_%old-table118919%_ (&raw-table-table _%tab118917%_))
               (_%old-size118921%_ (vector-length _%old-table118919%_))
               (_%new-size118923%_
                (if (##fx< (&raw-table-count _%tab118917%_)
                           (##fxquotient _%old-size118921%_ '4))
                    (vector-length _%old-table118919%_)
                    (##fx* '2 (vector-length _%old-table118919%_))))
               (_%new-table118925%_
                (##make-vector _%new-size118923%_ (macro-unused-obj))))
          (&raw-table-table-set! _%tab118917%_ _%new-table118925%_)
          (&raw-table-count-set! _%tab118917%_ '0)
          (&raw-table-free-set!
           _%tab118917%_
           (##fxquotient _%new-size118923%_ '2))
          (let _%lp118928%_ ((_%i118930%_ '0))
            (if (##fx< _%i118930%_ _%old-size118921%_)
                (begin
                  (let ((_%key118932%_
                         (vector-ref _%old-table118919%_ _%i118930%_)))
                    (if (if (eq? _%key118932%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key118932%_ (macro-deleted-obj))))
                        (let ((_%value118934%_
                               (vector-ref
                                _%old-table118919%_
                                (##fx+ _%i118930%_ '1))))
                          (__raw-table-set!
                           _%tab118917%_
                           _%key118932%_
                           _%value118934%_))
                        '#!void))
                  (_%lp118928%_ (##fx+ _%i118930%_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_%obj118909%_)
        (let ((_%t118911%_ (##type _%obj118909%_)))
          (if (##fx= (##fxand _%t118911%_ '1) '0)
              (fxand (##type-cast _%obj118909%_ (macro-type-fixnum))
                     (macro-max-fixnum32))
              (if (symbolic? _%obj118909%_)
                  (##symbol-hash _%obj118909%_)
                  (if (procedure? _%obj118909%_)
                      (procedure-hash _%obj118909%_)
                      (fxand (__object->eq-hash _%obj118909%_)
                             (macro-max-fixnum32))))))))
    (define procedure-hash
      (lambda (_%obj118905%_)
        (let ((_%h118907%_
               (if (##closure? _%obj118905%_)
                   (__object->eq-hash _%obj118905%_)
                   (##type-cast _%obj118905%_ '0))))
          (fxand _%h118907%_ (macro-max-fixnum32)))))
    (define __eq-hash
      (lambda (_%obj118903%_) (__object->eq-hash _%obj118903%_)))
    (define eqv-hash
      (lambda (_%obj118893%_)
        (letrec ((_%combine118895%_
                  (lambda (_%a118900%_ _%b118901%_)
                    (fxand (##fx* (##fx+ _%a118900%_
                                         (fxarithmetic-shift-left
                                          _%b118901%_
                                          '1))
                                  '331804471)
                           (macro-max-fixnum32))))
                 (_%hash118896%_
                  (lambda (_%obj118898%_)
                    (macro-number-dispatch
                     _%obj118898%_
                     (eq-hash _%obj118898%_)
                     (fxand _%obj118898%_ (macro-max-fixnum32))
                     (modulo _%obj118898%_ '331804481)
                     (_%combine118895%_
                      (_%hash118896%_ (macro-ratnum-numerator _%obj118898%_))
                      (_%hash118896%_
                       (macro-ratnum-denominator _%obj118898%_)))
                     (_%combine118895%_
                      (##u16vector-ref _%obj118898%_ '0)
                      (_%combine118895%_
                       (##u16vector-ref _%obj118898%_ '1)
                       (_%combine118895%_
                        (##u16vector-ref _%obj118898%_ '2)
                        (##u16vector-ref _%obj118898%_ '3))))
                     (_%combine118895%_
                      (_%hash118896%_ (macro-cpxnum-real _%obj118898%_))
                      (_%hash118896%_ (macro-cpxnum-imag _%obj118898%_)))))))
          (_%hash118896%_ _%obj118893%_))))
    (define symbolic?
      (lambda (_%obj118888%_)
        (let ((_%$e118890%_ (symbol? _%obj118888%_)))
          (if _%$e118890%_ _%$e118890%_ (keyword? _%obj118888%_)))))
    (define symbolic-hash
      (lambda (_%obj118886%_) (##symbol-hash _%obj118886%_)))
    (define string-hash
      (lambda (_%obj118884%_) (##string=?-hash _%obj118884%_)))
    (define immediate-hash
      (lambda (_%obj118882%_) (##type-cast _%obj118882%_ (macro-type-fixnum))))
    (define make-eq-table__%
      (lambda (_%size-hint118864%_ _%seed118865%_)
        (make-raw-table__1 _%size-hint118864%_ eq-hash eq? _%seed118865%_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_%size-hint118871%_ '#f) (_%seed118873%_ '0))
          (make-eq-table__% _%size-hint118871%_ _%seed118873%_))))
    (define make-eq-table__1
      (lambda (_%size-hint118875%_)
        (let ((_%seed118877%_ '0))
          (make-eq-table__% _%size-hint118875%_ _%seed118877%_))))
    (define make-eq-table
      (lambda _g119484_
        (let ((_g119485_ (##length _g119484_)))
          (cond ((##fx= _g119485_ 0) (apply make-eq-table__0 _g119484_))
                ((##fx= _g119485_ 1) (apply make-eq-table__1 _g119484_))
                ((##fx= _g119485_ 2) (apply make-eq-table__% _g119484_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g119484_))))))
    (define make-eq-table/lock__%
      (lambda (_%size-hint118844%_ _%seed118846%_)
        (make-raw-table/lock__%
         _%size-hint118844%_
         eq-hash
         eq?
         _%seed118846%_)))
    (define make-eq-table/lock__0
      (lambda ()
        (let* ((_%size-hint118852%_ '#f) (_%seed118854%_ '0))
          (make-eq-table/lock__% _%size-hint118852%_ _%seed118854%_))))
    (define make-eq-table/lock__1
      (lambda (_%size-hint118856%_)
        (let ((_%seed118858%_ '0))
          (make-eq-table/lock__% _%size-hint118856%_ _%seed118858%_))))
    (define make-eq-table/lock
      (lambda _g119486_
        (let ((_g119487_ (##length _g119486_)))
          (cond ((##fx= _g119487_ 0) (apply make-eq-table/lock__0 _g119486_))
                ((##fx= _g119487_ 1) (apply make-eq-table/lock__1 _g119486_))
                ((##fx= _g119487_ 2) (apply make-eq-table/lock__% _g119486_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table/lock
                  _g119486_))))))
    (define eq-table-ref
      (lambda (_%tab118797%_ _%key118798%_ _%default118799%_)
        (let ((_%table118801%_ (&raw-table-table _%tab118797%_))
              (_%seed118802%_ (&raw-table-seed _%tab118797%_)))
          (let* ((_%h118804%_ (fxxor (eq-hash _%key118798%_) _%seed118802%_))
                 (_%size118807%_ (vector-length _%table118801%_))
                 (_%entries118810%_ (##fxquotient _%size118807%_ '2))
                 (_%start118813%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h118804%_ _%entries118810%_)
                   '1)))
            (let _%loop118817%_ ((_%probe118820%_ _%start118813%_)
                                 (_%i118822%_ '1)
                                 (_%deleted118824%_ '#f))
              (let ((_%k118827%_ (vector-ref _%table118801%_ _%probe118820%_)))
                (if (eq? _%k118827%_ (macro-unused-obj))
                    _%default118799%_
                    (if (eq? _%k118827%_ (macro-deleted-obj))
                        (_%loop118817%_
                         (let ((_%next-probe118832%_
                                (fx+ _%start118813%_
                                     _%i118822%_
                                     (fx* _%i118822%_ _%i118822%_))))
                           (##fxmodulo _%next-probe118832%_ _%size118807%_))
                         (##fx+ _%i118822%_ '1)
                         (let ((_%$e118835%_ _%deleted118824%_))
                           (if _%$e118835%_ _%$e118835%_ _%probe118820%_)))
                        (if (eq? _%key118798%_ _%k118827%_)
                            (vector-ref
                             _%table118801%_
                             (##fx+ _%probe118820%_ '1))
                            (_%loop118817%_
                             (let ((_%next-probe118840%_
                                    (fx+ _%start118813%_
                                         _%i118822%_
                                         (fx* _%i118822%_ _%i118822%_))))
                               (##fxmodulo
                                _%next-probe118840%_
                                _%size118807%_))
                             (##fx+ _%i118822%_ '1)
                             _%deleted118824%_))))))))))
    (define eq-table-ref/lock
      (lambda (_%tab118768%_ _%key118769%_ _%default118770%_)
        (let ((_%lock118772%_ (&raw-table-lock _%tab118768%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118777%_ ((_%spin118780%_ '0))
              (if (##fx= (##vector-cas! _%lock118772%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118772%_ '1 (current-thread))
                  (if (##fx< _%spin118780%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118777%_ (##fx+ _%spin118780%_ '1)))
                      (let ((_%owner118786%_ (##vector-ref _%lock118772%_ '1)))
                        (if (eq? _%owner118786%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118786%_)
                                (let () (##thread-yield!) (_%again118777%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118792%_
                 (eq-table-ref _%tab118768%_ _%key118769%_ _%default118770%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118772%_ '1 '#f)
                (##vector-cas! _%lock118772%_ '0 '0 '1)))
            _%$r118792%_))))
    (define __eq-table-set!
      (lambda (_%tab118720%_ _%key118721%_ _%value118722%_)
        (let ((_%table118724%_ (&raw-table-table _%tab118720%_))
              (_%seed118725%_ (&raw-table-seed _%tab118720%_)))
          (let* ((_%h118727%_ (fxxor (eq-hash _%key118721%_) _%seed118725%_))
                 (_%size118730%_ (vector-length _%table118724%_))
                 (_%entries118733%_ (##fxquotient _%size118730%_ '2))
                 (_%start118736%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h118727%_ _%entries118733%_)
                   '1)))
            (let _%loop118740%_ ((_%probe118743%_ _%start118736%_)
                                 (_%i118745%_ '1)
                                 (_%deleted118747%_ '#f))
              (let ((_%k118750%_ (vector-ref _%table118724%_ _%probe118743%_)))
                (if (eq? _%k118750%_ (macro-unused-obj))
                    (if _%deleted118747%_
                        (begin
                          (vector-set!
                           _%table118724%_
                           _%deleted118747%_
                           _%key118721%_)
                          (vector-set!
                           _%table118724%_
                           (##fx+ _%deleted118747%_ '1)
                           _%value118722%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab118720%_
                              (##fx+ (&raw-table-count _%tab118720%_) '1)))))
                        (begin
                          (vector-set!
                           _%table118724%_
                           _%probe118743%_
                           _%key118721%_)
                          (vector-set!
                           _%table118724%_
                           (##fx+ _%probe118743%_ '1)
                           _%value118722%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab118720%_
                              (##fx- (&raw-table-free _%tab118720%_) '1))
                             (&raw-table-count-set!
                              _%tab118720%_
                              (##fx+ (&raw-table-count _%tab118720%_) '1))))))
                    (if (eq? _%k118750%_ (macro-deleted-obj))
                        (_%loop118740%_
                         (let ((_%next-probe118757%_
                                (fx+ _%start118736%_
                                     _%i118745%_
                                     (fx* _%i118745%_ _%i118745%_))))
                           (##fxmodulo _%next-probe118757%_ _%size118730%_))
                         (##fx+ _%i118745%_ '1)
                         (let ((_%$e118760%_ _%deleted118747%_))
                           (if _%$e118760%_ _%$e118760%_ _%probe118743%_)))
                        (if (eq? _%key118721%_ _%k118750%_)
                            (let ()
                              (vector-set!
                               _%table118724%_
                               _%probe118743%_
                               _%key118721%_)
                              (vector-set!
                               _%table118724%_
                               (##fx+ _%probe118743%_ '1)
                               _%value118722%_))
                            (_%loop118740%_
                             (let ((_%next-probe118765%_
                                    (fx+ _%start118736%_
                                         _%i118745%_
                                         (fx* _%i118745%_ _%i118745%_))))
                               (##fxmodulo
                                _%next-probe118765%_
                                _%size118730%_))
                             (##fx+ _%i118745%_ '1)
                             _%deleted118747%_))))))))))
    (define eq-table-set!
      (lambda (_%tab118716%_ _%key118717%_ _%value118718%_)
        (if (##fx< (&raw-table-free _%tab118716%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab118716%_))
                    '4))
            (__raw-table-rehash! _%tab118716%_)
            '#!void)
        (__eq-table-set! _%tab118716%_ _%key118717%_ _%value118718%_)))
    (define eq-table-set!/lock
      (lambda (_%tab118686%_ _%key118687%_ _%value118688%_)
        (let ((_%lock118691%_ (&raw-table-lock _%tab118686%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118696%_ ((_%spin118699%_ '0))
              (if (##fx= (##vector-cas! _%lock118691%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118691%_ '1 (current-thread))
                  (if (##fx< _%spin118699%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118696%_ (##fx+ _%spin118699%_ '1)))
                      (let ((_%owner118705%_ (##vector-ref _%lock118691%_ '1)))
                        (if (eq? _%owner118705%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118705%_)
                                (let () (##thread-yield!) (_%again118696%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118711%_
                 (eq-table-set! _%tab118686%_ _%key118687%_ _%value118688%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118691%_ '1 '#f)
                (##vector-cas! _%lock118691%_ '0 '0 '1)))
            _%$r118711%_))))
    (define __eq-table-update!
      (lambda (_%tab118637%_
               _%key118638%_
               _%eq-table-update!118639%_
               _%default118640%_)
        (let ((_%table118642%_ (&raw-table-table _%tab118637%_))
              (_%seed118643%_ (&raw-table-seed _%tab118637%_)))
          (let* ((_%h118645%_ (fxxor (eq-hash _%key118638%_) _%seed118643%_))
                 (_%size118648%_ (vector-length _%table118642%_))
                 (_%entries118651%_ (##fxquotient _%size118648%_ '2))
                 (_%start118654%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h118645%_ _%entries118651%_)
                   '1)))
            (let _%loop118658%_ ((_%probe118661%_ _%start118654%_)
                                 (_%i118663%_ '1)
                                 (_%deleted118665%_ '#f))
              (let ((_%k118668%_ (vector-ref _%table118642%_ _%probe118661%_)))
                (if (eq? _%k118668%_ (macro-unused-obj))
                    (if _%deleted118665%_
                        (begin
                          (vector-set!
                           _%table118642%_
                           _%deleted118665%_
                           _%key118638%_)
                          (vector-set!
                           _%table118642%_
                           (##fx+ _%deleted118665%_ '1)
                           (_%eq-table-update!118639%_ _%default118640%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab118637%_
                              (##fx+ (&raw-table-count _%tab118637%_) '1)))))
                        (begin
                          (vector-set!
                           _%table118642%_
                           _%probe118661%_
                           _%key118638%_)
                          (vector-set!
                           _%table118642%_
                           (##fx+ _%probe118661%_ '1)
                           (_%eq-table-update!118639%_ _%default118640%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab118637%_
                              (##fx- (&raw-table-free _%tab118637%_) '1))
                             (&raw-table-count-set!
                              _%tab118637%_
                              (##fx+ (&raw-table-count _%tab118637%_) '1))))))
                    (if (eq? _%k118668%_ (macro-deleted-obj))
                        (_%loop118658%_
                         (let ((_%next-probe118675%_
                                (fx+ _%start118654%_
                                     _%i118663%_
                                     (fx* _%i118663%_ _%i118663%_))))
                           (##fxmodulo _%next-probe118675%_ _%size118648%_))
                         (##fx+ _%i118663%_ '1)
                         (let ((_%$e118678%_ _%deleted118665%_))
                           (if _%$e118678%_ _%$e118678%_ _%probe118661%_)))
                        (if (eq? _%key118638%_ _%k118668%_)
                            (let ()
                              (vector-set!
                               _%table118642%_
                               _%probe118661%_
                               _%key118638%_)
                              (vector-set!
                               _%table118642%_
                               (##fx+ _%probe118661%_ '1)
                               (_%eq-table-update!118639%_
                                (vector-ref
                                 _%table118642%_
                                 (##fx+ _%probe118661%_ '1)))))
                            (_%loop118658%_
                             (let ((_%next-probe118683%_
                                    (fx+ _%start118654%_
                                         _%i118663%_
                                         (fx* _%i118663%_ _%i118663%_))))
                               (##fxmodulo
                                _%next-probe118683%_
                                _%size118648%_))
                             (##fx+ _%i118663%_ '1)
                             _%deleted118665%_))))))))))
    (define eq-table-update!
      (lambda (_%tab118632%_
               _%key118633%_
               _%eq-table-update!118634%_
               _%default118635%_)
        (if (##fx< (&raw-table-free _%tab118632%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab118632%_))
                    '4))
            (__raw-table-rehash! _%tab118632%_)
            '#!void)
        (__eq-table-update!
         _%tab118632%_
         _%key118633%_
         _%eq-table-update!118634%_
         _%default118635%_)))
    (define eq-table-update!/lock
      (lambda (_%tab118601%_
               _%key118602%_
               _%eq-table-update!118603%_
               _%default118604%_)
        (let ((_%lock118607%_ (&raw-table-lock _%tab118601%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118612%_ ((_%spin118615%_ '0))
              (if (##fx= (##vector-cas! _%lock118607%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118607%_ '1 (current-thread))
                  (if (##fx< _%spin118615%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118612%_ (##fx+ _%spin118615%_ '1)))
                      (let ((_%owner118621%_ (##vector-ref _%lock118607%_ '1)))
                        (if (eq? _%owner118621%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118621%_)
                                (let () (##thread-yield!) (_%again118612%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118627%_
                 (_%eq-table-update!118603%_
                  _%tab118601%_
                  _%key118602%_
                  _%eq-table-update!118603%_
                  _%default118604%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118607%_ '1 '#f)
                (##vector-cas! _%lock118607%_ '0 '0 '1)))
            _%$r118627%_))))
    (define eq-table-delete!
      (lambda (_%tab118558%_ _%key118559%_)
        (let ((_%table118561%_ (&raw-table-table _%tab118558%_))
              (_%seed118563%_ (&raw-table-seed _%tab118558%_)))
          (let* ((_%h118566%_ (fxxor (eq-hash _%key118559%_) _%seed118563%_))
                 (_%size118569%_ (vector-length _%table118561%_))
                 (_%entries118572%_ (##fxquotient _%size118569%_ '2))
                 (_%start118575%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h118566%_ _%entries118572%_)
                   '1)))
            (let _%loop118579%_ ((_%probe118582%_ _%start118575%_)
                                 (_%i118584%_ '1))
              (let ((_%k118587%_ (vector-ref _%table118561%_ _%probe118582%_)))
                (if (eq? _%k118587%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k118587%_ (macro-deleted-obj))
                        (_%loop118579%_
                         (let ((_%next-probe118592%_
                                (fx+ _%start118575%_
                                     _%i118584%_
                                     (fx* _%i118584%_ _%i118584%_))))
                           (##fxmodulo _%next-probe118592%_ _%size118569%_))
                         (##fx+ _%i118584%_ '1))
                        (if (eq? _%key118559%_ _%k118587%_)
                            (let ()
                              (vector-set!
                               _%table118561%_
                               _%probe118582%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table118561%_
                               (##fx+ _%probe118582%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab118558%_
                                  (##fx- (&raw-table-count _%tab118558%_)
                                         '1)))))
                            (_%loop118579%_
                             (let ((_%next-probe118598%_
                                    (fx+ _%start118575%_
                                         _%i118584%_
                                         (fx* _%i118584%_ _%i118584%_))))
                               (##fxmodulo
                                _%next-probe118598%_
                                _%size118569%_))
                             (##fx+ _%i118584%_ '1)))))))))))
    (define eq-table-delete!/lock
      (lambda (_%tab118528%_ _%key118530%_)
        (let ((_%lock118533%_ (&raw-table-lock _%tab118528%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118538%_ ((_%spin118541%_ '0))
              (if (##fx= (##vector-cas! _%lock118533%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118533%_ '1 (current-thread))
                  (if (##fx< _%spin118541%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118538%_ (##fx+ _%spin118541%_ '1)))
                      (let ((_%owner118547%_ (##vector-ref _%lock118533%_ '1)))
                        (if (eq? _%owner118547%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118547%_)
                                (let () (##thread-yield!) (_%again118538%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118553%_ (eq-table-delete! _%tab118528%_ _%key118530%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118533%_ '1 '#f)
                (##vector-cas! _%lock118533%_ '0 '0 '1)))
            _%$r118553%_))))
    (define make-eqv-table__%
      (lambda (_%size-hint118510%_ _%seed118511%_)
        (make-raw-table__1 _%size-hint118510%_ eqv-hash eqv? _%seed118511%_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_%size-hint118517%_ '#f) (_%seed118519%_ '0))
          (make-eqv-table__% _%size-hint118517%_ _%seed118519%_))))
    (define make-eqv-table__1
      (lambda (_%size-hint118521%_)
        (let ((_%seed118523%_ '0))
          (make-eqv-table__% _%size-hint118521%_ _%seed118523%_))))
    (define make-eqv-table
      (lambda _g119488_
        (let ((_g119489_ (##length _g119488_)))
          (cond ((##fx= _g119489_ 0) (apply make-eqv-table__0 _g119488_))
                ((##fx= _g119489_ 1) (apply make-eqv-table__1 _g119488_))
                ((##fx= _g119489_ 2) (apply make-eqv-table__% _g119488_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g119488_))))))
    (define make-eqv-table/lock__%
      (lambda (_%size-hint118490%_ _%seed118492%_)
        (make-raw-table/lock__%
         _%size-hint118490%_
         eqv-hash
         eqv?
         _%seed118492%_)))
    (define make-eqv-table/lock__0
      (lambda ()
        (let* ((_%size-hint118498%_ '#f) (_%seed118500%_ '0))
          (make-eqv-table/lock__% _%size-hint118498%_ _%seed118500%_))))
    (define make-eqv-table/lock__1
      (lambda (_%size-hint118502%_)
        (let ((_%seed118504%_ '0))
          (make-eqv-table/lock__% _%size-hint118502%_ _%seed118504%_))))
    (define make-eqv-table/lock
      (lambda _g119490_
        (let ((_g119491_ (##length _g119490_)))
          (cond ((##fx= _g119491_ 0) (apply make-eqv-table/lock__0 _g119490_))
                ((##fx= _g119491_ 1) (apply make-eqv-table/lock__1 _g119490_))
                ((##fx= _g119491_ 2) (apply make-eqv-table/lock__% _g119490_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table/lock
                  _g119490_))))))
    (define eqv-table-ref
      (lambda (_%tab118443%_ _%key118444%_ _%default118445%_)
        (let ((_%table118447%_ (&raw-table-table _%tab118443%_))
              (_%seed118448%_ (&raw-table-seed _%tab118443%_)))
          (let* ((_%h118450%_ (fxxor (eqv-hash _%key118444%_) _%seed118448%_))
                 (_%size118453%_ (vector-length _%table118447%_))
                 (_%entries118456%_ (##fxquotient _%size118453%_ '2))
                 (_%start118459%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h118450%_ _%entries118456%_)
                   '1)))
            (let _%loop118463%_ ((_%probe118466%_ _%start118459%_)
                                 (_%i118468%_ '1)
                                 (_%deleted118470%_ '#f))
              (let ((_%k118473%_ (vector-ref _%table118447%_ _%probe118466%_)))
                (if (eq? _%k118473%_ (macro-unused-obj))
                    _%default118445%_
                    (if (eq? _%k118473%_ (macro-deleted-obj))
                        (_%loop118463%_
                         (let ((_%next-probe118478%_
                                (fx+ _%start118459%_
                                     _%i118468%_
                                     (fx* _%i118468%_ _%i118468%_))))
                           (##fxmodulo _%next-probe118478%_ _%size118453%_))
                         (##fx+ _%i118468%_ '1)
                         (let ((_%$e118481%_ _%deleted118470%_))
                           (if _%$e118481%_ _%$e118481%_ _%probe118466%_)))
                        (if (eqv? _%key118444%_ _%k118473%_)
                            (vector-ref
                             _%table118447%_
                             (##fx+ _%probe118466%_ '1))
                            (_%loop118463%_
                             (let ((_%next-probe118486%_
                                    (fx+ _%start118459%_
                                         _%i118468%_
                                         (fx* _%i118468%_ _%i118468%_))))
                               (##fxmodulo
                                _%next-probe118486%_
                                _%size118453%_))
                             (##fx+ _%i118468%_ '1)
                             _%deleted118470%_))))))))))
    (define eqv-table-ref/lock
      (lambda (_%tab118414%_ _%key118415%_ _%default118416%_)
        (let ((_%lock118418%_ (&raw-table-lock _%tab118414%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118423%_ ((_%spin118426%_ '0))
              (if (##fx= (##vector-cas! _%lock118418%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118418%_ '1 (current-thread))
                  (if (##fx< _%spin118426%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118423%_ (##fx+ _%spin118426%_ '1)))
                      (let ((_%owner118432%_ (##vector-ref _%lock118418%_ '1)))
                        (if (eq? _%owner118432%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118432%_)
                                (let () (##thread-yield!) (_%again118423%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118438%_
                 (eqv-table-ref
                  _%tab118414%_
                  _%key118415%_
                  _%default118416%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118418%_ '1 '#f)
                (##vector-cas! _%lock118418%_ '0 '0 '1)))
            _%$r118438%_))))
    (define __eqv-table-set!
      (lambda (_%tab118366%_ _%key118367%_ _%value118368%_)
        (let ((_%table118370%_ (&raw-table-table _%tab118366%_))
              (_%seed118371%_ (&raw-table-seed _%tab118366%_)))
          (let* ((_%h118373%_ (fxxor (eqv-hash _%key118367%_) _%seed118371%_))
                 (_%size118376%_ (vector-length _%table118370%_))
                 (_%entries118379%_ (##fxquotient _%size118376%_ '2))
                 (_%start118382%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h118373%_ _%entries118379%_)
                   '1)))
            (let _%loop118386%_ ((_%probe118389%_ _%start118382%_)
                                 (_%i118391%_ '1)
                                 (_%deleted118393%_ '#f))
              (let ((_%k118396%_ (vector-ref _%table118370%_ _%probe118389%_)))
                (if (eq? _%k118396%_ (macro-unused-obj))
                    (if _%deleted118393%_
                        (begin
                          (vector-set!
                           _%table118370%_
                           _%deleted118393%_
                           _%key118367%_)
                          (vector-set!
                           _%table118370%_
                           (##fx+ _%deleted118393%_ '1)
                           _%value118368%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab118366%_
                              (##fx+ (&raw-table-count _%tab118366%_) '1)))))
                        (begin
                          (vector-set!
                           _%table118370%_
                           _%probe118389%_
                           _%key118367%_)
                          (vector-set!
                           _%table118370%_
                           (##fx+ _%probe118389%_ '1)
                           _%value118368%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab118366%_
                              (##fx- (&raw-table-free _%tab118366%_) '1))
                             (&raw-table-count-set!
                              _%tab118366%_
                              (##fx+ (&raw-table-count _%tab118366%_) '1))))))
                    (if (eq? _%k118396%_ (macro-deleted-obj))
                        (_%loop118386%_
                         (let ((_%next-probe118403%_
                                (fx+ _%start118382%_
                                     _%i118391%_
                                     (fx* _%i118391%_ _%i118391%_))))
                           (##fxmodulo _%next-probe118403%_ _%size118376%_))
                         (##fx+ _%i118391%_ '1)
                         (let ((_%$e118406%_ _%deleted118393%_))
                           (if _%$e118406%_ _%$e118406%_ _%probe118389%_)))
                        (if (eqv? _%key118367%_ _%k118396%_)
                            (let ()
                              (vector-set!
                               _%table118370%_
                               _%probe118389%_
                               _%key118367%_)
                              (vector-set!
                               _%table118370%_
                               (##fx+ _%probe118389%_ '1)
                               _%value118368%_))
                            (_%loop118386%_
                             (let ((_%next-probe118411%_
                                    (fx+ _%start118382%_
                                         _%i118391%_
                                         (fx* _%i118391%_ _%i118391%_))))
                               (##fxmodulo
                                _%next-probe118411%_
                                _%size118376%_))
                             (##fx+ _%i118391%_ '1)
                             _%deleted118393%_))))))))))
    (define eqv-table-set!
      (lambda (_%tab118362%_ _%key118363%_ _%value118364%_)
        (if (##fx< (&raw-table-free _%tab118362%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab118362%_))
                    '4))
            (__raw-table-rehash! _%tab118362%_)
            '#!void)
        (__eqv-table-set! _%tab118362%_ _%key118363%_ _%value118364%_)))
    (define eqv-table-set!/lock
      (lambda (_%tab118332%_ _%key118333%_ _%value118334%_)
        (let ((_%lock118337%_ (&raw-table-lock _%tab118332%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118342%_ ((_%spin118345%_ '0))
              (if (##fx= (##vector-cas! _%lock118337%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118337%_ '1 (current-thread))
                  (if (##fx< _%spin118345%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118342%_ (##fx+ _%spin118345%_ '1)))
                      (let ((_%owner118351%_ (##vector-ref _%lock118337%_ '1)))
                        (if (eq? _%owner118351%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118351%_)
                                (let () (##thread-yield!) (_%again118342%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118357%_
                 (eqv-table-set! _%tab118332%_ _%key118333%_ _%value118334%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118337%_ '1 '#f)
                (##vector-cas! _%lock118337%_ '0 '0 '1)))
            _%$r118357%_))))
    (define __eqv-table-update!
      (lambda (_%tab118283%_
               _%key118284%_
               _%eqv-table-update!118285%_
               _%default118286%_)
        (let ((_%table118288%_ (&raw-table-table _%tab118283%_))
              (_%seed118289%_ (&raw-table-seed _%tab118283%_)))
          (let* ((_%h118291%_ (fxxor (eqv-hash _%key118284%_) _%seed118289%_))
                 (_%size118294%_ (vector-length _%table118288%_))
                 (_%entries118297%_ (##fxquotient _%size118294%_ '2))
                 (_%start118300%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h118291%_ _%entries118297%_)
                   '1)))
            (let _%loop118304%_ ((_%probe118307%_ _%start118300%_)
                                 (_%i118309%_ '1)
                                 (_%deleted118311%_ '#f))
              (let ((_%k118314%_ (vector-ref _%table118288%_ _%probe118307%_)))
                (if (eq? _%k118314%_ (macro-unused-obj))
                    (if _%deleted118311%_
                        (begin
                          (vector-set!
                           _%table118288%_
                           _%deleted118311%_
                           _%key118284%_)
                          (vector-set!
                           _%table118288%_
                           (##fx+ _%deleted118311%_ '1)
                           (_%eqv-table-update!118285%_ _%default118286%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab118283%_
                              (##fx+ (&raw-table-count _%tab118283%_) '1)))))
                        (begin
                          (vector-set!
                           _%table118288%_
                           _%probe118307%_
                           _%key118284%_)
                          (vector-set!
                           _%table118288%_
                           (##fx+ _%probe118307%_ '1)
                           (_%eqv-table-update!118285%_ _%default118286%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab118283%_
                              (##fx- (&raw-table-free _%tab118283%_) '1))
                             (&raw-table-count-set!
                              _%tab118283%_
                              (##fx+ (&raw-table-count _%tab118283%_) '1))))))
                    (if (eq? _%k118314%_ (macro-deleted-obj))
                        (_%loop118304%_
                         (let ((_%next-probe118321%_
                                (fx+ _%start118300%_
                                     _%i118309%_
                                     (fx* _%i118309%_ _%i118309%_))))
                           (##fxmodulo _%next-probe118321%_ _%size118294%_))
                         (##fx+ _%i118309%_ '1)
                         (let ((_%$e118324%_ _%deleted118311%_))
                           (if _%$e118324%_ _%$e118324%_ _%probe118307%_)))
                        (if (eqv? _%key118284%_ _%k118314%_)
                            (let ()
                              (vector-set!
                               _%table118288%_
                               _%probe118307%_
                               _%key118284%_)
                              (vector-set!
                               _%table118288%_
                               (##fx+ _%probe118307%_ '1)
                               (_%eqv-table-update!118285%_
                                (vector-ref
                                 _%table118288%_
                                 (##fx+ _%probe118307%_ '1)))))
                            (_%loop118304%_
                             (let ((_%next-probe118329%_
                                    (fx+ _%start118300%_
                                         _%i118309%_
                                         (fx* _%i118309%_ _%i118309%_))))
                               (##fxmodulo
                                _%next-probe118329%_
                                _%size118294%_))
                             (##fx+ _%i118309%_ '1)
                             _%deleted118311%_))))))))))
    (define eqv-table-update!
      (lambda (_%tab118278%_
               _%key118279%_
               _%eqv-table-update!118280%_
               _%default118281%_)
        (if (##fx< (&raw-table-free _%tab118278%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab118278%_))
                    '4))
            (__raw-table-rehash! _%tab118278%_)
            '#!void)
        (__eqv-table-update!
         _%tab118278%_
         _%key118279%_
         _%eqv-table-update!118280%_
         _%default118281%_)))
    (define eqv-table-update!/lock
      (lambda (_%tab118247%_
               _%key118248%_
               _%eqv-table-update!118249%_
               _%default118250%_)
        (let ((_%lock118253%_ (&raw-table-lock _%tab118247%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118258%_ ((_%spin118261%_ '0))
              (if (##fx= (##vector-cas! _%lock118253%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118253%_ '1 (current-thread))
                  (if (##fx< _%spin118261%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118258%_ (##fx+ _%spin118261%_ '1)))
                      (let ((_%owner118267%_ (##vector-ref _%lock118253%_ '1)))
                        (if (eq? _%owner118267%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118267%_)
                                (let () (##thread-yield!) (_%again118258%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118273%_
                 (_%eqv-table-update!118249%_
                  _%tab118247%_
                  _%key118248%_
                  _%eqv-table-update!118249%_
                  _%default118250%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118253%_ '1 '#f)
                (##vector-cas! _%lock118253%_ '0 '0 '1)))
            _%$r118273%_))))
    (define eqv-table-delete!
      (lambda (_%tab118204%_ _%key118205%_)
        (let ((_%table118207%_ (&raw-table-table _%tab118204%_))
              (_%seed118209%_ (&raw-table-seed _%tab118204%_)))
          (let* ((_%h118212%_ (fxxor (eqv-hash _%key118205%_) _%seed118209%_))
                 (_%size118215%_ (vector-length _%table118207%_))
                 (_%entries118218%_ (##fxquotient _%size118215%_ '2))
                 (_%start118221%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h118212%_ _%entries118218%_)
                   '1)))
            (let _%loop118225%_ ((_%probe118228%_ _%start118221%_)
                                 (_%i118230%_ '1))
              (let ((_%k118233%_ (vector-ref _%table118207%_ _%probe118228%_)))
                (if (eq? _%k118233%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k118233%_ (macro-deleted-obj))
                        (_%loop118225%_
                         (let ((_%next-probe118238%_
                                (fx+ _%start118221%_
                                     _%i118230%_
                                     (fx* _%i118230%_ _%i118230%_))))
                           (##fxmodulo _%next-probe118238%_ _%size118215%_))
                         (##fx+ _%i118230%_ '1))
                        (if (eqv? _%key118205%_ _%k118233%_)
                            (let ()
                              (vector-set!
                               _%table118207%_
                               _%probe118228%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table118207%_
                               (##fx+ _%probe118228%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab118204%_
                                  (##fx- (&raw-table-count _%tab118204%_)
                                         '1)))))
                            (_%loop118225%_
                             (let ((_%next-probe118244%_
                                    (fx+ _%start118221%_
                                         _%i118230%_
                                         (fx* _%i118230%_ _%i118230%_))))
                               (##fxmodulo
                                _%next-probe118244%_
                                _%size118215%_))
                             (##fx+ _%i118230%_ '1)))))))))))
    (define eqv-table-delete!/lock
      (lambda (_%tab118174%_ _%key118176%_)
        (let ((_%lock118179%_ (&raw-table-lock _%tab118174%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118184%_ ((_%spin118187%_ '0))
              (if (##fx= (##vector-cas! _%lock118179%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118179%_ '1 (current-thread))
                  (if (##fx< _%spin118187%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118184%_ (##fx+ _%spin118187%_ '1)))
                      (let ((_%owner118193%_ (##vector-ref _%lock118179%_ '1)))
                        (if (eq? _%owner118193%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118193%_)
                                (let () (##thread-yield!) (_%again118184%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118199%_ (eqv-table-delete! _%tab118174%_ _%key118176%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118179%_ '1 '#f)
                (##vector-cas! _%lock118179%_ '0 '0 '1)))
            _%$r118199%_))))
    (define make-symbolic-table__%
      (lambda (_%size-hint118156%_ _%seed118157%_)
        (make-raw-table__1
         _%size-hint118156%_
         symbolic-hash
         eq?
         _%seed118157%_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_%size-hint118163%_ '#f) (_%seed118165%_ '0))
          (make-symbolic-table__% _%size-hint118163%_ _%seed118165%_))))
    (define make-symbolic-table__1
      (lambda (_%size-hint118167%_)
        (let ((_%seed118169%_ '0))
          (make-symbolic-table__% _%size-hint118167%_ _%seed118169%_))))
    (define make-symbolic-table
      (lambda _g119492_
        (let ((_g119493_ (##length _g119492_)))
          (cond ((##fx= _g119493_ 0) (apply make-symbolic-table__0 _g119492_))
                ((##fx= _g119493_ 1) (apply make-symbolic-table__1 _g119492_))
                ((##fx= _g119493_ 2) (apply make-symbolic-table__% _g119492_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g119492_))))))
    (define make-symbolic-table/lock__%
      (lambda (_%size-hint118136%_ _%seed118138%_)
        (make-raw-table/lock__%
         _%size-hint118136%_
         symbolic-hash
         eq?
         _%seed118138%_)))
    (define make-symbolic-table/lock__0
      (lambda ()
        (let* ((_%size-hint118144%_ '#f) (_%seed118146%_ '0))
          (make-symbolic-table/lock__% _%size-hint118144%_ _%seed118146%_))))
    (define make-symbolic-table/lock__1
      (lambda (_%size-hint118148%_)
        (let ((_%seed118150%_ '0))
          (make-symbolic-table/lock__% _%size-hint118148%_ _%seed118150%_))))
    (define make-symbolic-table/lock
      (lambda _g119494_
        (let ((_g119495_ (##length _g119494_)))
          (cond ((##fx= _g119495_ 0)
                 (apply make-symbolic-table/lock__0 _g119494_))
                ((##fx= _g119495_ 1)
                 (apply make-symbolic-table/lock__1 _g119494_))
                ((##fx= _g119495_ 2)
                 (apply make-symbolic-table/lock__% _g119494_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table/lock
                  _g119494_))))))
    (define symbolic-table-ref
      (lambda (_%tab118089%_ _%key118090%_ _%default118091%_)
        (let ((_%table118093%_ (&raw-table-table _%tab118089%_))
              (_%seed118094%_ (&raw-table-seed _%tab118089%_)))
          (let* ((_%h118096%_
                  (fxxor (##symbol-hash _%key118090%_) _%seed118094%_))
                 (_%size118099%_ (vector-length _%table118093%_))
                 (_%entries118102%_ (##fxquotient _%size118099%_ '2))
                 (_%start118105%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h118096%_ _%entries118102%_)
                   '1)))
            (let _%loop118109%_ ((_%probe118112%_ _%start118105%_)
                                 (_%i118114%_ '1)
                                 (_%deleted118116%_ '#f))
              (let ((_%k118119%_ (vector-ref _%table118093%_ _%probe118112%_)))
                (if (eq? _%k118119%_ (macro-unused-obj))
                    _%default118091%_
                    (if (eq? _%k118119%_ (macro-deleted-obj))
                        (_%loop118109%_
                         (let ((_%next-probe118124%_
                                (fx+ _%start118105%_
                                     _%i118114%_
                                     (fx* _%i118114%_ _%i118114%_))))
                           (##fxmodulo _%next-probe118124%_ _%size118099%_))
                         (##fx+ _%i118114%_ '1)
                         (let ((_%$e118127%_ _%deleted118116%_))
                           (if _%$e118127%_ _%$e118127%_ _%probe118112%_)))
                        (if (eq? _%key118090%_ _%k118119%_)
                            (vector-ref
                             _%table118093%_
                             (##fx+ _%probe118112%_ '1))
                            (_%loop118109%_
                             (let ((_%next-probe118132%_
                                    (fx+ _%start118105%_
                                         _%i118114%_
                                         (fx* _%i118114%_ _%i118114%_))))
                               (##fxmodulo
                                _%next-probe118132%_
                                _%size118099%_))
                             (##fx+ _%i118114%_ '1)
                             _%deleted118116%_))))))))))
    (define symbolic-table-ref/lock
      (lambda (_%tab118060%_ _%key118061%_ _%default118062%_)
        (let ((_%lock118064%_ (&raw-table-lock _%tab118060%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118069%_ ((_%spin118072%_ '0))
              (if (##fx= (##vector-cas! _%lock118064%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118064%_ '1 (current-thread))
                  (if (##fx< _%spin118072%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118069%_ (##fx+ _%spin118072%_ '1)))
                      (let ((_%owner118078%_ (##vector-ref _%lock118064%_ '1)))
                        (if (eq? _%owner118078%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118078%_)
                                (let () (##thread-yield!) (_%again118069%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118084%_
                 (symbolic-table-ref
                  _%tab118060%_
                  _%key118061%_
                  _%default118062%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118064%_ '1 '#f)
                (##vector-cas! _%lock118064%_ '0 '0 '1)))
            _%$r118084%_))))
    (define __symbolic-table-set!
      (lambda (_%tab118012%_ _%key118013%_ _%value118014%_)
        (let ((_%table118016%_ (&raw-table-table _%tab118012%_))
              (_%seed118017%_ (&raw-table-seed _%tab118012%_)))
          (let* ((_%h118019%_
                  (fxxor (##symbol-hash _%key118013%_) _%seed118017%_))
                 (_%size118022%_ (vector-length _%table118016%_))
                 (_%entries118025%_ (##fxquotient _%size118022%_ '2))
                 (_%start118028%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h118019%_ _%entries118025%_)
                   '1)))
            (let _%loop118032%_ ((_%probe118035%_ _%start118028%_)
                                 (_%i118037%_ '1)
                                 (_%deleted118039%_ '#f))
              (let ((_%k118042%_ (vector-ref _%table118016%_ _%probe118035%_)))
                (if (eq? _%k118042%_ (macro-unused-obj))
                    (if _%deleted118039%_
                        (begin
                          (vector-set!
                           _%table118016%_
                           _%deleted118039%_
                           _%key118013%_)
                          (vector-set!
                           _%table118016%_
                           (##fx+ _%deleted118039%_ '1)
                           _%value118014%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab118012%_
                              (##fx+ (&raw-table-count _%tab118012%_) '1)))))
                        (begin
                          (vector-set!
                           _%table118016%_
                           _%probe118035%_
                           _%key118013%_)
                          (vector-set!
                           _%table118016%_
                           (##fx+ _%probe118035%_ '1)
                           _%value118014%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab118012%_
                              (##fx- (&raw-table-free _%tab118012%_) '1))
                             (&raw-table-count-set!
                              _%tab118012%_
                              (##fx+ (&raw-table-count _%tab118012%_) '1))))))
                    (if (eq? _%k118042%_ (macro-deleted-obj))
                        (_%loop118032%_
                         (let ((_%next-probe118049%_
                                (fx+ _%start118028%_
                                     _%i118037%_
                                     (fx* _%i118037%_ _%i118037%_))))
                           (##fxmodulo _%next-probe118049%_ _%size118022%_))
                         (##fx+ _%i118037%_ '1)
                         (let ((_%$e118052%_ _%deleted118039%_))
                           (if _%$e118052%_ _%$e118052%_ _%probe118035%_)))
                        (if (eq? _%key118013%_ _%k118042%_)
                            (let ()
                              (vector-set!
                               _%table118016%_
                               _%probe118035%_
                               _%key118013%_)
                              (vector-set!
                               _%table118016%_
                               (##fx+ _%probe118035%_ '1)
                               _%value118014%_))
                            (_%loop118032%_
                             (let ((_%next-probe118057%_
                                    (fx+ _%start118028%_
                                         _%i118037%_
                                         (fx* _%i118037%_ _%i118037%_))))
                               (##fxmodulo
                                _%next-probe118057%_
                                _%size118022%_))
                             (##fx+ _%i118037%_ '1)
                             _%deleted118039%_))))))))))
    (define symbolic-table-set!
      (lambda (_%tab118008%_ _%key118009%_ _%value118010%_)
        (if (##fx< (&raw-table-free _%tab118008%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab118008%_))
                    '4))
            (__raw-table-rehash! _%tab118008%_)
            '#!void)
        (__symbolic-table-set! _%tab118008%_ _%key118009%_ _%value118010%_)))
    (define symbolic-table-set!/lock
      (lambda (_%tab117978%_ _%key117979%_ _%value117980%_)
        (let ((_%lock117983%_ (&raw-table-lock _%tab117978%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again117988%_ ((_%spin117991%_ '0))
              (if (##fx= (##vector-cas! _%lock117983%_ '0 '1 '0) '0)
                  (##vector-set! _%lock117983%_ '1 (current-thread))
                  (if (##fx< _%spin117991%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again117988%_ (##fx+ _%spin117991%_ '1)))
                      (let ((_%owner117997%_ (##vector-ref _%lock117983%_ '1)))
                        (if (eq? _%owner117997%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner117997%_)
                                (let () (##thread-yield!) (_%again117988%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118003%_
                 (symbolic-table-set!
                  _%tab117978%_
                  _%key117979%_
                  _%value117980%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock117983%_ '1 '#f)
                (##vector-cas! _%lock117983%_ '0 '0 '1)))
            _%$r118003%_))))
    (define __symbolic-table-update!
      (lambda (_%tab117929%_
               _%key117930%_
               _%symbolic-table-update!117931%_
               _%default117932%_)
        (let ((_%table117934%_ (&raw-table-table _%tab117929%_))
              (_%seed117935%_ (&raw-table-seed _%tab117929%_)))
          (let* ((_%h117937%_
                  (fxxor (##symbol-hash _%key117930%_) _%seed117935%_))
                 (_%size117940%_ (vector-length _%table117934%_))
                 (_%entries117943%_ (##fxquotient _%size117940%_ '2))
                 (_%start117946%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h117937%_ _%entries117943%_)
                   '1)))
            (let _%loop117950%_ ((_%probe117953%_ _%start117946%_)
                                 (_%i117955%_ '1)
                                 (_%deleted117957%_ '#f))
              (let ((_%k117960%_ (vector-ref _%table117934%_ _%probe117953%_)))
                (if (eq? _%k117960%_ (macro-unused-obj))
                    (if _%deleted117957%_
                        (begin
                          (vector-set!
                           _%table117934%_
                           _%deleted117957%_
                           _%key117930%_)
                          (vector-set!
                           _%table117934%_
                           (##fx+ _%deleted117957%_ '1)
                           (_%symbolic-table-update!117931%_
                            _%default117932%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab117929%_
                              (##fx+ (&raw-table-count _%tab117929%_) '1)))))
                        (begin
                          (vector-set!
                           _%table117934%_
                           _%probe117953%_
                           _%key117930%_)
                          (vector-set!
                           _%table117934%_
                           (##fx+ _%probe117953%_ '1)
                           (_%symbolic-table-update!117931%_
                            _%default117932%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab117929%_
                              (##fx- (&raw-table-free _%tab117929%_) '1))
                             (&raw-table-count-set!
                              _%tab117929%_
                              (##fx+ (&raw-table-count _%tab117929%_) '1))))))
                    (if (eq? _%k117960%_ (macro-deleted-obj))
                        (_%loop117950%_
                         (let ((_%next-probe117967%_
                                (fx+ _%start117946%_
                                     _%i117955%_
                                     (fx* _%i117955%_ _%i117955%_))))
                           (##fxmodulo _%next-probe117967%_ _%size117940%_))
                         (##fx+ _%i117955%_ '1)
                         (let ((_%$e117970%_ _%deleted117957%_))
                           (if _%$e117970%_ _%$e117970%_ _%probe117953%_)))
                        (if (eq? _%key117930%_ _%k117960%_)
                            (let ()
                              (vector-set!
                               _%table117934%_
                               _%probe117953%_
                               _%key117930%_)
                              (vector-set!
                               _%table117934%_
                               (##fx+ _%probe117953%_ '1)
                               (_%symbolic-table-update!117931%_
                                (vector-ref
                                 _%table117934%_
                                 (##fx+ _%probe117953%_ '1)))))
                            (_%loop117950%_
                             (let ((_%next-probe117975%_
                                    (fx+ _%start117946%_
                                         _%i117955%_
                                         (fx* _%i117955%_ _%i117955%_))))
                               (##fxmodulo
                                _%next-probe117975%_
                                _%size117940%_))
                             (##fx+ _%i117955%_ '1)
                             _%deleted117957%_))))))))))
    (define symbolic-table-update!
      (lambda (_%tab117924%_
               _%key117925%_
               _%symbolic-table-update!117926%_
               _%default117927%_)
        (if (##fx< (&raw-table-free _%tab117924%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab117924%_))
                    '4))
            (__raw-table-rehash! _%tab117924%_)
            '#!void)
        (__symbolic-table-update!
         _%tab117924%_
         _%key117925%_
         _%symbolic-table-update!117926%_
         _%default117927%_)))
    (define symbolic-table-update!/lock
      (lambda (_%tab117893%_
               _%key117894%_
               _%symbolic-table-update!117895%_
               _%default117896%_)
        (let ((_%lock117899%_ (&raw-table-lock _%tab117893%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again117904%_ ((_%spin117907%_ '0))
              (if (##fx= (##vector-cas! _%lock117899%_ '0 '1 '0) '0)
                  (##vector-set! _%lock117899%_ '1 (current-thread))
                  (if (##fx< _%spin117907%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again117904%_ (##fx+ _%spin117907%_ '1)))
                      (let ((_%owner117913%_ (##vector-ref _%lock117899%_ '1)))
                        (if (eq? _%owner117913%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner117913%_)
                                (let () (##thread-yield!) (_%again117904%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r117919%_
                 (_%symbolic-table-update!117895%_
                  _%tab117893%_
                  _%key117894%_
                  _%symbolic-table-update!117895%_
                  _%default117896%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock117899%_ '1 '#f)
                (##vector-cas! _%lock117899%_ '0 '0 '1)))
            _%$r117919%_))))
    (define symbolic-table-delete!
      (lambda (_%tab117850%_ _%key117851%_)
        (let ((_%table117853%_ (&raw-table-table _%tab117850%_))
              (_%seed117855%_ (&raw-table-seed _%tab117850%_)))
          (let* ((_%h117858%_
                  (fxxor (##symbol-hash _%key117851%_) _%seed117855%_))
                 (_%size117861%_ (vector-length _%table117853%_))
                 (_%entries117864%_ (##fxquotient _%size117861%_ '2))
                 (_%start117867%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h117858%_ _%entries117864%_)
                   '1)))
            (let _%loop117871%_ ((_%probe117874%_ _%start117867%_)
                                 (_%i117876%_ '1))
              (let ((_%k117879%_ (vector-ref _%table117853%_ _%probe117874%_)))
                (if (eq? _%k117879%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k117879%_ (macro-deleted-obj))
                        (_%loop117871%_
                         (let ((_%next-probe117884%_
                                (fx+ _%start117867%_
                                     _%i117876%_
                                     (fx* _%i117876%_ _%i117876%_))))
                           (##fxmodulo _%next-probe117884%_ _%size117861%_))
                         (##fx+ _%i117876%_ '1))
                        (if (eq? _%key117851%_ _%k117879%_)
                            (let ()
                              (vector-set!
                               _%table117853%_
                               _%probe117874%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table117853%_
                               (##fx+ _%probe117874%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab117850%_
                                  (##fx- (&raw-table-count _%tab117850%_)
                                         '1)))))
                            (_%loop117871%_
                             (let ((_%next-probe117890%_
                                    (fx+ _%start117867%_
                                         _%i117876%_
                                         (fx* _%i117876%_ _%i117876%_))))
                               (##fxmodulo
                                _%next-probe117890%_
                                _%size117861%_))
                             (##fx+ _%i117876%_ '1)))))))))))
    (define symbolic-table-delete!/lock
      (lambda (_%tab117820%_ _%key117822%_)
        (let ((_%lock117825%_ (&raw-table-lock _%tab117820%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again117830%_ ((_%spin117833%_ '0))
              (if (##fx= (##vector-cas! _%lock117825%_ '0 '1 '0) '0)
                  (##vector-set! _%lock117825%_ '1 (current-thread))
                  (if (##fx< _%spin117833%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again117830%_ (##fx+ _%spin117833%_ '1)))
                      (let ((_%owner117839%_ (##vector-ref _%lock117825%_ '1)))
                        (if (eq? _%owner117839%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner117839%_)
                                (let () (##thread-yield!) (_%again117830%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r117845%_
                 (symbolic-table-delete! _%tab117820%_ _%key117822%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock117825%_ '1 '#f)
                (##vector-cas! _%lock117825%_ '0 '0 '1)))
            _%$r117845%_))))
    (define make-string-table__%
      (lambda (_%size-hint117802%_ _%seed117803%_)
        (make-raw-table__1
         _%size-hint117802%_
         string-hash
         ##string=?
         _%seed117803%_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_%size-hint117809%_ '#f) (_%seed117811%_ '0))
          (make-string-table__% _%size-hint117809%_ _%seed117811%_))))
    (define make-string-table__1
      (lambda (_%size-hint117813%_)
        (let ((_%seed117815%_ '0))
          (make-string-table__% _%size-hint117813%_ _%seed117815%_))))
    (define make-string-table
      (lambda _g119496_
        (let ((_g119497_ (##length _g119496_)))
          (cond ((##fx= _g119497_ 0) (apply make-string-table__0 _g119496_))
                ((##fx= _g119497_ 1) (apply make-string-table__1 _g119496_))
                ((##fx= _g119497_ 2) (apply make-string-table__% _g119496_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g119496_))))))
    (define make-string-table/lock__%
      (lambda (_%size-hint117782%_ _%seed117784%_)
        (make-raw-table/lock__%
         _%size-hint117782%_
         string-hash
         ##string=?
         _%seed117784%_)))
    (define make-string-table/lock__0
      (lambda ()
        (let* ((_%size-hint117790%_ '#f) (_%seed117792%_ '0))
          (make-string-table/lock__% _%size-hint117790%_ _%seed117792%_))))
    (define make-string-table/lock__1
      (lambda (_%size-hint117794%_)
        (let ((_%seed117796%_ '0))
          (make-string-table/lock__% _%size-hint117794%_ _%seed117796%_))))
    (define make-string-table/lock
      (lambda _g119498_
        (let ((_g119499_ (##length _g119498_)))
          (cond ((##fx= _g119499_ 0)
                 (apply make-string-table/lock__0 _g119498_))
                ((##fx= _g119499_ 1)
                 (apply make-string-table/lock__1 _g119498_))
                ((##fx= _g119499_ 2)
                 (apply make-string-table/lock__% _g119498_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table/lock
                  _g119498_))))))
    (define string-table-ref
      (lambda (_%tab117735%_ _%key117736%_ _%default117737%_)
        (let ((_%table117739%_ (&raw-table-table _%tab117735%_))
              (_%seed117740%_ (&raw-table-seed _%tab117735%_)))
          (let* ((_%h117742%_
                  (fxxor (##string=?-hash _%key117736%_) _%seed117740%_))
                 (_%size117745%_ (vector-length _%table117739%_))
                 (_%entries117748%_ (##fxquotient _%size117745%_ '2))
                 (_%start117751%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h117742%_ _%entries117748%_)
                   '1)))
            (let _%loop117755%_ ((_%probe117758%_ _%start117751%_)
                                 (_%i117760%_ '1)
                                 (_%deleted117762%_ '#f))
              (let ((_%k117765%_ (vector-ref _%table117739%_ _%probe117758%_)))
                (if (eq? _%k117765%_ (macro-unused-obj))
                    _%default117737%_
                    (if (eq? _%k117765%_ (macro-deleted-obj))
                        (_%loop117755%_
                         (let ((_%next-probe117770%_
                                (fx+ _%start117751%_
                                     _%i117760%_
                                     (fx* _%i117760%_ _%i117760%_))))
                           (##fxmodulo _%next-probe117770%_ _%size117745%_))
                         (##fx+ _%i117760%_ '1)
                         (let ((_%$e117773%_ _%deleted117762%_))
                           (if _%$e117773%_ _%$e117773%_ _%probe117758%_)))
                        (if (##string=? _%key117736%_ _%k117765%_)
                            (vector-ref
                             _%table117739%_
                             (##fx+ _%probe117758%_ '1))
                            (_%loop117755%_
                             (let ((_%next-probe117778%_
                                    (fx+ _%start117751%_
                                         _%i117760%_
                                         (fx* _%i117760%_ _%i117760%_))))
                               (##fxmodulo
                                _%next-probe117778%_
                                _%size117745%_))
                             (##fx+ _%i117760%_ '1)
                             _%deleted117762%_))))))))))
    (define string-table-ref/lock
      (lambda (_%tab117706%_ _%key117707%_ _%default117708%_)
        (let ((_%lock117710%_ (&raw-table-lock _%tab117706%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again117715%_ ((_%spin117718%_ '0))
              (if (##fx= (##vector-cas! _%lock117710%_ '0 '1 '0) '0)
                  (##vector-set! _%lock117710%_ '1 (current-thread))
                  (if (##fx< _%spin117718%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again117715%_ (##fx+ _%spin117718%_ '1)))
                      (let ((_%owner117724%_ (##vector-ref _%lock117710%_ '1)))
                        (if (eq? _%owner117724%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner117724%_)
                                (let () (##thread-yield!) (_%again117715%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r117730%_
                 (string-table-ref
                  _%tab117706%_
                  _%key117707%_
                  _%default117708%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock117710%_ '1 '#f)
                (##vector-cas! _%lock117710%_ '0 '0 '1)))
            _%$r117730%_))))
    (define __string-table-set!
      (lambda (_%tab117658%_ _%key117659%_ _%value117660%_)
        (let ((_%table117662%_ (&raw-table-table _%tab117658%_))
              (_%seed117663%_ (&raw-table-seed _%tab117658%_)))
          (let* ((_%h117665%_
                  (fxxor (##string=?-hash _%key117659%_) _%seed117663%_))
                 (_%size117668%_ (vector-length _%table117662%_))
                 (_%entries117671%_ (##fxquotient _%size117668%_ '2))
                 (_%start117674%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h117665%_ _%entries117671%_)
                   '1)))
            (let _%loop117678%_ ((_%probe117681%_ _%start117674%_)
                                 (_%i117683%_ '1)
                                 (_%deleted117685%_ '#f))
              (let ((_%k117688%_ (vector-ref _%table117662%_ _%probe117681%_)))
                (if (eq? _%k117688%_ (macro-unused-obj))
                    (if _%deleted117685%_
                        (begin
                          (vector-set!
                           _%table117662%_
                           _%deleted117685%_
                           _%key117659%_)
                          (vector-set!
                           _%table117662%_
                           (##fx+ _%deleted117685%_ '1)
                           _%value117660%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab117658%_
                              (##fx+ (&raw-table-count _%tab117658%_) '1)))))
                        (begin
                          (vector-set!
                           _%table117662%_
                           _%probe117681%_
                           _%key117659%_)
                          (vector-set!
                           _%table117662%_
                           (##fx+ _%probe117681%_ '1)
                           _%value117660%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab117658%_
                              (##fx- (&raw-table-free _%tab117658%_) '1))
                             (&raw-table-count-set!
                              _%tab117658%_
                              (##fx+ (&raw-table-count _%tab117658%_) '1))))))
                    (if (eq? _%k117688%_ (macro-deleted-obj))
                        (_%loop117678%_
                         (let ((_%next-probe117695%_
                                (fx+ _%start117674%_
                                     _%i117683%_
                                     (fx* _%i117683%_ _%i117683%_))))
                           (##fxmodulo _%next-probe117695%_ _%size117668%_))
                         (##fx+ _%i117683%_ '1)
                         (let ((_%$e117698%_ _%deleted117685%_))
                           (if _%$e117698%_ _%$e117698%_ _%probe117681%_)))
                        (if (##string=? _%key117659%_ _%k117688%_)
                            (let ()
                              (vector-set!
                               _%table117662%_
                               _%probe117681%_
                               _%key117659%_)
                              (vector-set!
                               _%table117662%_
                               (##fx+ _%probe117681%_ '1)
                               _%value117660%_))
                            (_%loop117678%_
                             (let ((_%next-probe117703%_
                                    (fx+ _%start117674%_
                                         _%i117683%_
                                         (fx* _%i117683%_ _%i117683%_))))
                               (##fxmodulo
                                _%next-probe117703%_
                                _%size117668%_))
                             (##fx+ _%i117683%_ '1)
                             _%deleted117685%_))))))))))
    (define string-table-set!
      (lambda (_%tab117654%_ _%key117655%_ _%value117656%_)
        (if (##fx< (&raw-table-free _%tab117654%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab117654%_))
                    '4))
            (__raw-table-rehash! _%tab117654%_)
            '#!void)
        (__string-table-set! _%tab117654%_ _%key117655%_ _%value117656%_)))
    (define string-table-set!/lock
      (lambda (_%tab117624%_ _%key117625%_ _%value117626%_)
        (let ((_%lock117629%_ (&raw-table-lock _%tab117624%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again117634%_ ((_%spin117637%_ '0))
              (if (##fx= (##vector-cas! _%lock117629%_ '0 '1 '0) '0)
                  (##vector-set! _%lock117629%_ '1 (current-thread))
                  (if (##fx< _%spin117637%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again117634%_ (##fx+ _%spin117637%_ '1)))
                      (let ((_%owner117643%_ (##vector-ref _%lock117629%_ '1)))
                        (if (eq? _%owner117643%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner117643%_)
                                (let () (##thread-yield!) (_%again117634%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r117649%_
                 (string-table-set!
                  _%tab117624%_
                  _%key117625%_
                  _%value117626%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock117629%_ '1 '#f)
                (##vector-cas! _%lock117629%_ '0 '0 '1)))
            _%$r117649%_))))
    (define __string-table-update!
      (lambda (_%tab117575%_
               _%key117576%_
               _%string-table-update!117577%_
               _%default117578%_)
        (let ((_%table117580%_ (&raw-table-table _%tab117575%_))
              (_%seed117581%_ (&raw-table-seed _%tab117575%_)))
          (let* ((_%h117583%_
                  (fxxor (##string=?-hash _%key117576%_) _%seed117581%_))
                 (_%size117586%_ (vector-length _%table117580%_))
                 (_%entries117589%_ (##fxquotient _%size117586%_ '2))
                 (_%start117592%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h117583%_ _%entries117589%_)
                   '1)))
            (let _%loop117596%_ ((_%probe117599%_ _%start117592%_)
                                 (_%i117601%_ '1)
                                 (_%deleted117603%_ '#f))
              (let ((_%k117606%_ (vector-ref _%table117580%_ _%probe117599%_)))
                (if (eq? _%k117606%_ (macro-unused-obj))
                    (if _%deleted117603%_
                        (begin
                          (vector-set!
                           _%table117580%_
                           _%deleted117603%_
                           _%key117576%_)
                          (vector-set!
                           _%table117580%_
                           (##fx+ _%deleted117603%_ '1)
                           (_%string-table-update!117577%_ _%default117578%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab117575%_
                              (##fx+ (&raw-table-count _%tab117575%_) '1)))))
                        (begin
                          (vector-set!
                           _%table117580%_
                           _%probe117599%_
                           _%key117576%_)
                          (vector-set!
                           _%table117580%_
                           (##fx+ _%probe117599%_ '1)
                           (_%string-table-update!117577%_ _%default117578%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab117575%_
                              (##fx- (&raw-table-free _%tab117575%_) '1))
                             (&raw-table-count-set!
                              _%tab117575%_
                              (##fx+ (&raw-table-count _%tab117575%_) '1))))))
                    (if (eq? _%k117606%_ (macro-deleted-obj))
                        (_%loop117596%_
                         (let ((_%next-probe117613%_
                                (fx+ _%start117592%_
                                     _%i117601%_
                                     (fx* _%i117601%_ _%i117601%_))))
                           (##fxmodulo _%next-probe117613%_ _%size117586%_))
                         (##fx+ _%i117601%_ '1)
                         (let ((_%$e117616%_ _%deleted117603%_))
                           (if _%$e117616%_ _%$e117616%_ _%probe117599%_)))
                        (if (##string=? _%key117576%_ _%k117606%_)
                            (let ()
                              (vector-set!
                               _%table117580%_
                               _%probe117599%_
                               _%key117576%_)
                              (vector-set!
                               _%table117580%_
                               (##fx+ _%probe117599%_ '1)
                               (_%string-table-update!117577%_
                                (vector-ref
                                 _%table117580%_
                                 (##fx+ _%probe117599%_ '1)))))
                            (_%loop117596%_
                             (let ((_%next-probe117621%_
                                    (fx+ _%start117592%_
                                         _%i117601%_
                                         (fx* _%i117601%_ _%i117601%_))))
                               (##fxmodulo
                                _%next-probe117621%_
                                _%size117586%_))
                             (##fx+ _%i117601%_ '1)
                             _%deleted117603%_))))))))))
    (define string-table-update!
      (lambda (_%tab117570%_
               _%key117571%_
               _%string-table-update!117572%_
               _%default117573%_)
        (if (##fx< (&raw-table-free _%tab117570%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab117570%_))
                    '4))
            (__raw-table-rehash! _%tab117570%_)
            '#!void)
        (__string-table-update!
         _%tab117570%_
         _%key117571%_
         _%string-table-update!117572%_
         _%default117573%_)))
    (define string-table-update!/lock
      (lambda (_%tab117539%_
               _%key117540%_
               _%string-table-update!117541%_
               _%default117542%_)
        (let ((_%lock117545%_ (&raw-table-lock _%tab117539%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again117550%_ ((_%spin117553%_ '0))
              (if (##fx= (##vector-cas! _%lock117545%_ '0 '1 '0) '0)
                  (##vector-set! _%lock117545%_ '1 (current-thread))
                  (if (##fx< _%spin117553%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again117550%_ (##fx+ _%spin117553%_ '1)))
                      (let ((_%owner117559%_ (##vector-ref _%lock117545%_ '1)))
                        (if (eq? _%owner117559%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner117559%_)
                                (let () (##thread-yield!) (_%again117550%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r117565%_
                 (_%string-table-update!117541%_
                  _%tab117539%_
                  _%key117540%_
                  _%string-table-update!117541%_
                  _%default117542%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock117545%_ '1 '#f)
                (##vector-cas! _%lock117545%_ '0 '0 '1)))
            _%$r117565%_))))
    (define string-table-delete!
      (lambda (_%tab117496%_ _%key117497%_)
        (let ((_%table117499%_ (&raw-table-table _%tab117496%_))
              (_%seed117501%_ (&raw-table-seed _%tab117496%_)))
          (let* ((_%h117504%_
                  (fxxor (##string=?-hash _%key117497%_) _%seed117501%_))
                 (_%size117507%_ (vector-length _%table117499%_))
                 (_%entries117510%_ (##fxquotient _%size117507%_ '2))
                 (_%start117513%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h117504%_ _%entries117510%_)
                   '1)))
            (let _%loop117517%_ ((_%probe117520%_ _%start117513%_)
                                 (_%i117522%_ '1))
              (let ((_%k117525%_ (vector-ref _%table117499%_ _%probe117520%_)))
                (if (eq? _%k117525%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k117525%_ (macro-deleted-obj))
                        (_%loop117517%_
                         (let ((_%next-probe117530%_
                                (fx+ _%start117513%_
                                     _%i117522%_
                                     (fx* _%i117522%_ _%i117522%_))))
                           (##fxmodulo _%next-probe117530%_ _%size117507%_))
                         (##fx+ _%i117522%_ '1))
                        (if (##string=? _%key117497%_ _%k117525%_)
                            (let ()
                              (vector-set!
                               _%table117499%_
                               _%probe117520%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table117499%_
                               (##fx+ _%probe117520%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab117496%_
                                  (##fx- (&raw-table-count _%tab117496%_)
                                         '1)))))
                            (_%loop117517%_
                             (let ((_%next-probe117536%_
                                    (fx+ _%start117513%_
                                         _%i117522%_
                                         (fx* _%i117522%_ _%i117522%_))))
                               (##fxmodulo
                                _%next-probe117536%_
                                _%size117507%_))
                             (##fx+ _%i117522%_ '1)))))))))))
    (define string-table-delete!/lock
      (lambda (_%tab117466%_ _%key117468%_)
        (let ((_%lock117471%_ (&raw-table-lock _%tab117466%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again117476%_ ((_%spin117479%_ '0))
              (if (##fx= (##vector-cas! _%lock117471%_ '0 '1 '0) '0)
                  (##vector-set! _%lock117471%_ '1 (current-thread))
                  (if (##fx< _%spin117479%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again117476%_ (##fx+ _%spin117479%_ '1)))
                      (let ((_%owner117485%_ (##vector-ref _%lock117471%_ '1)))
                        (if (eq? _%owner117485%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner117485%_)
                                (let () (##thread-yield!) (_%again117476%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r117491%_
                 (string-table-delete! _%tab117466%_ _%key117468%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock117471%_ '1 '#f)
                (##vector-cas! _%lock117471%_ '0 '0 '1)))
            _%$r117491%_))))
    (define make-immediate-table__%
      (lambda (_%size-hint117448%_ _%seed117449%_)
        (make-raw-table__1
         _%size-hint117448%_
         immediate-hash
         eq?
         _%seed117449%_)))
    (define make-immediate-table__0
      (lambda ()
        (let* ((_%size-hint117455%_ '#f) (_%seed117457%_ '0))
          (make-immediate-table__% _%size-hint117455%_ _%seed117457%_))))
    (define make-immediate-table__1
      (lambda (_%size-hint117459%_)
        (let ((_%seed117461%_ '0))
          (make-immediate-table__% _%size-hint117459%_ _%seed117461%_))))
    (define make-immediate-table
      (lambda _g119500_
        (let ((_g119501_ (##length _g119500_)))
          (cond ((##fx= _g119501_ 0) (apply make-immediate-table__0 _g119500_))
                ((##fx= _g119501_ 1) (apply make-immediate-table__1 _g119500_))
                ((##fx= _g119501_ 2) (apply make-immediate-table__% _g119500_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table
                  _g119500_))))))
    (define make-immediate-table/lock__%
      (lambda (_%size-hint117428%_ _%seed117430%_)
        (make-raw-table/lock__%
         _%size-hint117428%_
         immediate-hash
         eq?
         _%seed117430%_)))
    (define make-immediate-table/lock__0
      (lambda ()
        (let* ((_%size-hint117436%_ '#f) (_%seed117438%_ '0))
          (make-immediate-table/lock__% _%size-hint117436%_ _%seed117438%_))))
    (define make-immediate-table/lock__1
      (lambda (_%size-hint117440%_)
        (let ((_%seed117442%_ '0))
          (make-immediate-table/lock__% _%size-hint117440%_ _%seed117442%_))))
    (define make-immediate-table/lock
      (lambda _g119502_
        (let ((_g119503_ (##length _g119502_)))
          (cond ((##fx= _g119503_ 0)
                 (apply make-immediate-table/lock__0 _g119502_))
                ((##fx= _g119503_ 1)
                 (apply make-immediate-table/lock__1 _g119502_))
                ((##fx= _g119503_ 2)
                 (apply make-immediate-table/lock__% _g119502_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table/lock
                  _g119502_))))))
    (define immediate-table-ref
      (lambda (_%tab117381%_ _%key117382%_ _%default117383%_)
        (let ((_%table117385%_ (&raw-table-table _%tab117381%_))
              (_%seed117386%_ (&raw-table-seed _%tab117381%_)))
          (let* ((_%h117388%_
                  (fxxor (immediate-hash _%key117382%_) _%seed117386%_))
                 (_%size117391%_ (vector-length _%table117385%_))
                 (_%entries117394%_ (##fxquotient _%size117391%_ '2))
                 (_%start117397%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h117388%_ _%entries117394%_)
                   '1)))
            (let _%loop117401%_ ((_%probe117404%_ _%start117397%_)
                                 (_%i117406%_ '1)
                                 (_%deleted117408%_ '#f))
              (let ((_%k117411%_ (vector-ref _%table117385%_ _%probe117404%_)))
                (if (eq? _%k117411%_ (macro-unused-obj))
                    _%default117383%_
                    (if (eq? _%k117411%_ (macro-deleted-obj))
                        (_%loop117401%_
                         (let ((_%next-probe117416%_
                                (fx+ _%start117397%_
                                     _%i117406%_
                                     (fx* _%i117406%_ _%i117406%_))))
                           (##fxmodulo _%next-probe117416%_ _%size117391%_))
                         (##fx+ _%i117406%_ '1)
                         (let ((_%$e117419%_ _%deleted117408%_))
                           (if _%$e117419%_ _%$e117419%_ _%probe117404%_)))
                        (if (eq? _%key117382%_ _%k117411%_)
                            (vector-ref
                             _%table117385%_
                             (##fx+ _%probe117404%_ '1))
                            (_%loop117401%_
                             (let ((_%next-probe117424%_
                                    (fx+ _%start117397%_
                                         _%i117406%_
                                         (fx* _%i117406%_ _%i117406%_))))
                               (##fxmodulo
                                _%next-probe117424%_
                                _%size117391%_))
                             (##fx+ _%i117406%_ '1)
                             _%deleted117408%_))))))))))
    (define immediate-table-ref/lock
      (lambda (_%tab117352%_ _%key117353%_ _%default117354%_)
        (let ((_%lock117356%_ (&raw-table-lock _%tab117352%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again117361%_ ((_%spin117364%_ '0))
              (if (##fx= (##vector-cas! _%lock117356%_ '0 '1 '0) '0)
                  (##vector-set! _%lock117356%_ '1 (current-thread))
                  (if (##fx< _%spin117364%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again117361%_ (##fx+ _%spin117364%_ '1)))
                      (let ((_%owner117370%_ (##vector-ref _%lock117356%_ '1)))
                        (if (eq? _%owner117370%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner117370%_)
                                (let () (##thread-yield!) (_%again117361%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r117376%_
                 (immediate-table-ref
                  _%tab117352%_
                  _%key117353%_
                  _%default117354%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock117356%_ '1 '#f)
                (##vector-cas! _%lock117356%_ '0 '0 '1)))
            _%$r117376%_))))
    (define __immediate-table-set!
      (lambda (_%tab117304%_ _%key117305%_ _%value117306%_)
        (let ((_%table117308%_ (&raw-table-table _%tab117304%_))
              (_%seed117309%_ (&raw-table-seed _%tab117304%_)))
          (let* ((_%h117311%_
                  (fxxor (immediate-hash _%key117305%_) _%seed117309%_))
                 (_%size117314%_ (vector-length _%table117308%_))
                 (_%entries117317%_ (##fxquotient _%size117314%_ '2))
                 (_%start117320%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h117311%_ _%entries117317%_)
                   '1)))
            (let _%loop117324%_ ((_%probe117327%_ _%start117320%_)
                                 (_%i117329%_ '1)
                                 (_%deleted117331%_ '#f))
              (let ((_%k117334%_ (vector-ref _%table117308%_ _%probe117327%_)))
                (if (eq? _%k117334%_ (macro-unused-obj))
                    (if _%deleted117331%_
                        (begin
                          (vector-set!
                           _%table117308%_
                           _%deleted117331%_
                           _%key117305%_)
                          (vector-set!
                           _%table117308%_
                           (##fx+ _%deleted117331%_ '1)
                           _%value117306%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab117304%_
                              (##fx+ (&raw-table-count _%tab117304%_) '1)))))
                        (begin
                          (vector-set!
                           _%table117308%_
                           _%probe117327%_
                           _%key117305%_)
                          (vector-set!
                           _%table117308%_
                           (##fx+ _%probe117327%_ '1)
                           _%value117306%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab117304%_
                              (##fx- (&raw-table-free _%tab117304%_) '1))
                             (&raw-table-count-set!
                              _%tab117304%_
                              (##fx+ (&raw-table-count _%tab117304%_) '1))))))
                    (if (eq? _%k117334%_ (macro-deleted-obj))
                        (_%loop117324%_
                         (let ((_%next-probe117341%_
                                (fx+ _%start117320%_
                                     _%i117329%_
                                     (fx* _%i117329%_ _%i117329%_))))
                           (##fxmodulo _%next-probe117341%_ _%size117314%_))
                         (##fx+ _%i117329%_ '1)
                         (let ((_%$e117344%_ _%deleted117331%_))
                           (if _%$e117344%_ _%$e117344%_ _%probe117327%_)))
                        (if (eq? _%key117305%_ _%k117334%_)
                            (let ()
                              (vector-set!
                               _%table117308%_
                               _%probe117327%_
                               _%key117305%_)
                              (vector-set!
                               _%table117308%_
                               (##fx+ _%probe117327%_ '1)
                               _%value117306%_))
                            (_%loop117324%_
                             (let ((_%next-probe117349%_
                                    (fx+ _%start117320%_
                                         _%i117329%_
                                         (fx* _%i117329%_ _%i117329%_))))
                               (##fxmodulo
                                _%next-probe117349%_
                                _%size117314%_))
                             (##fx+ _%i117329%_ '1)
                             _%deleted117331%_))))))))))
    (define immediate-table-set!
      (lambda (_%tab117300%_ _%key117301%_ _%value117302%_)
        (if (##fx< (&raw-table-free _%tab117300%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab117300%_))
                    '4))
            (__raw-table-rehash! _%tab117300%_)
            '#!void)
        (__immediate-table-set! _%tab117300%_ _%key117301%_ _%value117302%_)))
    (define immediate-table-set!/lock
      (lambda (_%tab117270%_ _%key117271%_ _%value117272%_)
        (let ((_%lock117275%_ (&raw-table-lock _%tab117270%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again117280%_ ((_%spin117283%_ '0))
              (if (##fx= (##vector-cas! _%lock117275%_ '0 '1 '0) '0)
                  (##vector-set! _%lock117275%_ '1 (current-thread))
                  (if (##fx< _%spin117283%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again117280%_ (##fx+ _%spin117283%_ '1)))
                      (let ((_%owner117289%_ (##vector-ref _%lock117275%_ '1)))
                        (if (eq? _%owner117289%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner117289%_)
                                (let () (##thread-yield!) (_%again117280%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r117295%_
                 (immediate-table-set!
                  _%tab117270%_
                  _%key117271%_
                  _%value117272%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock117275%_ '1 '#f)
                (##vector-cas! _%lock117275%_ '0 '0 '1)))
            _%$r117295%_))))
    (define __immediate-table-update!
      (lambda (_%tab117221%_
               _%key117222%_
               _%immediate-table-update!117223%_
               _%default117224%_)
        (let ((_%table117226%_ (&raw-table-table _%tab117221%_))
              (_%seed117227%_ (&raw-table-seed _%tab117221%_)))
          (let* ((_%h117229%_
                  (fxxor (immediate-hash _%key117222%_) _%seed117227%_))
                 (_%size117232%_ (vector-length _%table117226%_))
                 (_%entries117235%_ (##fxquotient _%size117232%_ '2))
                 (_%start117238%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h117229%_ _%entries117235%_)
                   '1)))
            (let _%loop117242%_ ((_%probe117245%_ _%start117238%_)
                                 (_%i117247%_ '1)
                                 (_%deleted117249%_ '#f))
              (let ((_%k117252%_ (vector-ref _%table117226%_ _%probe117245%_)))
                (if (eq? _%k117252%_ (macro-unused-obj))
                    (if _%deleted117249%_
                        (begin
                          (vector-set!
                           _%table117226%_
                           _%deleted117249%_
                           _%key117222%_)
                          (vector-set!
                           _%table117226%_
                           (##fx+ _%deleted117249%_ '1)
                           (_%immediate-table-update!117223%_
                            _%default117224%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab117221%_
                              (##fx+ (&raw-table-count _%tab117221%_) '1)))))
                        (begin
                          (vector-set!
                           _%table117226%_
                           _%probe117245%_
                           _%key117222%_)
                          (vector-set!
                           _%table117226%_
                           (##fx+ _%probe117245%_ '1)
                           (_%immediate-table-update!117223%_
                            _%default117224%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab117221%_
                              (##fx- (&raw-table-free _%tab117221%_) '1))
                             (&raw-table-count-set!
                              _%tab117221%_
                              (##fx+ (&raw-table-count _%tab117221%_) '1))))))
                    (if (eq? _%k117252%_ (macro-deleted-obj))
                        (_%loop117242%_
                         (let ((_%next-probe117259%_
                                (fx+ _%start117238%_
                                     _%i117247%_
                                     (fx* _%i117247%_ _%i117247%_))))
                           (##fxmodulo _%next-probe117259%_ _%size117232%_))
                         (##fx+ _%i117247%_ '1)
                         (let ((_%$e117262%_ _%deleted117249%_))
                           (if _%$e117262%_ _%$e117262%_ _%probe117245%_)))
                        (if (eq? _%key117222%_ _%k117252%_)
                            (let ()
                              (vector-set!
                               _%table117226%_
                               _%probe117245%_
                               _%key117222%_)
                              (vector-set!
                               _%table117226%_
                               (##fx+ _%probe117245%_ '1)
                               (_%immediate-table-update!117223%_
                                (vector-ref
                                 _%table117226%_
                                 (##fx+ _%probe117245%_ '1)))))
                            (_%loop117242%_
                             (let ((_%next-probe117267%_
                                    (fx+ _%start117238%_
                                         _%i117247%_
                                         (fx* _%i117247%_ _%i117247%_))))
                               (##fxmodulo
                                _%next-probe117267%_
                                _%size117232%_))
                             (##fx+ _%i117247%_ '1)
                             _%deleted117249%_))))))))))
    (define immediate-table-update!
      (lambda (_%tab117216%_
               _%key117217%_
               _%immediate-table-update!117218%_
               _%default117219%_)
        (if (##fx< (&raw-table-free _%tab117216%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab117216%_))
                    '4))
            (__raw-table-rehash! _%tab117216%_)
            '#!void)
        (__immediate-table-update!
         _%tab117216%_
         _%key117217%_
         _%immediate-table-update!117218%_
         _%default117219%_)))
    (define immediate-table-update!/lock
      (lambda (_%tab117185%_
               _%key117186%_
               _%immediate-table-update!117187%_
               _%default117188%_)
        (let ((_%lock117191%_ (&raw-table-lock _%tab117185%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again117196%_ ((_%spin117199%_ '0))
              (if (##fx= (##vector-cas! _%lock117191%_ '0 '1 '0) '0)
                  (##vector-set! _%lock117191%_ '1 (current-thread))
                  (if (##fx< _%spin117199%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again117196%_ (##fx+ _%spin117199%_ '1)))
                      (let ((_%owner117205%_ (##vector-ref _%lock117191%_ '1)))
                        (if (eq? _%owner117205%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner117205%_)
                                (let () (##thread-yield!) (_%again117196%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r117211%_
                 (_%immediate-table-update!117187%_
                  _%tab117185%_
                  _%key117186%_
                  _%immediate-table-update!117187%_
                  _%default117188%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock117191%_ '1 '#f)
                (##vector-cas! _%lock117191%_ '0 '0 '1)))
            _%$r117211%_))))
    (define immediate-table-delete!
      (lambda (_%tab117142%_ _%key117143%_)
        (let ((_%table117145%_ (&raw-table-table _%tab117142%_))
              (_%seed117147%_ (&raw-table-seed _%tab117142%_)))
          (let* ((_%h117150%_
                  (fxxor (immediate-hash _%key117143%_) _%seed117147%_))
                 (_%size117153%_ (vector-length _%table117145%_))
                 (_%entries117156%_ (##fxquotient _%size117153%_ '2))
                 (_%start117159%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h117150%_ _%entries117156%_)
                   '1)))
            (let _%loop117163%_ ((_%probe117166%_ _%start117159%_)
                                 (_%i117168%_ '1))
              (let ((_%k117171%_ (vector-ref _%table117145%_ _%probe117166%_)))
                (if (eq? _%k117171%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k117171%_ (macro-deleted-obj))
                        (_%loop117163%_
                         (let ((_%next-probe117176%_
                                (fx+ _%start117159%_
                                     _%i117168%_
                                     (fx* _%i117168%_ _%i117168%_))))
                           (##fxmodulo _%next-probe117176%_ _%size117153%_))
                         (##fx+ _%i117168%_ '1))
                        (if (eq? _%key117143%_ _%k117171%_)
                            (let ()
                              (vector-set!
                               _%table117145%_
                               _%probe117166%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table117145%_
                               (##fx+ _%probe117166%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab117142%_
                                  (##fx- (&raw-table-count _%tab117142%_)
                                         '1)))))
                            (_%loop117163%_
                             (let ((_%next-probe117182%_
                                    (fx+ _%start117159%_
                                         _%i117168%_
                                         (fx* _%i117168%_ _%i117168%_))))
                               (##fxmodulo
                                _%next-probe117182%_
                                _%size117153%_))
                             (##fx+ _%i117168%_ '1)))))))))))
    (define immediate-table-delete!/lock
      (lambda (_%tab117112%_ _%key117114%_)
        (let ((_%lock117117%_ (&raw-table-lock _%tab117112%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again117122%_ ((_%spin117125%_ '0))
              (if (##fx= (##vector-cas! _%lock117117%_ '0 '1 '0) '0)
                  (##vector-set! _%lock117117%_ '1 (current-thread))
                  (if (##fx< _%spin117125%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again117122%_ (##fx+ _%spin117125%_ '1)))
                      (let ((_%owner117131%_ (##vector-ref _%lock117117%_ '1)))
                        (if (eq? _%owner117131%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner117131%_)
                                (let () (##thread-yield!) (_%again117122%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r117137%_
                 (immediate-table-delete! _%tab117112%_ _%key117114%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock117117%_ '1 '#f)
                (##vector-cas! _%lock117117%_ '0 '0 '1)))
            _%$r117137%_))))
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
      (lambda (_%tab117110%_)
        (##unchecked-structure-ref
         _%tab117110%_
         '1
         __gc-table::t
         'gc-table-gcht)))
    (define &gc-table-immediate
      (lambda (_%tab117108%_)
        (##unchecked-structure-ref
         _%tab117108%_
         '2
         __gc-table::t
         'gc-table-immediate)))
    (define &gc-table-lock
      (lambda (_%tab117106%_)
        (##unchecked-structure-ref
         _%tab117106%_
         '3
         __gc-table::t
         'gc-table-lock)))
    (define &gc-table-gcht-set!
      (lambda (_%tab117103%_ _%val117104%_)
        (##unchecked-structure-set!
         _%tab117103%_
         _%val117104%_
         '1
         __gc-table::t
         'gc-table-gcht-set!)))
    (define &gc-table-immediate-set!
      (lambda (_%tab117100%_ _%val117101%_)
        (##unchecked-structure-set!
         _%tab117100%_
         _%val117101%_
         '2
         __gc-table::t
         'gc-table-immediate-set!)))
    (define &gc-table-lock-set!
      (lambda (_%tab117097%_ _%val117098%_)
        (##unchecked-structure-set!
         _%tab117097%_
         _%val117098%_
         '3
         __gc-table::t
         'gc-table-lock-set!)))
    (define make-gc-table__%
      (lambda (_%size-hint117061%_
               _%klass117062%_
               _%flags117063%_
               _%lock117064%_)
        (let ((_%gcht117066%_
               (__gc-table-new
                (if (fixnum? _%size-hint117061%_) _%size-hint117061%_ '16)
                _%flags117063%_)))
          (##structure _%klass117062%_ _%gcht117066%_ '#f _%lock117064%_))))
    (define make-gc-table__0
      (lambda (_%size-hint117071%_)
        (let* ((_%klass117073%_ __gc-table::t)
               (_%flags117075%_ '0)
               (_%lock117077%_ '#f))
          (make-gc-table__%
           _%size-hint117071%_
           _%klass117073%_
           _%flags117075%_
           _%lock117077%_))))
    (define make-gc-table__1
      (lambda (_%size-hint117079%_ _%klass117080%_)
        (let* ((_%flags117082%_ '0) (_%lock117084%_ '#f))
          (make-gc-table__%
           _%size-hint117079%_
           _%klass117080%_
           _%flags117082%_
           _%lock117084%_))))
    (define make-gc-table__2
      (lambda (_%size-hint117086%_ _%klass117087%_ _%flags117088%_)
        (let ((_%lock117090%_ '#f))
          (make-gc-table__%
           _%size-hint117086%_
           _%klass117087%_
           _%flags117088%_
           _%lock117090%_))))
    (define make-gc-table
      (lambda _g119504_
        (let ((_g119505_ (##length _g119504_)))
          (cond ((##fx= _g119505_ 1) (apply make-gc-table__0 _g119504_))
                ((##fx= _g119505_ 2) (apply make-gc-table__1 _g119504_))
                ((##fx= _g119505_ 3) (apply make-gc-table__2 _g119504_))
                ((##fx= _g119505_ 4) (apply make-gc-table__% _g119504_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table
                  _g119504_))))))
    (define make-gc-table/lock__%
      (lambda (_%size-hint117038%_ _%klass117039%_ _%flags117040%_)
        (make-gc-table__%
         _%size-hint117038%_
         _%klass117039%_
         _%flags117040%_
         (vector '0 '#f))))
    (define make-gc-table/lock__0
      (lambda (_%size-hint117045%_)
        (let* ((_%klass117047%_ __gc-table::t) (_%flags117049%_ '0))
          (make-gc-table/lock__%
           _%size-hint117045%_
           _%klass117047%_
           _%flags117049%_))))
    (define make-gc-table/lock__1
      (lambda (_%size-hint117051%_ _%klass117052%_)
        (let ((_%flags117054%_ '0))
          (make-gc-table/lock__%
           _%size-hint117051%_
           _%klass117052%_
           _%flags117054%_))))
    (define make-gc-table/lock
      (lambda _g119506_
        (let ((_g119507_ (##length _g119506_)))
          (cond ((##fx= _g119507_ 1) (apply make-gc-table/lock__0 _g119506_))
                ((##fx= _g119507_ 2) (apply make-gc-table/lock__1 _g119506_))
                ((##fx= _g119507_ 3) (apply make-gc-table/lock__% _g119506_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table/lock
                  _g119506_))))))
    (define __gc-table-immediate
      (lambda (_%tab117029%_)
        (let ((_%$e117031%_ (&gc-table-immediate _%tab117029%_)))
          (if _%$e117031%_
              _%$e117031%_
              (let ((_%immediate117035%_ (make-immediate-table__% '#f '0)))
                (&gc-table-immediate-set! _%tab117029%_ _%immediate117035%_)
                _%immediate117035%_)))))
    (define __gc-table-new
      (lambda (_%size117019%_ _%flags117020%_)
        (let* ((_%flags117022%_
                (##fxand _%flags117020%_
                         (fxnot (macro-gc-hash-table-flag-need-rehash))))
               (_%flags117024%_
                (fxior _%flags117022%_
                       (macro-gc-hash-table-flag-mem-alloc-keys)))
               (_%gcht117026%_
                (##gc-hash-table-allocate
                 _%size117019%_
                 _%flags117024%_
                 __gc-table-loads)))
          _%gcht117026%_)))
    (define __gc-table-e
      (lambda (_%tab117014%_)
        (declare (not interrupts-enabled))
        (let ((_%gcht117017%_ (&gc-table-gcht _%tab117014%_)))
          (if (##fx= '0
                     (fxand (macro-gc-hash-table-flags _%gcht117017%_)
                            (macro-gc-hash-table-flag-need-rehash)))
              _%gcht117017%_
              (begin
                (__gc-table-rehash! _%tab117014%_)
                (&gc-table-gcht _%tab117014%_))))))
    (define __gc-table-rehash!
      (lambda (_%tab117005%_)
        (let* ((_%old-table117007%_ (&gc-table-gcht _%tab117005%_))
               (_%new-table117009%_
                (##gc-hash-table-resize! _%old-table117007%_ __gc-table-loads))
               (_%gcht117011%_
                (##gc-hash-table-rehash!
                 _%old-table117007%_
                 _%new-table117009%_)))
          (&gc-table-gcht-set! _%tab117005%_ _%gcht117011%_))))
    (define gc-table-ref
      (lambda (_%tab116989%_ _%key116990%_ _%default116991%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key116990%_)
            (let* ((_%gcht116995%_ (__gc-table-e _%tab116989%_))
                   (_%value116997%_
                    (##gc-hash-table-ref _%gcht116995%_ _%key116990%_)))
              (if (eq? _%value116997%_ (macro-unused-obj))
                  _%default116991%_
                  _%value116997%_))
            (let ((_%$e116999%_ (&gc-table-immediate _%tab116989%_)))
              (if _%$e116999%_
                  ((lambda (_%immediate117002%_)
                     (immediate-table-ref
                      _%immediate117002%_
                      _%key116990%_
                      _%default116991%_))
                   _%$e116999%_)
                  _%default116991%_)))))
    (define gc-table-ref/lock
      (lambda (_%tab116963%_ _%key116964%_ _%default116965%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again116969%_ ((_%spin116972%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab116963%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab116963%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin116972%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again116969%_ (##fx+ _%spin116972%_ '1)))
                    (let ((_%owner116978%_
                           (##vector-ref (&gc-table-lock _%tab116963%_) '1)))
                      (if (eq? _%owner116978%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner116978%_)
                              (let () (##thread-yield!) (_%again116969%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r116984%_
               (gc-table-ref _%tab116963%_ _%key116964%_ _%default116965%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab116963%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab116963%_) '0 '0 '1)))
          _%$r116984%_)))
    (define gc-table-set!
      (lambda (_%tab116956%_ _%key116957%_ _%value116958%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key116957%_)
            (let ((_%gcht116961%_ (__gc-table-e _%tab116956%_)))
              (if (##gc-hash-table-set!
                   _%gcht116961%_
                   _%key116957%_
                   _%value116958%_)
                  (begin
                    (__gc-table-rehash! _%tab116956%_)
                    (gc-table-set!
                     _%tab116956%_
                     _%key116957%_
                     _%value116958%_))
                  '#!void))
            (immediate-table-set!
             (__gc-table-immediate _%tab116956%_)
             _%key116957%_
             _%value116958%_))))
    (define gc-table-set/lock!
      (lambda (_%tab116930%_ _%key116931%_ _%value116932%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again116936%_ ((_%spin116939%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab116930%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab116930%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin116939%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again116936%_ (##fx+ _%spin116939%_ '1)))
                    (let ((_%owner116945%_
                           (##vector-ref (&gc-table-lock _%tab116930%_) '1)))
                      (if (eq? _%owner116945%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner116945%_)
                              (let () (##thread-yield!) (_%again116936%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r116951%_
               (gc-table-set! _%tab116930%_ _%key116931%_ _%value116932%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab116930%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab116930%_) '0 '0 '1)))
          _%$r116951%_)))
    (define gc-table-update!
      (lambda (_%tab116923%_ _%key116924%_ _%update116925%_ _%default116926%_)
        (if (##mem-allocated? _%key116924%_)
            (let ((_%value116928%_
                   (gc-table-ref
                    _%tab116923%_
                    _%key116924%_
                    _%default116926%_)))
              (gc-table-set!
               _%tab116923%_
               _%key116924%_
               (_%update116925%_ _%value116928%_)))
            (immediate-table-update!
             (__gc-table-immediate _%tab116923%_)
             _%key116924%_
             _%update116925%_
             _%default116926%_))))
    (define gc-table-update!/lock
      (lambda (_%tab116896%_ _%key116897%_ _%update116898%_ _%default116899%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again116903%_ ((_%spin116906%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab116896%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab116896%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin116906%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again116903%_ (##fx+ _%spin116906%_ '1)))
                    (let ((_%owner116912%_
                           (##vector-ref (&gc-table-lock _%tab116896%_) '1)))
                      (if (eq? _%owner116912%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner116912%_)
                              (let () (##thread-yield!) (_%again116903%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r116918%_
               (gc-table-update!
                _%tab116896%_
                _%key116897%_
                _%update116898%_
                _%default116899%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab116896%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab116896%_) '0 '0 '1)))
          _%$r116918%_)))
    (define gc-table-delete!
      (lambda (_%tab116884%_ _%key116885%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key116885%_)
            (let ((_%gcht116889%_ (__gc-table-e _%tab116884%_)))
              (if (##gc-hash-table-set!
                   _%gcht116889%_
                   _%key116885%_
                   (macro-absent-obj))
                  (begin
                    (__gc-table-rehash! _%tab116884%_)
                    (gc-table-delete! _%tab116884%_ _%key116885%_))
                  '#!void))
            (let ((_%$e116891%_ (&gc-table-immediate _%tab116884%_)))
              (if _%$e116891%_
                  ((lambda (_%immediate116894%_)
                     (immediate-table-delete!
                      _%immediate116894%_
                      _%key116885%_))
                   _%$e116891%_)
                  '#!void)))))
    (define gc-table-delete!/lock
      (lambda (_%tab116859%_ _%key116860%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again116864%_ ((_%spin116867%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab116859%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab116859%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin116867%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again116864%_ (##fx+ _%spin116867%_ '1)))
                    (let ((_%owner116873%_
                           (##vector-ref (&gc-table-lock _%tab116859%_) '1)))
                      (if (eq? _%owner116873%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner116873%_)
                              (let () (##thread-yield!) (_%again116864%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r116879%_ (gc-table-delete! _%tab116859%_ _%key116860%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab116859%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab116859%_) '0 '0 '1)))
          _%$r116879%_)))
    (define gc-table-for-each
      (lambda (_%tab116848%_ _%proc116849%_)
        (declare (not interrupts-enabled))
        (begin
          (let ((_%gcht116852%_ (__gc-table-e _%tab116848%_)))
            (##gc-hash-table-for-each _%proc116849%_ _%gcht116852%_))
          (let ((_%$e116854%_ (&gc-table-immediate _%tab116848%_)))
            (if _%$e116854%_
                ((lambda (_%immediate116857%_)
                   (raw-table-for-each _%immediate116857%_ _%proc116849%_))
                 _%$e116854%_)
                '#!void)))))
    (define gc-table-for-each/lock
      (lambda (_%tab116823%_ _%proc116824%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again116828%_ ((_%spin116831%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab116823%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab116823%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin116831%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again116828%_ (##fx+ _%spin116831%_ '1)))
                    (let ((_%owner116837%_
                           (##vector-ref (&gc-table-lock _%tab116823%_) '1)))
                      (if (eq? _%owner116837%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner116837%_)
                              (let () (##thread-yield!) (_%again116828%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r116843%_ (gc-table-for-each _%tab116823%_ _%proc116824%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab116823%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab116823%_) '0 '0 '1)))
          _%$r116843%_)))
    (define gc-table-copy
      (lambda (_%tab116811%_)
        (let* ((_%gcht116813%_ (__gc-table-e _%tab116811%_))
               (_%new-table116815%_
                (__gc-table-new
                 (macro-gc-hash-table-count _%gcht116813%_)
                 (macro-gc-hash-table-flags _%gcht116813%_)))
               (_%result116817%_
                (##structure
                 (##structure-type _%tab116811%_)
                 _%new-table116815%_
                 '#f)))
          (gc-table-for-each
           _%tab116811%_
           (lambda (_%k116820%_ _%v116821%_)
             (gc-table-set! _%result116817%_ _%k116820%_ _%v116821%_)))
          _%result116817%_)))
    (define gc-table-copy/lock
      (lambda (_%tab116787%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again116791%_ ((_%spin116794%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab116787%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab116787%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin116794%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again116791%_ (##fx+ _%spin116794%_ '1)))
                    (let ((_%owner116800%_
                           (##vector-ref (&gc-table-lock _%tab116787%_) '1)))
                      (if (eq? _%owner116800%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner116800%_)
                              (let () (##thread-yield!) (_%again116791%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r116806%_ (gc-table-copy _%tab116787%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab116787%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab116787%_) '0 '0 '1)))
          _%$r116806%_)))
    (define gc-table-clear!
      (lambda (_%tab116780%_)
        (let* ((_%gcht116782%_ (__gc-table-e _%tab116780%_))
               (_%new-table116784%_
                (__gc-table-new
                 '16
                 (macro-gc-hash-table-flags _%gcht116782%_))))
          (&gc-table-gcht-set! _%tab116780%_ _%new-table116784%_)
          (&gc-table-immediate-set! _%tab116780%_ '#f))))
    (define gc-table-clear!/lock
      (lambda (_%tab116756%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again116760%_ ((_%spin116763%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab116756%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab116756%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin116763%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again116760%_ (##fx+ _%spin116763%_ '1)))
                    (let ((_%owner116769%_
                           (##vector-ref (&gc-table-lock _%tab116756%_) '1)))
                      (if (eq? _%owner116769%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner116769%_)
                              (let () (##thread-yield!) (_%again116760%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r116775%_ (gc-table-clear! _%tab116756%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab116756%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab116756%_) '0 '0 '1)))
          _%$r116775%_)))
    (define gc-table-length
      (lambda (_%tab116748%_)
        (let ((_%gcht116750%_ (__gc-table-e _%tab116748%_)))
          (fx+ (macro-gc-hash-table-count _%gcht116750%_)
               (let ((_%$e116752%_ (&gc-table-immediate _%tab116748%_)))
                 (if _%$e116752%_ (&raw-table-count _%$e116752%_) '0))))))
    (define gc-table-length/lock
      (lambda (_%tab116724%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again116728%_ ((_%spin116731%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab116724%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab116724%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin116731%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again116728%_ (##fx+ _%spin116731%_ '1)))
                    (let ((_%owner116737%_
                           (##vector-ref (&gc-table-lock _%tab116724%_) '1)))
                      (if (eq? _%owner116737%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner116737%_)
                              (let () (##thread-yield!) (_%again116728%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r116743%_ (gc-table-length _%tab116724%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab116724%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab116724%_) '0 '0 '1)))
          _%$r116743%_)))
    (define __object-eq-hash-lock (vector '0 '#f))
    (define __object-eq-hash-next '0)
    (define __object-eq-hash
      (make-gc-table__2
       '1024
       __gc-table::t
       (macro-gc-hash-table-flag-weak-keys)))
    (define __object->eq-hash
      (lambda (_%obj116690%_)
        (declare (not interrupts-enabled))
        (let ((_%val116693%_
               (gc-table-ref __object-eq-hash _%obj116690%_ '#f)))
          (if _%val116693%_
              _%val116693%_
              (begin
                (let ()
                  (declare (not interrupts-enabled))
                  (let _%again116697%_ ((_%spin116700%_ '0))
                    (if (##fx= (##vector-cas! __object-eq-hash-lock '0 '1 '0)
                               '0)
                        (##vector-set!
                         __object-eq-hash-lock
                         '1
                         (current-thread))
                        (if (##fx< _%spin116700%_ '10)
                            (let ()
                              (##thread-yield!)
                              (_%again116697%_ (##fx+ _%spin116700%_ '1)))
                            (let ((_%owner116706%_
                                   (##vector-ref __object-eq-hash-lock '1)))
                              (if (eq? _%owner116706%_ (macro-current-thread))
                                  (##thread-deadlock-action!)
                                  (if (macro-thread-end-condvar
                                       _%owner116706%_)
                                      (let ()
                                        (##thread-yield!)
                                        (_%again116697%_ '0))
                                      (##thread-deadlock-action!))))))))
                (let ((_%$r116719%_
                       (let ((_%val116712%_
                              (gc-table-ref
                               __object-eq-hash
                               _%obj116690%_
                               '#f)))
                         (if _%val116712%_
                             _%val116712%_
                             (let ((_%h116714%_
                                    (fxand __object-eq-hash
                                           (macro-max-fixnum32))))
                               (set! __object-eq-hash-next
                                     (let ((_%$e116716%_
                                            (##fx+? __object-eq-hash-next '1)))
                                       (if _%$e116716%_ _%$e116716%_ '0)))
                               (gc-table-set!
                                __object-eq-hash
                                _%obj116690%_
                                _%h116714%_)
                               _%h116714%_)))))
                  (let ()
                    (declare (not interrupts-enabled))
                    (begin
                      (##vector-set! __object-eq-hash-lock '1 '#f)
                      (##vector-cas! __object-eq-hash-lock '0 '0 '1)))
                  _%$r116719%_))))))))
