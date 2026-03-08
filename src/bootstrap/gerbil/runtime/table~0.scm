(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1773012982)
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
      (lambda (_%obj119489%_)
        (if (##structure? _%obj119489%_)
            (##structure-instance-of? _%obj119489%_ __table::t.id)
            '#f)))
    (define &raw-table-table
      (lambda (_%tab119487%_)
        (##unchecked-structure-ref
         _%tab119487%_
         '1
         __table::t
         'raw-table-table)))
    (define &raw-table-count
      (lambda (_%tab119485%_)
        (##unchecked-structure-ref
         _%tab119485%_
         '2
         __table::t
         'raw-table-count)))
    (define &raw-table-free
      (lambda (_%tab119483%_)
        (##unchecked-structure-ref
         _%tab119483%_
         '3
         __table::t
         'raw-table-free)))
    (define &raw-table-hash
      (lambda (_%tab119481%_)
        (##unchecked-structure-ref
         _%tab119481%_
         '4
         __table::t
         'raw-table-hash)))
    (define &raw-table-test
      (lambda (_%tab119479%_)
        (##unchecked-structure-ref
         _%tab119479%_
         '5
         __table::t
         'raw-table-test)))
    (define &raw-table-seed
      (lambda (_%tab119477%_)
        (##unchecked-structure-ref
         _%tab119477%_
         '6
         __table::t
         'raw-table-seed)))
    (define &raw-table-lock
      (lambda (_%tab119475%_)
        (##unchecked-structure-ref
         _%tab119475%_
         '7
         __table::t
         'raw-table-lock)))
    (define &raw-table-table-set!
      (lambda (_%tab119472%_ _%val119473%_)
        (##unchecked-structure-set!
         _%tab119472%_
         _%val119473%_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_%tab119469%_ _%val119470%_)
        (##unchecked-structure-set!
         _%tab119469%_
         _%val119470%_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_%tab119466%_ _%val119467%_)
        (##unchecked-structure-set!
         _%tab119466%_
         _%val119467%_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_%tab119463%_ _%val119464%_)
        (##unchecked-structure-set!
         _%tab119463%_
         _%val119464%_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_%tab119460%_ _%val119461%_)
        (##unchecked-structure-set!
         _%tab119460%_
         _%val119461%_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_%tab119457%_ _%val119458%_)
        (##unchecked-structure-set!
         _%tab119457%_
         _%val119458%_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define &raw-table-lock-set!
      (lambda (_%tab119454%_ _%val119455%_)
        (##unchecked-structure-set!
         _%tab119454%_
         _%val119455%_
         '7
         __table::t
         'raw-table-lock-set!)))
    (define raw-table-size-hint->size
      (lambda (_%size-hint119452%_)
        (if (and (fixnum? _%size-hint119452%_) (##fx> _%size-hint119452%_ '0))
            (##fx* (fxmax '2 (expt '2 (integer-length _%size-hint119452%_)))
                   '4)
            '16)))
    (define make-raw-table__%
      (lambda (_%size-hint119417%_
               _%hash119418%_
               _%test119419%_
               _%seed119420%_
               _%lock119421%_)
        (let* ((_%size119423%_ (raw-table-size-hint->size _%size-hint119417%_))
               (_%table119425%_
                (##make-vector _%size119423%_ (macro-unused-obj))))
          (##structure
           __table::t
           _%table119425%_
           '0
           (##fxquotient _%size119423%_ '2)
           _%hash119418%_
           _%test119419%_
           _%seed119420%_
           _%lock119421%_))))
    (define make-raw-table__0
      (lambda (_%size-hint119431%_ _%hash119432%_ _%test119433%_)
        (let* ((_%seed119435%_ '0) (_%lock119437%_ '#f))
          (make-raw-table__%
           _%size-hint119431%_
           _%hash119432%_
           _%test119433%_
           _%seed119435%_
           _%lock119437%_))))
    (define make-raw-table__1
      (lambda (_%size-hint119439%_
               _%hash119440%_
               _%test119441%_
               _%seed119442%_)
        (let ((_%lock119444%_ '#f))
          (make-raw-table__%
           _%size-hint119439%_
           _%hash119440%_
           _%test119441%_
           _%seed119442%_
           _%lock119444%_))))
    (define make-raw-table
      (lambda _g119490_
        (let ((_g119491_ (##length _g119490_)))
          (cond ((##fx= _g119491_ 3) (apply make-raw-table__0 _g119490_))
                ((##fx= _g119491_ 4) (apply make-raw-table__1 _g119490_))
                ((##fx= _g119491_ 5) (apply make-raw-table__% _g119490_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g119490_))))))
    (define make-raw-table/lock__%
      (lambda (_%size-hint119397%_
               _%hash119398%_
               _%test119399%_
               _%seed119400%_)
        (make-raw-table__%
         _%size-hint119397%_
         _%hash119398%_
         _%test119399%_
         _%seed119400%_
         (vector '0 '#f))))
    (define make-raw-table/lock__0
      (lambda (_%size-hint119405%_ _%hash119406%_ _%test119407%_)
        (let ((_%seed119409%_ '0))
          (make-raw-table/lock__%
           _%size-hint119405%_
           _%hash119406%_
           _%test119407%_
           _%seed119409%_))))
    (define make-raw-table/lock
      (lambda _g119492_
        (let ((_g119493_ (##length _g119492_)))
          (cond ((##fx= _g119493_ 3) (apply make-raw-table/lock__0 _g119492_))
                ((##fx= _g119493_ 4) (apply make-raw-table/lock__% _g119492_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table/lock
                  _g119492_))))))
    (define raw-table-length
      (lambda (_%tab119394%_) (&raw-table-count _%tab119394%_)))
    (define raw-table-length/lock
      (lambda (_%tab119367%_)
        (let ((_%lock119369%_ (&raw-table-lock _%tab119367%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again119374%_ ((_%spin119377%_ '0))
              (if (##fx= (##vector-cas! _%lock119369%_ '0 '1 '0) '0)
                  (##vector-set! _%lock119369%_ '1 (current-thread))
                  (if (##fx< _%spin119377%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again119374%_ (##fx+ _%spin119377%_ '1)))
                      (let ((_%owner119383%_ (##vector-ref _%lock119369%_ '1)))
                        (if (eq? _%owner119383%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner119383%_)
                                (let () (##thread-yield!) (_%again119374%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r119389%_ (&raw-table-count _%tab119367%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock119369%_ '1 '#f)
                (##vector-cas! _%lock119369%_ '0 '0 '1)))
            _%$r119389%_))))
    (define raw-table-ref
      (lambda (_%tab119319%_ _%key119320%_ _%default119321%_)
        (let ((_%table119323%_ (&raw-table-table _%tab119319%_))
              (_%seed119324%_ (&raw-table-seed _%tab119319%_))
              (_%hash119325%_ (&raw-table-hash _%tab119319%_))
              (_%test119326%_ (&raw-table-test _%tab119319%_)))
          (let* ((_%h119328%_
                  (fxxor (_%hash119325%_ _%key119320%_) _%seed119324%_))
                 (_%size119331%_ (vector-length _%table119323%_))
                 (_%entries119334%_ (##fxquotient _%size119331%_ '2))
                 (_%start119337%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h119328%_ _%entries119334%_)
                   '1)))
            (let _%loop119341%_ ((_%probe119344%_ _%start119337%_)
                                 (_%i119346%_ '1)
                                 (_%deleted119348%_ '#f))
              (let ((_%k119351%_ (vector-ref _%table119323%_ _%probe119344%_)))
                (if (eq? _%k119351%_ (macro-unused-obj))
                    _%default119321%_
                    (if (eq? _%k119351%_ (macro-deleted-obj))
                        (_%loop119341%_
                         (let ((_%next-probe119356%_
                                (fx+ _%start119337%_
                                     _%i119346%_
                                     (fx* _%i119346%_ _%i119346%_))))
                           (##fxmodulo _%next-probe119356%_ _%size119331%_))
                         (##fx+ _%i119346%_ '1)
                         (let ((_%$e119359%_ _%deleted119348%_))
                           (if _%$e119359%_ _%$e119359%_ _%probe119344%_)))
                        (if (_%test119326%_ _%key119320%_ _%k119351%_)
                            (vector-ref
                             _%table119323%_
                             (##fx+ _%probe119344%_ '1))
                            (_%loop119341%_
                             (let ((_%next-probe119364%_
                                    (fx+ _%start119337%_
                                         _%i119346%_
                                         (fx* _%i119346%_ _%i119346%_))))
                               (##fxmodulo
                                _%next-probe119364%_
                                _%size119331%_))
                             (##fx+ _%i119346%_ '1)
                             _%deleted119348%_))))))))))
    (define raw-table-ref/lock
      (lambda (_%tab119290%_ _%key119291%_ _%default119292%_)
        (let ((_%lock119294%_ (&raw-table-lock _%tab119290%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again119299%_ ((_%spin119302%_ '0))
              (if (##fx= (##vector-cas! _%lock119294%_ '0 '1 '0) '0)
                  (##vector-set! _%lock119294%_ '1 (current-thread))
                  (if (##fx< _%spin119302%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again119299%_ (##fx+ _%spin119302%_ '1)))
                      (let ((_%owner119308%_ (##vector-ref _%lock119294%_ '1)))
                        (if (eq? _%owner119308%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner119308%_)
                                (let () (##thread-yield!) (_%again119299%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r119314%_
                 (raw-table-ref
                  _%tab119290%_
                  _%key119291%_
                  _%default119292%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock119294%_ '1 '#f)
                (##vector-cas! _%lock119294%_ '0 '0 '1)))
            _%$r119314%_))))
    (define raw-table-set!
      (lambda (_%tab119286%_ _%key119287%_ _%value119288%_)
        (if (##fx< (&raw-table-free _%tab119286%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab119286%_))
                    '4))
            (__raw-table-rehash! _%tab119286%_)
            '#!void)
        (__raw-table-set! _%tab119286%_ _%key119287%_ _%value119288%_)))
    (define raw-table-set!/lock
      (lambda (_%tab119257%_ _%key119258%_ _%value119259%_)
        (let ((_%lock119261%_ (&raw-table-lock _%tab119257%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again119266%_ ((_%spin119269%_ '0))
              (if (##fx= (##vector-cas! _%lock119261%_ '0 '1 '0) '0)
                  (##vector-set! _%lock119261%_ '1 (current-thread))
                  (if (##fx< _%spin119269%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again119266%_ (##fx+ _%spin119269%_ '1)))
                      (let ((_%owner119275%_ (##vector-ref _%lock119261%_ '1)))
                        (if (eq? _%owner119275%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner119275%_)
                                (let () (##thread-yield!) (_%again119266%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r119281%_
                 (raw-table-set! _%tab119257%_ _%key119258%_ _%value119259%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock119261%_ '1 '#f)
                (##vector-cas! _%lock119261%_ '0 '0 '1)))
            _%$r119281%_))))
    (define raw-table-update!
      (lambda (_%tab119252%_ _%key119253%_ _%update119254%_ _%default119255%_)
        (if (##fx< (&raw-table-free _%tab119252%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab119252%_))
                    '4))
            (__raw-table-rehash! _%tab119252%_)
            '#!void)
        (__raw-table-update!
         _%tab119252%_
         _%key119253%_
         _%update119254%_
         _%default119255%_)))
    (define raw-table-update!/lock
      (lambda (_%tab119222%_ _%key119223%_ _%update119224%_ _%default119225%_)
        (let ((_%lock119227%_ (&raw-table-lock _%tab119222%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again119232%_ ((_%spin119235%_ '0))
              (if (##fx= (##vector-cas! _%lock119227%_ '0 '1 '0) '0)
                  (##vector-set! _%lock119227%_ '1 (current-thread))
                  (if (##fx< _%spin119235%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again119232%_ (##fx+ _%spin119235%_ '1)))
                      (let ((_%owner119241%_ (##vector-ref _%lock119227%_ '1)))
                        (if (eq? _%owner119241%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner119241%_)
                                (let () (##thread-yield!) (_%again119232%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r119247%_
                 (raw-table-update!
                  _%tab119222%_
                  _%key119223%_
                  _%update119224%_
                  _%default119225%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock119227%_ '1 '#f)
                (##vector-cas! _%lock119227%_ '0 '0 '1)))
            _%$r119247%_))))
    (define raw-table-delete!
      (lambda (_%tab119179%_ _%key119180%_)
        (let ((_%table119182%_ (&raw-table-table _%tab119179%_))
              (_%seed119183%_ (&raw-table-seed _%tab119179%_))
              (_%hash119184%_ (&raw-table-hash _%tab119179%_))
              (_%test119185%_ (&raw-table-test _%tab119179%_)))
          (let* ((_%h119187%_
                  (fxxor (_%hash119184%_ _%key119180%_) _%seed119183%_))
                 (_%size119190%_ (vector-length _%table119182%_))
                 (_%entries119193%_ (##fxquotient _%size119190%_ '2))
                 (_%start119196%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h119187%_ _%entries119193%_)
                   '1)))
            (let _%loop119200%_ ((_%probe119203%_ _%start119196%_)
                                 (_%i119205%_ '1))
              (let ((_%k119208%_ (vector-ref _%table119182%_ _%probe119203%_)))
                (if (eq? _%k119208%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k119208%_ (macro-deleted-obj))
                        (_%loop119200%_
                         (let ((_%next-probe119213%_
                                (fx+ _%start119196%_
                                     _%i119205%_
                                     (fx* _%i119205%_ _%i119205%_))))
                           (##fxmodulo _%next-probe119213%_ _%size119190%_))
                         (##fx+ _%i119205%_ '1))
                        (if (_%test119185%_ _%key119180%_ _%k119208%_)
                            (let ()
                              (vector-set!
                               _%table119182%_
                               _%probe119203%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table119182%_
                               (##fx+ _%probe119203%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab119179%_
                                  (##fx- (&raw-table-count _%tab119179%_)
                                         '1)))))
                            (_%loop119200%_
                             (let ((_%next-probe119219%_
                                    (fx+ _%start119196%_
                                         _%i119205%_
                                         (fx* _%i119205%_ _%i119205%_))))
                               (##fxmodulo
                                _%next-probe119219%_
                                _%size119190%_))
                             (##fx+ _%i119205%_ '1)))))))))))
    (define raw-table-delete!/lock
      (lambda (_%tab119151%_ _%key119152%_)
        (let ((_%lock119154%_ (&raw-table-lock _%tab119151%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again119159%_ ((_%spin119162%_ '0))
              (if (##fx= (##vector-cas! _%lock119154%_ '0 '1 '0) '0)
                  (##vector-set! _%lock119154%_ '1 (current-thread))
                  (if (##fx< _%spin119162%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again119159%_ (##fx+ _%spin119162%_ '1)))
                      (let ((_%owner119168%_ (##vector-ref _%lock119154%_ '1)))
                        (if (eq? _%owner119168%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner119168%_)
                                (let () (##thread-yield!) (_%again119159%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r119174%_ (raw-table-delete! _%tab119151%_ _%key119152%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock119154%_ '1 '#f)
                (##vector-cas! _%lock119154%_ '0 '0 '1)))
            _%$r119174%_))))
    (define raw-table-for-each
      (lambda (_%tab119135%_ _%proc119136%_)
        (let* ((_%table119138%_ (&raw-table-table _%tab119135%_))
               (_%size119140%_ (vector-length _%table119138%_)))
          (let _%loop119143%_ ((_%i119145%_ '0))
            (if (##fx< _%i119145%_ _%size119140%_)
                (begin
                  (let ((_%key119147%_
                         (vector-ref _%table119138%_ _%i119145%_)))
                    (if (if (eq? _%key119147%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key119147%_ (macro-deleted-obj))))
                        (let ((_%value119149%_
                               (vector-ref
                                _%table119138%_
                                (##fx+ _%i119145%_ '1))))
                          (_%proc119136%_ _%key119147%_ _%value119149%_))
                        '#!void))
                  (_%loop119143%_ (##fx+ _%i119145%_ '2)))
                '#!void)))))
    (define raw-table-for-each/lock
      (lambda (_%tab119107%_ _%proc119108%_)
        (let ((_%lock119110%_ (&raw-table-lock _%tab119107%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again119115%_ ((_%spin119118%_ '0))
              (if (##fx= (##vector-cas! _%lock119110%_ '0 '1 '0) '0)
                  (##vector-set! _%lock119110%_ '1 (current-thread))
                  (if (##fx< _%spin119118%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again119115%_ (##fx+ _%spin119118%_ '1)))
                      (let ((_%owner119124%_ (##vector-ref _%lock119110%_ '1)))
                        (if (eq? _%owner119124%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner119124%_)
                                (let () (##thread-yield!) (_%again119115%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r119130%_
                 (raw-table-for-each _%tab119107%_ _%proc119108%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock119110%_ '1 '#f)
                (##vector-cas! _%lock119110%_ '0 '0 '1)))
            _%$r119130%_))))
    (define raw-table-copy
      (lambda (_%tab119103%_)
        (let ((_%new-tab119105%_ (##structure-copy _%tab119103%_)))
          (&raw-table-table-set!
           _%new-tab119105%_
           (vector-copy (&raw-table-table _%tab119103%_)))
          _%new-tab119105%_)))
    (define raw-table-copy/lock
      (lambda (_%tab119076%_)
        (let ((_%lock119078%_ (&raw-table-lock _%tab119076%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again119083%_ ((_%spin119086%_ '0))
              (if (##fx= (##vector-cas! _%lock119078%_ '0 '1 '0) '0)
                  (##vector-set! _%lock119078%_ '1 (current-thread))
                  (if (##fx< _%spin119086%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again119083%_ (##fx+ _%spin119086%_ '1)))
                      (let ((_%owner119092%_ (##vector-ref _%lock119078%_ '1)))
                        (if (eq? _%owner119092%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner119092%_)
                                (let () (##thread-yield!) (_%again119083%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r119098%_ (raw-table-copy _%tab119076%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock119078%_ '1 '#f)
                (##vector-cas! _%lock119078%_ '0 '0 '1)))
            _%$r119098%_))))
    (define raw-table-clear!
      (lambda (_%tab119074%_)
        (vector-fill! (&raw-table-table _%tab119074%_) (macro-unused-obj))
        (&raw-table-count-set! _%tab119074%_ '0)
        (&raw-table-free-set!
         _%tab119074%_
         (##fxquotient (vector-length (&raw-table-table _%tab119074%_)) '2))))
    (define raw-table-clear!/lock
      (lambda (_%tab119047%_)
        (let ((_%lock119049%_ (&raw-table-lock _%tab119047%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again119054%_ ((_%spin119057%_ '0))
              (if (##fx= (##vector-cas! _%lock119049%_ '0 '1 '0) '0)
                  (##vector-set! _%lock119049%_ '1 (current-thread))
                  (if (##fx< _%spin119057%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again119054%_ (##fx+ _%spin119057%_ '1)))
                      (let ((_%owner119063%_ (##vector-ref _%lock119049%_ '1)))
                        (if (eq? _%owner119063%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner119063%_)
                                (let () (##thread-yield!) (_%again119054%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r119069%_ (raw-table-clear! _%tab119047%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock119049%_ '1 '#f)
                (##vector-cas! _%lock119049%_ '0 '0 '1)))
            _%$r119069%_))))
    (define __raw-table-set!
      (lambda (_%tab118997%_ _%key118998%_ _%value118999%_)
        (let ((_%table119001%_ (&raw-table-table _%tab118997%_))
              (_%seed119002%_ (&raw-table-seed _%tab118997%_))
              (_%hash119003%_ (&raw-table-hash _%tab118997%_))
              (_%test119004%_ (&raw-table-test _%tab118997%_)))
          (let* ((_%h119006%_
                  (fxxor (_%hash119003%_ _%key118998%_) _%seed119002%_))
                 (_%size119009%_ (vector-length _%table119001%_))
                 (_%entries119012%_ (##fxquotient _%size119009%_ '2))
                 (_%start119015%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h119006%_ _%entries119012%_)
                   '1)))
            (let _%loop119019%_ ((_%probe119022%_ _%start119015%_)
                                 (_%i119024%_ '1)
                                 (_%deleted119026%_ '#f))
              (let ((_%k119029%_ (vector-ref _%table119001%_ _%probe119022%_)))
                (if (eq? _%k119029%_ (macro-unused-obj))
                    (if _%deleted119026%_
                        (begin
                          (vector-set!
                           _%table119001%_
                           _%deleted119026%_
                           _%key118998%_)
                          (vector-set!
                           _%table119001%_
                           (##fx+ _%deleted119026%_ '1)
                           _%value118999%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab118997%_
                              (##fx+ (&raw-table-count _%tab118997%_) '1)))))
                        (begin
                          (vector-set!
                           _%table119001%_
                           _%probe119022%_
                           _%key118998%_)
                          (vector-set!
                           _%table119001%_
                           (##fx+ _%probe119022%_ '1)
                           _%value118999%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab118997%_
                              (##fx- (&raw-table-free _%tab118997%_) '1))
                             (&raw-table-count-set!
                              _%tab118997%_
                              (##fx+ (&raw-table-count _%tab118997%_) '1))))))
                    (if (eq? _%k119029%_ (macro-deleted-obj))
                        (_%loop119019%_
                         (let ((_%next-probe119036%_
                                (fx+ _%start119015%_
                                     _%i119024%_
                                     (fx* _%i119024%_ _%i119024%_))))
                           (##fxmodulo _%next-probe119036%_ _%size119009%_))
                         (##fx+ _%i119024%_ '1)
                         (let ((_%$e119039%_ _%deleted119026%_))
                           (if _%$e119039%_ _%$e119039%_ _%probe119022%_)))
                        (if (_%test119004%_ _%key118998%_ _%k119029%_)
                            (let ()
                              (vector-set!
                               _%table119001%_
                               _%probe119022%_
                               _%key118998%_)
                              (vector-set!
                               _%table119001%_
                               (##fx+ _%probe119022%_ '1)
                               _%value118999%_))
                            (_%loop119019%_
                             (let ((_%next-probe119044%_
                                    (fx+ _%start119015%_
                                         _%i119024%_
                                         (fx* _%i119024%_ _%i119024%_))))
                               (##fxmodulo
                                _%next-probe119044%_
                                _%size119009%_))
                             (##fx+ _%i119024%_ '1)
                             _%deleted119026%_))))))))))
    (define __raw-table-update!
      (lambda (_%tab118946%_ _%key118947%_ _%update118948%_ _%default118949%_)
        (let ((_%table118951%_ (&raw-table-table _%tab118946%_))
              (_%seed118952%_ (&raw-table-seed _%tab118946%_))
              (_%hash118953%_ (&raw-table-hash _%tab118946%_))
              (_%test118954%_ (&raw-table-test _%tab118946%_)))
          (let* ((_%h118956%_
                  (fxxor (_%hash118953%_ _%key118947%_) _%seed118952%_))
                 (_%size118959%_ (vector-length _%table118951%_))
                 (_%entries118962%_ (##fxquotient _%size118959%_ '2))
                 (_%start118965%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h118956%_ _%entries118962%_)
                   '1)))
            (let _%loop118969%_ ((_%probe118972%_ _%start118965%_)
                                 (_%i118974%_ '1)
                                 (_%deleted118976%_ '#f))
              (let ((_%k118979%_ (vector-ref _%table118951%_ _%probe118972%_)))
                (if (eq? _%k118979%_ (macro-unused-obj))
                    (if _%deleted118976%_
                        (begin
                          (vector-set!
                           _%table118951%_
                           _%deleted118976%_
                           _%key118947%_)
                          (vector-set!
                           _%table118951%_
                           (##fx+ _%deleted118976%_ '1)
                           (_%update118948%_ _%default118949%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab118946%_
                              (##fx+ (&raw-table-count _%tab118946%_) '1)))))
                        (begin
                          (vector-set!
                           _%table118951%_
                           _%probe118972%_
                           _%key118947%_)
                          (vector-set!
                           _%table118951%_
                           (##fx+ _%probe118972%_ '1)
                           (_%update118948%_ _%default118949%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab118946%_
                              (##fx- (&raw-table-free _%tab118946%_) '1))
                             (&raw-table-count-set!
                              _%tab118946%_
                              (##fx+ (&raw-table-count _%tab118946%_) '1))))))
                    (if (eq? _%k118979%_ (macro-deleted-obj))
                        (_%loop118969%_
                         (let ((_%next-probe118986%_
                                (fx+ _%start118965%_
                                     _%i118974%_
                                     (fx* _%i118974%_ _%i118974%_))))
                           (##fxmodulo _%next-probe118986%_ _%size118959%_))
                         (##fx+ _%i118974%_ '1)
                         (let ((_%$e118989%_ _%deleted118976%_))
                           (if _%$e118989%_ _%$e118989%_ _%probe118972%_)))
                        (if (_%test118954%_ _%key118947%_ _%k118979%_)
                            (let ()
                              (vector-set!
                               _%table118951%_
                               _%probe118972%_
                               _%key118947%_)
                              (vector-set!
                               _%table118951%_
                               (##fx+ _%probe118972%_ '1)
                               (_%update118948%_
                                (vector-ref
                                 _%table118951%_
                                 (##fx+ _%probe118972%_ '1)))))
                            (_%loop118969%_
                             (let ((_%next-probe118994%_
                                    (fx+ _%start118965%_
                                         _%i118974%_
                                         (fx* _%i118974%_ _%i118974%_))))
                               (##fxmodulo
                                _%next-probe118994%_
                                _%size118959%_))
                             (##fx+ _%i118974%_ '1)
                             _%deleted118976%_))))))))))
    (define __raw-table-rehash!
      (lambda (_%tab118927%_)
        (let* ((_%old-table118929%_ (&raw-table-table _%tab118927%_))
               (_%old-size118931%_ (vector-length _%old-table118929%_))
               (_%new-size118933%_
                (if (##fx< (&raw-table-count _%tab118927%_)
                           (##fxquotient _%old-size118931%_ '4))
                    (vector-length _%old-table118929%_)
                    (##fx* '2 (vector-length _%old-table118929%_))))
               (_%new-table118935%_
                (##make-vector _%new-size118933%_ (macro-unused-obj))))
          (&raw-table-table-set! _%tab118927%_ _%new-table118935%_)
          (&raw-table-count-set! _%tab118927%_ '0)
          (&raw-table-free-set!
           _%tab118927%_
           (##fxquotient _%new-size118933%_ '2))
          (let _%lp118938%_ ((_%i118940%_ '0))
            (if (##fx< _%i118940%_ _%old-size118931%_)
                (begin
                  (let ((_%key118942%_
                         (vector-ref _%old-table118929%_ _%i118940%_)))
                    (if (if (eq? _%key118942%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key118942%_ (macro-deleted-obj))))
                        (let ((_%value118944%_
                               (vector-ref
                                _%old-table118929%_
                                (##fx+ _%i118940%_ '1))))
                          (__raw-table-set!
                           _%tab118927%_
                           _%key118942%_
                           _%value118944%_))
                        '#!void))
                  (_%lp118938%_ (##fx+ _%i118940%_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_%obj118919%_)
        (let ((_%t118921%_ (##type _%obj118919%_)))
          (if (##fx= (##fxand _%t118921%_ '1) '0)
              (fxand (##type-cast _%obj118919%_ (macro-type-fixnum))
                     (macro-max-fixnum32))
              (if (symbolic? _%obj118919%_)
                  (##symbol-hash _%obj118919%_)
                  (if (procedure? _%obj118919%_)
                      (procedure-hash _%obj118919%_)
                      (fxand (__object->eq-hash _%obj118919%_)
                             (macro-max-fixnum32))))))))
    (define procedure-hash
      (lambda (_%obj118915%_)
        (let ((_%h118917%_
               (if (##closure? _%obj118915%_)
                   (__object->eq-hash _%obj118915%_)
                   (##type-cast _%obj118915%_ '0))))
          (fxand _%h118917%_ (macro-max-fixnum32)))))
    (define __eq-hash
      (lambda (_%obj118913%_) (__object->eq-hash _%obj118913%_)))
    (define eqv-hash
      (lambda (_%obj118903%_)
        (letrec ((_%combine118905%_
                  (lambda (_%a118910%_ _%b118911%_)
                    (fxand (##fx* (##fx+ _%a118910%_
                                         (fxarithmetic-shift-left
                                          _%b118911%_
                                          '1))
                                  '331804471)
                           (macro-max-fixnum32))))
                 (_%hash118906%_
                  (lambda (_%obj118908%_)
                    (macro-number-dispatch
                     _%obj118908%_
                     (eq-hash _%obj118908%_)
                     (fxand _%obj118908%_ (macro-max-fixnum32))
                     (modulo _%obj118908%_ '331804481)
                     (_%combine118905%_
                      (_%hash118906%_ (macro-ratnum-numerator _%obj118908%_))
                      (_%hash118906%_
                       (macro-ratnum-denominator _%obj118908%_)))
                     (_%combine118905%_
                      (##u16vector-ref _%obj118908%_ '0)
                      (_%combine118905%_
                       (##u16vector-ref _%obj118908%_ '1)
                       (_%combine118905%_
                        (##u16vector-ref _%obj118908%_ '2)
                        (##u16vector-ref _%obj118908%_ '3))))
                     (_%combine118905%_
                      (_%hash118906%_ (macro-cpxnum-real _%obj118908%_))
                      (_%hash118906%_ (macro-cpxnum-imag _%obj118908%_)))))))
          (_%hash118906%_ _%obj118903%_))))
    (define symbolic?
      (lambda (_%obj118898%_)
        (let ((_%$e118900%_ (symbol? _%obj118898%_)))
          (if _%$e118900%_ _%$e118900%_ (keyword? _%obj118898%_)))))
    (define symbolic-hash
      (lambda (_%obj118896%_) (##symbol-hash _%obj118896%_)))
    (define string-hash
      (lambda (_%obj118894%_) (##string=?-hash _%obj118894%_)))
    (define immediate-hash
      (lambda (_%obj118892%_) (##type-cast _%obj118892%_ (macro-type-fixnum))))
    (define make-eq-table__%
      (lambda (_%size-hint118874%_ _%seed118875%_)
        (make-raw-table__1 _%size-hint118874%_ eq-hash eq? _%seed118875%_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_%size-hint118881%_ '#f) (_%seed118883%_ '0))
          (make-eq-table__% _%size-hint118881%_ _%seed118883%_))))
    (define make-eq-table__1
      (lambda (_%size-hint118885%_)
        (let ((_%seed118887%_ '0))
          (make-eq-table__% _%size-hint118885%_ _%seed118887%_))))
    (define make-eq-table
      (lambda _g119494_
        (let ((_g119495_ (##length _g119494_)))
          (cond ((##fx= _g119495_ 0) (apply make-eq-table__0 _g119494_))
                ((##fx= _g119495_ 1) (apply make-eq-table__1 _g119494_))
                ((##fx= _g119495_ 2) (apply make-eq-table__% _g119494_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g119494_))))))
    (define make-eq-table/lock__%
      (lambda (_%size-hint118854%_ _%seed118856%_)
        (make-raw-table/lock__%
         _%size-hint118854%_
         eq-hash
         eq?
         _%seed118856%_)))
    (define make-eq-table/lock__0
      (lambda ()
        (let* ((_%size-hint118862%_ '#f) (_%seed118864%_ '0))
          (make-eq-table/lock__% _%size-hint118862%_ _%seed118864%_))))
    (define make-eq-table/lock__1
      (lambda (_%size-hint118866%_)
        (let ((_%seed118868%_ '0))
          (make-eq-table/lock__% _%size-hint118866%_ _%seed118868%_))))
    (define make-eq-table/lock
      (lambda _g119496_
        (let ((_g119497_ (##length _g119496_)))
          (cond ((##fx= _g119497_ 0) (apply make-eq-table/lock__0 _g119496_))
                ((##fx= _g119497_ 1) (apply make-eq-table/lock__1 _g119496_))
                ((##fx= _g119497_ 2) (apply make-eq-table/lock__% _g119496_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table/lock
                  _g119496_))))))
    (define eq-table-ref
      (lambda (_%tab118807%_ _%key118808%_ _%default118809%_)
        (let ((_%table118811%_ (&raw-table-table _%tab118807%_))
              (_%seed118812%_ (&raw-table-seed _%tab118807%_)))
          (let* ((_%h118814%_ (fxxor (eq-hash _%key118808%_) _%seed118812%_))
                 (_%size118817%_ (vector-length _%table118811%_))
                 (_%entries118820%_ (##fxquotient _%size118817%_ '2))
                 (_%start118823%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h118814%_ _%entries118820%_)
                   '1)))
            (let _%loop118827%_ ((_%probe118830%_ _%start118823%_)
                                 (_%i118832%_ '1)
                                 (_%deleted118834%_ '#f))
              (let ((_%k118837%_ (vector-ref _%table118811%_ _%probe118830%_)))
                (if (eq? _%k118837%_ (macro-unused-obj))
                    _%default118809%_
                    (if (eq? _%k118837%_ (macro-deleted-obj))
                        (_%loop118827%_
                         (let ((_%next-probe118842%_
                                (fx+ _%start118823%_
                                     _%i118832%_
                                     (fx* _%i118832%_ _%i118832%_))))
                           (##fxmodulo _%next-probe118842%_ _%size118817%_))
                         (##fx+ _%i118832%_ '1)
                         (let ((_%$e118845%_ _%deleted118834%_))
                           (if _%$e118845%_ _%$e118845%_ _%probe118830%_)))
                        (if (eq? _%key118808%_ _%k118837%_)
                            (vector-ref
                             _%table118811%_
                             (##fx+ _%probe118830%_ '1))
                            (_%loop118827%_
                             (let ((_%next-probe118850%_
                                    (fx+ _%start118823%_
                                         _%i118832%_
                                         (fx* _%i118832%_ _%i118832%_))))
                               (##fxmodulo
                                _%next-probe118850%_
                                _%size118817%_))
                             (##fx+ _%i118832%_ '1)
                             _%deleted118834%_))))))))))
    (define eq-table-ref/lock
      (lambda (_%tab118778%_ _%key118779%_ _%default118780%_)
        (let ((_%lock118782%_ (&raw-table-lock _%tab118778%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118787%_ ((_%spin118790%_ '0))
              (if (##fx= (##vector-cas! _%lock118782%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118782%_ '1 (current-thread))
                  (if (##fx< _%spin118790%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118787%_ (##fx+ _%spin118790%_ '1)))
                      (let ((_%owner118796%_ (##vector-ref _%lock118782%_ '1)))
                        (if (eq? _%owner118796%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118796%_)
                                (let () (##thread-yield!) (_%again118787%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118802%_
                 (eq-table-ref _%tab118778%_ _%key118779%_ _%default118780%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118782%_ '1 '#f)
                (##vector-cas! _%lock118782%_ '0 '0 '1)))
            _%$r118802%_))))
    (define __eq-table-set!
      (lambda (_%tab118730%_ _%key118731%_ _%value118732%_)
        (let ((_%table118734%_ (&raw-table-table _%tab118730%_))
              (_%seed118735%_ (&raw-table-seed _%tab118730%_)))
          (let* ((_%h118737%_ (fxxor (eq-hash _%key118731%_) _%seed118735%_))
                 (_%size118740%_ (vector-length _%table118734%_))
                 (_%entries118743%_ (##fxquotient _%size118740%_ '2))
                 (_%start118746%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h118737%_ _%entries118743%_)
                   '1)))
            (let _%loop118750%_ ((_%probe118753%_ _%start118746%_)
                                 (_%i118755%_ '1)
                                 (_%deleted118757%_ '#f))
              (let ((_%k118760%_ (vector-ref _%table118734%_ _%probe118753%_)))
                (if (eq? _%k118760%_ (macro-unused-obj))
                    (if _%deleted118757%_
                        (begin
                          (vector-set!
                           _%table118734%_
                           _%deleted118757%_
                           _%key118731%_)
                          (vector-set!
                           _%table118734%_
                           (##fx+ _%deleted118757%_ '1)
                           _%value118732%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab118730%_
                              (##fx+ (&raw-table-count _%tab118730%_) '1)))))
                        (begin
                          (vector-set!
                           _%table118734%_
                           _%probe118753%_
                           _%key118731%_)
                          (vector-set!
                           _%table118734%_
                           (##fx+ _%probe118753%_ '1)
                           _%value118732%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab118730%_
                              (##fx- (&raw-table-free _%tab118730%_) '1))
                             (&raw-table-count-set!
                              _%tab118730%_
                              (##fx+ (&raw-table-count _%tab118730%_) '1))))))
                    (if (eq? _%k118760%_ (macro-deleted-obj))
                        (_%loop118750%_
                         (let ((_%next-probe118767%_
                                (fx+ _%start118746%_
                                     _%i118755%_
                                     (fx* _%i118755%_ _%i118755%_))))
                           (##fxmodulo _%next-probe118767%_ _%size118740%_))
                         (##fx+ _%i118755%_ '1)
                         (let ((_%$e118770%_ _%deleted118757%_))
                           (if _%$e118770%_ _%$e118770%_ _%probe118753%_)))
                        (if (eq? _%key118731%_ _%k118760%_)
                            (let ()
                              (vector-set!
                               _%table118734%_
                               _%probe118753%_
                               _%key118731%_)
                              (vector-set!
                               _%table118734%_
                               (##fx+ _%probe118753%_ '1)
                               _%value118732%_))
                            (_%loop118750%_
                             (let ((_%next-probe118775%_
                                    (fx+ _%start118746%_
                                         _%i118755%_
                                         (fx* _%i118755%_ _%i118755%_))))
                               (##fxmodulo
                                _%next-probe118775%_
                                _%size118740%_))
                             (##fx+ _%i118755%_ '1)
                             _%deleted118757%_))))))))))
    (define eq-table-set!
      (lambda (_%tab118726%_ _%key118727%_ _%value118728%_)
        (if (##fx< (&raw-table-free _%tab118726%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab118726%_))
                    '4))
            (__raw-table-rehash! _%tab118726%_)
            '#!void)
        (__eq-table-set! _%tab118726%_ _%key118727%_ _%value118728%_)))
    (define eq-table-set!/lock
      (lambda (_%tab118696%_ _%key118697%_ _%value118698%_)
        (let ((_%lock118701%_ (&raw-table-lock _%tab118696%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118706%_ ((_%spin118709%_ '0))
              (if (##fx= (##vector-cas! _%lock118701%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118701%_ '1 (current-thread))
                  (if (##fx< _%spin118709%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118706%_ (##fx+ _%spin118709%_ '1)))
                      (let ((_%owner118715%_ (##vector-ref _%lock118701%_ '1)))
                        (if (eq? _%owner118715%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118715%_)
                                (let () (##thread-yield!) (_%again118706%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118721%_
                 (eq-table-set! _%tab118696%_ _%key118697%_ _%value118698%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118701%_ '1 '#f)
                (##vector-cas! _%lock118701%_ '0 '0 '1)))
            _%$r118721%_))))
    (define __eq-table-update!
      (lambda (_%tab118647%_
               _%key118648%_
               _%eq-table-update!118649%_
               _%default118650%_)
        (let ((_%table118652%_ (&raw-table-table _%tab118647%_))
              (_%seed118653%_ (&raw-table-seed _%tab118647%_)))
          (let* ((_%h118655%_ (fxxor (eq-hash _%key118648%_) _%seed118653%_))
                 (_%size118658%_ (vector-length _%table118652%_))
                 (_%entries118661%_ (##fxquotient _%size118658%_ '2))
                 (_%start118664%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h118655%_ _%entries118661%_)
                   '1)))
            (let _%loop118668%_ ((_%probe118671%_ _%start118664%_)
                                 (_%i118673%_ '1)
                                 (_%deleted118675%_ '#f))
              (let ((_%k118678%_ (vector-ref _%table118652%_ _%probe118671%_)))
                (if (eq? _%k118678%_ (macro-unused-obj))
                    (if _%deleted118675%_
                        (begin
                          (vector-set!
                           _%table118652%_
                           _%deleted118675%_
                           _%key118648%_)
                          (vector-set!
                           _%table118652%_
                           (##fx+ _%deleted118675%_ '1)
                           (_%eq-table-update!118649%_ _%default118650%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab118647%_
                              (##fx+ (&raw-table-count _%tab118647%_) '1)))))
                        (begin
                          (vector-set!
                           _%table118652%_
                           _%probe118671%_
                           _%key118648%_)
                          (vector-set!
                           _%table118652%_
                           (##fx+ _%probe118671%_ '1)
                           (_%eq-table-update!118649%_ _%default118650%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab118647%_
                              (##fx- (&raw-table-free _%tab118647%_) '1))
                             (&raw-table-count-set!
                              _%tab118647%_
                              (##fx+ (&raw-table-count _%tab118647%_) '1))))))
                    (if (eq? _%k118678%_ (macro-deleted-obj))
                        (_%loop118668%_
                         (let ((_%next-probe118685%_
                                (fx+ _%start118664%_
                                     _%i118673%_
                                     (fx* _%i118673%_ _%i118673%_))))
                           (##fxmodulo _%next-probe118685%_ _%size118658%_))
                         (##fx+ _%i118673%_ '1)
                         (let ((_%$e118688%_ _%deleted118675%_))
                           (if _%$e118688%_ _%$e118688%_ _%probe118671%_)))
                        (if (eq? _%key118648%_ _%k118678%_)
                            (let ()
                              (vector-set!
                               _%table118652%_
                               _%probe118671%_
                               _%key118648%_)
                              (vector-set!
                               _%table118652%_
                               (##fx+ _%probe118671%_ '1)
                               (_%eq-table-update!118649%_
                                (vector-ref
                                 _%table118652%_
                                 (##fx+ _%probe118671%_ '1)))))
                            (_%loop118668%_
                             (let ((_%next-probe118693%_
                                    (fx+ _%start118664%_
                                         _%i118673%_
                                         (fx* _%i118673%_ _%i118673%_))))
                               (##fxmodulo
                                _%next-probe118693%_
                                _%size118658%_))
                             (##fx+ _%i118673%_ '1)
                             _%deleted118675%_))))))))))
    (define eq-table-update!
      (lambda (_%tab118642%_
               _%key118643%_
               _%eq-table-update!118644%_
               _%default118645%_)
        (if (##fx< (&raw-table-free _%tab118642%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab118642%_))
                    '4))
            (__raw-table-rehash! _%tab118642%_)
            '#!void)
        (__eq-table-update!
         _%tab118642%_
         _%key118643%_
         _%eq-table-update!118644%_
         _%default118645%_)))
    (define eq-table-update!/lock
      (lambda (_%tab118611%_
               _%key118612%_
               _%eq-table-update!118613%_
               _%default118614%_)
        (let ((_%lock118617%_ (&raw-table-lock _%tab118611%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118622%_ ((_%spin118625%_ '0))
              (if (##fx= (##vector-cas! _%lock118617%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118617%_ '1 (current-thread))
                  (if (##fx< _%spin118625%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118622%_ (##fx+ _%spin118625%_ '1)))
                      (let ((_%owner118631%_ (##vector-ref _%lock118617%_ '1)))
                        (if (eq? _%owner118631%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118631%_)
                                (let () (##thread-yield!) (_%again118622%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118637%_
                 (_%eq-table-update!118613%_
                  _%tab118611%_
                  _%key118612%_
                  _%eq-table-update!118613%_
                  _%default118614%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118617%_ '1 '#f)
                (##vector-cas! _%lock118617%_ '0 '0 '1)))
            _%$r118637%_))))
    (define eq-table-delete!
      (lambda (_%tab118568%_ _%key118569%_)
        (let ((_%table118571%_ (&raw-table-table _%tab118568%_))
              (_%seed118573%_ (&raw-table-seed _%tab118568%_)))
          (let* ((_%h118576%_ (fxxor (eq-hash _%key118569%_) _%seed118573%_))
                 (_%size118579%_ (vector-length _%table118571%_))
                 (_%entries118582%_ (##fxquotient _%size118579%_ '2))
                 (_%start118585%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h118576%_ _%entries118582%_)
                   '1)))
            (let _%loop118589%_ ((_%probe118592%_ _%start118585%_)
                                 (_%i118594%_ '1))
              (let ((_%k118597%_ (vector-ref _%table118571%_ _%probe118592%_)))
                (if (eq? _%k118597%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k118597%_ (macro-deleted-obj))
                        (_%loop118589%_
                         (let ((_%next-probe118602%_
                                (fx+ _%start118585%_
                                     _%i118594%_
                                     (fx* _%i118594%_ _%i118594%_))))
                           (##fxmodulo _%next-probe118602%_ _%size118579%_))
                         (##fx+ _%i118594%_ '1))
                        (if (eq? _%key118569%_ _%k118597%_)
                            (let ()
                              (vector-set!
                               _%table118571%_
                               _%probe118592%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table118571%_
                               (##fx+ _%probe118592%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab118568%_
                                  (##fx- (&raw-table-count _%tab118568%_)
                                         '1)))))
                            (_%loop118589%_
                             (let ((_%next-probe118608%_
                                    (fx+ _%start118585%_
                                         _%i118594%_
                                         (fx* _%i118594%_ _%i118594%_))))
                               (##fxmodulo
                                _%next-probe118608%_
                                _%size118579%_))
                             (##fx+ _%i118594%_ '1)))))))))))
    (define eq-table-delete!/lock
      (lambda (_%tab118538%_ _%key118540%_)
        (let ((_%lock118543%_ (&raw-table-lock _%tab118538%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118548%_ ((_%spin118551%_ '0))
              (if (##fx= (##vector-cas! _%lock118543%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118543%_ '1 (current-thread))
                  (if (##fx< _%spin118551%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118548%_ (##fx+ _%spin118551%_ '1)))
                      (let ((_%owner118557%_ (##vector-ref _%lock118543%_ '1)))
                        (if (eq? _%owner118557%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118557%_)
                                (let () (##thread-yield!) (_%again118548%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118563%_ (eq-table-delete! _%tab118538%_ _%key118540%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118543%_ '1 '#f)
                (##vector-cas! _%lock118543%_ '0 '0 '1)))
            _%$r118563%_))))
    (define make-eqv-table__%
      (lambda (_%size-hint118520%_ _%seed118521%_)
        (make-raw-table__1 _%size-hint118520%_ eqv-hash eqv? _%seed118521%_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_%size-hint118527%_ '#f) (_%seed118529%_ '0))
          (make-eqv-table__% _%size-hint118527%_ _%seed118529%_))))
    (define make-eqv-table__1
      (lambda (_%size-hint118531%_)
        (let ((_%seed118533%_ '0))
          (make-eqv-table__% _%size-hint118531%_ _%seed118533%_))))
    (define make-eqv-table
      (lambda _g119498_
        (let ((_g119499_ (##length _g119498_)))
          (cond ((##fx= _g119499_ 0) (apply make-eqv-table__0 _g119498_))
                ((##fx= _g119499_ 1) (apply make-eqv-table__1 _g119498_))
                ((##fx= _g119499_ 2) (apply make-eqv-table__% _g119498_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g119498_))))))
    (define make-eqv-table/lock__%
      (lambda (_%size-hint118500%_ _%seed118502%_)
        (make-raw-table/lock__%
         _%size-hint118500%_
         eqv-hash
         eqv?
         _%seed118502%_)))
    (define make-eqv-table/lock__0
      (lambda ()
        (let* ((_%size-hint118508%_ '#f) (_%seed118510%_ '0))
          (make-eqv-table/lock__% _%size-hint118508%_ _%seed118510%_))))
    (define make-eqv-table/lock__1
      (lambda (_%size-hint118512%_)
        (let ((_%seed118514%_ '0))
          (make-eqv-table/lock__% _%size-hint118512%_ _%seed118514%_))))
    (define make-eqv-table/lock
      (lambda _g119500_
        (let ((_g119501_ (##length _g119500_)))
          (cond ((##fx= _g119501_ 0) (apply make-eqv-table/lock__0 _g119500_))
                ((##fx= _g119501_ 1) (apply make-eqv-table/lock__1 _g119500_))
                ((##fx= _g119501_ 2) (apply make-eqv-table/lock__% _g119500_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table/lock
                  _g119500_))))))
    (define eqv-table-ref
      (lambda (_%tab118453%_ _%key118454%_ _%default118455%_)
        (let ((_%table118457%_ (&raw-table-table _%tab118453%_))
              (_%seed118458%_ (&raw-table-seed _%tab118453%_)))
          (let* ((_%h118460%_ (fxxor (eqv-hash _%key118454%_) _%seed118458%_))
                 (_%size118463%_ (vector-length _%table118457%_))
                 (_%entries118466%_ (##fxquotient _%size118463%_ '2))
                 (_%start118469%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h118460%_ _%entries118466%_)
                   '1)))
            (let _%loop118473%_ ((_%probe118476%_ _%start118469%_)
                                 (_%i118478%_ '1)
                                 (_%deleted118480%_ '#f))
              (let ((_%k118483%_ (vector-ref _%table118457%_ _%probe118476%_)))
                (if (eq? _%k118483%_ (macro-unused-obj))
                    _%default118455%_
                    (if (eq? _%k118483%_ (macro-deleted-obj))
                        (_%loop118473%_
                         (let ((_%next-probe118488%_
                                (fx+ _%start118469%_
                                     _%i118478%_
                                     (fx* _%i118478%_ _%i118478%_))))
                           (##fxmodulo _%next-probe118488%_ _%size118463%_))
                         (##fx+ _%i118478%_ '1)
                         (let ((_%$e118491%_ _%deleted118480%_))
                           (if _%$e118491%_ _%$e118491%_ _%probe118476%_)))
                        (if (eqv? _%key118454%_ _%k118483%_)
                            (vector-ref
                             _%table118457%_
                             (##fx+ _%probe118476%_ '1))
                            (_%loop118473%_
                             (let ((_%next-probe118496%_
                                    (fx+ _%start118469%_
                                         _%i118478%_
                                         (fx* _%i118478%_ _%i118478%_))))
                               (##fxmodulo
                                _%next-probe118496%_
                                _%size118463%_))
                             (##fx+ _%i118478%_ '1)
                             _%deleted118480%_))))))))))
    (define eqv-table-ref/lock
      (lambda (_%tab118424%_ _%key118425%_ _%default118426%_)
        (let ((_%lock118428%_ (&raw-table-lock _%tab118424%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118433%_ ((_%spin118436%_ '0))
              (if (##fx= (##vector-cas! _%lock118428%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118428%_ '1 (current-thread))
                  (if (##fx< _%spin118436%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118433%_ (##fx+ _%spin118436%_ '1)))
                      (let ((_%owner118442%_ (##vector-ref _%lock118428%_ '1)))
                        (if (eq? _%owner118442%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118442%_)
                                (let () (##thread-yield!) (_%again118433%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118448%_
                 (eqv-table-ref
                  _%tab118424%_
                  _%key118425%_
                  _%default118426%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118428%_ '1 '#f)
                (##vector-cas! _%lock118428%_ '0 '0 '1)))
            _%$r118448%_))))
    (define __eqv-table-set!
      (lambda (_%tab118376%_ _%key118377%_ _%value118378%_)
        (let ((_%table118380%_ (&raw-table-table _%tab118376%_))
              (_%seed118381%_ (&raw-table-seed _%tab118376%_)))
          (let* ((_%h118383%_ (fxxor (eqv-hash _%key118377%_) _%seed118381%_))
                 (_%size118386%_ (vector-length _%table118380%_))
                 (_%entries118389%_ (##fxquotient _%size118386%_ '2))
                 (_%start118392%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h118383%_ _%entries118389%_)
                   '1)))
            (let _%loop118396%_ ((_%probe118399%_ _%start118392%_)
                                 (_%i118401%_ '1)
                                 (_%deleted118403%_ '#f))
              (let ((_%k118406%_ (vector-ref _%table118380%_ _%probe118399%_)))
                (if (eq? _%k118406%_ (macro-unused-obj))
                    (if _%deleted118403%_
                        (begin
                          (vector-set!
                           _%table118380%_
                           _%deleted118403%_
                           _%key118377%_)
                          (vector-set!
                           _%table118380%_
                           (##fx+ _%deleted118403%_ '1)
                           _%value118378%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab118376%_
                              (##fx+ (&raw-table-count _%tab118376%_) '1)))))
                        (begin
                          (vector-set!
                           _%table118380%_
                           _%probe118399%_
                           _%key118377%_)
                          (vector-set!
                           _%table118380%_
                           (##fx+ _%probe118399%_ '1)
                           _%value118378%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab118376%_
                              (##fx- (&raw-table-free _%tab118376%_) '1))
                             (&raw-table-count-set!
                              _%tab118376%_
                              (##fx+ (&raw-table-count _%tab118376%_) '1))))))
                    (if (eq? _%k118406%_ (macro-deleted-obj))
                        (_%loop118396%_
                         (let ((_%next-probe118413%_
                                (fx+ _%start118392%_
                                     _%i118401%_
                                     (fx* _%i118401%_ _%i118401%_))))
                           (##fxmodulo _%next-probe118413%_ _%size118386%_))
                         (##fx+ _%i118401%_ '1)
                         (let ((_%$e118416%_ _%deleted118403%_))
                           (if _%$e118416%_ _%$e118416%_ _%probe118399%_)))
                        (if (eqv? _%key118377%_ _%k118406%_)
                            (let ()
                              (vector-set!
                               _%table118380%_
                               _%probe118399%_
                               _%key118377%_)
                              (vector-set!
                               _%table118380%_
                               (##fx+ _%probe118399%_ '1)
                               _%value118378%_))
                            (_%loop118396%_
                             (let ((_%next-probe118421%_
                                    (fx+ _%start118392%_
                                         _%i118401%_
                                         (fx* _%i118401%_ _%i118401%_))))
                               (##fxmodulo
                                _%next-probe118421%_
                                _%size118386%_))
                             (##fx+ _%i118401%_ '1)
                             _%deleted118403%_))))))))))
    (define eqv-table-set!
      (lambda (_%tab118372%_ _%key118373%_ _%value118374%_)
        (if (##fx< (&raw-table-free _%tab118372%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab118372%_))
                    '4))
            (__raw-table-rehash! _%tab118372%_)
            '#!void)
        (__eqv-table-set! _%tab118372%_ _%key118373%_ _%value118374%_)))
    (define eqv-table-set!/lock
      (lambda (_%tab118342%_ _%key118343%_ _%value118344%_)
        (let ((_%lock118347%_ (&raw-table-lock _%tab118342%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118352%_ ((_%spin118355%_ '0))
              (if (##fx= (##vector-cas! _%lock118347%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118347%_ '1 (current-thread))
                  (if (##fx< _%spin118355%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118352%_ (##fx+ _%spin118355%_ '1)))
                      (let ((_%owner118361%_ (##vector-ref _%lock118347%_ '1)))
                        (if (eq? _%owner118361%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118361%_)
                                (let () (##thread-yield!) (_%again118352%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118367%_
                 (eqv-table-set! _%tab118342%_ _%key118343%_ _%value118344%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118347%_ '1 '#f)
                (##vector-cas! _%lock118347%_ '0 '0 '1)))
            _%$r118367%_))))
    (define __eqv-table-update!
      (lambda (_%tab118293%_
               _%key118294%_
               _%eqv-table-update!118295%_
               _%default118296%_)
        (let ((_%table118298%_ (&raw-table-table _%tab118293%_))
              (_%seed118299%_ (&raw-table-seed _%tab118293%_)))
          (let* ((_%h118301%_ (fxxor (eqv-hash _%key118294%_) _%seed118299%_))
                 (_%size118304%_ (vector-length _%table118298%_))
                 (_%entries118307%_ (##fxquotient _%size118304%_ '2))
                 (_%start118310%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h118301%_ _%entries118307%_)
                   '1)))
            (let _%loop118314%_ ((_%probe118317%_ _%start118310%_)
                                 (_%i118319%_ '1)
                                 (_%deleted118321%_ '#f))
              (let ((_%k118324%_ (vector-ref _%table118298%_ _%probe118317%_)))
                (if (eq? _%k118324%_ (macro-unused-obj))
                    (if _%deleted118321%_
                        (begin
                          (vector-set!
                           _%table118298%_
                           _%deleted118321%_
                           _%key118294%_)
                          (vector-set!
                           _%table118298%_
                           (##fx+ _%deleted118321%_ '1)
                           (_%eqv-table-update!118295%_ _%default118296%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab118293%_
                              (##fx+ (&raw-table-count _%tab118293%_) '1)))))
                        (begin
                          (vector-set!
                           _%table118298%_
                           _%probe118317%_
                           _%key118294%_)
                          (vector-set!
                           _%table118298%_
                           (##fx+ _%probe118317%_ '1)
                           (_%eqv-table-update!118295%_ _%default118296%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab118293%_
                              (##fx- (&raw-table-free _%tab118293%_) '1))
                             (&raw-table-count-set!
                              _%tab118293%_
                              (##fx+ (&raw-table-count _%tab118293%_) '1))))))
                    (if (eq? _%k118324%_ (macro-deleted-obj))
                        (_%loop118314%_
                         (let ((_%next-probe118331%_
                                (fx+ _%start118310%_
                                     _%i118319%_
                                     (fx* _%i118319%_ _%i118319%_))))
                           (##fxmodulo _%next-probe118331%_ _%size118304%_))
                         (##fx+ _%i118319%_ '1)
                         (let ((_%$e118334%_ _%deleted118321%_))
                           (if _%$e118334%_ _%$e118334%_ _%probe118317%_)))
                        (if (eqv? _%key118294%_ _%k118324%_)
                            (let ()
                              (vector-set!
                               _%table118298%_
                               _%probe118317%_
                               _%key118294%_)
                              (vector-set!
                               _%table118298%_
                               (##fx+ _%probe118317%_ '1)
                               (_%eqv-table-update!118295%_
                                (vector-ref
                                 _%table118298%_
                                 (##fx+ _%probe118317%_ '1)))))
                            (_%loop118314%_
                             (let ((_%next-probe118339%_
                                    (fx+ _%start118310%_
                                         _%i118319%_
                                         (fx* _%i118319%_ _%i118319%_))))
                               (##fxmodulo
                                _%next-probe118339%_
                                _%size118304%_))
                             (##fx+ _%i118319%_ '1)
                             _%deleted118321%_))))))))))
    (define eqv-table-update!
      (lambda (_%tab118288%_
               _%key118289%_
               _%eqv-table-update!118290%_
               _%default118291%_)
        (if (##fx< (&raw-table-free _%tab118288%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab118288%_))
                    '4))
            (__raw-table-rehash! _%tab118288%_)
            '#!void)
        (__eqv-table-update!
         _%tab118288%_
         _%key118289%_
         _%eqv-table-update!118290%_
         _%default118291%_)))
    (define eqv-table-update!/lock
      (lambda (_%tab118257%_
               _%key118258%_
               _%eqv-table-update!118259%_
               _%default118260%_)
        (let ((_%lock118263%_ (&raw-table-lock _%tab118257%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118268%_ ((_%spin118271%_ '0))
              (if (##fx= (##vector-cas! _%lock118263%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118263%_ '1 (current-thread))
                  (if (##fx< _%spin118271%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118268%_ (##fx+ _%spin118271%_ '1)))
                      (let ((_%owner118277%_ (##vector-ref _%lock118263%_ '1)))
                        (if (eq? _%owner118277%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118277%_)
                                (let () (##thread-yield!) (_%again118268%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118283%_
                 (_%eqv-table-update!118259%_
                  _%tab118257%_
                  _%key118258%_
                  _%eqv-table-update!118259%_
                  _%default118260%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118263%_ '1 '#f)
                (##vector-cas! _%lock118263%_ '0 '0 '1)))
            _%$r118283%_))))
    (define eqv-table-delete!
      (lambda (_%tab118214%_ _%key118215%_)
        (let ((_%table118217%_ (&raw-table-table _%tab118214%_))
              (_%seed118219%_ (&raw-table-seed _%tab118214%_)))
          (let* ((_%h118222%_ (fxxor (eqv-hash _%key118215%_) _%seed118219%_))
                 (_%size118225%_ (vector-length _%table118217%_))
                 (_%entries118228%_ (##fxquotient _%size118225%_ '2))
                 (_%start118231%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h118222%_ _%entries118228%_)
                   '1)))
            (let _%loop118235%_ ((_%probe118238%_ _%start118231%_)
                                 (_%i118240%_ '1))
              (let ((_%k118243%_ (vector-ref _%table118217%_ _%probe118238%_)))
                (if (eq? _%k118243%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k118243%_ (macro-deleted-obj))
                        (_%loop118235%_
                         (let ((_%next-probe118248%_
                                (fx+ _%start118231%_
                                     _%i118240%_
                                     (fx* _%i118240%_ _%i118240%_))))
                           (##fxmodulo _%next-probe118248%_ _%size118225%_))
                         (##fx+ _%i118240%_ '1))
                        (if (eqv? _%key118215%_ _%k118243%_)
                            (let ()
                              (vector-set!
                               _%table118217%_
                               _%probe118238%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table118217%_
                               (##fx+ _%probe118238%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab118214%_
                                  (##fx- (&raw-table-count _%tab118214%_)
                                         '1)))))
                            (_%loop118235%_
                             (let ((_%next-probe118254%_
                                    (fx+ _%start118231%_
                                         _%i118240%_
                                         (fx* _%i118240%_ _%i118240%_))))
                               (##fxmodulo
                                _%next-probe118254%_
                                _%size118225%_))
                             (##fx+ _%i118240%_ '1)))))))))))
    (define eqv-table-delete!/lock
      (lambda (_%tab118184%_ _%key118186%_)
        (let ((_%lock118189%_ (&raw-table-lock _%tab118184%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118194%_ ((_%spin118197%_ '0))
              (if (##fx= (##vector-cas! _%lock118189%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118189%_ '1 (current-thread))
                  (if (##fx< _%spin118197%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118194%_ (##fx+ _%spin118197%_ '1)))
                      (let ((_%owner118203%_ (##vector-ref _%lock118189%_ '1)))
                        (if (eq? _%owner118203%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118203%_)
                                (let () (##thread-yield!) (_%again118194%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118209%_ (eqv-table-delete! _%tab118184%_ _%key118186%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118189%_ '1 '#f)
                (##vector-cas! _%lock118189%_ '0 '0 '1)))
            _%$r118209%_))))
    (define make-symbolic-table__%
      (lambda (_%size-hint118166%_ _%seed118167%_)
        (make-raw-table__1
         _%size-hint118166%_
         symbolic-hash
         eq?
         _%seed118167%_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_%size-hint118173%_ '#f) (_%seed118175%_ '0))
          (make-symbolic-table__% _%size-hint118173%_ _%seed118175%_))))
    (define make-symbolic-table__1
      (lambda (_%size-hint118177%_)
        (let ((_%seed118179%_ '0))
          (make-symbolic-table__% _%size-hint118177%_ _%seed118179%_))))
    (define make-symbolic-table
      (lambda _g119502_
        (let ((_g119503_ (##length _g119502_)))
          (cond ((##fx= _g119503_ 0) (apply make-symbolic-table__0 _g119502_))
                ((##fx= _g119503_ 1) (apply make-symbolic-table__1 _g119502_))
                ((##fx= _g119503_ 2) (apply make-symbolic-table__% _g119502_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g119502_))))))
    (define make-symbolic-table/lock__%
      (lambda (_%size-hint118146%_ _%seed118148%_)
        (make-raw-table/lock__%
         _%size-hint118146%_
         symbolic-hash
         eq?
         _%seed118148%_)))
    (define make-symbolic-table/lock__0
      (lambda ()
        (let* ((_%size-hint118154%_ '#f) (_%seed118156%_ '0))
          (make-symbolic-table/lock__% _%size-hint118154%_ _%seed118156%_))))
    (define make-symbolic-table/lock__1
      (lambda (_%size-hint118158%_)
        (let ((_%seed118160%_ '0))
          (make-symbolic-table/lock__% _%size-hint118158%_ _%seed118160%_))))
    (define make-symbolic-table/lock
      (lambda _g119504_
        (let ((_g119505_ (##length _g119504_)))
          (cond ((##fx= _g119505_ 0)
                 (apply make-symbolic-table/lock__0 _g119504_))
                ((##fx= _g119505_ 1)
                 (apply make-symbolic-table/lock__1 _g119504_))
                ((##fx= _g119505_ 2)
                 (apply make-symbolic-table/lock__% _g119504_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table/lock
                  _g119504_))))))
    (define symbolic-table-ref
      (lambda (_%tab118099%_ _%key118100%_ _%default118101%_)
        (let ((_%table118103%_ (&raw-table-table _%tab118099%_))
              (_%seed118104%_ (&raw-table-seed _%tab118099%_)))
          (let* ((_%h118106%_
                  (fxxor (##symbol-hash _%key118100%_) _%seed118104%_))
                 (_%size118109%_ (vector-length _%table118103%_))
                 (_%entries118112%_ (##fxquotient _%size118109%_ '2))
                 (_%start118115%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h118106%_ _%entries118112%_)
                   '1)))
            (let _%loop118119%_ ((_%probe118122%_ _%start118115%_)
                                 (_%i118124%_ '1)
                                 (_%deleted118126%_ '#f))
              (let ((_%k118129%_ (vector-ref _%table118103%_ _%probe118122%_)))
                (if (eq? _%k118129%_ (macro-unused-obj))
                    _%default118101%_
                    (if (eq? _%k118129%_ (macro-deleted-obj))
                        (_%loop118119%_
                         (let ((_%next-probe118134%_
                                (fx+ _%start118115%_
                                     _%i118124%_
                                     (fx* _%i118124%_ _%i118124%_))))
                           (##fxmodulo _%next-probe118134%_ _%size118109%_))
                         (##fx+ _%i118124%_ '1)
                         (let ((_%$e118137%_ _%deleted118126%_))
                           (if _%$e118137%_ _%$e118137%_ _%probe118122%_)))
                        (if (eq? _%key118100%_ _%k118129%_)
                            (vector-ref
                             _%table118103%_
                             (##fx+ _%probe118122%_ '1))
                            (_%loop118119%_
                             (let ((_%next-probe118142%_
                                    (fx+ _%start118115%_
                                         _%i118124%_
                                         (fx* _%i118124%_ _%i118124%_))))
                               (##fxmodulo
                                _%next-probe118142%_
                                _%size118109%_))
                             (##fx+ _%i118124%_ '1)
                             _%deleted118126%_))))))))))
    (define symbolic-table-ref/lock
      (lambda (_%tab118070%_ _%key118071%_ _%default118072%_)
        (let ((_%lock118074%_ (&raw-table-lock _%tab118070%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again118079%_ ((_%spin118082%_ '0))
              (if (##fx= (##vector-cas! _%lock118074%_ '0 '1 '0) '0)
                  (##vector-set! _%lock118074%_ '1 (current-thread))
                  (if (##fx< _%spin118082%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again118079%_ (##fx+ _%spin118082%_ '1)))
                      (let ((_%owner118088%_ (##vector-ref _%lock118074%_ '1)))
                        (if (eq? _%owner118088%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118088%_)
                                (let () (##thread-yield!) (_%again118079%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118094%_
                 (symbolic-table-ref
                  _%tab118070%_
                  _%key118071%_
                  _%default118072%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock118074%_ '1 '#f)
                (##vector-cas! _%lock118074%_ '0 '0 '1)))
            _%$r118094%_))))
    (define __symbolic-table-set!
      (lambda (_%tab118022%_ _%key118023%_ _%value118024%_)
        (let ((_%table118026%_ (&raw-table-table _%tab118022%_))
              (_%seed118027%_ (&raw-table-seed _%tab118022%_)))
          (let* ((_%h118029%_
                  (fxxor (##symbol-hash _%key118023%_) _%seed118027%_))
                 (_%size118032%_ (vector-length _%table118026%_))
                 (_%entries118035%_ (##fxquotient _%size118032%_ '2))
                 (_%start118038%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h118029%_ _%entries118035%_)
                   '1)))
            (let _%loop118042%_ ((_%probe118045%_ _%start118038%_)
                                 (_%i118047%_ '1)
                                 (_%deleted118049%_ '#f))
              (let ((_%k118052%_ (vector-ref _%table118026%_ _%probe118045%_)))
                (if (eq? _%k118052%_ (macro-unused-obj))
                    (if _%deleted118049%_
                        (begin
                          (vector-set!
                           _%table118026%_
                           _%deleted118049%_
                           _%key118023%_)
                          (vector-set!
                           _%table118026%_
                           (##fx+ _%deleted118049%_ '1)
                           _%value118024%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab118022%_
                              (##fx+ (&raw-table-count _%tab118022%_) '1)))))
                        (begin
                          (vector-set!
                           _%table118026%_
                           _%probe118045%_
                           _%key118023%_)
                          (vector-set!
                           _%table118026%_
                           (##fx+ _%probe118045%_ '1)
                           _%value118024%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab118022%_
                              (##fx- (&raw-table-free _%tab118022%_) '1))
                             (&raw-table-count-set!
                              _%tab118022%_
                              (##fx+ (&raw-table-count _%tab118022%_) '1))))))
                    (if (eq? _%k118052%_ (macro-deleted-obj))
                        (_%loop118042%_
                         (let ((_%next-probe118059%_
                                (fx+ _%start118038%_
                                     _%i118047%_
                                     (fx* _%i118047%_ _%i118047%_))))
                           (##fxmodulo _%next-probe118059%_ _%size118032%_))
                         (##fx+ _%i118047%_ '1)
                         (let ((_%$e118062%_ _%deleted118049%_))
                           (if _%$e118062%_ _%$e118062%_ _%probe118045%_)))
                        (if (eq? _%key118023%_ _%k118052%_)
                            (let ()
                              (vector-set!
                               _%table118026%_
                               _%probe118045%_
                               _%key118023%_)
                              (vector-set!
                               _%table118026%_
                               (##fx+ _%probe118045%_ '1)
                               _%value118024%_))
                            (_%loop118042%_
                             (let ((_%next-probe118067%_
                                    (fx+ _%start118038%_
                                         _%i118047%_
                                         (fx* _%i118047%_ _%i118047%_))))
                               (##fxmodulo
                                _%next-probe118067%_
                                _%size118032%_))
                             (##fx+ _%i118047%_ '1)
                             _%deleted118049%_))))))))))
    (define symbolic-table-set!
      (lambda (_%tab118018%_ _%key118019%_ _%value118020%_)
        (if (##fx< (&raw-table-free _%tab118018%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab118018%_))
                    '4))
            (__raw-table-rehash! _%tab118018%_)
            '#!void)
        (__symbolic-table-set! _%tab118018%_ _%key118019%_ _%value118020%_)))
    (define symbolic-table-set!/lock
      (lambda (_%tab117988%_ _%key117989%_ _%value117990%_)
        (let ((_%lock117993%_ (&raw-table-lock _%tab117988%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again117998%_ ((_%spin118001%_ '0))
              (if (##fx= (##vector-cas! _%lock117993%_ '0 '1 '0) '0)
                  (##vector-set! _%lock117993%_ '1 (current-thread))
                  (if (##fx< _%spin118001%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again117998%_ (##fx+ _%spin118001%_ '1)))
                      (let ((_%owner118007%_ (##vector-ref _%lock117993%_ '1)))
                        (if (eq? _%owner118007%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner118007%_)
                                (let () (##thread-yield!) (_%again117998%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r118013%_
                 (symbolic-table-set!
                  _%tab117988%_
                  _%key117989%_
                  _%value117990%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock117993%_ '1 '#f)
                (##vector-cas! _%lock117993%_ '0 '0 '1)))
            _%$r118013%_))))
    (define __symbolic-table-update!
      (lambda (_%tab117939%_
               _%key117940%_
               _%symbolic-table-update!117941%_
               _%default117942%_)
        (let ((_%table117944%_ (&raw-table-table _%tab117939%_))
              (_%seed117945%_ (&raw-table-seed _%tab117939%_)))
          (let* ((_%h117947%_
                  (fxxor (##symbol-hash _%key117940%_) _%seed117945%_))
                 (_%size117950%_ (vector-length _%table117944%_))
                 (_%entries117953%_ (##fxquotient _%size117950%_ '2))
                 (_%start117956%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h117947%_ _%entries117953%_)
                   '1)))
            (let _%loop117960%_ ((_%probe117963%_ _%start117956%_)
                                 (_%i117965%_ '1)
                                 (_%deleted117967%_ '#f))
              (let ((_%k117970%_ (vector-ref _%table117944%_ _%probe117963%_)))
                (if (eq? _%k117970%_ (macro-unused-obj))
                    (if _%deleted117967%_
                        (begin
                          (vector-set!
                           _%table117944%_
                           _%deleted117967%_
                           _%key117940%_)
                          (vector-set!
                           _%table117944%_
                           (##fx+ _%deleted117967%_ '1)
                           (_%symbolic-table-update!117941%_
                            _%default117942%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab117939%_
                              (##fx+ (&raw-table-count _%tab117939%_) '1)))))
                        (begin
                          (vector-set!
                           _%table117944%_
                           _%probe117963%_
                           _%key117940%_)
                          (vector-set!
                           _%table117944%_
                           (##fx+ _%probe117963%_ '1)
                           (_%symbolic-table-update!117941%_
                            _%default117942%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab117939%_
                              (##fx- (&raw-table-free _%tab117939%_) '1))
                             (&raw-table-count-set!
                              _%tab117939%_
                              (##fx+ (&raw-table-count _%tab117939%_) '1))))))
                    (if (eq? _%k117970%_ (macro-deleted-obj))
                        (_%loop117960%_
                         (let ((_%next-probe117977%_
                                (fx+ _%start117956%_
                                     _%i117965%_
                                     (fx* _%i117965%_ _%i117965%_))))
                           (##fxmodulo _%next-probe117977%_ _%size117950%_))
                         (##fx+ _%i117965%_ '1)
                         (let ((_%$e117980%_ _%deleted117967%_))
                           (if _%$e117980%_ _%$e117980%_ _%probe117963%_)))
                        (if (eq? _%key117940%_ _%k117970%_)
                            (let ()
                              (vector-set!
                               _%table117944%_
                               _%probe117963%_
                               _%key117940%_)
                              (vector-set!
                               _%table117944%_
                               (##fx+ _%probe117963%_ '1)
                               (_%symbolic-table-update!117941%_
                                (vector-ref
                                 _%table117944%_
                                 (##fx+ _%probe117963%_ '1)))))
                            (_%loop117960%_
                             (let ((_%next-probe117985%_
                                    (fx+ _%start117956%_
                                         _%i117965%_
                                         (fx* _%i117965%_ _%i117965%_))))
                               (##fxmodulo
                                _%next-probe117985%_
                                _%size117950%_))
                             (##fx+ _%i117965%_ '1)
                             _%deleted117967%_))))))))))
    (define symbolic-table-update!
      (lambda (_%tab117934%_
               _%key117935%_
               _%symbolic-table-update!117936%_
               _%default117937%_)
        (if (##fx< (&raw-table-free _%tab117934%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab117934%_))
                    '4))
            (__raw-table-rehash! _%tab117934%_)
            '#!void)
        (__symbolic-table-update!
         _%tab117934%_
         _%key117935%_
         _%symbolic-table-update!117936%_
         _%default117937%_)))
    (define symbolic-table-update!/lock
      (lambda (_%tab117903%_
               _%key117904%_
               _%symbolic-table-update!117905%_
               _%default117906%_)
        (let ((_%lock117909%_ (&raw-table-lock _%tab117903%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again117914%_ ((_%spin117917%_ '0))
              (if (##fx= (##vector-cas! _%lock117909%_ '0 '1 '0) '0)
                  (##vector-set! _%lock117909%_ '1 (current-thread))
                  (if (##fx< _%spin117917%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again117914%_ (##fx+ _%spin117917%_ '1)))
                      (let ((_%owner117923%_ (##vector-ref _%lock117909%_ '1)))
                        (if (eq? _%owner117923%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner117923%_)
                                (let () (##thread-yield!) (_%again117914%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r117929%_
                 (_%symbolic-table-update!117905%_
                  _%tab117903%_
                  _%key117904%_
                  _%symbolic-table-update!117905%_
                  _%default117906%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock117909%_ '1 '#f)
                (##vector-cas! _%lock117909%_ '0 '0 '1)))
            _%$r117929%_))))
    (define symbolic-table-delete!
      (lambda (_%tab117860%_ _%key117861%_)
        (let ((_%table117863%_ (&raw-table-table _%tab117860%_))
              (_%seed117865%_ (&raw-table-seed _%tab117860%_)))
          (let* ((_%h117868%_
                  (fxxor (##symbol-hash _%key117861%_) _%seed117865%_))
                 (_%size117871%_ (vector-length _%table117863%_))
                 (_%entries117874%_ (##fxquotient _%size117871%_ '2))
                 (_%start117877%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h117868%_ _%entries117874%_)
                   '1)))
            (let _%loop117881%_ ((_%probe117884%_ _%start117877%_)
                                 (_%i117886%_ '1))
              (let ((_%k117889%_ (vector-ref _%table117863%_ _%probe117884%_)))
                (if (eq? _%k117889%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k117889%_ (macro-deleted-obj))
                        (_%loop117881%_
                         (let ((_%next-probe117894%_
                                (fx+ _%start117877%_
                                     _%i117886%_
                                     (fx* _%i117886%_ _%i117886%_))))
                           (##fxmodulo _%next-probe117894%_ _%size117871%_))
                         (##fx+ _%i117886%_ '1))
                        (if (eq? _%key117861%_ _%k117889%_)
                            (let ()
                              (vector-set!
                               _%table117863%_
                               _%probe117884%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table117863%_
                               (##fx+ _%probe117884%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab117860%_
                                  (##fx- (&raw-table-count _%tab117860%_)
                                         '1)))))
                            (_%loop117881%_
                             (let ((_%next-probe117900%_
                                    (fx+ _%start117877%_
                                         _%i117886%_
                                         (fx* _%i117886%_ _%i117886%_))))
                               (##fxmodulo
                                _%next-probe117900%_
                                _%size117871%_))
                             (##fx+ _%i117886%_ '1)))))))))))
    (define symbolic-table-delete!/lock
      (lambda (_%tab117830%_ _%key117832%_)
        (let ((_%lock117835%_ (&raw-table-lock _%tab117830%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again117840%_ ((_%spin117843%_ '0))
              (if (##fx= (##vector-cas! _%lock117835%_ '0 '1 '0) '0)
                  (##vector-set! _%lock117835%_ '1 (current-thread))
                  (if (##fx< _%spin117843%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again117840%_ (##fx+ _%spin117843%_ '1)))
                      (let ((_%owner117849%_ (##vector-ref _%lock117835%_ '1)))
                        (if (eq? _%owner117849%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner117849%_)
                                (let () (##thread-yield!) (_%again117840%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r117855%_
                 (symbolic-table-delete! _%tab117830%_ _%key117832%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock117835%_ '1 '#f)
                (##vector-cas! _%lock117835%_ '0 '0 '1)))
            _%$r117855%_))))
    (define make-string-table__%
      (lambda (_%size-hint117812%_ _%seed117813%_)
        (make-raw-table__1
         _%size-hint117812%_
         string-hash
         ##string=?
         _%seed117813%_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_%size-hint117819%_ '#f) (_%seed117821%_ '0))
          (make-string-table__% _%size-hint117819%_ _%seed117821%_))))
    (define make-string-table__1
      (lambda (_%size-hint117823%_)
        (let ((_%seed117825%_ '0))
          (make-string-table__% _%size-hint117823%_ _%seed117825%_))))
    (define make-string-table
      (lambda _g119506_
        (let ((_g119507_ (##length _g119506_)))
          (cond ((##fx= _g119507_ 0) (apply make-string-table__0 _g119506_))
                ((##fx= _g119507_ 1) (apply make-string-table__1 _g119506_))
                ((##fx= _g119507_ 2) (apply make-string-table__% _g119506_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g119506_))))))
    (define make-string-table/lock__%
      (lambda (_%size-hint117792%_ _%seed117794%_)
        (make-raw-table/lock__%
         _%size-hint117792%_
         string-hash
         ##string=?
         _%seed117794%_)))
    (define make-string-table/lock__0
      (lambda ()
        (let* ((_%size-hint117800%_ '#f) (_%seed117802%_ '0))
          (make-string-table/lock__% _%size-hint117800%_ _%seed117802%_))))
    (define make-string-table/lock__1
      (lambda (_%size-hint117804%_)
        (let ((_%seed117806%_ '0))
          (make-string-table/lock__% _%size-hint117804%_ _%seed117806%_))))
    (define make-string-table/lock
      (lambda _g119508_
        (let ((_g119509_ (##length _g119508_)))
          (cond ((##fx= _g119509_ 0)
                 (apply make-string-table/lock__0 _g119508_))
                ((##fx= _g119509_ 1)
                 (apply make-string-table/lock__1 _g119508_))
                ((##fx= _g119509_ 2)
                 (apply make-string-table/lock__% _g119508_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table/lock
                  _g119508_))))))
    (define string-table-ref
      (lambda (_%tab117745%_ _%key117746%_ _%default117747%_)
        (let ((_%table117749%_ (&raw-table-table _%tab117745%_))
              (_%seed117750%_ (&raw-table-seed _%tab117745%_)))
          (let* ((_%h117752%_
                  (fxxor (##string=?-hash _%key117746%_) _%seed117750%_))
                 (_%size117755%_ (vector-length _%table117749%_))
                 (_%entries117758%_ (##fxquotient _%size117755%_ '2))
                 (_%start117761%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h117752%_ _%entries117758%_)
                   '1)))
            (let _%loop117765%_ ((_%probe117768%_ _%start117761%_)
                                 (_%i117770%_ '1)
                                 (_%deleted117772%_ '#f))
              (let ((_%k117775%_ (vector-ref _%table117749%_ _%probe117768%_)))
                (if (eq? _%k117775%_ (macro-unused-obj))
                    _%default117747%_
                    (if (eq? _%k117775%_ (macro-deleted-obj))
                        (_%loop117765%_
                         (let ((_%next-probe117780%_
                                (fx+ _%start117761%_
                                     _%i117770%_
                                     (fx* _%i117770%_ _%i117770%_))))
                           (##fxmodulo _%next-probe117780%_ _%size117755%_))
                         (##fx+ _%i117770%_ '1)
                         (let ((_%$e117783%_ _%deleted117772%_))
                           (if _%$e117783%_ _%$e117783%_ _%probe117768%_)))
                        (if (##string=? _%key117746%_ _%k117775%_)
                            (vector-ref
                             _%table117749%_
                             (##fx+ _%probe117768%_ '1))
                            (_%loop117765%_
                             (let ((_%next-probe117788%_
                                    (fx+ _%start117761%_
                                         _%i117770%_
                                         (fx* _%i117770%_ _%i117770%_))))
                               (##fxmodulo
                                _%next-probe117788%_
                                _%size117755%_))
                             (##fx+ _%i117770%_ '1)
                             _%deleted117772%_))))))))))
    (define string-table-ref/lock
      (lambda (_%tab117716%_ _%key117717%_ _%default117718%_)
        (let ((_%lock117720%_ (&raw-table-lock _%tab117716%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again117725%_ ((_%spin117728%_ '0))
              (if (##fx= (##vector-cas! _%lock117720%_ '0 '1 '0) '0)
                  (##vector-set! _%lock117720%_ '1 (current-thread))
                  (if (##fx< _%spin117728%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again117725%_ (##fx+ _%spin117728%_ '1)))
                      (let ((_%owner117734%_ (##vector-ref _%lock117720%_ '1)))
                        (if (eq? _%owner117734%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner117734%_)
                                (let () (##thread-yield!) (_%again117725%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r117740%_
                 (string-table-ref
                  _%tab117716%_
                  _%key117717%_
                  _%default117718%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock117720%_ '1 '#f)
                (##vector-cas! _%lock117720%_ '0 '0 '1)))
            _%$r117740%_))))
    (define __string-table-set!
      (lambda (_%tab117668%_ _%key117669%_ _%value117670%_)
        (let ((_%table117672%_ (&raw-table-table _%tab117668%_))
              (_%seed117673%_ (&raw-table-seed _%tab117668%_)))
          (let* ((_%h117675%_
                  (fxxor (##string=?-hash _%key117669%_) _%seed117673%_))
                 (_%size117678%_ (vector-length _%table117672%_))
                 (_%entries117681%_ (##fxquotient _%size117678%_ '2))
                 (_%start117684%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h117675%_ _%entries117681%_)
                   '1)))
            (let _%loop117688%_ ((_%probe117691%_ _%start117684%_)
                                 (_%i117693%_ '1)
                                 (_%deleted117695%_ '#f))
              (let ((_%k117698%_ (vector-ref _%table117672%_ _%probe117691%_)))
                (if (eq? _%k117698%_ (macro-unused-obj))
                    (if _%deleted117695%_
                        (begin
                          (vector-set!
                           _%table117672%_
                           _%deleted117695%_
                           _%key117669%_)
                          (vector-set!
                           _%table117672%_
                           (##fx+ _%deleted117695%_ '1)
                           _%value117670%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab117668%_
                              (##fx+ (&raw-table-count _%tab117668%_) '1)))))
                        (begin
                          (vector-set!
                           _%table117672%_
                           _%probe117691%_
                           _%key117669%_)
                          (vector-set!
                           _%table117672%_
                           (##fx+ _%probe117691%_ '1)
                           _%value117670%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab117668%_
                              (##fx- (&raw-table-free _%tab117668%_) '1))
                             (&raw-table-count-set!
                              _%tab117668%_
                              (##fx+ (&raw-table-count _%tab117668%_) '1))))))
                    (if (eq? _%k117698%_ (macro-deleted-obj))
                        (_%loop117688%_
                         (let ((_%next-probe117705%_
                                (fx+ _%start117684%_
                                     _%i117693%_
                                     (fx* _%i117693%_ _%i117693%_))))
                           (##fxmodulo _%next-probe117705%_ _%size117678%_))
                         (##fx+ _%i117693%_ '1)
                         (let ((_%$e117708%_ _%deleted117695%_))
                           (if _%$e117708%_ _%$e117708%_ _%probe117691%_)))
                        (if (##string=? _%key117669%_ _%k117698%_)
                            (let ()
                              (vector-set!
                               _%table117672%_
                               _%probe117691%_
                               _%key117669%_)
                              (vector-set!
                               _%table117672%_
                               (##fx+ _%probe117691%_ '1)
                               _%value117670%_))
                            (_%loop117688%_
                             (let ((_%next-probe117713%_
                                    (fx+ _%start117684%_
                                         _%i117693%_
                                         (fx* _%i117693%_ _%i117693%_))))
                               (##fxmodulo
                                _%next-probe117713%_
                                _%size117678%_))
                             (##fx+ _%i117693%_ '1)
                             _%deleted117695%_))))))))))
    (define string-table-set!
      (lambda (_%tab117664%_ _%key117665%_ _%value117666%_)
        (if (##fx< (&raw-table-free _%tab117664%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab117664%_))
                    '4))
            (__raw-table-rehash! _%tab117664%_)
            '#!void)
        (__string-table-set! _%tab117664%_ _%key117665%_ _%value117666%_)))
    (define string-table-set!/lock
      (lambda (_%tab117634%_ _%key117635%_ _%value117636%_)
        (let ((_%lock117639%_ (&raw-table-lock _%tab117634%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again117644%_ ((_%spin117647%_ '0))
              (if (##fx= (##vector-cas! _%lock117639%_ '0 '1 '0) '0)
                  (##vector-set! _%lock117639%_ '1 (current-thread))
                  (if (##fx< _%spin117647%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again117644%_ (##fx+ _%spin117647%_ '1)))
                      (let ((_%owner117653%_ (##vector-ref _%lock117639%_ '1)))
                        (if (eq? _%owner117653%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner117653%_)
                                (let () (##thread-yield!) (_%again117644%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r117659%_
                 (string-table-set!
                  _%tab117634%_
                  _%key117635%_
                  _%value117636%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock117639%_ '1 '#f)
                (##vector-cas! _%lock117639%_ '0 '0 '1)))
            _%$r117659%_))))
    (define __string-table-update!
      (lambda (_%tab117585%_
               _%key117586%_
               _%string-table-update!117587%_
               _%default117588%_)
        (let ((_%table117590%_ (&raw-table-table _%tab117585%_))
              (_%seed117591%_ (&raw-table-seed _%tab117585%_)))
          (let* ((_%h117593%_
                  (fxxor (##string=?-hash _%key117586%_) _%seed117591%_))
                 (_%size117596%_ (vector-length _%table117590%_))
                 (_%entries117599%_ (##fxquotient _%size117596%_ '2))
                 (_%start117602%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h117593%_ _%entries117599%_)
                   '1)))
            (let _%loop117606%_ ((_%probe117609%_ _%start117602%_)
                                 (_%i117611%_ '1)
                                 (_%deleted117613%_ '#f))
              (let ((_%k117616%_ (vector-ref _%table117590%_ _%probe117609%_)))
                (if (eq? _%k117616%_ (macro-unused-obj))
                    (if _%deleted117613%_
                        (begin
                          (vector-set!
                           _%table117590%_
                           _%deleted117613%_
                           _%key117586%_)
                          (vector-set!
                           _%table117590%_
                           (##fx+ _%deleted117613%_ '1)
                           (_%string-table-update!117587%_ _%default117588%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab117585%_
                              (##fx+ (&raw-table-count _%tab117585%_) '1)))))
                        (begin
                          (vector-set!
                           _%table117590%_
                           _%probe117609%_
                           _%key117586%_)
                          (vector-set!
                           _%table117590%_
                           (##fx+ _%probe117609%_ '1)
                           (_%string-table-update!117587%_ _%default117588%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab117585%_
                              (##fx- (&raw-table-free _%tab117585%_) '1))
                             (&raw-table-count-set!
                              _%tab117585%_
                              (##fx+ (&raw-table-count _%tab117585%_) '1))))))
                    (if (eq? _%k117616%_ (macro-deleted-obj))
                        (_%loop117606%_
                         (let ((_%next-probe117623%_
                                (fx+ _%start117602%_
                                     _%i117611%_
                                     (fx* _%i117611%_ _%i117611%_))))
                           (##fxmodulo _%next-probe117623%_ _%size117596%_))
                         (##fx+ _%i117611%_ '1)
                         (let ((_%$e117626%_ _%deleted117613%_))
                           (if _%$e117626%_ _%$e117626%_ _%probe117609%_)))
                        (if (##string=? _%key117586%_ _%k117616%_)
                            (let ()
                              (vector-set!
                               _%table117590%_
                               _%probe117609%_
                               _%key117586%_)
                              (vector-set!
                               _%table117590%_
                               (##fx+ _%probe117609%_ '1)
                               (_%string-table-update!117587%_
                                (vector-ref
                                 _%table117590%_
                                 (##fx+ _%probe117609%_ '1)))))
                            (_%loop117606%_
                             (let ((_%next-probe117631%_
                                    (fx+ _%start117602%_
                                         _%i117611%_
                                         (fx* _%i117611%_ _%i117611%_))))
                               (##fxmodulo
                                _%next-probe117631%_
                                _%size117596%_))
                             (##fx+ _%i117611%_ '1)
                             _%deleted117613%_))))))))))
    (define string-table-update!
      (lambda (_%tab117580%_
               _%key117581%_
               _%string-table-update!117582%_
               _%default117583%_)
        (if (##fx< (&raw-table-free _%tab117580%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab117580%_))
                    '4))
            (__raw-table-rehash! _%tab117580%_)
            '#!void)
        (__string-table-update!
         _%tab117580%_
         _%key117581%_
         _%string-table-update!117582%_
         _%default117583%_)))
    (define string-table-update!/lock
      (lambda (_%tab117549%_
               _%key117550%_
               _%string-table-update!117551%_
               _%default117552%_)
        (let ((_%lock117555%_ (&raw-table-lock _%tab117549%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again117560%_ ((_%spin117563%_ '0))
              (if (##fx= (##vector-cas! _%lock117555%_ '0 '1 '0) '0)
                  (##vector-set! _%lock117555%_ '1 (current-thread))
                  (if (##fx< _%spin117563%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again117560%_ (##fx+ _%spin117563%_ '1)))
                      (let ((_%owner117569%_ (##vector-ref _%lock117555%_ '1)))
                        (if (eq? _%owner117569%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner117569%_)
                                (let () (##thread-yield!) (_%again117560%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r117575%_
                 (_%string-table-update!117551%_
                  _%tab117549%_
                  _%key117550%_
                  _%string-table-update!117551%_
                  _%default117552%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock117555%_ '1 '#f)
                (##vector-cas! _%lock117555%_ '0 '0 '1)))
            _%$r117575%_))))
    (define string-table-delete!
      (lambda (_%tab117506%_ _%key117507%_)
        (let ((_%table117509%_ (&raw-table-table _%tab117506%_))
              (_%seed117511%_ (&raw-table-seed _%tab117506%_)))
          (let* ((_%h117514%_
                  (fxxor (##string=?-hash _%key117507%_) _%seed117511%_))
                 (_%size117517%_ (vector-length _%table117509%_))
                 (_%entries117520%_ (##fxquotient _%size117517%_ '2))
                 (_%start117523%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h117514%_ _%entries117520%_)
                   '1)))
            (let _%loop117527%_ ((_%probe117530%_ _%start117523%_)
                                 (_%i117532%_ '1))
              (let ((_%k117535%_ (vector-ref _%table117509%_ _%probe117530%_)))
                (if (eq? _%k117535%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k117535%_ (macro-deleted-obj))
                        (_%loop117527%_
                         (let ((_%next-probe117540%_
                                (fx+ _%start117523%_
                                     _%i117532%_
                                     (fx* _%i117532%_ _%i117532%_))))
                           (##fxmodulo _%next-probe117540%_ _%size117517%_))
                         (##fx+ _%i117532%_ '1))
                        (if (##string=? _%key117507%_ _%k117535%_)
                            (let ()
                              (vector-set!
                               _%table117509%_
                               _%probe117530%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table117509%_
                               (##fx+ _%probe117530%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab117506%_
                                  (##fx- (&raw-table-count _%tab117506%_)
                                         '1)))))
                            (_%loop117527%_
                             (let ((_%next-probe117546%_
                                    (fx+ _%start117523%_
                                         _%i117532%_
                                         (fx* _%i117532%_ _%i117532%_))))
                               (##fxmodulo
                                _%next-probe117546%_
                                _%size117517%_))
                             (##fx+ _%i117532%_ '1)))))))))))
    (define string-table-delete!/lock
      (lambda (_%tab117476%_ _%key117478%_)
        (let ((_%lock117481%_ (&raw-table-lock _%tab117476%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again117486%_ ((_%spin117489%_ '0))
              (if (##fx= (##vector-cas! _%lock117481%_ '0 '1 '0) '0)
                  (##vector-set! _%lock117481%_ '1 (current-thread))
                  (if (##fx< _%spin117489%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again117486%_ (##fx+ _%spin117489%_ '1)))
                      (let ((_%owner117495%_ (##vector-ref _%lock117481%_ '1)))
                        (if (eq? _%owner117495%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner117495%_)
                                (let () (##thread-yield!) (_%again117486%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r117501%_
                 (string-table-delete! _%tab117476%_ _%key117478%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock117481%_ '1 '#f)
                (##vector-cas! _%lock117481%_ '0 '0 '1)))
            _%$r117501%_))))
    (define make-immediate-table__%
      (lambda (_%size-hint117458%_ _%seed117459%_)
        (make-raw-table__1
         _%size-hint117458%_
         immediate-hash
         eq?
         _%seed117459%_)))
    (define make-immediate-table__0
      (lambda ()
        (let* ((_%size-hint117465%_ '#f) (_%seed117467%_ '0))
          (make-immediate-table__% _%size-hint117465%_ _%seed117467%_))))
    (define make-immediate-table__1
      (lambda (_%size-hint117469%_)
        (let ((_%seed117471%_ '0))
          (make-immediate-table__% _%size-hint117469%_ _%seed117471%_))))
    (define make-immediate-table
      (lambda _g119510_
        (let ((_g119511_ (##length _g119510_)))
          (cond ((##fx= _g119511_ 0) (apply make-immediate-table__0 _g119510_))
                ((##fx= _g119511_ 1) (apply make-immediate-table__1 _g119510_))
                ((##fx= _g119511_ 2) (apply make-immediate-table__% _g119510_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table
                  _g119510_))))))
    (define make-immediate-table/lock__%
      (lambda (_%size-hint117438%_ _%seed117440%_)
        (make-raw-table/lock__%
         _%size-hint117438%_
         immediate-hash
         eq?
         _%seed117440%_)))
    (define make-immediate-table/lock__0
      (lambda ()
        (let* ((_%size-hint117446%_ '#f) (_%seed117448%_ '0))
          (make-immediate-table/lock__% _%size-hint117446%_ _%seed117448%_))))
    (define make-immediate-table/lock__1
      (lambda (_%size-hint117450%_)
        (let ((_%seed117452%_ '0))
          (make-immediate-table/lock__% _%size-hint117450%_ _%seed117452%_))))
    (define make-immediate-table/lock
      (lambda _g119512_
        (let ((_g119513_ (##length _g119512_)))
          (cond ((##fx= _g119513_ 0)
                 (apply make-immediate-table/lock__0 _g119512_))
                ((##fx= _g119513_ 1)
                 (apply make-immediate-table/lock__1 _g119512_))
                ((##fx= _g119513_ 2)
                 (apply make-immediate-table/lock__% _g119512_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table/lock
                  _g119512_))))))
    (define immediate-table-ref
      (lambda (_%tab117391%_ _%key117392%_ _%default117393%_)
        (let ((_%table117395%_ (&raw-table-table _%tab117391%_))
              (_%seed117396%_ (&raw-table-seed _%tab117391%_)))
          (let* ((_%h117398%_
                  (fxxor (immediate-hash _%key117392%_) _%seed117396%_))
                 (_%size117401%_ (vector-length _%table117395%_))
                 (_%entries117404%_ (##fxquotient _%size117401%_ '2))
                 (_%start117407%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h117398%_ _%entries117404%_)
                   '1)))
            (let _%loop117411%_ ((_%probe117414%_ _%start117407%_)
                                 (_%i117416%_ '1)
                                 (_%deleted117418%_ '#f))
              (let ((_%k117421%_ (vector-ref _%table117395%_ _%probe117414%_)))
                (if (eq? _%k117421%_ (macro-unused-obj))
                    _%default117393%_
                    (if (eq? _%k117421%_ (macro-deleted-obj))
                        (_%loop117411%_
                         (let ((_%next-probe117426%_
                                (fx+ _%start117407%_
                                     _%i117416%_
                                     (fx* _%i117416%_ _%i117416%_))))
                           (##fxmodulo _%next-probe117426%_ _%size117401%_))
                         (##fx+ _%i117416%_ '1)
                         (let ((_%$e117429%_ _%deleted117418%_))
                           (if _%$e117429%_ _%$e117429%_ _%probe117414%_)))
                        (if (eq? _%key117392%_ _%k117421%_)
                            (vector-ref
                             _%table117395%_
                             (##fx+ _%probe117414%_ '1))
                            (_%loop117411%_
                             (let ((_%next-probe117434%_
                                    (fx+ _%start117407%_
                                         _%i117416%_
                                         (fx* _%i117416%_ _%i117416%_))))
                               (##fxmodulo
                                _%next-probe117434%_
                                _%size117401%_))
                             (##fx+ _%i117416%_ '1)
                             _%deleted117418%_))))))))))
    (define immediate-table-ref/lock
      (lambda (_%tab117362%_ _%key117363%_ _%default117364%_)
        (let ((_%lock117366%_ (&raw-table-lock _%tab117362%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again117371%_ ((_%spin117374%_ '0))
              (if (##fx= (##vector-cas! _%lock117366%_ '0 '1 '0) '0)
                  (##vector-set! _%lock117366%_ '1 (current-thread))
                  (if (##fx< _%spin117374%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again117371%_ (##fx+ _%spin117374%_ '1)))
                      (let ((_%owner117380%_ (##vector-ref _%lock117366%_ '1)))
                        (if (eq? _%owner117380%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner117380%_)
                                (let () (##thread-yield!) (_%again117371%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r117386%_
                 (immediate-table-ref
                  _%tab117362%_
                  _%key117363%_
                  _%default117364%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock117366%_ '1 '#f)
                (##vector-cas! _%lock117366%_ '0 '0 '1)))
            _%$r117386%_))))
    (define __immediate-table-set!
      (lambda (_%tab117314%_ _%key117315%_ _%value117316%_)
        (let ((_%table117318%_ (&raw-table-table _%tab117314%_))
              (_%seed117319%_ (&raw-table-seed _%tab117314%_)))
          (let* ((_%h117321%_
                  (fxxor (immediate-hash _%key117315%_) _%seed117319%_))
                 (_%size117324%_ (vector-length _%table117318%_))
                 (_%entries117327%_ (##fxquotient _%size117324%_ '2))
                 (_%start117330%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h117321%_ _%entries117327%_)
                   '1)))
            (let _%loop117334%_ ((_%probe117337%_ _%start117330%_)
                                 (_%i117339%_ '1)
                                 (_%deleted117341%_ '#f))
              (let ((_%k117344%_ (vector-ref _%table117318%_ _%probe117337%_)))
                (if (eq? _%k117344%_ (macro-unused-obj))
                    (if _%deleted117341%_
                        (begin
                          (vector-set!
                           _%table117318%_
                           _%deleted117341%_
                           _%key117315%_)
                          (vector-set!
                           _%table117318%_
                           (##fx+ _%deleted117341%_ '1)
                           _%value117316%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab117314%_
                              (##fx+ (&raw-table-count _%tab117314%_) '1)))))
                        (begin
                          (vector-set!
                           _%table117318%_
                           _%probe117337%_
                           _%key117315%_)
                          (vector-set!
                           _%table117318%_
                           (##fx+ _%probe117337%_ '1)
                           _%value117316%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab117314%_
                              (##fx- (&raw-table-free _%tab117314%_) '1))
                             (&raw-table-count-set!
                              _%tab117314%_
                              (##fx+ (&raw-table-count _%tab117314%_) '1))))))
                    (if (eq? _%k117344%_ (macro-deleted-obj))
                        (_%loop117334%_
                         (let ((_%next-probe117351%_
                                (fx+ _%start117330%_
                                     _%i117339%_
                                     (fx* _%i117339%_ _%i117339%_))))
                           (##fxmodulo _%next-probe117351%_ _%size117324%_))
                         (##fx+ _%i117339%_ '1)
                         (let ((_%$e117354%_ _%deleted117341%_))
                           (if _%$e117354%_ _%$e117354%_ _%probe117337%_)))
                        (if (eq? _%key117315%_ _%k117344%_)
                            (let ()
                              (vector-set!
                               _%table117318%_
                               _%probe117337%_
                               _%key117315%_)
                              (vector-set!
                               _%table117318%_
                               (##fx+ _%probe117337%_ '1)
                               _%value117316%_))
                            (_%loop117334%_
                             (let ((_%next-probe117359%_
                                    (fx+ _%start117330%_
                                         _%i117339%_
                                         (fx* _%i117339%_ _%i117339%_))))
                               (##fxmodulo
                                _%next-probe117359%_
                                _%size117324%_))
                             (##fx+ _%i117339%_ '1)
                             _%deleted117341%_))))))))))
    (define immediate-table-set!
      (lambda (_%tab117310%_ _%key117311%_ _%value117312%_)
        (if (##fx< (&raw-table-free _%tab117310%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab117310%_))
                    '4))
            (__raw-table-rehash! _%tab117310%_)
            '#!void)
        (__immediate-table-set! _%tab117310%_ _%key117311%_ _%value117312%_)))
    (define immediate-table-set!/lock
      (lambda (_%tab117280%_ _%key117281%_ _%value117282%_)
        (let ((_%lock117285%_ (&raw-table-lock _%tab117280%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again117290%_ ((_%spin117293%_ '0))
              (if (##fx= (##vector-cas! _%lock117285%_ '0 '1 '0) '0)
                  (##vector-set! _%lock117285%_ '1 (current-thread))
                  (if (##fx< _%spin117293%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again117290%_ (##fx+ _%spin117293%_ '1)))
                      (let ((_%owner117299%_ (##vector-ref _%lock117285%_ '1)))
                        (if (eq? _%owner117299%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner117299%_)
                                (let () (##thread-yield!) (_%again117290%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r117305%_
                 (immediate-table-set!
                  _%tab117280%_
                  _%key117281%_
                  _%value117282%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock117285%_ '1 '#f)
                (##vector-cas! _%lock117285%_ '0 '0 '1)))
            _%$r117305%_))))
    (define __immediate-table-update!
      (lambda (_%tab117231%_
               _%key117232%_
               _%immediate-table-update!117233%_
               _%default117234%_)
        (let ((_%table117236%_ (&raw-table-table _%tab117231%_))
              (_%seed117237%_ (&raw-table-seed _%tab117231%_)))
          (let* ((_%h117239%_
                  (fxxor (immediate-hash _%key117232%_) _%seed117237%_))
                 (_%size117242%_ (vector-length _%table117236%_))
                 (_%entries117245%_ (##fxquotient _%size117242%_ '2))
                 (_%start117248%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h117239%_ _%entries117245%_)
                   '1)))
            (let _%loop117252%_ ((_%probe117255%_ _%start117248%_)
                                 (_%i117257%_ '1)
                                 (_%deleted117259%_ '#f))
              (let ((_%k117262%_ (vector-ref _%table117236%_ _%probe117255%_)))
                (if (eq? _%k117262%_ (macro-unused-obj))
                    (if _%deleted117259%_
                        (begin
                          (vector-set!
                           _%table117236%_
                           _%deleted117259%_
                           _%key117232%_)
                          (vector-set!
                           _%table117236%_
                           (##fx+ _%deleted117259%_ '1)
                           (_%immediate-table-update!117233%_
                            _%default117234%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab117231%_
                              (##fx+ (&raw-table-count _%tab117231%_) '1)))))
                        (begin
                          (vector-set!
                           _%table117236%_
                           _%probe117255%_
                           _%key117232%_)
                          (vector-set!
                           _%table117236%_
                           (##fx+ _%probe117255%_ '1)
                           (_%immediate-table-update!117233%_
                            _%default117234%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab117231%_
                              (##fx- (&raw-table-free _%tab117231%_) '1))
                             (&raw-table-count-set!
                              _%tab117231%_
                              (##fx+ (&raw-table-count _%tab117231%_) '1))))))
                    (if (eq? _%k117262%_ (macro-deleted-obj))
                        (_%loop117252%_
                         (let ((_%next-probe117269%_
                                (fx+ _%start117248%_
                                     _%i117257%_
                                     (fx* _%i117257%_ _%i117257%_))))
                           (##fxmodulo _%next-probe117269%_ _%size117242%_))
                         (##fx+ _%i117257%_ '1)
                         (let ((_%$e117272%_ _%deleted117259%_))
                           (if _%$e117272%_ _%$e117272%_ _%probe117255%_)))
                        (if (eq? _%key117232%_ _%k117262%_)
                            (let ()
                              (vector-set!
                               _%table117236%_
                               _%probe117255%_
                               _%key117232%_)
                              (vector-set!
                               _%table117236%_
                               (##fx+ _%probe117255%_ '1)
                               (_%immediate-table-update!117233%_
                                (vector-ref
                                 _%table117236%_
                                 (##fx+ _%probe117255%_ '1)))))
                            (_%loop117252%_
                             (let ((_%next-probe117277%_
                                    (fx+ _%start117248%_
                                         _%i117257%_
                                         (fx* _%i117257%_ _%i117257%_))))
                               (##fxmodulo
                                _%next-probe117277%_
                                _%size117242%_))
                             (##fx+ _%i117257%_ '1)
                             _%deleted117259%_))))))))))
    (define immediate-table-update!
      (lambda (_%tab117226%_
               _%key117227%_
               _%immediate-table-update!117228%_
               _%default117229%_)
        (if (##fx< (&raw-table-free _%tab117226%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab117226%_))
                    '4))
            (__raw-table-rehash! _%tab117226%_)
            '#!void)
        (__immediate-table-update!
         _%tab117226%_
         _%key117227%_
         _%immediate-table-update!117228%_
         _%default117229%_)))
    (define immediate-table-update!/lock
      (lambda (_%tab117195%_
               _%key117196%_
               _%immediate-table-update!117197%_
               _%default117198%_)
        (let ((_%lock117201%_ (&raw-table-lock _%tab117195%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again117206%_ ((_%spin117209%_ '0))
              (if (##fx= (##vector-cas! _%lock117201%_ '0 '1 '0) '0)
                  (##vector-set! _%lock117201%_ '1 (current-thread))
                  (if (##fx< _%spin117209%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again117206%_ (##fx+ _%spin117209%_ '1)))
                      (let ((_%owner117215%_ (##vector-ref _%lock117201%_ '1)))
                        (if (eq? _%owner117215%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner117215%_)
                                (let () (##thread-yield!) (_%again117206%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r117221%_
                 (_%immediate-table-update!117197%_
                  _%tab117195%_
                  _%key117196%_
                  _%immediate-table-update!117197%_
                  _%default117198%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock117201%_ '1 '#f)
                (##vector-cas! _%lock117201%_ '0 '0 '1)))
            _%$r117221%_))))
    (define immediate-table-delete!
      (lambda (_%tab117152%_ _%key117153%_)
        (let ((_%table117155%_ (&raw-table-table _%tab117152%_))
              (_%seed117157%_ (&raw-table-seed _%tab117152%_)))
          (let* ((_%h117160%_
                  (fxxor (immediate-hash _%key117153%_) _%seed117157%_))
                 (_%size117163%_ (vector-length _%table117155%_))
                 (_%entries117166%_ (##fxquotient _%size117163%_ '2))
                 (_%start117169%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h117160%_ _%entries117166%_)
                   '1)))
            (let _%loop117173%_ ((_%probe117176%_ _%start117169%_)
                                 (_%i117178%_ '1))
              (let ((_%k117181%_ (vector-ref _%table117155%_ _%probe117176%_)))
                (if (eq? _%k117181%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k117181%_ (macro-deleted-obj))
                        (_%loop117173%_
                         (let ((_%next-probe117186%_
                                (fx+ _%start117169%_
                                     _%i117178%_
                                     (fx* _%i117178%_ _%i117178%_))))
                           (##fxmodulo _%next-probe117186%_ _%size117163%_))
                         (##fx+ _%i117178%_ '1))
                        (if (eq? _%key117153%_ _%k117181%_)
                            (let ()
                              (vector-set!
                               _%table117155%_
                               _%probe117176%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table117155%_
                               (##fx+ _%probe117176%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab117152%_
                                  (##fx- (&raw-table-count _%tab117152%_)
                                         '1)))))
                            (_%loop117173%_
                             (let ((_%next-probe117192%_
                                    (fx+ _%start117169%_
                                         _%i117178%_
                                         (fx* _%i117178%_ _%i117178%_))))
                               (##fxmodulo
                                _%next-probe117192%_
                                _%size117163%_))
                             (##fx+ _%i117178%_ '1)))))))))))
    (define immediate-table-delete!/lock
      (lambda (_%tab117122%_ _%key117124%_)
        (let ((_%lock117127%_ (&raw-table-lock _%tab117122%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again117132%_ ((_%spin117135%_ '0))
              (if (##fx= (##vector-cas! _%lock117127%_ '0 '1 '0) '0)
                  (##vector-set! _%lock117127%_ '1 (current-thread))
                  (if (##fx< _%spin117135%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again117132%_ (##fx+ _%spin117135%_ '1)))
                      (let ((_%owner117141%_ (##vector-ref _%lock117127%_ '1)))
                        (if (eq? _%owner117141%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner117141%_)
                                (let () (##thread-yield!) (_%again117132%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r117147%_
                 (immediate-table-delete! _%tab117122%_ _%key117124%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock117127%_ '1 '#f)
                (##vector-cas! _%lock117127%_ '0 '0 '1)))
            _%$r117147%_))))
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
      (lambda (_%tab117120%_)
        (##unchecked-structure-ref
         _%tab117120%_
         '1
         __gc-table::t
         'gc-table-gcht)))
    (define &gc-table-immediate
      (lambda (_%tab117118%_)
        (##unchecked-structure-ref
         _%tab117118%_
         '2
         __gc-table::t
         'gc-table-immediate)))
    (define &gc-table-lock
      (lambda (_%tab117116%_)
        (##unchecked-structure-ref
         _%tab117116%_
         '3
         __gc-table::t
         'gc-table-lock)))
    (define &gc-table-gcht-set!
      (lambda (_%tab117113%_ _%val117114%_)
        (##unchecked-structure-set!
         _%tab117113%_
         _%val117114%_
         '1
         __gc-table::t
         'gc-table-gcht-set!)))
    (define &gc-table-immediate-set!
      (lambda (_%tab117110%_ _%val117111%_)
        (##unchecked-structure-set!
         _%tab117110%_
         _%val117111%_
         '2
         __gc-table::t
         'gc-table-immediate-set!)))
    (define &gc-table-lock-set!
      (lambda (_%tab117107%_ _%val117108%_)
        (##unchecked-structure-set!
         _%tab117107%_
         _%val117108%_
         '3
         __gc-table::t
         'gc-table-lock-set!)))
    (define make-gc-table__%
      (lambda (_%size-hint117071%_
               _%klass117072%_
               _%flags117073%_
               _%lock117074%_)
        (let ((_%gcht117076%_
               (__gc-table-new
                (if (fixnum? _%size-hint117071%_) _%size-hint117071%_ '16)
                _%flags117073%_)))
          (##structure _%klass117072%_ _%gcht117076%_ '#f _%lock117074%_))))
    (define make-gc-table__0
      (lambda (_%size-hint117081%_)
        (let* ((_%klass117083%_ __gc-table::t)
               (_%flags117085%_ '0)
               (_%lock117087%_ '#f))
          (make-gc-table__%
           _%size-hint117081%_
           _%klass117083%_
           _%flags117085%_
           _%lock117087%_))))
    (define make-gc-table__1
      (lambda (_%size-hint117089%_ _%klass117090%_)
        (let* ((_%flags117092%_ '0) (_%lock117094%_ '#f))
          (make-gc-table__%
           _%size-hint117089%_
           _%klass117090%_
           _%flags117092%_
           _%lock117094%_))))
    (define make-gc-table__2
      (lambda (_%size-hint117096%_ _%klass117097%_ _%flags117098%_)
        (let ((_%lock117100%_ '#f))
          (make-gc-table__%
           _%size-hint117096%_
           _%klass117097%_
           _%flags117098%_
           _%lock117100%_))))
    (define make-gc-table
      (lambda _g119514_
        (let ((_g119515_ (##length _g119514_)))
          (cond ((##fx= _g119515_ 1) (apply make-gc-table__0 _g119514_))
                ((##fx= _g119515_ 2) (apply make-gc-table__1 _g119514_))
                ((##fx= _g119515_ 3) (apply make-gc-table__2 _g119514_))
                ((##fx= _g119515_ 4) (apply make-gc-table__% _g119514_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table
                  _g119514_))))))
    (define make-gc-table/lock__%
      (lambda (_%size-hint117048%_ _%klass117049%_ _%flags117050%_)
        (make-gc-table__%
         _%size-hint117048%_
         _%klass117049%_
         _%flags117050%_
         (vector '0 '#f))))
    (define make-gc-table/lock__0
      (lambda (_%size-hint117055%_)
        (let* ((_%klass117057%_ __gc-table::t) (_%flags117059%_ '0))
          (make-gc-table/lock__%
           _%size-hint117055%_
           _%klass117057%_
           _%flags117059%_))))
    (define make-gc-table/lock__1
      (lambda (_%size-hint117061%_ _%klass117062%_)
        (let ((_%flags117064%_ '0))
          (make-gc-table/lock__%
           _%size-hint117061%_
           _%klass117062%_
           _%flags117064%_))))
    (define make-gc-table/lock
      (lambda _g119516_
        (let ((_g119517_ (##length _g119516_)))
          (cond ((##fx= _g119517_ 1) (apply make-gc-table/lock__0 _g119516_))
                ((##fx= _g119517_ 2) (apply make-gc-table/lock__1 _g119516_))
                ((##fx= _g119517_ 3) (apply make-gc-table/lock__% _g119516_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table/lock
                  _g119516_))))))
    (define __gc-table-immediate
      (lambda (_%tab117039%_)
        (let ((_%$e117041%_ (&gc-table-immediate _%tab117039%_)))
          (if _%$e117041%_
              _%$e117041%_
              (let ((_%immediate117045%_ (make-immediate-table__% '#f '0)))
                (&gc-table-immediate-set! _%tab117039%_ _%immediate117045%_)
                _%immediate117045%_)))))
    (define __gc-table-new
      (lambda (_%size117029%_ _%flags117030%_)
        (let* ((_%flags117032%_
                (##fxand _%flags117030%_
                         (fxnot (macro-gc-hash-table-flag-need-rehash))))
               (_%flags117034%_
                (fxior _%flags117032%_
                       (macro-gc-hash-table-flag-mem-alloc-keys)))
               (_%gcht117036%_
                (##gc-hash-table-allocate
                 _%size117029%_
                 _%flags117034%_
                 __gc-table-loads)))
          _%gcht117036%_)))
    (define __gc-table-e
      (lambda (_%tab117024%_)
        (declare (not interrupts-enabled))
        (let ((_%gcht117027%_ (&gc-table-gcht _%tab117024%_)))
          (if (##fx= '0
                     (fxand (macro-gc-hash-table-flags _%gcht117027%_)
                            (macro-gc-hash-table-flag-need-rehash)))
              _%gcht117027%_
              (begin
                (__gc-table-rehash! _%tab117024%_)
                (&gc-table-gcht _%tab117024%_))))))
    (define __gc-table-rehash!
      (lambda (_%tab117015%_)
        (let* ((_%old-table117017%_ (&gc-table-gcht _%tab117015%_))
               (_%new-table117019%_
                (##gc-hash-table-resize! _%old-table117017%_ __gc-table-loads))
               (_%gcht117021%_
                (##gc-hash-table-rehash!
                 _%old-table117017%_
                 _%new-table117019%_)))
          (&gc-table-gcht-set! _%tab117015%_ _%gcht117021%_))))
    (define gc-table-ref
      (lambda (_%tab116999%_ _%key117000%_ _%default117001%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key117000%_)
            (let* ((_%gcht117005%_ (__gc-table-e _%tab116999%_))
                   (_%value117007%_
                    (##gc-hash-table-ref _%gcht117005%_ _%key117000%_)))
              (if (eq? _%value117007%_ (macro-unused-obj))
                  _%default117001%_
                  _%value117007%_))
            (let ((_%$e117009%_ (&gc-table-immediate _%tab116999%_)))
              (if _%$e117009%_
                  ((lambda (_%immediate117012%_)
                     (immediate-table-ref
                      _%immediate117012%_
                      _%key117000%_
                      _%default117001%_))
                   _%$e117009%_)
                  _%default117001%_)))))
    (define gc-table-ref/lock
      (lambda (_%tab116973%_ _%key116974%_ _%default116975%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again116979%_ ((_%spin116982%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab116973%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab116973%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin116982%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again116979%_ (##fx+ _%spin116982%_ '1)))
                    (let ((_%owner116988%_
                           (##vector-ref (&gc-table-lock _%tab116973%_) '1)))
                      (if (eq? _%owner116988%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner116988%_)
                              (let () (##thread-yield!) (_%again116979%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r116994%_
               (gc-table-ref _%tab116973%_ _%key116974%_ _%default116975%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab116973%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab116973%_) '0 '0 '1)))
          _%$r116994%_)))
    (define gc-table-set!
      (lambda (_%tab116966%_ _%key116967%_ _%value116968%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key116967%_)
            (let ((_%gcht116971%_ (__gc-table-e _%tab116966%_)))
              (if (##gc-hash-table-set!
                   _%gcht116971%_
                   _%key116967%_
                   _%value116968%_)
                  (begin
                    (__gc-table-rehash! _%tab116966%_)
                    (gc-table-set!
                     _%tab116966%_
                     _%key116967%_
                     _%value116968%_))
                  '#!void))
            (immediate-table-set!
             (__gc-table-immediate _%tab116966%_)
             _%key116967%_
             _%value116968%_))))
    (define gc-table-set/lock!
      (lambda (_%tab116940%_ _%key116941%_ _%value116942%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again116946%_ ((_%spin116949%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab116940%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab116940%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin116949%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again116946%_ (##fx+ _%spin116949%_ '1)))
                    (let ((_%owner116955%_
                           (##vector-ref (&gc-table-lock _%tab116940%_) '1)))
                      (if (eq? _%owner116955%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner116955%_)
                              (let () (##thread-yield!) (_%again116946%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r116961%_
               (gc-table-set! _%tab116940%_ _%key116941%_ _%value116942%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab116940%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab116940%_) '0 '0 '1)))
          _%$r116961%_)))
    (define gc-table-update!
      (lambda (_%tab116933%_ _%key116934%_ _%update116935%_ _%default116936%_)
        (if (##mem-allocated? _%key116934%_)
            (let ((_%value116938%_
                   (gc-table-ref
                    _%tab116933%_
                    _%key116934%_
                    _%default116936%_)))
              (gc-table-set!
               _%tab116933%_
               _%key116934%_
               (_%update116935%_ _%value116938%_)))
            (immediate-table-update!
             (__gc-table-immediate _%tab116933%_)
             _%key116934%_
             _%update116935%_
             _%default116936%_))))
    (define gc-table-update!/lock
      (lambda (_%tab116906%_ _%key116907%_ _%update116908%_ _%default116909%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again116913%_ ((_%spin116916%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab116906%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab116906%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin116916%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again116913%_ (##fx+ _%spin116916%_ '1)))
                    (let ((_%owner116922%_
                           (##vector-ref (&gc-table-lock _%tab116906%_) '1)))
                      (if (eq? _%owner116922%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner116922%_)
                              (let () (##thread-yield!) (_%again116913%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r116928%_
               (gc-table-update!
                _%tab116906%_
                _%key116907%_
                _%update116908%_
                _%default116909%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab116906%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab116906%_) '0 '0 '1)))
          _%$r116928%_)))
    (define gc-table-delete!
      (lambda (_%tab116894%_ _%key116895%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key116895%_)
            (let ((_%gcht116899%_ (__gc-table-e _%tab116894%_)))
              (if (##gc-hash-table-set!
                   _%gcht116899%_
                   _%key116895%_
                   (macro-absent-obj))
                  (begin
                    (__gc-table-rehash! _%tab116894%_)
                    (gc-table-delete! _%tab116894%_ _%key116895%_))
                  '#!void))
            (let ((_%$e116901%_ (&gc-table-immediate _%tab116894%_)))
              (if _%$e116901%_
                  ((lambda (_%immediate116904%_)
                     (immediate-table-delete!
                      _%immediate116904%_
                      _%key116895%_))
                   _%$e116901%_)
                  '#!void)))))
    (define gc-table-delete!/lock
      (lambda (_%tab116869%_ _%key116870%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again116874%_ ((_%spin116877%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab116869%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab116869%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin116877%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again116874%_ (##fx+ _%spin116877%_ '1)))
                    (let ((_%owner116883%_
                           (##vector-ref (&gc-table-lock _%tab116869%_) '1)))
                      (if (eq? _%owner116883%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner116883%_)
                              (let () (##thread-yield!) (_%again116874%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r116889%_ (gc-table-delete! _%tab116869%_ _%key116870%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab116869%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab116869%_) '0 '0 '1)))
          _%$r116889%_)))
    (define gc-table-for-each
      (lambda (_%tab116858%_ _%proc116859%_)
        (declare (not interrupts-enabled))
        (begin
          (let ((_%gcht116862%_ (__gc-table-e _%tab116858%_)))
            (##gc-hash-table-for-each _%proc116859%_ _%gcht116862%_))
          (let ((_%$e116864%_ (&gc-table-immediate _%tab116858%_)))
            (if _%$e116864%_
                ((lambda (_%immediate116867%_)
                   (raw-table-for-each _%immediate116867%_ _%proc116859%_))
                 _%$e116864%_)
                '#!void)))))
    (define gc-table-for-each/lock
      (lambda (_%tab116833%_ _%proc116834%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again116838%_ ((_%spin116841%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab116833%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab116833%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin116841%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again116838%_ (##fx+ _%spin116841%_ '1)))
                    (let ((_%owner116847%_
                           (##vector-ref (&gc-table-lock _%tab116833%_) '1)))
                      (if (eq? _%owner116847%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner116847%_)
                              (let () (##thread-yield!) (_%again116838%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r116853%_ (gc-table-for-each _%tab116833%_ _%proc116834%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab116833%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab116833%_) '0 '0 '1)))
          _%$r116853%_)))
    (define gc-table-copy
      (lambda (_%tab116821%_)
        (let* ((_%gcht116823%_ (__gc-table-e _%tab116821%_))
               (_%new-table116825%_
                (__gc-table-new
                 (macro-gc-hash-table-count _%gcht116823%_)
                 (macro-gc-hash-table-flags _%gcht116823%_)))
               (_%result116827%_
                (##structure
                 (##structure-type _%tab116821%_)
                 _%new-table116825%_
                 '#f)))
          (gc-table-for-each
           _%tab116821%_
           (lambda (_%k116830%_ _%v116831%_)
             (gc-table-set! _%result116827%_ _%k116830%_ _%v116831%_)))
          _%result116827%_)))
    (define gc-table-copy/lock
      (lambda (_%tab116797%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again116801%_ ((_%spin116804%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab116797%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab116797%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin116804%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again116801%_ (##fx+ _%spin116804%_ '1)))
                    (let ((_%owner116810%_
                           (##vector-ref (&gc-table-lock _%tab116797%_) '1)))
                      (if (eq? _%owner116810%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner116810%_)
                              (let () (##thread-yield!) (_%again116801%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r116816%_ (gc-table-copy _%tab116797%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab116797%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab116797%_) '0 '0 '1)))
          _%$r116816%_)))
    (define gc-table-clear!
      (lambda (_%tab116790%_)
        (let* ((_%gcht116792%_ (__gc-table-e _%tab116790%_))
               (_%new-table116794%_
                (__gc-table-new
                 '16
                 (macro-gc-hash-table-flags _%gcht116792%_))))
          (&gc-table-gcht-set! _%tab116790%_ _%new-table116794%_)
          (&gc-table-immediate-set! _%tab116790%_ '#f))))
    (define gc-table-clear!/lock
      (lambda (_%tab116766%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again116770%_ ((_%spin116773%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab116766%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab116766%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin116773%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again116770%_ (##fx+ _%spin116773%_ '1)))
                    (let ((_%owner116779%_
                           (##vector-ref (&gc-table-lock _%tab116766%_) '1)))
                      (if (eq? _%owner116779%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner116779%_)
                              (let () (##thread-yield!) (_%again116770%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r116785%_ (gc-table-clear! _%tab116766%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab116766%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab116766%_) '0 '0 '1)))
          _%$r116785%_)))
    (define gc-table-length
      (lambda (_%tab116758%_)
        (let ((_%gcht116760%_ (__gc-table-e _%tab116758%_)))
          (fx+ (macro-gc-hash-table-count _%gcht116760%_)
               (let ((_%$e116762%_ (&gc-table-immediate _%tab116758%_)))
                 (if _%$e116762%_ (&raw-table-count _%$e116762%_) '0))))))
    (define gc-table-length/lock
      (lambda (_%tab116734%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again116738%_ ((_%spin116741%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab116734%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab116734%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin116741%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again116738%_ (##fx+ _%spin116741%_ '1)))
                    (let ((_%owner116747%_
                           (##vector-ref (&gc-table-lock _%tab116734%_) '1)))
                      (if (eq? _%owner116747%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner116747%_)
                              (let () (##thread-yield!) (_%again116738%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r116753%_ (gc-table-length _%tab116734%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab116734%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab116734%_) '0 '0 '1)))
          _%$r116753%_)))
    (define __object-eq-hash-lock (vector '0 '#f))
    (define __object-eq-hash-next '0)
    (define __object-eq-hash
      (make-gc-table__2
       '1024
       __gc-table::t
       (macro-gc-hash-table-flag-weak-keys)))
    (define __object->eq-hash
      (lambda (_%obj116700%_)
        (declare (not interrupts-enabled))
        (let ((_%val116703%_
               (gc-table-ref __object-eq-hash _%obj116700%_ '#f)))
          (if _%val116703%_
              _%val116703%_
              (begin
                (let ()
                  (declare (not interrupts-enabled))
                  (let _%again116707%_ ((_%spin116710%_ '0))
                    (if (##fx= (##vector-cas! __object-eq-hash-lock '0 '1 '0)
                               '0)
                        (##vector-set!
                         __object-eq-hash-lock
                         '1
                         (current-thread))
                        (if (##fx< _%spin116710%_ '10)
                            (let ()
                              (##thread-yield!)
                              (_%again116707%_ (##fx+ _%spin116710%_ '1)))
                            (let ((_%owner116716%_
                                   (##vector-ref __object-eq-hash-lock '1)))
                              (if (eq? _%owner116716%_ (macro-current-thread))
                                  (##thread-deadlock-action!)
                                  (if (macro-thread-end-condvar
                                       _%owner116716%_)
                                      (let ()
                                        (##thread-yield!)
                                        (_%again116707%_ '0))
                                      (##thread-deadlock-action!))))))))
                (let ((_%$r116729%_
                       (let ((_%val116722%_
                              (gc-table-ref
                               __object-eq-hash
                               _%obj116700%_
                               '#f)))
                         (if _%val116722%_
                             _%val116722%_
                             (let ((_%h116724%_
                                    (fxand __object-eq-hash
                                           (macro-max-fixnum32))))
                               (set! __object-eq-hash-next
                                     (let ((_%$e116726%_
                                            (##fx+? __object-eq-hash-next '1)))
                                       (if _%$e116726%_ _%$e116726%_ '0)))
                               (gc-table-set!
                                __object-eq-hash
                                _%obj116700%_
                                _%h116724%_)
                               _%h116724%_)))))
                  (let ()
                    (declare (not interrupts-enabled))
                    (begin
                      (##vector-set! __object-eq-hash-lock '1 '#f)
                      (##vector-cas! __object-eq-hash-lock '0 '0 '1)))
                  _%$r116729%_))))))))
