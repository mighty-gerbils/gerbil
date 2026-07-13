(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1783939345)
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
          1
          #f
          count
          0
          #f
          free
          0
          #f
          hash
          0
          #f
          test
          0
          #f
          seed
          0
          #f
          lock
          0
          #f)))
    (define raw-table?
      (lambda (_%obj122517%_)
        (if (##structure? _%obj122517%_)
            (##structure-instance-of? _%obj122517%_ __table::t.id)
            '#f)))
    (define &raw-table-table
      (lambda (_%tab122515%_)
        (##unchecked-structure-ref
         _%tab122515%_
         '1
         __table::t
         'raw-table-table)))
    (define &raw-table-count
      (lambda (_%tab122513%_)
        (##unchecked-structure-ref
         _%tab122513%_
         '2
         __table::t
         'raw-table-count)))
    (define &raw-table-free
      (lambda (_%tab122511%_)
        (##unchecked-structure-ref
         _%tab122511%_
         '3
         __table::t
         'raw-table-free)))
    (define &raw-table-hash
      (lambda (_%tab122509%_)
        (##unchecked-structure-ref
         _%tab122509%_
         '4
         __table::t
         'raw-table-hash)))
    (define &raw-table-test
      (lambda (_%tab122507%_)
        (##unchecked-structure-ref
         _%tab122507%_
         '5
         __table::t
         'raw-table-test)))
    (define &raw-table-seed
      (lambda (_%tab122505%_)
        (##unchecked-structure-ref
         _%tab122505%_
         '6
         __table::t
         'raw-table-seed)))
    (define &raw-table-lock
      (lambda (_%tab122503%_)
        (##unchecked-structure-ref
         _%tab122503%_
         '7
         __table::t
         'raw-table-lock)))
    (define &raw-table-table-set!
      (lambda (_%tab122500%_ _%val122501%_)
        (##unchecked-structure-set!
         _%tab122500%_
         _%val122501%_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_%tab122497%_ _%val122498%_)
        (##unchecked-structure-set!
         _%tab122497%_
         _%val122498%_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_%tab122494%_ _%val122495%_)
        (##unchecked-structure-set!
         _%tab122494%_
         _%val122495%_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_%tab122491%_ _%val122492%_)
        (##unchecked-structure-set!
         _%tab122491%_
         _%val122492%_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_%tab122488%_ _%val122489%_)
        (##unchecked-structure-set!
         _%tab122488%_
         _%val122489%_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_%tab122485%_ _%val122486%_)
        (##unchecked-structure-set!
         _%tab122485%_
         _%val122486%_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define &raw-table-lock-set!
      (lambda (_%tab122482%_ _%val122483%_)
        (##unchecked-structure-set!
         _%tab122482%_
         _%val122483%_
         '7
         __table::t
         'raw-table-lock-set!)))
    (define raw-table-size-hint->size
      (lambda (_%size-hint122480%_)
        (if (and (fixnum? _%size-hint122480%_) (##fx> _%size-hint122480%_ '0))
            (##fx* (fxmax '2 (expt '2 (integer-length _%size-hint122480%_)))
                   '4)
            '16)))
    (define ensure-lock
      (lambda (_%lock122476%_)
        (if (eq? _%lock122476%_ '#t) (vector '0 '#f) _%lock122476%_)))
    (define make-raw-table__%
      (lambda (_%size-hint122441%_
               _%hash122442%_
               _%test122443%_
               _%seed122444%_
               _%lock122445%_)
        (let* ((_%size122447%_ (raw-table-size-hint->size _%size-hint122441%_))
               (_%table122449%_
                (##make-vector _%size122447%_ (macro-unused-obj))))
          (##structure
           __table::t
           _%table122449%_
           '0
           (##fxquotient _%size122447%_ '2)
           _%hash122442%_
           _%test122443%_
           _%seed122444%_
           (ensure-lock _%lock122445%_)))))
    (define make-raw-table__0
      (lambda (_%size-hint122455%_ _%hash122456%_ _%test122457%_)
        (let* ((_%seed122459%_ '0) (_%lock122461%_ '#f))
          (make-raw-table__%
           _%size-hint122455%_
           _%hash122456%_
           _%test122457%_
           _%seed122459%_
           _%lock122461%_))))
    (define make-raw-table__1
      (lambda (_%size-hint122463%_
               _%hash122464%_
               _%test122465%_
               _%seed122466%_)
        (let ((_%lock122468%_ '#f))
          (make-raw-table__%
           _%size-hint122463%_
           _%hash122464%_
           _%test122465%_
           _%seed122466%_
           _%lock122468%_))))
    (define make-raw-table
      (lambda _g122518_
        (let ((_g122519_ (##length _g122518_)))
          (cond ((##fx= _g122519_ 3) (apply make-raw-table__0 _g122518_))
                ((##fx= _g122519_ 4) (apply make-raw-table__1 _g122518_))
                ((##fx= _g122519_ 5) (apply make-raw-table__% _g122518_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g122518_))))))
    (define make-raw-table/lock__%
      (lambda (_%size-hint122421%_
               _%hash122422%_
               _%test122423%_
               _%seed122424%_)
        (make-raw-table__%
         _%size-hint122421%_
         _%hash122422%_
         _%test122423%_
         _%seed122424%_
         '#t)))
    (define make-raw-table/lock__0
      (lambda (_%size-hint122429%_ _%hash122430%_ _%test122431%_)
        (let ((_%seed122433%_ '0))
          (make-raw-table/lock__%
           _%size-hint122429%_
           _%hash122430%_
           _%test122431%_
           _%seed122433%_))))
    (define make-raw-table/lock
      (lambda _g122520_
        (let ((_g122521_ (##length _g122520_)))
          (cond ((##fx= _g122521_ 3) (apply make-raw-table/lock__0 _g122520_))
                ((##fx= _g122521_ 4) (apply make-raw-table/lock__% _g122520_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table/lock
                  _g122520_))))))
    (define raw-table-length
      (lambda (_%tab122418%_) (&raw-table-count _%tab122418%_)))
    (define raw-table-length/lock
      (lambda (_%tab122391%_)
        (let ((_%lock122393%_ (&raw-table-lock _%tab122391%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again122398%_ ((_%spin122401%_ '0))
              (if (##fx= (##vector-cas! _%lock122393%_ '0 '1 '0) '0)
                  (##vector-set! _%lock122393%_ '1 (current-thread))
                  (if (##fx< _%spin122401%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again122398%_ (##fx+ _%spin122401%_ '1)))
                      (let ((_%owner122407%_ (##vector-ref _%lock122393%_ '1)))
                        (if (eq? _%owner122407%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner122407%_)
                                (let () (##thread-yield!) (_%again122398%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r122413%_ (&raw-table-count _%tab122391%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock122393%_ '1 '#f)
                (##vector-cas! _%lock122393%_ '0 '0 '1)))
            _%$r122413%_))))
    (define raw-table-ref
      (lambda (_%tab122343%_ _%key122344%_ _%default122345%_)
        (let ((_%table122347%_ (&raw-table-table _%tab122343%_))
              (_%seed122348%_ (&raw-table-seed _%tab122343%_))
              (_%hash122349%_ (&raw-table-hash _%tab122343%_))
              (_%test122350%_ (&raw-table-test _%tab122343%_)))
          (let* ((_%h122352%_
                  (fxxor (_%hash122349%_ _%key122344%_) _%seed122348%_))
                 (_%size122355%_ (vector-length _%table122347%_))
                 (_%entries122358%_ (##fxquotient _%size122355%_ '2))
                 (_%start122361%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h122352%_ _%entries122358%_)
                   '1)))
            (let _%loop122365%_ ((_%probe122368%_ _%start122361%_)
                                 (_%i122370%_ '1)
                                 (_%deleted122372%_ '#f))
              (let ((_%k122375%_ (vector-ref _%table122347%_ _%probe122368%_)))
                (if (eq? _%k122375%_ (macro-unused-obj))
                    _%default122345%_
                    (if (eq? _%k122375%_ (macro-deleted-obj))
                        (_%loop122365%_
                         (let ((_%next-probe122380%_
                                (fx+ _%start122361%_
                                     _%i122370%_
                                     (fx* _%i122370%_ _%i122370%_))))
                           (##fxmodulo _%next-probe122380%_ _%size122355%_))
                         (##fx+ _%i122370%_ '1)
                         (let ((_%$e122383%_ _%deleted122372%_))
                           (if _%$e122383%_ _%$e122383%_ _%probe122368%_)))
                        (if (_%test122350%_ _%key122344%_ _%k122375%_)
                            (vector-ref
                             _%table122347%_
                             (##fx+ _%probe122368%_ '1))
                            (_%loop122365%_
                             (let ((_%next-probe122388%_
                                    (fx+ _%start122361%_
                                         _%i122370%_
                                         (fx* _%i122370%_ _%i122370%_))))
                               (##fxmodulo
                                _%next-probe122388%_
                                _%size122355%_))
                             (##fx+ _%i122370%_ '1)
                             _%deleted122372%_))))))))))
    (define raw-table-ref/lock
      (lambda (_%tab122314%_ _%key122315%_ _%default122316%_)
        (let ((_%lock122318%_ (&raw-table-lock _%tab122314%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again122323%_ ((_%spin122326%_ '0))
              (if (##fx= (##vector-cas! _%lock122318%_ '0 '1 '0) '0)
                  (##vector-set! _%lock122318%_ '1 (current-thread))
                  (if (##fx< _%spin122326%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again122323%_ (##fx+ _%spin122326%_ '1)))
                      (let ((_%owner122332%_ (##vector-ref _%lock122318%_ '1)))
                        (if (eq? _%owner122332%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner122332%_)
                                (let () (##thread-yield!) (_%again122323%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r122338%_
                 (raw-table-ref
                  _%tab122314%_
                  _%key122315%_
                  _%default122316%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock122318%_ '1 '#f)
                (##vector-cas! _%lock122318%_ '0 '0 '1)))
            _%$r122338%_))))
    (define raw-table-set!
      (lambda (_%tab122310%_ _%key122311%_ _%value122312%_)
        (if (##fx< (&raw-table-free _%tab122310%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab122310%_))
                    '4))
            (__raw-table-rehash! _%tab122310%_)
            '#!void)
        (__raw-table-set! _%tab122310%_ _%key122311%_ _%value122312%_)))
    (define raw-table-set!/lock
      (lambda (_%tab122281%_ _%key122282%_ _%value122283%_)
        (let ((_%lock122285%_ (&raw-table-lock _%tab122281%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again122290%_ ((_%spin122293%_ '0))
              (if (##fx= (##vector-cas! _%lock122285%_ '0 '1 '0) '0)
                  (##vector-set! _%lock122285%_ '1 (current-thread))
                  (if (##fx< _%spin122293%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again122290%_ (##fx+ _%spin122293%_ '1)))
                      (let ((_%owner122299%_ (##vector-ref _%lock122285%_ '1)))
                        (if (eq? _%owner122299%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner122299%_)
                                (let () (##thread-yield!) (_%again122290%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r122305%_
                 (raw-table-set! _%tab122281%_ _%key122282%_ _%value122283%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock122285%_ '1 '#f)
                (##vector-cas! _%lock122285%_ '0 '0 '1)))
            _%$r122305%_))))
    (define raw-table-update!
      (lambda (_%tab122276%_ _%key122277%_ _%update122278%_ _%default122279%_)
        (if (##fx< (&raw-table-free _%tab122276%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab122276%_))
                    '4))
            (__raw-table-rehash! _%tab122276%_)
            '#!void)
        (__raw-table-update!
         _%tab122276%_
         _%key122277%_
         _%update122278%_
         _%default122279%_)))
    (define raw-table-update!/lock
      (lambda (_%tab122246%_ _%key122247%_ _%update122248%_ _%default122249%_)
        (let ((_%lock122251%_ (&raw-table-lock _%tab122246%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again122256%_ ((_%spin122259%_ '0))
              (if (##fx= (##vector-cas! _%lock122251%_ '0 '1 '0) '0)
                  (##vector-set! _%lock122251%_ '1 (current-thread))
                  (if (##fx< _%spin122259%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again122256%_ (##fx+ _%spin122259%_ '1)))
                      (let ((_%owner122265%_ (##vector-ref _%lock122251%_ '1)))
                        (if (eq? _%owner122265%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner122265%_)
                                (let () (##thread-yield!) (_%again122256%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r122271%_
                 (raw-table-update!
                  _%tab122246%_
                  _%key122247%_
                  _%update122248%_
                  _%default122249%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock122251%_ '1 '#f)
                (##vector-cas! _%lock122251%_ '0 '0 '1)))
            _%$r122271%_))))
    (define raw-table-delete!
      (lambda (_%tab122203%_ _%key122204%_)
        (let ((_%table122206%_ (&raw-table-table _%tab122203%_))
              (_%seed122207%_ (&raw-table-seed _%tab122203%_))
              (_%hash122208%_ (&raw-table-hash _%tab122203%_))
              (_%test122209%_ (&raw-table-test _%tab122203%_)))
          (let* ((_%h122211%_
                  (fxxor (_%hash122208%_ _%key122204%_) _%seed122207%_))
                 (_%size122214%_ (vector-length _%table122206%_))
                 (_%entries122217%_ (##fxquotient _%size122214%_ '2))
                 (_%start122220%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h122211%_ _%entries122217%_)
                   '1)))
            (let _%loop122224%_ ((_%probe122227%_ _%start122220%_)
                                 (_%i122229%_ '1))
              (let ((_%k122232%_ (vector-ref _%table122206%_ _%probe122227%_)))
                (if (eq? _%k122232%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k122232%_ (macro-deleted-obj))
                        (_%loop122224%_
                         (let ((_%next-probe122237%_
                                (fx+ _%start122220%_
                                     _%i122229%_
                                     (fx* _%i122229%_ _%i122229%_))))
                           (##fxmodulo _%next-probe122237%_ _%size122214%_))
                         (##fx+ _%i122229%_ '1))
                        (if (_%test122209%_ _%key122204%_ _%k122232%_)
                            (let ()
                              (vector-set!
                               _%table122206%_
                               _%probe122227%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table122206%_
                               (##fx+ _%probe122227%_ '1)
                               (macro-absent-obj))
                              (&raw-table-count-set!
                               _%tab122203%_
                               (##fx- (&raw-table-count _%tab122203%_) '1)))
                            (_%loop122224%_
                             (let ((_%next-probe122243%_
                                    (fx+ _%start122220%_
                                         _%i122229%_
                                         (fx* _%i122229%_ _%i122229%_))))
                               (##fxmodulo
                                _%next-probe122243%_
                                _%size122214%_))
                             (##fx+ _%i122229%_ '1)))))))))))
    (define raw-table-delete!/lock
      (lambda (_%tab122175%_ _%key122176%_)
        (let ((_%lock122178%_ (&raw-table-lock _%tab122175%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again122183%_ ((_%spin122186%_ '0))
              (if (##fx= (##vector-cas! _%lock122178%_ '0 '1 '0) '0)
                  (##vector-set! _%lock122178%_ '1 (current-thread))
                  (if (##fx< _%spin122186%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again122183%_ (##fx+ _%spin122186%_ '1)))
                      (let ((_%owner122192%_ (##vector-ref _%lock122178%_ '1)))
                        (if (eq? _%owner122192%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner122192%_)
                                (let () (##thread-yield!) (_%again122183%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r122198%_ (raw-table-delete! _%tab122175%_ _%key122176%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock122178%_ '1 '#f)
                (##vector-cas! _%lock122178%_ '0 '0 '1)))
            _%$r122198%_))))
    (define raw-table-for-each
      (lambda (_%tab122159%_ _%proc122160%_)
        (let* ((_%table122162%_ (&raw-table-table _%tab122159%_))
               (_%size122164%_ (vector-length _%table122162%_)))
          (let _%loop122167%_ ((_%i122169%_ '0))
            (if (##fx< _%i122169%_ _%size122164%_)
                (begin
                  (let ((_%key122171%_
                         (vector-ref _%table122162%_ _%i122169%_)))
                    (if (if (eq? _%key122171%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key122171%_ (macro-deleted-obj))))
                        (let ((_%value122173%_
                               (vector-ref
                                _%table122162%_
                                (##fx+ _%i122169%_ '1))))
                          (_%proc122160%_ _%key122171%_ _%value122173%_))
                        '#!void))
                  (_%loop122167%_ (##fx+ _%i122169%_ '2)))
                '#!void)))))
    (define raw-table-for-each/lock
      (lambda (_%tab122131%_ _%proc122132%_)
        (let ((_%lock122134%_ (&raw-table-lock _%tab122131%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again122139%_ ((_%spin122142%_ '0))
              (if (##fx= (##vector-cas! _%lock122134%_ '0 '1 '0) '0)
                  (##vector-set! _%lock122134%_ '1 (current-thread))
                  (if (##fx< _%spin122142%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again122139%_ (##fx+ _%spin122142%_ '1)))
                      (let ((_%owner122148%_ (##vector-ref _%lock122134%_ '1)))
                        (if (eq? _%owner122148%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner122148%_)
                                (let () (##thread-yield!) (_%again122139%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r122154%_
                 (raw-table-for-each _%tab122131%_ _%proc122132%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock122134%_ '1 '#f)
                (##vector-cas! _%lock122134%_ '0 '0 '1)))
            _%$r122154%_))))
    (define raw-table-copy
      (lambda (_%tab122127%_)
        (let ((_%new-tab122129%_ (##structure-copy _%tab122127%_)))
          (&raw-table-table-set!
           _%new-tab122129%_
           (vector-copy (&raw-table-table _%tab122127%_)))
          (&raw-table-lock-set!
           _%new-tab122129%_
           (ensure-lock (if (&raw-table-lock _%tab122127%_) '#t '#f)))
          _%new-tab122129%_)))
    (define raw-table-copy/lock
      (lambda (_%tab122100%_)
        (let ((_%lock122102%_ (&raw-table-lock _%tab122100%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again122107%_ ((_%spin122110%_ '0))
              (if (##fx= (##vector-cas! _%lock122102%_ '0 '1 '0) '0)
                  (##vector-set! _%lock122102%_ '1 (current-thread))
                  (if (##fx< _%spin122110%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again122107%_ (##fx+ _%spin122110%_ '1)))
                      (let ((_%owner122116%_ (##vector-ref _%lock122102%_ '1)))
                        (if (eq? _%owner122116%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner122116%_)
                                (let () (##thread-yield!) (_%again122107%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r122122%_ (raw-table-copy _%tab122100%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock122102%_ '1 '#f)
                (##vector-cas! _%lock122102%_ '0 '0 '1)))
            _%$r122122%_))))
    (define raw-table-new__%
      (lambda (_%tab122087%_ _%size-hint122088%_)
        (make-raw-table__%
         (if (eq? _%size-hint122088%_ '#t)
             (vector-length (&raw-table-table _%tab122087%_))
             _%size-hint122088%_)
         (&raw-table-hash _%tab122087%_)
         (&raw-table-test _%tab122087%_)
         (&raw-table-seed _%tab122087%_)
         (if (&raw-table-lock _%tab122087%_) '#t '#f))))
    (define raw-table-new__0
      (lambda (_%tab122093%_)
        (let ((_%size-hint122095%_ '#f))
          (raw-table-new__% _%tab122093%_ _%size-hint122095%_))))
    (define raw-table-new
      (lambda _g122522_
        (let ((_g122523_ (##length _g122522_)))
          (cond ((##fx= _g122523_ 1) (apply raw-table-new__0 _g122522_))
                ((##fx= _g122523_ 2) (apply raw-table-new__% _g122522_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  raw-table-new
                  _g122522_))))))
    (define raw-table-clear!
      (lambda (_%tab122084%_)
        (vector-fill! (&raw-table-table _%tab122084%_) (macro-unused-obj))
        (&raw-table-count-set! _%tab122084%_ '0)
        (&raw-table-free-set!
         _%tab122084%_
         (##fxquotient (vector-length (&raw-table-table _%tab122084%_)) '2))))
    (define raw-table-clear!/lock
      (lambda (_%tab122057%_)
        (let ((_%lock122059%_ (&raw-table-lock _%tab122057%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again122064%_ ((_%spin122067%_ '0))
              (if (##fx= (##vector-cas! _%lock122059%_ '0 '1 '0) '0)
                  (##vector-set! _%lock122059%_ '1 (current-thread))
                  (if (##fx< _%spin122067%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again122064%_ (##fx+ _%spin122067%_ '1)))
                      (let ((_%owner122073%_ (##vector-ref _%lock122059%_ '1)))
                        (if (eq? _%owner122073%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner122073%_)
                                (let () (##thread-yield!) (_%again122064%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r122079%_ (raw-table-clear! _%tab122057%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock122059%_ '1 '#f)
                (##vector-cas! _%lock122059%_ '0 '0 '1)))
            _%$r122079%_))))
    (define __raw-table-set!
      (lambda (_%tab122007%_ _%key122008%_ _%value122009%_)
        (let ((_%table122011%_ (&raw-table-table _%tab122007%_))
              (_%seed122012%_ (&raw-table-seed _%tab122007%_))
              (_%hash122013%_ (&raw-table-hash _%tab122007%_))
              (_%test122014%_ (&raw-table-test _%tab122007%_)))
          (let* ((_%h122016%_
                  (fxxor (_%hash122013%_ _%key122008%_) _%seed122012%_))
                 (_%size122019%_ (vector-length _%table122011%_))
                 (_%entries122022%_ (##fxquotient _%size122019%_ '2))
                 (_%start122025%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h122016%_ _%entries122022%_)
                   '1)))
            (let _%loop122029%_ ((_%probe122032%_ _%start122025%_)
                                 (_%i122034%_ '1)
                                 (_%deleted122036%_ '#f))
              (let ((_%k122039%_ (vector-ref _%table122011%_ _%probe122032%_)))
                (if (eq? _%k122039%_ (macro-unused-obj))
                    (if _%deleted122036%_
                        (begin
                          (vector-set!
                           _%table122011%_
                           _%deleted122036%_
                           _%key122008%_)
                          (vector-set!
                           _%table122011%_
                           (##fx+ _%deleted122036%_ '1)
                           _%value122009%_)
                          (&raw-table-count-set!
                           _%tab122007%_
                           (##fx+ (&raw-table-count _%tab122007%_) '1)))
                        (begin
                          (vector-set!
                           _%table122011%_
                           _%probe122032%_
                           _%key122008%_)
                          (vector-set!
                           _%table122011%_
                           (##fx+ _%probe122032%_ '1)
                           _%value122009%_)
                          (let ()
                            (&raw-table-free-set!
                             _%tab122007%_
                             (##fx- (&raw-table-free _%tab122007%_) '1))
                            (&raw-table-count-set!
                             _%tab122007%_
                             (##fx+ (&raw-table-count _%tab122007%_) '1)))))
                    (if (eq? _%k122039%_ (macro-deleted-obj))
                        (_%loop122029%_
                         (let ((_%next-probe122046%_
                                (fx+ _%start122025%_
                                     _%i122034%_
                                     (fx* _%i122034%_ _%i122034%_))))
                           (##fxmodulo _%next-probe122046%_ _%size122019%_))
                         (##fx+ _%i122034%_ '1)
                         (let ((_%$e122049%_ _%deleted122036%_))
                           (if _%$e122049%_ _%$e122049%_ _%probe122032%_)))
                        (if (_%test122014%_ _%key122008%_ _%k122039%_)
                            (let ()
                              (vector-set!
                               _%table122011%_
                               _%probe122032%_
                               _%key122008%_)
                              (vector-set!
                               _%table122011%_
                               (##fx+ _%probe122032%_ '1)
                               _%value122009%_))
                            (_%loop122029%_
                             (let ((_%next-probe122054%_
                                    (fx+ _%start122025%_
                                         _%i122034%_
                                         (fx* _%i122034%_ _%i122034%_))))
                               (##fxmodulo
                                _%next-probe122054%_
                                _%size122019%_))
                             (##fx+ _%i122034%_ '1)
                             _%deleted122036%_))))))))))
    (define __raw-table-update!
      (lambda (_%tab121956%_ _%key121957%_ _%update121958%_ _%default121959%_)
        (let ((_%table121961%_ (&raw-table-table _%tab121956%_))
              (_%seed121962%_ (&raw-table-seed _%tab121956%_))
              (_%hash121963%_ (&raw-table-hash _%tab121956%_))
              (_%test121964%_ (&raw-table-test _%tab121956%_)))
          (let* ((_%h121966%_
                  (fxxor (_%hash121963%_ _%key121957%_) _%seed121962%_))
                 (_%size121969%_ (vector-length _%table121961%_))
                 (_%entries121972%_ (##fxquotient _%size121969%_ '2))
                 (_%start121975%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h121966%_ _%entries121972%_)
                   '1)))
            (let _%loop121979%_ ((_%probe121982%_ _%start121975%_)
                                 (_%i121984%_ '1)
                                 (_%deleted121986%_ '#f))
              (let ((_%k121989%_ (vector-ref _%table121961%_ _%probe121982%_)))
                (if (eq? _%k121989%_ (macro-unused-obj))
                    (if _%deleted121986%_
                        (begin
                          (vector-set!
                           _%table121961%_
                           _%deleted121986%_
                           _%key121957%_)
                          (vector-set!
                           _%table121961%_
                           (##fx+ _%deleted121986%_ '1)
                           (_%update121958%_ _%default121959%_))
                          (&raw-table-count-set!
                           _%tab121956%_
                           (##fx+ (&raw-table-count _%tab121956%_) '1)))
                        (begin
                          (vector-set!
                           _%table121961%_
                           _%probe121982%_
                           _%key121957%_)
                          (vector-set!
                           _%table121961%_
                           (##fx+ _%probe121982%_ '1)
                           (_%update121958%_ _%default121959%_))
                          (let ()
                            (&raw-table-free-set!
                             _%tab121956%_
                             (##fx- (&raw-table-free _%tab121956%_) '1))
                            (&raw-table-count-set!
                             _%tab121956%_
                             (##fx+ (&raw-table-count _%tab121956%_) '1)))))
                    (if (eq? _%k121989%_ (macro-deleted-obj))
                        (_%loop121979%_
                         (let ((_%next-probe121996%_
                                (fx+ _%start121975%_
                                     _%i121984%_
                                     (fx* _%i121984%_ _%i121984%_))))
                           (##fxmodulo _%next-probe121996%_ _%size121969%_))
                         (##fx+ _%i121984%_ '1)
                         (let ((_%$e121999%_ _%deleted121986%_))
                           (if _%$e121999%_ _%$e121999%_ _%probe121982%_)))
                        (if (_%test121964%_ _%key121957%_ _%k121989%_)
                            (let ()
                              (vector-set!
                               _%table121961%_
                               _%probe121982%_
                               _%key121957%_)
                              (vector-set!
                               _%table121961%_
                               (##fx+ _%probe121982%_ '1)
                               (_%update121958%_
                                (vector-ref
                                 _%table121961%_
                                 (##fx+ _%probe121982%_ '1)))))
                            (_%loop121979%_
                             (let ((_%next-probe122004%_
                                    (fx+ _%start121975%_
                                         _%i121984%_
                                         (fx* _%i121984%_ _%i121984%_))))
                               (##fxmodulo
                                _%next-probe122004%_
                                _%size121969%_))
                             (##fx+ _%i121984%_ '1)
                             _%deleted121986%_))))))))))
    (define __raw-table-rehash!
      (lambda (_%tab121937%_)
        (let* ((_%old-table121939%_ (&raw-table-table _%tab121937%_))
               (_%old-size121941%_ (vector-length _%old-table121939%_))
               (_%new-size121943%_
                (if (##fx< (&raw-table-count _%tab121937%_)
                           (##fxquotient _%old-size121941%_ '4))
                    (vector-length _%old-table121939%_)
                    (##fx* '2 (vector-length _%old-table121939%_))))
               (_%new-table121945%_
                (##make-vector _%new-size121943%_ (macro-unused-obj))))
          (&raw-table-table-set! _%tab121937%_ _%new-table121945%_)
          (&raw-table-count-set! _%tab121937%_ '0)
          (&raw-table-free-set!
           _%tab121937%_
           (##fxquotient _%new-size121943%_ '2))
          (let _%lp121948%_ ((_%i121950%_ '0))
            (if (##fx< _%i121950%_ _%old-size121941%_)
                (begin
                  (let ((_%key121952%_
                         (vector-ref _%old-table121939%_ _%i121950%_)))
                    (if (if (eq? _%key121952%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key121952%_ (macro-deleted-obj))))
                        (let ((_%value121954%_
                               (vector-ref
                                _%old-table121939%_
                                (##fx+ _%i121950%_ '1))))
                          (__raw-table-set!
                           _%tab121937%_
                           _%key121952%_
                           _%value121954%_))
                        '#!void))
                  (_%lp121948%_ (##fx+ _%i121950%_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_%obj121929%_)
        (let ((_%t121931%_ (##type _%obj121929%_)))
          (if (##fx= (##fxand _%t121931%_ '1) '0)
              (fxand (##type-cast _%obj121929%_ (macro-type-fixnum))
                     (macro-max-fixnum32))
              (if (symbolic? _%obj121929%_)
                  (##symbol-hash _%obj121929%_)
                  (if (procedure? _%obj121929%_)
                      (procedure-hash _%obj121929%_)
                      (fxand (__object->eq-hash _%obj121929%_)
                             (macro-max-fixnum32))))))))
    (define procedure-hash
      (lambda (_%obj121925%_)
        (let ((_%h121927%_
               (if (##closure? _%obj121925%_)
                   (__object->eq-hash _%obj121925%_)
                   (##type-cast _%obj121925%_ '0))))
          (fxand _%h121927%_ (macro-max-fixnum32)))))
    (define __eq-hash
      (lambda (_%obj121923%_) (__object->eq-hash _%obj121923%_)))
    (define eqv-hash
      (lambda (_%obj121913%_)
        (letrec ((_%combine121915%_
                  (lambda (_%a121920%_ _%b121921%_)
                    (fxand (##fx* (##fx+ _%a121920%_
                                         (fxarithmetic-shift-left
                                          _%b121921%_
                                          '1))
                                  '331804471)
                           (macro-max-fixnum32))))
                 (_%hash121916%_
                  (lambda (_%obj121918%_)
                    (macro-number-dispatch
                     _%obj121918%_
                     (eq-hash _%obj121918%_)
                     (fxand _%obj121918%_ (macro-max-fixnum32))
                     (modulo _%obj121918%_ '331804481)
                     (_%combine121915%_
                      (_%hash121916%_ (macro-ratnum-numerator _%obj121918%_))
                      (_%hash121916%_
                       (macro-ratnum-denominator _%obj121918%_)))
                     (_%combine121915%_
                      (##u16vector-ref _%obj121918%_ '0)
                      (_%combine121915%_
                       (##u16vector-ref _%obj121918%_ '1)
                       (_%combine121915%_
                        (##u16vector-ref _%obj121918%_ '2)
                        (##u16vector-ref _%obj121918%_ '3))))
                     (_%combine121915%_
                      (_%hash121916%_ (macro-cpxnum-real _%obj121918%_))
                      (_%hash121916%_ (macro-cpxnum-imag _%obj121918%_)))))))
          (_%hash121916%_ _%obj121913%_))))
    (define symbolic?
      (lambda (_%obj121908%_)
        (let ((_%$e121910%_ (symbol? _%obj121908%_)))
          (if _%$e121910%_ _%$e121910%_ (keyword? _%obj121908%_)))))
    (define symbolic-hash
      (lambda (_%obj121906%_) (##symbol-hash _%obj121906%_)))
    (define string-hash
      (lambda (_%obj121904%_) (##string=?-hash _%obj121904%_)))
    (define immediate-hash
      (lambda (_%obj121902%_) (##type-cast _%obj121902%_ (macro-type-fixnum))))
    (define make-eq-table__%
      (lambda (_%size-hint121884%_ _%seed121885%_)
        (make-raw-table__1 _%size-hint121884%_ eq-hash eq? _%seed121885%_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_%size-hint121891%_ '#f) (_%seed121893%_ '0))
          (make-eq-table__% _%size-hint121891%_ _%seed121893%_))))
    (define make-eq-table__1
      (lambda (_%size-hint121895%_)
        (let ((_%seed121897%_ '0))
          (make-eq-table__% _%size-hint121895%_ _%seed121897%_))))
    (define make-eq-table
      (lambda _g122524_
        (let ((_g122525_ (##length _g122524_)))
          (cond ((##fx= _g122525_ 0) (apply make-eq-table__0 _g122524_))
                ((##fx= _g122525_ 1) (apply make-eq-table__1 _g122524_))
                ((##fx= _g122525_ 2) (apply make-eq-table__% _g122524_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g122524_))))))
    (define make-eq-table/lock__%
      (lambda (_%size-hint121864%_ _%seed121866%_)
        (make-raw-table/lock__%
         _%size-hint121864%_
         eq-hash
         eq?
         _%seed121866%_)))
    (define make-eq-table/lock__0
      (lambda ()
        (let* ((_%size-hint121872%_ '#f) (_%seed121874%_ '0))
          (make-eq-table/lock__% _%size-hint121872%_ _%seed121874%_))))
    (define make-eq-table/lock__1
      (lambda (_%size-hint121876%_)
        (let ((_%seed121878%_ '0))
          (make-eq-table/lock__% _%size-hint121876%_ _%seed121878%_))))
    (define make-eq-table/lock
      (lambda _g122526_
        (let ((_g122527_ (##length _g122526_)))
          (cond ((##fx= _g122527_ 0) (apply make-eq-table/lock__0 _g122526_))
                ((##fx= _g122527_ 1) (apply make-eq-table/lock__1 _g122526_))
                ((##fx= _g122527_ 2) (apply make-eq-table/lock__% _g122526_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table/lock
                  _g122526_))))))
    (define eq-table-ref
      (lambda (_%tab121817%_ _%key121818%_ _%default121819%_)
        (let ((_%table121821%_ (&raw-table-table _%tab121817%_))
              (_%seed121822%_ (&raw-table-seed _%tab121817%_)))
          (let* ((_%h121824%_ (fxxor (eq-hash _%key121818%_) _%seed121822%_))
                 (_%size121827%_ (vector-length _%table121821%_))
                 (_%entries121830%_ (##fxquotient _%size121827%_ '2))
                 (_%start121833%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h121824%_ _%entries121830%_)
                   '1)))
            (let _%loop121837%_ ((_%probe121840%_ _%start121833%_)
                                 (_%i121842%_ '1)
                                 (_%deleted121844%_ '#f))
              (let ((_%k121847%_ (vector-ref _%table121821%_ _%probe121840%_)))
                (if (eq? _%k121847%_ (macro-unused-obj))
                    _%default121819%_
                    (if (eq? _%k121847%_ (macro-deleted-obj))
                        (_%loop121837%_
                         (let ((_%next-probe121852%_
                                (fx+ _%start121833%_
                                     _%i121842%_
                                     (fx* _%i121842%_ _%i121842%_))))
                           (##fxmodulo _%next-probe121852%_ _%size121827%_))
                         (##fx+ _%i121842%_ '1)
                         (let ((_%$e121855%_ _%deleted121844%_))
                           (if _%$e121855%_ _%$e121855%_ _%probe121840%_)))
                        (if (eq? _%key121818%_ _%k121847%_)
                            (vector-ref
                             _%table121821%_
                             (##fx+ _%probe121840%_ '1))
                            (_%loop121837%_
                             (let ((_%next-probe121860%_
                                    (fx+ _%start121833%_
                                         _%i121842%_
                                         (fx* _%i121842%_ _%i121842%_))))
                               (##fxmodulo
                                _%next-probe121860%_
                                _%size121827%_))
                             (##fx+ _%i121842%_ '1)
                             _%deleted121844%_))))))))))
    (define eq-table-ref/lock
      (lambda (_%tab121788%_ _%key121789%_ _%default121790%_)
        (let ((_%lock121792%_ (&raw-table-lock _%tab121788%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again121797%_ ((_%spin121800%_ '0))
              (if (##fx= (##vector-cas! _%lock121792%_ '0 '1 '0) '0)
                  (##vector-set! _%lock121792%_ '1 (current-thread))
                  (if (##fx< _%spin121800%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again121797%_ (##fx+ _%spin121800%_ '1)))
                      (let ((_%owner121806%_ (##vector-ref _%lock121792%_ '1)))
                        (if (eq? _%owner121806%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner121806%_)
                                (let () (##thread-yield!) (_%again121797%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r121812%_
                 (eq-table-ref _%tab121788%_ _%key121789%_ _%default121790%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock121792%_ '1 '#f)
                (##vector-cas! _%lock121792%_ '0 '0 '1)))
            _%$r121812%_))))
    (define __eq-table-set!
      (lambda (_%tab121740%_ _%key121741%_ _%value121742%_)
        (let ((_%table121744%_ (&raw-table-table _%tab121740%_))
              (_%seed121745%_ (&raw-table-seed _%tab121740%_)))
          (let* ((_%h121747%_ (fxxor (eq-hash _%key121741%_) _%seed121745%_))
                 (_%size121750%_ (vector-length _%table121744%_))
                 (_%entries121753%_ (##fxquotient _%size121750%_ '2))
                 (_%start121756%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h121747%_ _%entries121753%_)
                   '1)))
            (let _%loop121760%_ ((_%probe121763%_ _%start121756%_)
                                 (_%i121765%_ '1)
                                 (_%deleted121767%_ '#f))
              (let ((_%k121770%_ (vector-ref _%table121744%_ _%probe121763%_)))
                (if (eq? _%k121770%_ (macro-unused-obj))
                    (if _%deleted121767%_
                        (begin
                          (vector-set!
                           _%table121744%_
                           _%deleted121767%_
                           _%key121741%_)
                          (vector-set!
                           _%table121744%_
                           (##fx+ _%deleted121767%_ '1)
                           _%value121742%_)
                          (&raw-table-count-set!
                           _%tab121740%_
                           (##fx+ (&raw-table-count _%tab121740%_) '1)))
                        (begin
                          (vector-set!
                           _%table121744%_
                           _%probe121763%_
                           _%key121741%_)
                          (vector-set!
                           _%table121744%_
                           (##fx+ _%probe121763%_ '1)
                           _%value121742%_)
                          (let ()
                            (&raw-table-free-set!
                             _%tab121740%_
                             (##fx- (&raw-table-free _%tab121740%_) '1))
                            (&raw-table-count-set!
                             _%tab121740%_
                             (##fx+ (&raw-table-count _%tab121740%_) '1)))))
                    (if (eq? _%k121770%_ (macro-deleted-obj))
                        (_%loop121760%_
                         (let ((_%next-probe121777%_
                                (fx+ _%start121756%_
                                     _%i121765%_
                                     (fx* _%i121765%_ _%i121765%_))))
                           (##fxmodulo _%next-probe121777%_ _%size121750%_))
                         (##fx+ _%i121765%_ '1)
                         (let ((_%$e121780%_ _%deleted121767%_))
                           (if _%$e121780%_ _%$e121780%_ _%probe121763%_)))
                        (if (eq? _%key121741%_ _%k121770%_)
                            (let ()
                              (vector-set!
                               _%table121744%_
                               _%probe121763%_
                               _%key121741%_)
                              (vector-set!
                               _%table121744%_
                               (##fx+ _%probe121763%_ '1)
                               _%value121742%_))
                            (_%loop121760%_
                             (let ((_%next-probe121785%_
                                    (fx+ _%start121756%_
                                         _%i121765%_
                                         (fx* _%i121765%_ _%i121765%_))))
                               (##fxmodulo
                                _%next-probe121785%_
                                _%size121750%_))
                             (##fx+ _%i121765%_ '1)
                             _%deleted121767%_))))))))))
    (define eq-table-set!
      (lambda (_%tab121736%_ _%key121737%_ _%value121738%_)
        (if (##fx< (&raw-table-free _%tab121736%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab121736%_))
                    '4))
            (__raw-table-rehash! _%tab121736%_)
            '#!void)
        (__eq-table-set! _%tab121736%_ _%key121737%_ _%value121738%_)))
    (define eq-table-set!/lock
      (lambda (_%tab121706%_ _%key121707%_ _%value121708%_)
        (let ((_%lock121711%_ (&raw-table-lock _%tab121706%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again121716%_ ((_%spin121719%_ '0))
              (if (##fx= (##vector-cas! _%lock121711%_ '0 '1 '0) '0)
                  (##vector-set! _%lock121711%_ '1 (current-thread))
                  (if (##fx< _%spin121719%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again121716%_ (##fx+ _%spin121719%_ '1)))
                      (let ((_%owner121725%_ (##vector-ref _%lock121711%_ '1)))
                        (if (eq? _%owner121725%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner121725%_)
                                (let () (##thread-yield!) (_%again121716%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r121731%_
                 (eq-table-set! _%tab121706%_ _%key121707%_ _%value121708%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock121711%_ '1 '#f)
                (##vector-cas! _%lock121711%_ '0 '0 '1)))
            _%$r121731%_))))
    (define __eq-table-update!
      (lambda (_%tab121657%_
               _%key121658%_
               _%eq-table-update!121659%_
               _%default121660%_)
        (let ((_%table121662%_ (&raw-table-table _%tab121657%_))
              (_%seed121663%_ (&raw-table-seed _%tab121657%_)))
          (let* ((_%h121665%_ (fxxor (eq-hash _%key121658%_) _%seed121663%_))
                 (_%size121668%_ (vector-length _%table121662%_))
                 (_%entries121671%_ (##fxquotient _%size121668%_ '2))
                 (_%start121674%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h121665%_ _%entries121671%_)
                   '1)))
            (let _%loop121678%_ ((_%probe121681%_ _%start121674%_)
                                 (_%i121683%_ '1)
                                 (_%deleted121685%_ '#f))
              (let ((_%k121688%_ (vector-ref _%table121662%_ _%probe121681%_)))
                (if (eq? _%k121688%_ (macro-unused-obj))
                    (if _%deleted121685%_
                        (begin
                          (vector-set!
                           _%table121662%_
                           _%deleted121685%_
                           _%key121658%_)
                          (vector-set!
                           _%table121662%_
                           (##fx+ _%deleted121685%_ '1)
                           (_%eq-table-update!121659%_ _%default121660%_))
                          (&raw-table-count-set!
                           _%tab121657%_
                           (##fx+ (&raw-table-count _%tab121657%_) '1)))
                        (begin
                          (vector-set!
                           _%table121662%_
                           _%probe121681%_
                           _%key121658%_)
                          (vector-set!
                           _%table121662%_
                           (##fx+ _%probe121681%_ '1)
                           (_%eq-table-update!121659%_ _%default121660%_))
                          (let ()
                            (&raw-table-free-set!
                             _%tab121657%_
                             (##fx- (&raw-table-free _%tab121657%_) '1))
                            (&raw-table-count-set!
                             _%tab121657%_
                             (##fx+ (&raw-table-count _%tab121657%_) '1)))))
                    (if (eq? _%k121688%_ (macro-deleted-obj))
                        (_%loop121678%_
                         (let ((_%next-probe121695%_
                                (fx+ _%start121674%_
                                     _%i121683%_
                                     (fx* _%i121683%_ _%i121683%_))))
                           (##fxmodulo _%next-probe121695%_ _%size121668%_))
                         (##fx+ _%i121683%_ '1)
                         (let ((_%$e121698%_ _%deleted121685%_))
                           (if _%$e121698%_ _%$e121698%_ _%probe121681%_)))
                        (if (eq? _%key121658%_ _%k121688%_)
                            (let ()
                              (vector-set!
                               _%table121662%_
                               _%probe121681%_
                               _%key121658%_)
                              (vector-set!
                               _%table121662%_
                               (##fx+ _%probe121681%_ '1)
                               (_%eq-table-update!121659%_
                                (vector-ref
                                 _%table121662%_
                                 (##fx+ _%probe121681%_ '1)))))
                            (_%loop121678%_
                             (let ((_%next-probe121703%_
                                    (fx+ _%start121674%_
                                         _%i121683%_
                                         (fx* _%i121683%_ _%i121683%_))))
                               (##fxmodulo
                                _%next-probe121703%_
                                _%size121668%_))
                             (##fx+ _%i121683%_ '1)
                             _%deleted121685%_))))))))))
    (define eq-table-update!
      (lambda (_%tab121652%_
               _%key121653%_
               _%eq-table-update!121654%_
               _%default121655%_)
        (if (##fx< (&raw-table-free _%tab121652%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab121652%_))
                    '4))
            (__raw-table-rehash! _%tab121652%_)
            '#!void)
        (__eq-table-update!
         _%tab121652%_
         _%key121653%_
         _%eq-table-update!121654%_
         _%default121655%_)))
    (define eq-table-update!/lock
      (lambda (_%tab121621%_
               _%key121622%_
               _%eq-table-update!121623%_
               _%default121624%_)
        (let ((_%lock121627%_ (&raw-table-lock _%tab121621%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again121632%_ ((_%spin121635%_ '0))
              (if (##fx= (##vector-cas! _%lock121627%_ '0 '1 '0) '0)
                  (##vector-set! _%lock121627%_ '1 (current-thread))
                  (if (##fx< _%spin121635%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again121632%_ (##fx+ _%spin121635%_ '1)))
                      (let ((_%owner121641%_ (##vector-ref _%lock121627%_ '1)))
                        (if (eq? _%owner121641%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner121641%_)
                                (let () (##thread-yield!) (_%again121632%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r121647%_
                 (_%eq-table-update!121623%_
                  _%tab121621%_
                  _%key121622%_
                  _%eq-table-update!121623%_
                  _%default121624%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock121627%_ '1 '#f)
                (##vector-cas! _%lock121627%_ '0 '0 '1)))
            _%$r121647%_))))
    (define eq-table-delete!
      (lambda (_%tab121578%_ _%key121579%_)
        (let ((_%table121581%_ (&raw-table-table _%tab121578%_))
              (_%seed121583%_ (&raw-table-seed _%tab121578%_)))
          (let* ((_%h121586%_ (fxxor (eq-hash _%key121579%_) _%seed121583%_))
                 (_%size121589%_ (vector-length _%table121581%_))
                 (_%entries121592%_ (##fxquotient _%size121589%_ '2))
                 (_%start121595%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h121586%_ _%entries121592%_)
                   '1)))
            (let _%loop121599%_ ((_%probe121602%_ _%start121595%_)
                                 (_%i121604%_ '1))
              (let ((_%k121607%_ (vector-ref _%table121581%_ _%probe121602%_)))
                (if (eq? _%k121607%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k121607%_ (macro-deleted-obj))
                        (_%loop121599%_
                         (let ((_%next-probe121612%_
                                (fx+ _%start121595%_
                                     _%i121604%_
                                     (fx* _%i121604%_ _%i121604%_))))
                           (##fxmodulo _%next-probe121612%_ _%size121589%_))
                         (##fx+ _%i121604%_ '1))
                        (if (eq? _%key121579%_ _%k121607%_)
                            (let ()
                              (vector-set!
                               _%table121581%_
                               _%probe121602%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table121581%_
                               (##fx+ _%probe121602%_ '1)
                               (macro-absent-obj))
                              (&raw-table-count-set!
                               _%tab121578%_
                               (##fx- (&raw-table-count _%tab121578%_) '1)))
                            (_%loop121599%_
                             (let ((_%next-probe121618%_
                                    (fx+ _%start121595%_
                                         _%i121604%_
                                         (fx* _%i121604%_ _%i121604%_))))
                               (##fxmodulo
                                _%next-probe121618%_
                                _%size121589%_))
                             (##fx+ _%i121604%_ '1)))))))))))
    (define eq-table-delete!/lock
      (lambda (_%tab121548%_ _%key121550%_)
        (let ((_%lock121553%_ (&raw-table-lock _%tab121548%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again121558%_ ((_%spin121561%_ '0))
              (if (##fx= (##vector-cas! _%lock121553%_ '0 '1 '0) '0)
                  (##vector-set! _%lock121553%_ '1 (current-thread))
                  (if (##fx< _%spin121561%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again121558%_ (##fx+ _%spin121561%_ '1)))
                      (let ((_%owner121567%_ (##vector-ref _%lock121553%_ '1)))
                        (if (eq? _%owner121567%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner121567%_)
                                (let () (##thread-yield!) (_%again121558%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r121573%_ (eq-table-delete! _%tab121548%_ _%key121550%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock121553%_ '1 '#f)
                (##vector-cas! _%lock121553%_ '0 '0 '1)))
            _%$r121573%_))))
    (define make-eqv-table__%
      (lambda (_%size-hint121530%_ _%seed121531%_)
        (make-raw-table__1 _%size-hint121530%_ eqv-hash eqv? _%seed121531%_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_%size-hint121537%_ '#f) (_%seed121539%_ '0))
          (make-eqv-table__% _%size-hint121537%_ _%seed121539%_))))
    (define make-eqv-table__1
      (lambda (_%size-hint121541%_)
        (let ((_%seed121543%_ '0))
          (make-eqv-table__% _%size-hint121541%_ _%seed121543%_))))
    (define make-eqv-table
      (lambda _g122528_
        (let ((_g122529_ (##length _g122528_)))
          (cond ((##fx= _g122529_ 0) (apply make-eqv-table__0 _g122528_))
                ((##fx= _g122529_ 1) (apply make-eqv-table__1 _g122528_))
                ((##fx= _g122529_ 2) (apply make-eqv-table__% _g122528_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g122528_))))))
    (define make-eqv-table/lock__%
      (lambda (_%size-hint121510%_ _%seed121512%_)
        (make-raw-table/lock__%
         _%size-hint121510%_
         eqv-hash
         eqv?
         _%seed121512%_)))
    (define make-eqv-table/lock__0
      (lambda ()
        (let* ((_%size-hint121518%_ '#f) (_%seed121520%_ '0))
          (make-eqv-table/lock__% _%size-hint121518%_ _%seed121520%_))))
    (define make-eqv-table/lock__1
      (lambda (_%size-hint121522%_)
        (let ((_%seed121524%_ '0))
          (make-eqv-table/lock__% _%size-hint121522%_ _%seed121524%_))))
    (define make-eqv-table/lock
      (lambda _g122530_
        (let ((_g122531_ (##length _g122530_)))
          (cond ((##fx= _g122531_ 0) (apply make-eqv-table/lock__0 _g122530_))
                ((##fx= _g122531_ 1) (apply make-eqv-table/lock__1 _g122530_))
                ((##fx= _g122531_ 2) (apply make-eqv-table/lock__% _g122530_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table/lock
                  _g122530_))))))
    (define eqv-table-ref
      (lambda (_%tab121463%_ _%key121464%_ _%default121465%_)
        (let ((_%table121467%_ (&raw-table-table _%tab121463%_))
              (_%seed121468%_ (&raw-table-seed _%tab121463%_)))
          (let* ((_%h121470%_ (fxxor (eqv-hash _%key121464%_) _%seed121468%_))
                 (_%size121473%_ (vector-length _%table121467%_))
                 (_%entries121476%_ (##fxquotient _%size121473%_ '2))
                 (_%start121479%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h121470%_ _%entries121476%_)
                   '1)))
            (let _%loop121483%_ ((_%probe121486%_ _%start121479%_)
                                 (_%i121488%_ '1)
                                 (_%deleted121490%_ '#f))
              (let ((_%k121493%_ (vector-ref _%table121467%_ _%probe121486%_)))
                (if (eq? _%k121493%_ (macro-unused-obj))
                    _%default121465%_
                    (if (eq? _%k121493%_ (macro-deleted-obj))
                        (_%loop121483%_
                         (let ((_%next-probe121498%_
                                (fx+ _%start121479%_
                                     _%i121488%_
                                     (fx* _%i121488%_ _%i121488%_))))
                           (##fxmodulo _%next-probe121498%_ _%size121473%_))
                         (##fx+ _%i121488%_ '1)
                         (let ((_%$e121501%_ _%deleted121490%_))
                           (if _%$e121501%_ _%$e121501%_ _%probe121486%_)))
                        (if (eqv? _%key121464%_ _%k121493%_)
                            (vector-ref
                             _%table121467%_
                             (##fx+ _%probe121486%_ '1))
                            (_%loop121483%_
                             (let ((_%next-probe121506%_
                                    (fx+ _%start121479%_
                                         _%i121488%_
                                         (fx* _%i121488%_ _%i121488%_))))
                               (##fxmodulo
                                _%next-probe121506%_
                                _%size121473%_))
                             (##fx+ _%i121488%_ '1)
                             _%deleted121490%_))))))))))
    (define eqv-table-ref/lock
      (lambda (_%tab121434%_ _%key121435%_ _%default121436%_)
        (let ((_%lock121438%_ (&raw-table-lock _%tab121434%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again121443%_ ((_%spin121446%_ '0))
              (if (##fx= (##vector-cas! _%lock121438%_ '0 '1 '0) '0)
                  (##vector-set! _%lock121438%_ '1 (current-thread))
                  (if (##fx< _%spin121446%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again121443%_ (##fx+ _%spin121446%_ '1)))
                      (let ((_%owner121452%_ (##vector-ref _%lock121438%_ '1)))
                        (if (eq? _%owner121452%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner121452%_)
                                (let () (##thread-yield!) (_%again121443%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r121458%_
                 (eqv-table-ref
                  _%tab121434%_
                  _%key121435%_
                  _%default121436%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock121438%_ '1 '#f)
                (##vector-cas! _%lock121438%_ '0 '0 '1)))
            _%$r121458%_))))
    (define __eqv-table-set!
      (lambda (_%tab121386%_ _%key121387%_ _%value121388%_)
        (let ((_%table121390%_ (&raw-table-table _%tab121386%_))
              (_%seed121391%_ (&raw-table-seed _%tab121386%_)))
          (let* ((_%h121393%_ (fxxor (eqv-hash _%key121387%_) _%seed121391%_))
                 (_%size121396%_ (vector-length _%table121390%_))
                 (_%entries121399%_ (##fxquotient _%size121396%_ '2))
                 (_%start121402%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h121393%_ _%entries121399%_)
                   '1)))
            (let _%loop121406%_ ((_%probe121409%_ _%start121402%_)
                                 (_%i121411%_ '1)
                                 (_%deleted121413%_ '#f))
              (let ((_%k121416%_ (vector-ref _%table121390%_ _%probe121409%_)))
                (if (eq? _%k121416%_ (macro-unused-obj))
                    (if _%deleted121413%_
                        (begin
                          (vector-set!
                           _%table121390%_
                           _%deleted121413%_
                           _%key121387%_)
                          (vector-set!
                           _%table121390%_
                           (##fx+ _%deleted121413%_ '1)
                           _%value121388%_)
                          (&raw-table-count-set!
                           _%tab121386%_
                           (##fx+ (&raw-table-count _%tab121386%_) '1)))
                        (begin
                          (vector-set!
                           _%table121390%_
                           _%probe121409%_
                           _%key121387%_)
                          (vector-set!
                           _%table121390%_
                           (##fx+ _%probe121409%_ '1)
                           _%value121388%_)
                          (let ()
                            (&raw-table-free-set!
                             _%tab121386%_
                             (##fx- (&raw-table-free _%tab121386%_) '1))
                            (&raw-table-count-set!
                             _%tab121386%_
                             (##fx+ (&raw-table-count _%tab121386%_) '1)))))
                    (if (eq? _%k121416%_ (macro-deleted-obj))
                        (_%loop121406%_
                         (let ((_%next-probe121423%_
                                (fx+ _%start121402%_
                                     _%i121411%_
                                     (fx* _%i121411%_ _%i121411%_))))
                           (##fxmodulo _%next-probe121423%_ _%size121396%_))
                         (##fx+ _%i121411%_ '1)
                         (let ((_%$e121426%_ _%deleted121413%_))
                           (if _%$e121426%_ _%$e121426%_ _%probe121409%_)))
                        (if (eqv? _%key121387%_ _%k121416%_)
                            (let ()
                              (vector-set!
                               _%table121390%_
                               _%probe121409%_
                               _%key121387%_)
                              (vector-set!
                               _%table121390%_
                               (##fx+ _%probe121409%_ '1)
                               _%value121388%_))
                            (_%loop121406%_
                             (let ((_%next-probe121431%_
                                    (fx+ _%start121402%_
                                         _%i121411%_
                                         (fx* _%i121411%_ _%i121411%_))))
                               (##fxmodulo
                                _%next-probe121431%_
                                _%size121396%_))
                             (##fx+ _%i121411%_ '1)
                             _%deleted121413%_))))))))))
    (define eqv-table-set!
      (lambda (_%tab121382%_ _%key121383%_ _%value121384%_)
        (if (##fx< (&raw-table-free _%tab121382%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab121382%_))
                    '4))
            (__raw-table-rehash! _%tab121382%_)
            '#!void)
        (__eqv-table-set! _%tab121382%_ _%key121383%_ _%value121384%_)))
    (define eqv-table-set!/lock
      (lambda (_%tab121352%_ _%key121353%_ _%value121354%_)
        (let ((_%lock121357%_ (&raw-table-lock _%tab121352%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again121362%_ ((_%spin121365%_ '0))
              (if (##fx= (##vector-cas! _%lock121357%_ '0 '1 '0) '0)
                  (##vector-set! _%lock121357%_ '1 (current-thread))
                  (if (##fx< _%spin121365%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again121362%_ (##fx+ _%spin121365%_ '1)))
                      (let ((_%owner121371%_ (##vector-ref _%lock121357%_ '1)))
                        (if (eq? _%owner121371%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner121371%_)
                                (let () (##thread-yield!) (_%again121362%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r121377%_
                 (eqv-table-set! _%tab121352%_ _%key121353%_ _%value121354%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock121357%_ '1 '#f)
                (##vector-cas! _%lock121357%_ '0 '0 '1)))
            _%$r121377%_))))
    (define __eqv-table-update!
      (lambda (_%tab121303%_
               _%key121304%_
               _%eqv-table-update!121305%_
               _%default121306%_)
        (let ((_%table121308%_ (&raw-table-table _%tab121303%_))
              (_%seed121309%_ (&raw-table-seed _%tab121303%_)))
          (let* ((_%h121311%_ (fxxor (eqv-hash _%key121304%_) _%seed121309%_))
                 (_%size121314%_ (vector-length _%table121308%_))
                 (_%entries121317%_ (##fxquotient _%size121314%_ '2))
                 (_%start121320%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h121311%_ _%entries121317%_)
                   '1)))
            (let _%loop121324%_ ((_%probe121327%_ _%start121320%_)
                                 (_%i121329%_ '1)
                                 (_%deleted121331%_ '#f))
              (let ((_%k121334%_ (vector-ref _%table121308%_ _%probe121327%_)))
                (if (eq? _%k121334%_ (macro-unused-obj))
                    (if _%deleted121331%_
                        (begin
                          (vector-set!
                           _%table121308%_
                           _%deleted121331%_
                           _%key121304%_)
                          (vector-set!
                           _%table121308%_
                           (##fx+ _%deleted121331%_ '1)
                           (_%eqv-table-update!121305%_ _%default121306%_))
                          (&raw-table-count-set!
                           _%tab121303%_
                           (##fx+ (&raw-table-count _%tab121303%_) '1)))
                        (begin
                          (vector-set!
                           _%table121308%_
                           _%probe121327%_
                           _%key121304%_)
                          (vector-set!
                           _%table121308%_
                           (##fx+ _%probe121327%_ '1)
                           (_%eqv-table-update!121305%_ _%default121306%_))
                          (let ()
                            (&raw-table-free-set!
                             _%tab121303%_
                             (##fx- (&raw-table-free _%tab121303%_) '1))
                            (&raw-table-count-set!
                             _%tab121303%_
                             (##fx+ (&raw-table-count _%tab121303%_) '1)))))
                    (if (eq? _%k121334%_ (macro-deleted-obj))
                        (_%loop121324%_
                         (let ((_%next-probe121341%_
                                (fx+ _%start121320%_
                                     _%i121329%_
                                     (fx* _%i121329%_ _%i121329%_))))
                           (##fxmodulo _%next-probe121341%_ _%size121314%_))
                         (##fx+ _%i121329%_ '1)
                         (let ((_%$e121344%_ _%deleted121331%_))
                           (if _%$e121344%_ _%$e121344%_ _%probe121327%_)))
                        (if (eqv? _%key121304%_ _%k121334%_)
                            (let ()
                              (vector-set!
                               _%table121308%_
                               _%probe121327%_
                               _%key121304%_)
                              (vector-set!
                               _%table121308%_
                               (##fx+ _%probe121327%_ '1)
                               (_%eqv-table-update!121305%_
                                (vector-ref
                                 _%table121308%_
                                 (##fx+ _%probe121327%_ '1)))))
                            (_%loop121324%_
                             (let ((_%next-probe121349%_
                                    (fx+ _%start121320%_
                                         _%i121329%_
                                         (fx* _%i121329%_ _%i121329%_))))
                               (##fxmodulo
                                _%next-probe121349%_
                                _%size121314%_))
                             (##fx+ _%i121329%_ '1)
                             _%deleted121331%_))))))))))
    (define eqv-table-update!
      (lambda (_%tab121298%_
               _%key121299%_
               _%eqv-table-update!121300%_
               _%default121301%_)
        (if (##fx< (&raw-table-free _%tab121298%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab121298%_))
                    '4))
            (__raw-table-rehash! _%tab121298%_)
            '#!void)
        (__eqv-table-update!
         _%tab121298%_
         _%key121299%_
         _%eqv-table-update!121300%_
         _%default121301%_)))
    (define eqv-table-update!/lock
      (lambda (_%tab121267%_
               _%key121268%_
               _%eqv-table-update!121269%_
               _%default121270%_)
        (let ((_%lock121273%_ (&raw-table-lock _%tab121267%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again121278%_ ((_%spin121281%_ '0))
              (if (##fx= (##vector-cas! _%lock121273%_ '0 '1 '0) '0)
                  (##vector-set! _%lock121273%_ '1 (current-thread))
                  (if (##fx< _%spin121281%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again121278%_ (##fx+ _%spin121281%_ '1)))
                      (let ((_%owner121287%_ (##vector-ref _%lock121273%_ '1)))
                        (if (eq? _%owner121287%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner121287%_)
                                (let () (##thread-yield!) (_%again121278%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r121293%_
                 (_%eqv-table-update!121269%_
                  _%tab121267%_
                  _%key121268%_
                  _%eqv-table-update!121269%_
                  _%default121270%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock121273%_ '1 '#f)
                (##vector-cas! _%lock121273%_ '0 '0 '1)))
            _%$r121293%_))))
    (define eqv-table-delete!
      (lambda (_%tab121224%_ _%key121225%_)
        (let ((_%table121227%_ (&raw-table-table _%tab121224%_))
              (_%seed121229%_ (&raw-table-seed _%tab121224%_)))
          (let* ((_%h121232%_ (fxxor (eqv-hash _%key121225%_) _%seed121229%_))
                 (_%size121235%_ (vector-length _%table121227%_))
                 (_%entries121238%_ (##fxquotient _%size121235%_ '2))
                 (_%start121241%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h121232%_ _%entries121238%_)
                   '1)))
            (let _%loop121245%_ ((_%probe121248%_ _%start121241%_)
                                 (_%i121250%_ '1))
              (let ((_%k121253%_ (vector-ref _%table121227%_ _%probe121248%_)))
                (if (eq? _%k121253%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k121253%_ (macro-deleted-obj))
                        (_%loop121245%_
                         (let ((_%next-probe121258%_
                                (fx+ _%start121241%_
                                     _%i121250%_
                                     (fx* _%i121250%_ _%i121250%_))))
                           (##fxmodulo _%next-probe121258%_ _%size121235%_))
                         (##fx+ _%i121250%_ '1))
                        (if (eqv? _%key121225%_ _%k121253%_)
                            (let ()
                              (vector-set!
                               _%table121227%_
                               _%probe121248%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table121227%_
                               (##fx+ _%probe121248%_ '1)
                               (macro-absent-obj))
                              (&raw-table-count-set!
                               _%tab121224%_
                               (##fx- (&raw-table-count _%tab121224%_) '1)))
                            (_%loop121245%_
                             (let ((_%next-probe121264%_
                                    (fx+ _%start121241%_
                                         _%i121250%_
                                         (fx* _%i121250%_ _%i121250%_))))
                               (##fxmodulo
                                _%next-probe121264%_
                                _%size121235%_))
                             (##fx+ _%i121250%_ '1)))))))))))
    (define eqv-table-delete!/lock
      (lambda (_%tab121194%_ _%key121196%_)
        (let ((_%lock121199%_ (&raw-table-lock _%tab121194%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again121204%_ ((_%spin121207%_ '0))
              (if (##fx= (##vector-cas! _%lock121199%_ '0 '1 '0) '0)
                  (##vector-set! _%lock121199%_ '1 (current-thread))
                  (if (##fx< _%spin121207%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again121204%_ (##fx+ _%spin121207%_ '1)))
                      (let ((_%owner121213%_ (##vector-ref _%lock121199%_ '1)))
                        (if (eq? _%owner121213%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner121213%_)
                                (let () (##thread-yield!) (_%again121204%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r121219%_ (eqv-table-delete! _%tab121194%_ _%key121196%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock121199%_ '1 '#f)
                (##vector-cas! _%lock121199%_ '0 '0 '1)))
            _%$r121219%_))))
    (define make-symbolic-table__%
      (lambda (_%size-hint121176%_ _%seed121177%_)
        (make-raw-table__1
         _%size-hint121176%_
         symbolic-hash
         eq?
         _%seed121177%_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_%size-hint121183%_ '#f) (_%seed121185%_ '0))
          (make-symbolic-table__% _%size-hint121183%_ _%seed121185%_))))
    (define make-symbolic-table__1
      (lambda (_%size-hint121187%_)
        (let ((_%seed121189%_ '0))
          (make-symbolic-table__% _%size-hint121187%_ _%seed121189%_))))
    (define make-symbolic-table
      (lambda _g122532_
        (let ((_g122533_ (##length _g122532_)))
          (cond ((##fx= _g122533_ 0) (apply make-symbolic-table__0 _g122532_))
                ((##fx= _g122533_ 1) (apply make-symbolic-table__1 _g122532_))
                ((##fx= _g122533_ 2) (apply make-symbolic-table__% _g122532_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g122532_))))))
    (define make-symbolic-table/lock__%
      (lambda (_%size-hint121156%_ _%seed121158%_)
        (make-raw-table/lock__%
         _%size-hint121156%_
         symbolic-hash
         eq?
         _%seed121158%_)))
    (define make-symbolic-table/lock__0
      (lambda ()
        (let* ((_%size-hint121164%_ '#f) (_%seed121166%_ '0))
          (make-symbolic-table/lock__% _%size-hint121164%_ _%seed121166%_))))
    (define make-symbolic-table/lock__1
      (lambda (_%size-hint121168%_)
        (let ((_%seed121170%_ '0))
          (make-symbolic-table/lock__% _%size-hint121168%_ _%seed121170%_))))
    (define make-symbolic-table/lock
      (lambda _g122534_
        (let ((_g122535_ (##length _g122534_)))
          (cond ((##fx= _g122535_ 0)
                 (apply make-symbolic-table/lock__0 _g122534_))
                ((##fx= _g122535_ 1)
                 (apply make-symbolic-table/lock__1 _g122534_))
                ((##fx= _g122535_ 2)
                 (apply make-symbolic-table/lock__% _g122534_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table/lock
                  _g122534_))))))
    (define symbolic-table-ref
      (lambda (_%tab121109%_ _%key121110%_ _%default121111%_)
        (let ((_%table121113%_ (&raw-table-table _%tab121109%_))
              (_%seed121114%_ (&raw-table-seed _%tab121109%_)))
          (let* ((_%h121116%_
                  (fxxor (##symbol-hash _%key121110%_) _%seed121114%_))
                 (_%size121119%_ (vector-length _%table121113%_))
                 (_%entries121122%_ (##fxquotient _%size121119%_ '2))
                 (_%start121125%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h121116%_ _%entries121122%_)
                   '1)))
            (let _%loop121129%_ ((_%probe121132%_ _%start121125%_)
                                 (_%i121134%_ '1)
                                 (_%deleted121136%_ '#f))
              (let ((_%k121139%_ (vector-ref _%table121113%_ _%probe121132%_)))
                (if (eq? _%k121139%_ (macro-unused-obj))
                    _%default121111%_
                    (if (eq? _%k121139%_ (macro-deleted-obj))
                        (_%loop121129%_
                         (let ((_%next-probe121144%_
                                (fx+ _%start121125%_
                                     _%i121134%_
                                     (fx* _%i121134%_ _%i121134%_))))
                           (##fxmodulo _%next-probe121144%_ _%size121119%_))
                         (##fx+ _%i121134%_ '1)
                         (let ((_%$e121147%_ _%deleted121136%_))
                           (if _%$e121147%_ _%$e121147%_ _%probe121132%_)))
                        (if (eq? _%key121110%_ _%k121139%_)
                            (vector-ref
                             _%table121113%_
                             (##fx+ _%probe121132%_ '1))
                            (_%loop121129%_
                             (let ((_%next-probe121152%_
                                    (fx+ _%start121125%_
                                         _%i121134%_
                                         (fx* _%i121134%_ _%i121134%_))))
                               (##fxmodulo
                                _%next-probe121152%_
                                _%size121119%_))
                             (##fx+ _%i121134%_ '1)
                             _%deleted121136%_))))))))))
    (define symbolic-table-ref/lock
      (lambda (_%tab121080%_ _%key121081%_ _%default121082%_)
        (let ((_%lock121084%_ (&raw-table-lock _%tab121080%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again121089%_ ((_%spin121092%_ '0))
              (if (##fx= (##vector-cas! _%lock121084%_ '0 '1 '0) '0)
                  (##vector-set! _%lock121084%_ '1 (current-thread))
                  (if (##fx< _%spin121092%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again121089%_ (##fx+ _%spin121092%_ '1)))
                      (let ((_%owner121098%_ (##vector-ref _%lock121084%_ '1)))
                        (if (eq? _%owner121098%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner121098%_)
                                (let () (##thread-yield!) (_%again121089%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r121104%_
                 (symbolic-table-ref
                  _%tab121080%_
                  _%key121081%_
                  _%default121082%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock121084%_ '1 '#f)
                (##vector-cas! _%lock121084%_ '0 '0 '1)))
            _%$r121104%_))))
    (define __symbolic-table-set!
      (lambda (_%tab121032%_ _%key121033%_ _%value121034%_)
        (let ((_%table121036%_ (&raw-table-table _%tab121032%_))
              (_%seed121037%_ (&raw-table-seed _%tab121032%_)))
          (let* ((_%h121039%_
                  (fxxor (##symbol-hash _%key121033%_) _%seed121037%_))
                 (_%size121042%_ (vector-length _%table121036%_))
                 (_%entries121045%_ (##fxquotient _%size121042%_ '2))
                 (_%start121048%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h121039%_ _%entries121045%_)
                   '1)))
            (let _%loop121052%_ ((_%probe121055%_ _%start121048%_)
                                 (_%i121057%_ '1)
                                 (_%deleted121059%_ '#f))
              (let ((_%k121062%_ (vector-ref _%table121036%_ _%probe121055%_)))
                (if (eq? _%k121062%_ (macro-unused-obj))
                    (if _%deleted121059%_
                        (begin
                          (vector-set!
                           _%table121036%_
                           _%deleted121059%_
                           _%key121033%_)
                          (vector-set!
                           _%table121036%_
                           (##fx+ _%deleted121059%_ '1)
                           _%value121034%_)
                          (&raw-table-count-set!
                           _%tab121032%_
                           (##fx+ (&raw-table-count _%tab121032%_) '1)))
                        (begin
                          (vector-set!
                           _%table121036%_
                           _%probe121055%_
                           _%key121033%_)
                          (vector-set!
                           _%table121036%_
                           (##fx+ _%probe121055%_ '1)
                           _%value121034%_)
                          (let ()
                            (&raw-table-free-set!
                             _%tab121032%_
                             (##fx- (&raw-table-free _%tab121032%_) '1))
                            (&raw-table-count-set!
                             _%tab121032%_
                             (##fx+ (&raw-table-count _%tab121032%_) '1)))))
                    (if (eq? _%k121062%_ (macro-deleted-obj))
                        (_%loop121052%_
                         (let ((_%next-probe121069%_
                                (fx+ _%start121048%_
                                     _%i121057%_
                                     (fx* _%i121057%_ _%i121057%_))))
                           (##fxmodulo _%next-probe121069%_ _%size121042%_))
                         (##fx+ _%i121057%_ '1)
                         (let ((_%$e121072%_ _%deleted121059%_))
                           (if _%$e121072%_ _%$e121072%_ _%probe121055%_)))
                        (if (eq? _%key121033%_ _%k121062%_)
                            (let ()
                              (vector-set!
                               _%table121036%_
                               _%probe121055%_
                               _%key121033%_)
                              (vector-set!
                               _%table121036%_
                               (##fx+ _%probe121055%_ '1)
                               _%value121034%_))
                            (_%loop121052%_
                             (let ((_%next-probe121077%_
                                    (fx+ _%start121048%_
                                         _%i121057%_
                                         (fx* _%i121057%_ _%i121057%_))))
                               (##fxmodulo
                                _%next-probe121077%_
                                _%size121042%_))
                             (##fx+ _%i121057%_ '1)
                             _%deleted121059%_))))))))))
    (define symbolic-table-set!
      (lambda (_%tab121028%_ _%key121029%_ _%value121030%_)
        (if (##fx< (&raw-table-free _%tab121028%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab121028%_))
                    '4))
            (__raw-table-rehash! _%tab121028%_)
            '#!void)
        (__symbolic-table-set! _%tab121028%_ _%key121029%_ _%value121030%_)))
    (define symbolic-table-set!/lock
      (lambda (_%tab120998%_ _%key120999%_ _%value121000%_)
        (let ((_%lock121003%_ (&raw-table-lock _%tab120998%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again121008%_ ((_%spin121011%_ '0))
              (if (##fx= (##vector-cas! _%lock121003%_ '0 '1 '0) '0)
                  (##vector-set! _%lock121003%_ '1 (current-thread))
                  (if (##fx< _%spin121011%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again121008%_ (##fx+ _%spin121011%_ '1)))
                      (let ((_%owner121017%_ (##vector-ref _%lock121003%_ '1)))
                        (if (eq? _%owner121017%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner121017%_)
                                (let () (##thread-yield!) (_%again121008%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r121023%_
                 (symbolic-table-set!
                  _%tab120998%_
                  _%key120999%_
                  _%value121000%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock121003%_ '1 '#f)
                (##vector-cas! _%lock121003%_ '0 '0 '1)))
            _%$r121023%_))))
    (define __symbolic-table-update!
      (lambda (_%tab120949%_
               _%key120950%_
               _%symbolic-table-update!120951%_
               _%default120952%_)
        (let ((_%table120954%_ (&raw-table-table _%tab120949%_))
              (_%seed120955%_ (&raw-table-seed _%tab120949%_)))
          (let* ((_%h120957%_
                  (fxxor (##symbol-hash _%key120950%_) _%seed120955%_))
                 (_%size120960%_ (vector-length _%table120954%_))
                 (_%entries120963%_ (##fxquotient _%size120960%_ '2))
                 (_%start120966%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h120957%_ _%entries120963%_)
                   '1)))
            (let _%loop120970%_ ((_%probe120973%_ _%start120966%_)
                                 (_%i120975%_ '1)
                                 (_%deleted120977%_ '#f))
              (let ((_%k120980%_ (vector-ref _%table120954%_ _%probe120973%_)))
                (if (eq? _%k120980%_ (macro-unused-obj))
                    (if _%deleted120977%_
                        (begin
                          (vector-set!
                           _%table120954%_
                           _%deleted120977%_
                           _%key120950%_)
                          (vector-set!
                           _%table120954%_
                           (##fx+ _%deleted120977%_ '1)
                           (_%symbolic-table-update!120951%_
                            _%default120952%_))
                          (&raw-table-count-set!
                           _%tab120949%_
                           (##fx+ (&raw-table-count _%tab120949%_) '1)))
                        (begin
                          (vector-set!
                           _%table120954%_
                           _%probe120973%_
                           _%key120950%_)
                          (vector-set!
                           _%table120954%_
                           (##fx+ _%probe120973%_ '1)
                           (_%symbolic-table-update!120951%_
                            _%default120952%_))
                          (let ()
                            (&raw-table-free-set!
                             _%tab120949%_
                             (##fx- (&raw-table-free _%tab120949%_) '1))
                            (&raw-table-count-set!
                             _%tab120949%_
                             (##fx+ (&raw-table-count _%tab120949%_) '1)))))
                    (if (eq? _%k120980%_ (macro-deleted-obj))
                        (_%loop120970%_
                         (let ((_%next-probe120987%_
                                (fx+ _%start120966%_
                                     _%i120975%_
                                     (fx* _%i120975%_ _%i120975%_))))
                           (##fxmodulo _%next-probe120987%_ _%size120960%_))
                         (##fx+ _%i120975%_ '1)
                         (let ((_%$e120990%_ _%deleted120977%_))
                           (if _%$e120990%_ _%$e120990%_ _%probe120973%_)))
                        (if (eq? _%key120950%_ _%k120980%_)
                            (let ()
                              (vector-set!
                               _%table120954%_
                               _%probe120973%_
                               _%key120950%_)
                              (vector-set!
                               _%table120954%_
                               (##fx+ _%probe120973%_ '1)
                               (_%symbolic-table-update!120951%_
                                (vector-ref
                                 _%table120954%_
                                 (##fx+ _%probe120973%_ '1)))))
                            (_%loop120970%_
                             (let ((_%next-probe120995%_
                                    (fx+ _%start120966%_
                                         _%i120975%_
                                         (fx* _%i120975%_ _%i120975%_))))
                               (##fxmodulo
                                _%next-probe120995%_
                                _%size120960%_))
                             (##fx+ _%i120975%_ '1)
                             _%deleted120977%_))))))))))
    (define symbolic-table-update!
      (lambda (_%tab120944%_
               _%key120945%_
               _%symbolic-table-update!120946%_
               _%default120947%_)
        (if (##fx< (&raw-table-free _%tab120944%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab120944%_))
                    '4))
            (__raw-table-rehash! _%tab120944%_)
            '#!void)
        (__symbolic-table-update!
         _%tab120944%_
         _%key120945%_
         _%symbolic-table-update!120946%_
         _%default120947%_)))
    (define symbolic-table-update!/lock
      (lambda (_%tab120913%_
               _%key120914%_
               _%symbolic-table-update!120915%_
               _%default120916%_)
        (let ((_%lock120919%_ (&raw-table-lock _%tab120913%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again120924%_ ((_%spin120927%_ '0))
              (if (##fx= (##vector-cas! _%lock120919%_ '0 '1 '0) '0)
                  (##vector-set! _%lock120919%_ '1 (current-thread))
                  (if (##fx< _%spin120927%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again120924%_ (##fx+ _%spin120927%_ '1)))
                      (let ((_%owner120933%_ (##vector-ref _%lock120919%_ '1)))
                        (if (eq? _%owner120933%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner120933%_)
                                (let () (##thread-yield!) (_%again120924%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r120939%_
                 (_%symbolic-table-update!120915%_
                  _%tab120913%_
                  _%key120914%_
                  _%symbolic-table-update!120915%_
                  _%default120916%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock120919%_ '1 '#f)
                (##vector-cas! _%lock120919%_ '0 '0 '1)))
            _%$r120939%_))))
    (define symbolic-table-delete!
      (lambda (_%tab120870%_ _%key120871%_)
        (let ((_%table120873%_ (&raw-table-table _%tab120870%_))
              (_%seed120875%_ (&raw-table-seed _%tab120870%_)))
          (let* ((_%h120878%_
                  (fxxor (##symbol-hash _%key120871%_) _%seed120875%_))
                 (_%size120881%_ (vector-length _%table120873%_))
                 (_%entries120884%_ (##fxquotient _%size120881%_ '2))
                 (_%start120887%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h120878%_ _%entries120884%_)
                   '1)))
            (let _%loop120891%_ ((_%probe120894%_ _%start120887%_)
                                 (_%i120896%_ '1))
              (let ((_%k120899%_ (vector-ref _%table120873%_ _%probe120894%_)))
                (if (eq? _%k120899%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k120899%_ (macro-deleted-obj))
                        (_%loop120891%_
                         (let ((_%next-probe120904%_
                                (fx+ _%start120887%_
                                     _%i120896%_
                                     (fx* _%i120896%_ _%i120896%_))))
                           (##fxmodulo _%next-probe120904%_ _%size120881%_))
                         (##fx+ _%i120896%_ '1))
                        (if (eq? _%key120871%_ _%k120899%_)
                            (let ()
                              (vector-set!
                               _%table120873%_
                               _%probe120894%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table120873%_
                               (##fx+ _%probe120894%_ '1)
                               (macro-absent-obj))
                              (&raw-table-count-set!
                               _%tab120870%_
                               (##fx- (&raw-table-count _%tab120870%_) '1)))
                            (_%loop120891%_
                             (let ((_%next-probe120910%_
                                    (fx+ _%start120887%_
                                         _%i120896%_
                                         (fx* _%i120896%_ _%i120896%_))))
                               (##fxmodulo
                                _%next-probe120910%_
                                _%size120881%_))
                             (##fx+ _%i120896%_ '1)))))))))))
    (define symbolic-table-delete!/lock
      (lambda (_%tab120840%_ _%key120842%_)
        (let ((_%lock120845%_ (&raw-table-lock _%tab120840%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again120850%_ ((_%spin120853%_ '0))
              (if (##fx= (##vector-cas! _%lock120845%_ '0 '1 '0) '0)
                  (##vector-set! _%lock120845%_ '1 (current-thread))
                  (if (##fx< _%spin120853%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again120850%_ (##fx+ _%spin120853%_ '1)))
                      (let ((_%owner120859%_ (##vector-ref _%lock120845%_ '1)))
                        (if (eq? _%owner120859%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner120859%_)
                                (let () (##thread-yield!) (_%again120850%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r120865%_
                 (symbolic-table-delete! _%tab120840%_ _%key120842%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock120845%_ '1 '#f)
                (##vector-cas! _%lock120845%_ '0 '0 '1)))
            _%$r120865%_))))
    (define make-string-table__%
      (lambda (_%size-hint120822%_ _%seed120823%_)
        (make-raw-table__1
         _%size-hint120822%_
         string-hash
         ##string=?
         _%seed120823%_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_%size-hint120829%_ '#f) (_%seed120831%_ '0))
          (make-string-table__% _%size-hint120829%_ _%seed120831%_))))
    (define make-string-table__1
      (lambda (_%size-hint120833%_)
        (let ((_%seed120835%_ '0))
          (make-string-table__% _%size-hint120833%_ _%seed120835%_))))
    (define make-string-table
      (lambda _g122536_
        (let ((_g122537_ (##length _g122536_)))
          (cond ((##fx= _g122537_ 0) (apply make-string-table__0 _g122536_))
                ((##fx= _g122537_ 1) (apply make-string-table__1 _g122536_))
                ((##fx= _g122537_ 2) (apply make-string-table__% _g122536_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g122536_))))))
    (define make-string-table/lock__%
      (lambda (_%size-hint120802%_ _%seed120804%_)
        (make-raw-table/lock__%
         _%size-hint120802%_
         string-hash
         ##string=?
         _%seed120804%_)))
    (define make-string-table/lock__0
      (lambda ()
        (let* ((_%size-hint120810%_ '#f) (_%seed120812%_ '0))
          (make-string-table/lock__% _%size-hint120810%_ _%seed120812%_))))
    (define make-string-table/lock__1
      (lambda (_%size-hint120814%_)
        (let ((_%seed120816%_ '0))
          (make-string-table/lock__% _%size-hint120814%_ _%seed120816%_))))
    (define make-string-table/lock
      (lambda _g122538_
        (let ((_g122539_ (##length _g122538_)))
          (cond ((##fx= _g122539_ 0)
                 (apply make-string-table/lock__0 _g122538_))
                ((##fx= _g122539_ 1)
                 (apply make-string-table/lock__1 _g122538_))
                ((##fx= _g122539_ 2)
                 (apply make-string-table/lock__% _g122538_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table/lock
                  _g122538_))))))
    (define string-table-ref
      (lambda (_%tab120755%_ _%key120756%_ _%default120757%_)
        (let ((_%table120759%_ (&raw-table-table _%tab120755%_))
              (_%seed120760%_ (&raw-table-seed _%tab120755%_)))
          (let* ((_%h120762%_
                  (fxxor (##string=?-hash _%key120756%_) _%seed120760%_))
                 (_%size120765%_ (vector-length _%table120759%_))
                 (_%entries120768%_ (##fxquotient _%size120765%_ '2))
                 (_%start120771%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h120762%_ _%entries120768%_)
                   '1)))
            (let _%loop120775%_ ((_%probe120778%_ _%start120771%_)
                                 (_%i120780%_ '1)
                                 (_%deleted120782%_ '#f))
              (let ((_%k120785%_ (vector-ref _%table120759%_ _%probe120778%_)))
                (if (eq? _%k120785%_ (macro-unused-obj))
                    _%default120757%_
                    (if (eq? _%k120785%_ (macro-deleted-obj))
                        (_%loop120775%_
                         (let ((_%next-probe120790%_
                                (fx+ _%start120771%_
                                     _%i120780%_
                                     (fx* _%i120780%_ _%i120780%_))))
                           (##fxmodulo _%next-probe120790%_ _%size120765%_))
                         (##fx+ _%i120780%_ '1)
                         (let ((_%$e120793%_ _%deleted120782%_))
                           (if _%$e120793%_ _%$e120793%_ _%probe120778%_)))
                        (if (##string=? _%key120756%_ _%k120785%_)
                            (vector-ref
                             _%table120759%_
                             (##fx+ _%probe120778%_ '1))
                            (_%loop120775%_
                             (let ((_%next-probe120798%_
                                    (fx+ _%start120771%_
                                         _%i120780%_
                                         (fx* _%i120780%_ _%i120780%_))))
                               (##fxmodulo
                                _%next-probe120798%_
                                _%size120765%_))
                             (##fx+ _%i120780%_ '1)
                             _%deleted120782%_))))))))))
    (define string-table-ref/lock
      (lambda (_%tab120726%_ _%key120727%_ _%default120728%_)
        (let ((_%lock120730%_ (&raw-table-lock _%tab120726%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again120735%_ ((_%spin120738%_ '0))
              (if (##fx= (##vector-cas! _%lock120730%_ '0 '1 '0) '0)
                  (##vector-set! _%lock120730%_ '1 (current-thread))
                  (if (##fx< _%spin120738%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again120735%_ (##fx+ _%spin120738%_ '1)))
                      (let ((_%owner120744%_ (##vector-ref _%lock120730%_ '1)))
                        (if (eq? _%owner120744%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner120744%_)
                                (let () (##thread-yield!) (_%again120735%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r120750%_
                 (string-table-ref
                  _%tab120726%_
                  _%key120727%_
                  _%default120728%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock120730%_ '1 '#f)
                (##vector-cas! _%lock120730%_ '0 '0 '1)))
            _%$r120750%_))))
    (define __string-table-set!
      (lambda (_%tab120678%_ _%key120679%_ _%value120680%_)
        (let ((_%table120682%_ (&raw-table-table _%tab120678%_))
              (_%seed120683%_ (&raw-table-seed _%tab120678%_)))
          (let* ((_%h120685%_
                  (fxxor (##string=?-hash _%key120679%_) _%seed120683%_))
                 (_%size120688%_ (vector-length _%table120682%_))
                 (_%entries120691%_ (##fxquotient _%size120688%_ '2))
                 (_%start120694%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h120685%_ _%entries120691%_)
                   '1)))
            (let _%loop120698%_ ((_%probe120701%_ _%start120694%_)
                                 (_%i120703%_ '1)
                                 (_%deleted120705%_ '#f))
              (let ((_%k120708%_ (vector-ref _%table120682%_ _%probe120701%_)))
                (if (eq? _%k120708%_ (macro-unused-obj))
                    (if _%deleted120705%_
                        (begin
                          (vector-set!
                           _%table120682%_
                           _%deleted120705%_
                           _%key120679%_)
                          (vector-set!
                           _%table120682%_
                           (##fx+ _%deleted120705%_ '1)
                           _%value120680%_)
                          (&raw-table-count-set!
                           _%tab120678%_
                           (##fx+ (&raw-table-count _%tab120678%_) '1)))
                        (begin
                          (vector-set!
                           _%table120682%_
                           _%probe120701%_
                           _%key120679%_)
                          (vector-set!
                           _%table120682%_
                           (##fx+ _%probe120701%_ '1)
                           _%value120680%_)
                          (let ()
                            (&raw-table-free-set!
                             _%tab120678%_
                             (##fx- (&raw-table-free _%tab120678%_) '1))
                            (&raw-table-count-set!
                             _%tab120678%_
                             (##fx+ (&raw-table-count _%tab120678%_) '1)))))
                    (if (eq? _%k120708%_ (macro-deleted-obj))
                        (_%loop120698%_
                         (let ((_%next-probe120715%_
                                (fx+ _%start120694%_
                                     _%i120703%_
                                     (fx* _%i120703%_ _%i120703%_))))
                           (##fxmodulo _%next-probe120715%_ _%size120688%_))
                         (##fx+ _%i120703%_ '1)
                         (let ((_%$e120718%_ _%deleted120705%_))
                           (if _%$e120718%_ _%$e120718%_ _%probe120701%_)))
                        (if (##string=? _%key120679%_ _%k120708%_)
                            (let ()
                              (vector-set!
                               _%table120682%_
                               _%probe120701%_
                               _%key120679%_)
                              (vector-set!
                               _%table120682%_
                               (##fx+ _%probe120701%_ '1)
                               _%value120680%_))
                            (_%loop120698%_
                             (let ((_%next-probe120723%_
                                    (fx+ _%start120694%_
                                         _%i120703%_
                                         (fx* _%i120703%_ _%i120703%_))))
                               (##fxmodulo
                                _%next-probe120723%_
                                _%size120688%_))
                             (##fx+ _%i120703%_ '1)
                             _%deleted120705%_))))))))))
    (define string-table-set!
      (lambda (_%tab120674%_ _%key120675%_ _%value120676%_)
        (if (##fx< (&raw-table-free _%tab120674%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab120674%_))
                    '4))
            (__raw-table-rehash! _%tab120674%_)
            '#!void)
        (__string-table-set! _%tab120674%_ _%key120675%_ _%value120676%_)))
    (define string-table-set!/lock
      (lambda (_%tab120644%_ _%key120645%_ _%value120646%_)
        (let ((_%lock120649%_ (&raw-table-lock _%tab120644%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again120654%_ ((_%spin120657%_ '0))
              (if (##fx= (##vector-cas! _%lock120649%_ '0 '1 '0) '0)
                  (##vector-set! _%lock120649%_ '1 (current-thread))
                  (if (##fx< _%spin120657%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again120654%_ (##fx+ _%spin120657%_ '1)))
                      (let ((_%owner120663%_ (##vector-ref _%lock120649%_ '1)))
                        (if (eq? _%owner120663%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner120663%_)
                                (let () (##thread-yield!) (_%again120654%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r120669%_
                 (string-table-set!
                  _%tab120644%_
                  _%key120645%_
                  _%value120646%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock120649%_ '1 '#f)
                (##vector-cas! _%lock120649%_ '0 '0 '1)))
            _%$r120669%_))))
    (define __string-table-update!
      (lambda (_%tab120595%_
               _%key120596%_
               _%string-table-update!120597%_
               _%default120598%_)
        (let ((_%table120600%_ (&raw-table-table _%tab120595%_))
              (_%seed120601%_ (&raw-table-seed _%tab120595%_)))
          (let* ((_%h120603%_
                  (fxxor (##string=?-hash _%key120596%_) _%seed120601%_))
                 (_%size120606%_ (vector-length _%table120600%_))
                 (_%entries120609%_ (##fxquotient _%size120606%_ '2))
                 (_%start120612%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h120603%_ _%entries120609%_)
                   '1)))
            (let _%loop120616%_ ((_%probe120619%_ _%start120612%_)
                                 (_%i120621%_ '1)
                                 (_%deleted120623%_ '#f))
              (let ((_%k120626%_ (vector-ref _%table120600%_ _%probe120619%_)))
                (if (eq? _%k120626%_ (macro-unused-obj))
                    (if _%deleted120623%_
                        (begin
                          (vector-set!
                           _%table120600%_
                           _%deleted120623%_
                           _%key120596%_)
                          (vector-set!
                           _%table120600%_
                           (##fx+ _%deleted120623%_ '1)
                           (_%string-table-update!120597%_ _%default120598%_))
                          (&raw-table-count-set!
                           _%tab120595%_
                           (##fx+ (&raw-table-count _%tab120595%_) '1)))
                        (begin
                          (vector-set!
                           _%table120600%_
                           _%probe120619%_
                           _%key120596%_)
                          (vector-set!
                           _%table120600%_
                           (##fx+ _%probe120619%_ '1)
                           (_%string-table-update!120597%_ _%default120598%_))
                          (let ()
                            (&raw-table-free-set!
                             _%tab120595%_
                             (##fx- (&raw-table-free _%tab120595%_) '1))
                            (&raw-table-count-set!
                             _%tab120595%_
                             (##fx+ (&raw-table-count _%tab120595%_) '1)))))
                    (if (eq? _%k120626%_ (macro-deleted-obj))
                        (_%loop120616%_
                         (let ((_%next-probe120633%_
                                (fx+ _%start120612%_
                                     _%i120621%_
                                     (fx* _%i120621%_ _%i120621%_))))
                           (##fxmodulo _%next-probe120633%_ _%size120606%_))
                         (##fx+ _%i120621%_ '1)
                         (let ((_%$e120636%_ _%deleted120623%_))
                           (if _%$e120636%_ _%$e120636%_ _%probe120619%_)))
                        (if (##string=? _%key120596%_ _%k120626%_)
                            (let ()
                              (vector-set!
                               _%table120600%_
                               _%probe120619%_
                               _%key120596%_)
                              (vector-set!
                               _%table120600%_
                               (##fx+ _%probe120619%_ '1)
                               (_%string-table-update!120597%_
                                (vector-ref
                                 _%table120600%_
                                 (##fx+ _%probe120619%_ '1)))))
                            (_%loop120616%_
                             (let ((_%next-probe120641%_
                                    (fx+ _%start120612%_
                                         _%i120621%_
                                         (fx* _%i120621%_ _%i120621%_))))
                               (##fxmodulo
                                _%next-probe120641%_
                                _%size120606%_))
                             (##fx+ _%i120621%_ '1)
                             _%deleted120623%_))))))))))
    (define string-table-update!
      (lambda (_%tab120590%_
               _%key120591%_
               _%string-table-update!120592%_
               _%default120593%_)
        (if (##fx< (&raw-table-free _%tab120590%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab120590%_))
                    '4))
            (__raw-table-rehash! _%tab120590%_)
            '#!void)
        (__string-table-update!
         _%tab120590%_
         _%key120591%_
         _%string-table-update!120592%_
         _%default120593%_)))
    (define string-table-update!/lock
      (lambda (_%tab120559%_
               _%key120560%_
               _%string-table-update!120561%_
               _%default120562%_)
        (let ((_%lock120565%_ (&raw-table-lock _%tab120559%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again120570%_ ((_%spin120573%_ '0))
              (if (##fx= (##vector-cas! _%lock120565%_ '0 '1 '0) '0)
                  (##vector-set! _%lock120565%_ '1 (current-thread))
                  (if (##fx< _%spin120573%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again120570%_ (##fx+ _%spin120573%_ '1)))
                      (let ((_%owner120579%_ (##vector-ref _%lock120565%_ '1)))
                        (if (eq? _%owner120579%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner120579%_)
                                (let () (##thread-yield!) (_%again120570%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r120585%_
                 (_%string-table-update!120561%_
                  _%tab120559%_
                  _%key120560%_
                  _%string-table-update!120561%_
                  _%default120562%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock120565%_ '1 '#f)
                (##vector-cas! _%lock120565%_ '0 '0 '1)))
            _%$r120585%_))))
    (define string-table-delete!
      (lambda (_%tab120516%_ _%key120517%_)
        (let ((_%table120519%_ (&raw-table-table _%tab120516%_))
              (_%seed120521%_ (&raw-table-seed _%tab120516%_)))
          (let* ((_%h120524%_
                  (fxxor (##string=?-hash _%key120517%_) _%seed120521%_))
                 (_%size120527%_ (vector-length _%table120519%_))
                 (_%entries120530%_ (##fxquotient _%size120527%_ '2))
                 (_%start120533%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h120524%_ _%entries120530%_)
                   '1)))
            (let _%loop120537%_ ((_%probe120540%_ _%start120533%_)
                                 (_%i120542%_ '1))
              (let ((_%k120545%_ (vector-ref _%table120519%_ _%probe120540%_)))
                (if (eq? _%k120545%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k120545%_ (macro-deleted-obj))
                        (_%loop120537%_
                         (let ((_%next-probe120550%_
                                (fx+ _%start120533%_
                                     _%i120542%_
                                     (fx* _%i120542%_ _%i120542%_))))
                           (##fxmodulo _%next-probe120550%_ _%size120527%_))
                         (##fx+ _%i120542%_ '1))
                        (if (##string=? _%key120517%_ _%k120545%_)
                            (let ()
                              (vector-set!
                               _%table120519%_
                               _%probe120540%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table120519%_
                               (##fx+ _%probe120540%_ '1)
                               (macro-absent-obj))
                              (&raw-table-count-set!
                               _%tab120516%_
                               (##fx- (&raw-table-count _%tab120516%_) '1)))
                            (_%loop120537%_
                             (let ((_%next-probe120556%_
                                    (fx+ _%start120533%_
                                         _%i120542%_
                                         (fx* _%i120542%_ _%i120542%_))))
                               (##fxmodulo
                                _%next-probe120556%_
                                _%size120527%_))
                             (##fx+ _%i120542%_ '1)))))))))))
    (define string-table-delete!/lock
      (lambda (_%tab120486%_ _%key120488%_)
        (let ((_%lock120491%_ (&raw-table-lock _%tab120486%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again120496%_ ((_%spin120499%_ '0))
              (if (##fx= (##vector-cas! _%lock120491%_ '0 '1 '0) '0)
                  (##vector-set! _%lock120491%_ '1 (current-thread))
                  (if (##fx< _%spin120499%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again120496%_ (##fx+ _%spin120499%_ '1)))
                      (let ((_%owner120505%_ (##vector-ref _%lock120491%_ '1)))
                        (if (eq? _%owner120505%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner120505%_)
                                (let () (##thread-yield!) (_%again120496%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r120511%_
                 (string-table-delete! _%tab120486%_ _%key120488%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock120491%_ '1 '#f)
                (##vector-cas! _%lock120491%_ '0 '0 '1)))
            _%$r120511%_))))
    (define make-immediate-table__%
      (lambda (_%size-hint120468%_ _%seed120469%_)
        (make-raw-table__1
         _%size-hint120468%_
         immediate-hash
         eq?
         _%seed120469%_)))
    (define make-immediate-table__0
      (lambda ()
        (let* ((_%size-hint120475%_ '#f) (_%seed120477%_ '0))
          (make-immediate-table__% _%size-hint120475%_ _%seed120477%_))))
    (define make-immediate-table__1
      (lambda (_%size-hint120479%_)
        (let ((_%seed120481%_ '0))
          (make-immediate-table__% _%size-hint120479%_ _%seed120481%_))))
    (define make-immediate-table
      (lambda _g122540_
        (let ((_g122541_ (##length _g122540_)))
          (cond ((##fx= _g122541_ 0) (apply make-immediate-table__0 _g122540_))
                ((##fx= _g122541_ 1) (apply make-immediate-table__1 _g122540_))
                ((##fx= _g122541_ 2) (apply make-immediate-table__% _g122540_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table
                  _g122540_))))))
    (define make-immediate-table/lock__%
      (lambda (_%size-hint120448%_ _%seed120450%_)
        (make-raw-table/lock__%
         _%size-hint120448%_
         immediate-hash
         eq?
         _%seed120450%_)))
    (define make-immediate-table/lock__0
      (lambda ()
        (let* ((_%size-hint120456%_ '#f) (_%seed120458%_ '0))
          (make-immediate-table/lock__% _%size-hint120456%_ _%seed120458%_))))
    (define make-immediate-table/lock__1
      (lambda (_%size-hint120460%_)
        (let ((_%seed120462%_ '0))
          (make-immediate-table/lock__% _%size-hint120460%_ _%seed120462%_))))
    (define make-immediate-table/lock
      (lambda _g122542_
        (let ((_g122543_ (##length _g122542_)))
          (cond ((##fx= _g122543_ 0)
                 (apply make-immediate-table/lock__0 _g122542_))
                ((##fx= _g122543_ 1)
                 (apply make-immediate-table/lock__1 _g122542_))
                ((##fx= _g122543_ 2)
                 (apply make-immediate-table/lock__% _g122542_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table/lock
                  _g122542_))))))
    (define immediate-table-ref
      (lambda (_%tab120401%_ _%key120402%_ _%default120403%_)
        (let ((_%table120405%_ (&raw-table-table _%tab120401%_))
              (_%seed120406%_ (&raw-table-seed _%tab120401%_)))
          (let* ((_%h120408%_
                  (fxxor (immediate-hash _%key120402%_) _%seed120406%_))
                 (_%size120411%_ (vector-length _%table120405%_))
                 (_%entries120414%_ (##fxquotient _%size120411%_ '2))
                 (_%start120417%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h120408%_ _%entries120414%_)
                   '1)))
            (let _%loop120421%_ ((_%probe120424%_ _%start120417%_)
                                 (_%i120426%_ '1)
                                 (_%deleted120428%_ '#f))
              (let ((_%k120431%_ (vector-ref _%table120405%_ _%probe120424%_)))
                (if (eq? _%k120431%_ (macro-unused-obj))
                    _%default120403%_
                    (if (eq? _%k120431%_ (macro-deleted-obj))
                        (_%loop120421%_
                         (let ((_%next-probe120436%_
                                (fx+ _%start120417%_
                                     _%i120426%_
                                     (fx* _%i120426%_ _%i120426%_))))
                           (##fxmodulo _%next-probe120436%_ _%size120411%_))
                         (##fx+ _%i120426%_ '1)
                         (let ((_%$e120439%_ _%deleted120428%_))
                           (if _%$e120439%_ _%$e120439%_ _%probe120424%_)))
                        (if (eq? _%key120402%_ _%k120431%_)
                            (vector-ref
                             _%table120405%_
                             (##fx+ _%probe120424%_ '1))
                            (_%loop120421%_
                             (let ((_%next-probe120444%_
                                    (fx+ _%start120417%_
                                         _%i120426%_
                                         (fx* _%i120426%_ _%i120426%_))))
                               (##fxmodulo
                                _%next-probe120444%_
                                _%size120411%_))
                             (##fx+ _%i120426%_ '1)
                             _%deleted120428%_))))))))))
    (define immediate-table-ref/lock
      (lambda (_%tab120372%_ _%key120373%_ _%default120374%_)
        (let ((_%lock120376%_ (&raw-table-lock _%tab120372%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again120381%_ ((_%spin120384%_ '0))
              (if (##fx= (##vector-cas! _%lock120376%_ '0 '1 '0) '0)
                  (##vector-set! _%lock120376%_ '1 (current-thread))
                  (if (##fx< _%spin120384%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again120381%_ (##fx+ _%spin120384%_ '1)))
                      (let ((_%owner120390%_ (##vector-ref _%lock120376%_ '1)))
                        (if (eq? _%owner120390%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner120390%_)
                                (let () (##thread-yield!) (_%again120381%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r120396%_
                 (immediate-table-ref
                  _%tab120372%_
                  _%key120373%_
                  _%default120374%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock120376%_ '1 '#f)
                (##vector-cas! _%lock120376%_ '0 '0 '1)))
            _%$r120396%_))))
    (define __immediate-table-set!
      (lambda (_%tab120324%_ _%key120325%_ _%value120326%_)
        (let ((_%table120328%_ (&raw-table-table _%tab120324%_))
              (_%seed120329%_ (&raw-table-seed _%tab120324%_)))
          (let* ((_%h120331%_
                  (fxxor (immediate-hash _%key120325%_) _%seed120329%_))
                 (_%size120334%_ (vector-length _%table120328%_))
                 (_%entries120337%_ (##fxquotient _%size120334%_ '2))
                 (_%start120340%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h120331%_ _%entries120337%_)
                   '1)))
            (let _%loop120344%_ ((_%probe120347%_ _%start120340%_)
                                 (_%i120349%_ '1)
                                 (_%deleted120351%_ '#f))
              (let ((_%k120354%_ (vector-ref _%table120328%_ _%probe120347%_)))
                (if (eq? _%k120354%_ (macro-unused-obj))
                    (if _%deleted120351%_
                        (begin
                          (vector-set!
                           _%table120328%_
                           _%deleted120351%_
                           _%key120325%_)
                          (vector-set!
                           _%table120328%_
                           (##fx+ _%deleted120351%_ '1)
                           _%value120326%_)
                          (&raw-table-count-set!
                           _%tab120324%_
                           (##fx+ (&raw-table-count _%tab120324%_) '1)))
                        (begin
                          (vector-set!
                           _%table120328%_
                           _%probe120347%_
                           _%key120325%_)
                          (vector-set!
                           _%table120328%_
                           (##fx+ _%probe120347%_ '1)
                           _%value120326%_)
                          (let ()
                            (&raw-table-free-set!
                             _%tab120324%_
                             (##fx- (&raw-table-free _%tab120324%_) '1))
                            (&raw-table-count-set!
                             _%tab120324%_
                             (##fx+ (&raw-table-count _%tab120324%_) '1)))))
                    (if (eq? _%k120354%_ (macro-deleted-obj))
                        (_%loop120344%_
                         (let ((_%next-probe120361%_
                                (fx+ _%start120340%_
                                     _%i120349%_
                                     (fx* _%i120349%_ _%i120349%_))))
                           (##fxmodulo _%next-probe120361%_ _%size120334%_))
                         (##fx+ _%i120349%_ '1)
                         (let ((_%$e120364%_ _%deleted120351%_))
                           (if _%$e120364%_ _%$e120364%_ _%probe120347%_)))
                        (if (eq? _%key120325%_ _%k120354%_)
                            (let ()
                              (vector-set!
                               _%table120328%_
                               _%probe120347%_
                               _%key120325%_)
                              (vector-set!
                               _%table120328%_
                               (##fx+ _%probe120347%_ '1)
                               _%value120326%_))
                            (_%loop120344%_
                             (let ((_%next-probe120369%_
                                    (fx+ _%start120340%_
                                         _%i120349%_
                                         (fx* _%i120349%_ _%i120349%_))))
                               (##fxmodulo
                                _%next-probe120369%_
                                _%size120334%_))
                             (##fx+ _%i120349%_ '1)
                             _%deleted120351%_))))))))))
    (define immediate-table-set!
      (lambda (_%tab120320%_ _%key120321%_ _%value120322%_)
        (if (##fx< (&raw-table-free _%tab120320%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab120320%_))
                    '4))
            (__raw-table-rehash! _%tab120320%_)
            '#!void)
        (__immediate-table-set! _%tab120320%_ _%key120321%_ _%value120322%_)))
    (define immediate-table-set!/lock
      (lambda (_%tab120290%_ _%key120291%_ _%value120292%_)
        (let ((_%lock120295%_ (&raw-table-lock _%tab120290%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again120300%_ ((_%spin120303%_ '0))
              (if (##fx= (##vector-cas! _%lock120295%_ '0 '1 '0) '0)
                  (##vector-set! _%lock120295%_ '1 (current-thread))
                  (if (##fx< _%spin120303%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again120300%_ (##fx+ _%spin120303%_ '1)))
                      (let ((_%owner120309%_ (##vector-ref _%lock120295%_ '1)))
                        (if (eq? _%owner120309%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner120309%_)
                                (let () (##thread-yield!) (_%again120300%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r120315%_
                 (immediate-table-set!
                  _%tab120290%_
                  _%key120291%_
                  _%value120292%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock120295%_ '1 '#f)
                (##vector-cas! _%lock120295%_ '0 '0 '1)))
            _%$r120315%_))))
    (define __immediate-table-update!
      (lambda (_%tab120241%_
               _%key120242%_
               _%immediate-table-update!120243%_
               _%default120244%_)
        (let ((_%table120246%_ (&raw-table-table _%tab120241%_))
              (_%seed120247%_ (&raw-table-seed _%tab120241%_)))
          (let* ((_%h120249%_
                  (fxxor (immediate-hash _%key120242%_) _%seed120247%_))
                 (_%size120252%_ (vector-length _%table120246%_))
                 (_%entries120255%_ (##fxquotient _%size120252%_ '2))
                 (_%start120258%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h120249%_ _%entries120255%_)
                   '1)))
            (let _%loop120262%_ ((_%probe120265%_ _%start120258%_)
                                 (_%i120267%_ '1)
                                 (_%deleted120269%_ '#f))
              (let ((_%k120272%_ (vector-ref _%table120246%_ _%probe120265%_)))
                (if (eq? _%k120272%_ (macro-unused-obj))
                    (if _%deleted120269%_
                        (begin
                          (vector-set!
                           _%table120246%_
                           _%deleted120269%_
                           _%key120242%_)
                          (vector-set!
                           _%table120246%_
                           (##fx+ _%deleted120269%_ '1)
                           (_%immediate-table-update!120243%_
                            _%default120244%_))
                          (&raw-table-count-set!
                           _%tab120241%_
                           (##fx+ (&raw-table-count _%tab120241%_) '1)))
                        (begin
                          (vector-set!
                           _%table120246%_
                           _%probe120265%_
                           _%key120242%_)
                          (vector-set!
                           _%table120246%_
                           (##fx+ _%probe120265%_ '1)
                           (_%immediate-table-update!120243%_
                            _%default120244%_))
                          (let ()
                            (&raw-table-free-set!
                             _%tab120241%_
                             (##fx- (&raw-table-free _%tab120241%_) '1))
                            (&raw-table-count-set!
                             _%tab120241%_
                             (##fx+ (&raw-table-count _%tab120241%_) '1)))))
                    (if (eq? _%k120272%_ (macro-deleted-obj))
                        (_%loop120262%_
                         (let ((_%next-probe120279%_
                                (fx+ _%start120258%_
                                     _%i120267%_
                                     (fx* _%i120267%_ _%i120267%_))))
                           (##fxmodulo _%next-probe120279%_ _%size120252%_))
                         (##fx+ _%i120267%_ '1)
                         (let ((_%$e120282%_ _%deleted120269%_))
                           (if _%$e120282%_ _%$e120282%_ _%probe120265%_)))
                        (if (eq? _%key120242%_ _%k120272%_)
                            (let ()
                              (vector-set!
                               _%table120246%_
                               _%probe120265%_
                               _%key120242%_)
                              (vector-set!
                               _%table120246%_
                               (##fx+ _%probe120265%_ '1)
                               (_%immediate-table-update!120243%_
                                (vector-ref
                                 _%table120246%_
                                 (##fx+ _%probe120265%_ '1)))))
                            (_%loop120262%_
                             (let ((_%next-probe120287%_
                                    (fx+ _%start120258%_
                                         _%i120267%_
                                         (fx* _%i120267%_ _%i120267%_))))
                               (##fxmodulo
                                _%next-probe120287%_
                                _%size120252%_))
                             (##fx+ _%i120267%_ '1)
                             _%deleted120269%_))))))))))
    (define immediate-table-update!
      (lambda (_%tab120236%_
               _%key120237%_
               _%immediate-table-update!120238%_
               _%default120239%_)
        (if (##fx< (&raw-table-free _%tab120236%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab120236%_))
                    '4))
            (__raw-table-rehash! _%tab120236%_)
            '#!void)
        (__immediate-table-update!
         _%tab120236%_
         _%key120237%_
         _%immediate-table-update!120238%_
         _%default120239%_)))
    (define immediate-table-update!/lock
      (lambda (_%tab120205%_
               _%key120206%_
               _%immediate-table-update!120207%_
               _%default120208%_)
        (let ((_%lock120211%_ (&raw-table-lock _%tab120205%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again120216%_ ((_%spin120219%_ '0))
              (if (##fx= (##vector-cas! _%lock120211%_ '0 '1 '0) '0)
                  (##vector-set! _%lock120211%_ '1 (current-thread))
                  (if (##fx< _%spin120219%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again120216%_ (##fx+ _%spin120219%_ '1)))
                      (let ((_%owner120225%_ (##vector-ref _%lock120211%_ '1)))
                        (if (eq? _%owner120225%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner120225%_)
                                (let () (##thread-yield!) (_%again120216%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r120231%_
                 (_%immediate-table-update!120207%_
                  _%tab120205%_
                  _%key120206%_
                  _%immediate-table-update!120207%_
                  _%default120208%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock120211%_ '1 '#f)
                (##vector-cas! _%lock120211%_ '0 '0 '1)))
            _%$r120231%_))))
    (define immediate-table-delete!
      (lambda (_%tab120162%_ _%key120163%_)
        (let ((_%table120165%_ (&raw-table-table _%tab120162%_))
              (_%seed120167%_ (&raw-table-seed _%tab120162%_)))
          (let* ((_%h120170%_
                  (fxxor (immediate-hash _%key120163%_) _%seed120167%_))
                 (_%size120173%_ (vector-length _%table120165%_))
                 (_%entries120176%_ (##fxquotient _%size120173%_ '2))
                 (_%start120179%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h120170%_ _%entries120176%_)
                   '1)))
            (let _%loop120183%_ ((_%probe120186%_ _%start120179%_)
                                 (_%i120188%_ '1))
              (let ((_%k120191%_ (vector-ref _%table120165%_ _%probe120186%_)))
                (if (eq? _%k120191%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k120191%_ (macro-deleted-obj))
                        (_%loop120183%_
                         (let ((_%next-probe120196%_
                                (fx+ _%start120179%_
                                     _%i120188%_
                                     (fx* _%i120188%_ _%i120188%_))))
                           (##fxmodulo _%next-probe120196%_ _%size120173%_))
                         (##fx+ _%i120188%_ '1))
                        (if (eq? _%key120163%_ _%k120191%_)
                            (let ()
                              (vector-set!
                               _%table120165%_
                               _%probe120186%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table120165%_
                               (##fx+ _%probe120186%_ '1)
                               (macro-absent-obj))
                              (&raw-table-count-set!
                               _%tab120162%_
                               (##fx- (&raw-table-count _%tab120162%_) '1)))
                            (_%loop120183%_
                             (let ((_%next-probe120202%_
                                    (fx+ _%start120179%_
                                         _%i120188%_
                                         (fx* _%i120188%_ _%i120188%_))))
                               (##fxmodulo
                                _%next-probe120202%_
                                _%size120173%_))
                             (##fx+ _%i120188%_ '1)))))))))))
    (define immediate-table-delete!/lock
      (lambda (_%tab120132%_ _%key120134%_)
        (let ((_%lock120137%_ (&raw-table-lock _%tab120132%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again120142%_ ((_%spin120145%_ '0))
              (if (##fx= (##vector-cas! _%lock120137%_ '0 '1 '0) '0)
                  (##vector-set! _%lock120137%_ '1 (current-thread))
                  (if (##fx< _%spin120145%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again120142%_ (##fx+ _%spin120145%_ '1)))
                      (let ((_%owner120151%_ (##vector-ref _%lock120137%_ '1)))
                        (if (eq? _%owner120151%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner120151%_)
                                (let () (##thread-yield!) (_%again120142%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r120157%_
                 (immediate-table-delete! _%tab120132%_ _%key120134%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock120137%_ '1 '#f)
                (##vector-cas! _%lock120137%_ '0 '0 '1)))
            _%$r120157%_))))
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
      (lambda (_%tab120130%_)
        (##unchecked-structure-ref
         _%tab120130%_
         '1
         __gc-table::t
         'gc-table-gcht)))
    (define &gc-table-immediate
      (lambda (_%tab120128%_)
        (##unchecked-structure-ref
         _%tab120128%_
         '2
         __gc-table::t
         'gc-table-immediate)))
    (define &gc-table-lock
      (lambda (_%tab120126%_)
        (##unchecked-structure-ref
         _%tab120126%_
         '3
         __gc-table::t
         'gc-table-lock)))
    (define &gc-table-gcht-set!
      (lambda (_%tab120123%_ _%val120124%_)
        (##unchecked-structure-set!
         _%tab120123%_
         _%val120124%_
         '1
         __gc-table::t
         'gc-table-gcht-set!)))
    (define &gc-table-immediate-set!
      (lambda (_%tab120120%_ _%val120121%_)
        (##unchecked-structure-set!
         _%tab120120%_
         _%val120121%_
         '2
         __gc-table::t
         'gc-table-immediate-set!)))
    (define &gc-table-lock-set!
      (lambda (_%tab120117%_ _%val120118%_)
        (##unchecked-structure-set!
         _%tab120117%_
         _%val120118%_
         '3
         __gc-table::t
         'gc-table-lock-set!)))
    (define make-gc-table__%
      (lambda (_%size-hint120081%_
               _%klass120082%_
               _%flags120083%_
               _%lock120084%_)
        (let ((_%gcht120086%_
               (__gc-table-new
                (if (fixnum? _%size-hint120081%_) _%size-hint120081%_ '16)
                _%flags120083%_)))
          (##structure _%klass120082%_ _%gcht120086%_ '#f _%lock120084%_))))
    (define make-gc-table__0
      (lambda (_%size-hint120091%_)
        (let* ((_%klass120093%_ __gc-table::t)
               (_%flags120095%_ '0)
               (_%lock120097%_ '#f))
          (make-gc-table__%
           _%size-hint120091%_
           _%klass120093%_
           _%flags120095%_
           _%lock120097%_))))
    (define make-gc-table__1
      (lambda (_%size-hint120099%_ _%klass120100%_)
        (let* ((_%flags120102%_ '0) (_%lock120104%_ '#f))
          (make-gc-table__%
           _%size-hint120099%_
           _%klass120100%_
           _%flags120102%_
           _%lock120104%_))))
    (define make-gc-table__2
      (lambda (_%size-hint120106%_ _%klass120107%_ _%flags120108%_)
        (let ((_%lock120110%_ '#f))
          (make-gc-table__%
           _%size-hint120106%_
           _%klass120107%_
           _%flags120108%_
           _%lock120110%_))))
    (define make-gc-table
      (lambda _g122544_
        (let ((_g122545_ (##length _g122544_)))
          (cond ((##fx= _g122545_ 1) (apply make-gc-table__0 _g122544_))
                ((##fx= _g122545_ 2) (apply make-gc-table__1 _g122544_))
                ((##fx= _g122545_ 3) (apply make-gc-table__2 _g122544_))
                ((##fx= _g122545_ 4) (apply make-gc-table__% _g122544_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table
                  _g122544_))))))
    (define make-gc-table/lock__%
      (lambda (_%size-hint120058%_ _%klass120059%_ _%flags120060%_)
        (make-gc-table__%
         _%size-hint120058%_
         _%klass120059%_
         _%flags120060%_
         (vector '0 '#f))))
    (define make-gc-table/lock__0
      (lambda (_%size-hint120065%_)
        (let* ((_%klass120067%_ __gc-table::t) (_%flags120069%_ '0))
          (make-gc-table/lock__%
           _%size-hint120065%_
           _%klass120067%_
           _%flags120069%_))))
    (define make-gc-table/lock__1
      (lambda (_%size-hint120071%_ _%klass120072%_)
        (let ((_%flags120074%_ '0))
          (make-gc-table/lock__%
           _%size-hint120071%_
           _%klass120072%_
           _%flags120074%_))))
    (define make-gc-table/lock
      (lambda _g122546_
        (let ((_g122547_ (##length _g122546_)))
          (cond ((##fx= _g122547_ 1) (apply make-gc-table/lock__0 _g122546_))
                ((##fx= _g122547_ 2) (apply make-gc-table/lock__1 _g122546_))
                ((##fx= _g122547_ 3) (apply make-gc-table/lock__% _g122546_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table/lock
                  _g122546_))))))
    (define __gc-table-immediate
      (lambda (_%tab120049%_)
        (let ((_%$e120051%_ (&gc-table-immediate _%tab120049%_)))
          (if _%$e120051%_
              _%$e120051%_
              (let ((_%immediate120055%_ (make-immediate-table__% '#f '0)))
                (&gc-table-immediate-set! _%tab120049%_ _%immediate120055%_)
                _%immediate120055%_)))))
    (define __gc-table-new
      (lambda (_%size120039%_ _%flags120040%_)
        (let* ((_%flags120042%_
                (##fxand _%flags120040%_
                         (fxnot (macro-gc-hash-table-flag-need-rehash))))
               (_%flags120044%_
                (fxior _%flags120042%_
                       (macro-gc-hash-table-flag-mem-alloc-keys)))
               (_%gcht120046%_
                (##gc-hash-table-allocate
                 _%size120039%_
                 _%flags120044%_
                 __gc-table-loads)))
          _%gcht120046%_)))
    (define __gc-table-e
      (lambda (_%tab120034%_)
        (declare (not interrupts-enabled))
        (let ((_%gcht120037%_ (&gc-table-gcht _%tab120034%_)))
          (if (##fx= '0
                     (fxand (macro-gc-hash-table-flags _%gcht120037%_)
                            (macro-gc-hash-table-flag-need-rehash)))
              _%gcht120037%_
              (begin
                (__gc-table-rehash! _%tab120034%_)
                (&gc-table-gcht _%tab120034%_))))))
    (define __gc-table-rehash!
      (lambda (_%tab120025%_)
        (let* ((_%old-table120027%_ (&gc-table-gcht _%tab120025%_))
               (_%new-table120029%_
                (##gc-hash-table-resize! _%old-table120027%_ __gc-table-loads))
               (_%gcht120031%_
                (##gc-hash-table-rehash!
                 _%old-table120027%_
                 _%new-table120029%_)))
          (&gc-table-gcht-set! _%tab120025%_ _%gcht120031%_))))
    (define gc-table-ref
      (lambda (_%tab120009%_ _%key120010%_ _%default120011%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key120010%_)
            (let* ((_%gcht120015%_ (__gc-table-e _%tab120009%_))
                   (_%value120017%_
                    (##gc-hash-table-ref _%gcht120015%_ _%key120010%_)))
              (if (eq? _%value120017%_ (macro-unused-obj))
                  _%default120011%_
                  _%value120017%_))
            (let ((_%$e120019%_ (&gc-table-immediate _%tab120009%_)))
              (if _%$e120019%_
                  (immediate-table-ref
                   _%$e120019%_
                   _%key120010%_
                   _%default120011%_)
                  _%default120011%_)))))
    (define gc-table-ref/lock
      (lambda (_%tab119983%_ _%key119984%_ _%default119985%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again119989%_ ((_%spin119992%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab119983%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab119983%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin119992%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again119989%_ (##fx+ _%spin119992%_ '1)))
                    (let ((_%owner119998%_
                           (##vector-ref (&gc-table-lock _%tab119983%_) '1)))
                      (if (eq? _%owner119998%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner119998%_)
                              (let () (##thread-yield!) (_%again119989%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r120004%_
               (gc-table-ref _%tab119983%_ _%key119984%_ _%default119985%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab119983%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab119983%_) '0 '0 '1)))
          _%$r120004%_)))
    (define gc-table-set!
      (lambda (_%tab119976%_ _%key119977%_ _%value119978%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key119977%_)
            (let ((_%gcht119981%_ (__gc-table-e _%tab119976%_)))
              (if (##gc-hash-table-set!
                   _%gcht119981%_
                   _%key119977%_
                   _%value119978%_)
                  (begin
                    (__gc-table-rehash! _%tab119976%_)
                    (gc-table-set!
                     _%tab119976%_
                     _%key119977%_
                     _%value119978%_))
                  '#!void))
            (immediate-table-set!
             (__gc-table-immediate _%tab119976%_)
             _%key119977%_
             _%value119978%_))))
    (define gc-table-set/lock!
      (lambda (_%tab119950%_ _%key119951%_ _%value119952%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again119956%_ ((_%spin119959%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab119950%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab119950%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin119959%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again119956%_ (##fx+ _%spin119959%_ '1)))
                    (let ((_%owner119965%_
                           (##vector-ref (&gc-table-lock _%tab119950%_) '1)))
                      (if (eq? _%owner119965%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner119965%_)
                              (let () (##thread-yield!) (_%again119956%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r119971%_
               (gc-table-set! _%tab119950%_ _%key119951%_ _%value119952%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab119950%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab119950%_) '0 '0 '1)))
          _%$r119971%_)))
    (define gc-table-update!
      (lambda (_%tab119943%_ _%key119944%_ _%update119945%_ _%default119946%_)
        (if (##mem-allocated? _%key119944%_)
            (let ((_%value119948%_
                   (gc-table-ref
                    _%tab119943%_
                    _%key119944%_
                    _%default119946%_)))
              (gc-table-set!
               _%tab119943%_
               _%key119944%_
               (_%update119945%_ _%value119948%_)))
            (immediate-table-update!
             (__gc-table-immediate _%tab119943%_)
             _%key119944%_
             _%update119945%_
             _%default119946%_))))
    (define gc-table-update!/lock
      (lambda (_%tab119916%_ _%key119917%_ _%update119918%_ _%default119919%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again119923%_ ((_%spin119926%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab119916%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab119916%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin119926%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again119923%_ (##fx+ _%spin119926%_ '1)))
                    (let ((_%owner119932%_
                           (##vector-ref (&gc-table-lock _%tab119916%_) '1)))
                      (if (eq? _%owner119932%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner119932%_)
                              (let () (##thread-yield!) (_%again119923%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r119938%_
               (gc-table-update!
                _%tab119916%_
                _%key119917%_
                _%update119918%_
                _%default119919%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab119916%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab119916%_) '0 '0 '1)))
          _%$r119938%_)))
    (define gc-table-delete!
      (lambda (_%tab119904%_ _%key119905%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key119905%_)
            (let ((_%gcht119909%_ (__gc-table-e _%tab119904%_)))
              (if (##gc-hash-table-set!
                   _%gcht119909%_
                   _%key119905%_
                   (macro-absent-obj))
                  (begin
                    (__gc-table-rehash! _%tab119904%_)
                    (gc-table-delete! _%tab119904%_ _%key119905%_))
                  '#!void))
            (let ((_%$e119911%_ (&gc-table-immediate _%tab119904%_)))
              (if _%$e119911%_
                  (immediate-table-delete! _%$e119911%_ _%key119905%_)
                  '#!void)))))
    (define gc-table-delete!/lock
      (lambda (_%tab119879%_ _%key119880%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again119884%_ ((_%spin119887%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab119879%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab119879%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin119887%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again119884%_ (##fx+ _%spin119887%_ '1)))
                    (let ((_%owner119893%_
                           (##vector-ref (&gc-table-lock _%tab119879%_) '1)))
                      (if (eq? _%owner119893%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner119893%_)
                              (let () (##thread-yield!) (_%again119884%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r119899%_ (gc-table-delete! _%tab119879%_ _%key119880%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab119879%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab119879%_) '0 '0 '1)))
          _%$r119899%_)))
    (define gc-table-for-each
      (lambda (_%tab119868%_ _%proc119869%_)
        (declare (not interrupts-enabled))
        (begin
          (let ((_%gcht119872%_ (__gc-table-e _%tab119868%_)))
            (##gc-hash-table-for-each _%proc119869%_ _%gcht119872%_))
          (let ((_%$e119874%_ (&gc-table-immediate _%tab119868%_)))
            (if _%$e119874%_
                (raw-table-for-each _%$e119874%_ _%proc119869%_)
                '#!void)))))
    (define gc-table-for-each/lock
      (lambda (_%tab119843%_ _%proc119844%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again119848%_ ((_%spin119851%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab119843%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab119843%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin119851%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again119848%_ (##fx+ _%spin119851%_ '1)))
                    (let ((_%owner119857%_
                           (##vector-ref (&gc-table-lock _%tab119843%_) '1)))
                      (if (eq? _%owner119857%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner119857%_)
                              (let () (##thread-yield!) (_%again119848%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r119863%_ (gc-table-for-each _%tab119843%_ _%proc119844%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab119843%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab119843%_) '0 '0 '1)))
          _%$r119863%_)))
    (define table-new__%
      (lambda (_%tab119825%_ _%size-hint119826%_)
        (if (table? _%tab119825%_)
            '#!void
            (error '"table-new: expected table" _%tab119825%_))
        (letrec* ((_%loads119828%_ (macro-table-loads _%tab119825%_)))
          (make-table
           'size:
           (let ((_%$e119830%_ _%size-hint119826%_))
             (if _%$e119830%_ _%$e119830%_ '16))
           'init:
           (macro-table-init _%tab119825%_)
           'weak-keys:
           (##fx< '0
                  (fxand (macro-table-flags _%tab119825%_)
                         (macro-gc-hash-table-flag-weak-keys)))
           'weak-values:
           (##fx< '0
                  (fxand (macro-table-flags _%tab119825%_)
                         (macro-gc-hash-table-flag-weak-vals)))
           'test:
           (macro-table-test _%tab119825%_)
           'hash:
           (macro-table-hash _%tab119825%_)
           'min-load:
           (##f64vector-ref _%loads119828%_ '0)
           'max-load:
           (##f64vector-ref _%loads119828%_ '2)))))
    (define table-new__0
      (lambda (_%tab119836%_)
        (let ((_%size-hint119838%_ '#f))
          (table-new__% _%tab119836%_ _%size-hint119838%_))))
    (define table-new
      (lambda _g122548_
        (let ((_g122549_ (##length _g122548_)))
          (cond ((##fx= _g122549_ 1) (apply table-new__0 _g122548_))
                ((##fx= _g122549_ 2) (apply table-new__% _g122548_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  table-new
                  _g122548_))))))
    (define gc-table-new__%
      (lambda (_%tab119811%_ _%size-hint119812%_)
        (make-gc-table__%
         (if (eq? _%size-hint119812%_ '#t)
             (macro-gc-hash-table-count (__gc-table-e _%tab119811%_))
             _%size-hint119812%_)
         (##structure-type _%tab119811%_)
         (macro-gc-hash-table-flags (&gc-table-gcht _%tab119811%_))
         (if (&gc-table-lock _%tab119811%_) '#t '#f))))
    (define gc-table-new__0
      (lambda (_%tab119817%_)
        (let ((_%size-hint119819%_ '#f))
          (gc-table-new__% _%tab119817%_ _%size-hint119819%_))))
    (define gc-table-new
      (lambda _g122550_
        (let ((_g122551_ (##length _g122550_)))
          (cond ((##fx= _g122551_ 1) (apply gc-table-new__0 _g122550_))
                ((##fx= _g122551_ 2) (apply gc-table-new__% _g122550_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gc-table-new
                  _g122550_))))))
    (define gc-table-copy
      (lambda (_%tab119803%_)
        (let ((_%result119805%_ (gc-table-new__% _%tab119803%_ '#t)))
          (gc-table-for-each
           _%tab119803%_
           (lambda (_%k119807%_ _%v119808%_)
             (gc-table-set! _%result119805%_ _%k119807%_ _%v119808%_)))
          _%result119805%_)))
    (define gc-table-copy/lock
      (lambda (_%tab119779%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again119783%_ ((_%spin119786%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab119779%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab119779%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin119786%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again119783%_ (##fx+ _%spin119786%_ '1)))
                    (let ((_%owner119792%_
                           (##vector-ref (&gc-table-lock _%tab119779%_) '1)))
                      (if (eq? _%owner119792%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner119792%_)
                              (let () (##thread-yield!) (_%again119783%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r119798%_ (gc-table-copy _%tab119779%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab119779%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab119779%_) '0 '0 '1)))
          _%$r119798%_)))
    (define gc-table-clear!
      (lambda (_%tab119772%_)
        (let* ((_%gcht119774%_ (__gc-table-e _%tab119772%_))
               (_%new-table119776%_
                (__gc-table-new
                 '16
                 (macro-gc-hash-table-flags _%gcht119774%_))))
          (&gc-table-gcht-set! _%tab119772%_ _%new-table119776%_)
          (&gc-table-immediate-set! _%tab119772%_ '#f))))
    (define gc-table-clear!/lock
      (lambda (_%tab119748%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again119752%_ ((_%spin119755%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab119748%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab119748%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin119755%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again119752%_ (##fx+ _%spin119755%_ '1)))
                    (let ((_%owner119761%_
                           (##vector-ref (&gc-table-lock _%tab119748%_) '1)))
                      (if (eq? _%owner119761%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner119761%_)
                              (let () (##thread-yield!) (_%again119752%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r119767%_ (gc-table-clear! _%tab119748%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab119748%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab119748%_) '0 '0 '1)))
          _%$r119767%_)))
    (define gc-table-length
      (lambda (_%tab119740%_)
        (let ((_%gcht119742%_ (__gc-table-e _%tab119740%_)))
          (fx+ (macro-gc-hash-table-count _%gcht119742%_)
               (let ((_%$e119744%_ (&gc-table-immediate _%tab119740%_)))
                 (if _%$e119744%_ (&raw-table-count _%$e119744%_) '0))))))
    (define gc-table-length/lock
      (lambda (_%tab119716%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again119720%_ ((_%spin119723%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab119716%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab119716%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin119723%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again119720%_ (##fx+ _%spin119723%_ '1)))
                    (let ((_%owner119729%_
                           (##vector-ref (&gc-table-lock _%tab119716%_) '1)))
                      (if (eq? _%owner119729%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner119729%_)
                              (let () (##thread-yield!) (_%again119720%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r119735%_ (gc-table-length _%tab119716%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab119716%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab119716%_) '0 '0 '1)))
          _%$r119735%_)))
    (define __object-eq-hash-lock (vector '0 '#f))
    (define __object-eq-hash-next '0)
    (define __object-eq-hash
      (make-gc-table__2
       '1024
       __gc-table::t
       (macro-gc-hash-table-flag-weak-keys)))
    (define __object->eq-hash
      (lambda (_%obj119682%_)
        (declare (not interrupts-enabled))
        (let ((_%val119685%_
               (gc-table-ref __object-eq-hash _%obj119682%_ '#f)))
          (if _%val119685%_
              _%val119685%_
              (begin
                (let ()
                  (declare (not interrupts-enabled))
                  (let _%again119689%_ ((_%spin119692%_ '0))
                    (if (##fx= (##vector-cas! __object-eq-hash-lock '0 '1 '0)
                               '0)
                        (##vector-set!
                         __object-eq-hash-lock
                         '1
                         (current-thread))
                        (if (##fx< _%spin119692%_ '10)
                            (let ()
                              (##thread-yield!)
                              (_%again119689%_ (##fx+ _%spin119692%_ '1)))
                            (let ((_%owner119698%_
                                   (##vector-ref __object-eq-hash-lock '1)))
                              (if (eq? _%owner119698%_ (macro-current-thread))
                                  (##thread-deadlock-action!)
                                  (if (macro-thread-end-condvar
                                       _%owner119698%_)
                                      (let ()
                                        (##thread-yield!)
                                        (_%again119689%_ '0))
                                      (##thread-deadlock-action!))))))))
                (let ((_%$r119711%_
                       (let ((_%val119704%_
                              (gc-table-ref
                               __object-eq-hash
                               _%obj119682%_
                               '#f)))
                         (if _%val119704%_
                             _%val119704%_
                             (let ((_%h119706%_
                                    (fxand __object-eq-hash
                                           (macro-max-fixnum32))))
                               (set! __object-eq-hash-next
                                     (let ((_%$e119708%_
                                            (##fx+? __object-eq-hash-next '1)))
                                       (if _%$e119708%_ _%$e119708%_ '0)))
                               (gc-table-set!
                                __object-eq-hash
                                _%obj119682%_
                                _%h119706%_)
                               _%h119706%_)))))
                  (let ()
                    (declare (not interrupts-enabled))
                    (begin
                      (##vector-set! __object-eq-hash-lock '1 '#f)
                      (##vector-cas! __object-eq-hash-lock '0 '0 '1)))
                  _%$r119711%_))))))))
