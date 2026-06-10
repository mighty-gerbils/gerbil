(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1781119033)
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
      (lambda (_%obj103673%_)
        (if (##structure? _%obj103673%_)
            (##structure-instance-of? _%obj103673%_ __table::t.id)
            '#f)))
    (define &raw-table-table
      (lambda (_%tab103671%_)
        (##unchecked-structure-ref
         _%tab103671%_
         '1
         __table::t
         'raw-table-table)))
    (define &raw-table-count
      (lambda (_%tab103669%_)
        (##unchecked-structure-ref
         _%tab103669%_
         '2
         __table::t
         'raw-table-count)))
    (define &raw-table-free
      (lambda (_%tab103667%_)
        (##unchecked-structure-ref
         _%tab103667%_
         '3
         __table::t
         'raw-table-free)))
    (define &raw-table-hash
      (lambda (_%tab103665%_)
        (##unchecked-structure-ref
         _%tab103665%_
         '4
         __table::t
         'raw-table-hash)))
    (define &raw-table-test
      (lambda (_%tab103663%_)
        (##unchecked-structure-ref
         _%tab103663%_
         '5
         __table::t
         'raw-table-test)))
    (define &raw-table-seed
      (lambda (_%tab103661%_)
        (##unchecked-structure-ref
         _%tab103661%_
         '6
         __table::t
         'raw-table-seed)))
    (define &raw-table-lock
      (lambda (_%tab103659%_)
        (##unchecked-structure-ref
         _%tab103659%_
         '7
         __table::t
         'raw-table-lock)))
    (define &raw-table-table-set!
      (lambda (_%tab103656%_ _%val103657%_)
        (##unchecked-structure-set!
         _%tab103656%_
         _%val103657%_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_%tab103653%_ _%val103654%_)
        (##unchecked-structure-set!
         _%tab103653%_
         _%val103654%_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_%tab103650%_ _%val103651%_)
        (##unchecked-structure-set!
         _%tab103650%_
         _%val103651%_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_%tab103647%_ _%val103648%_)
        (##unchecked-structure-set!
         _%tab103647%_
         _%val103648%_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_%tab103644%_ _%val103645%_)
        (##unchecked-structure-set!
         _%tab103644%_
         _%val103645%_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_%tab103641%_ _%val103642%_)
        (##unchecked-structure-set!
         _%tab103641%_
         _%val103642%_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define &raw-table-lock-set!
      (lambda (_%tab103638%_ _%val103639%_)
        (##unchecked-structure-set!
         _%tab103638%_
         _%val103639%_
         '7
         __table::t
         'raw-table-lock-set!)))
    (define raw-table-size-hint->size
      (lambda (_%size-hint103636%_)
        (if (and (fixnum? _%size-hint103636%_) (fx> _%size-hint103636%_ '0))
            (fx* (fxmax '2 (expt '2 (integer-length _%size-hint103636%_))) '4)
            '16)))
    (define make-raw-table
      (let ((_%$%opt-lambda103599103612%_
             (lambda (_%size-hint103601%_
                      _%hash103602%_
                      _%test103603%_
                      _%seed103604%_
                      _%lock103605%_)
               (let* ((_%size103607%_
                       (raw-table-size-hint->size _%size-hint103601%_))
                      (_%table103609%_
                       (make-vector _%size103607%_ (macro-unused-obj))))
                 (##structure
                  __table::t
                  _%table103609%_
                  '0
                  (fxquotient _%size103607%_ '2)
                  _%hash103602%_
                  _%test103603%_
                  _%seed103604%_
                  _%lock103605%_)))))
        (lambda _g103674_
          (let ((_g103675_ (##length _g103674_)))
            (cond ((##fx= _g103675_ 3)
                   (apply (lambda (_%size-hint103615%_
                                   _%hash103616%_
                                   _%test103617%_)
                            (let* ((_%seed103619%_ '0) (_%lock103621%_ '#f))
                              (_%$%opt-lambda103599103612%_
                               _%size-hint103615%_
                               _%hash103616%_
                               _%test103617%_
                               _%seed103619%_
                               _%lock103621%_)))
                          _g103674_))
                  ((##fx= _g103675_ 4)
                   (apply (lambda (_%size-hint103623%_
                                   _%hash103624%_
                                   _%test103625%_
                                   _%seed103626%_)
                            (let ((_%lock103628%_ '#f))
                              (_%$%opt-lambda103599103612%_
                               _%size-hint103623%_
                               _%hash103624%_
                               _%test103625%_
                               _%seed103626%_
                               _%lock103628%_)))
                          _g103674_))
                  ((##fx= _g103675_ 5)
                   (apply _%$%opt-lambda103599103612%_ _g103674_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    make-raw-table
                    _g103674_)))))))
    (define make-raw-table/lock
      (let ((_%$%opt-lambda103579103586%_
             (lambda (_%size-hint103581%_
                      _%hash103582%_
                      _%test103583%_
                      _%seed103584%_)
               (make-raw-table
                _%size-hint103581%_
                _%hash103582%_
                _%test103583%_
                _%seed103584%_
                (vector '0 '#f)))))
        (lambda _g103676_
          (let ((_g103677_ (##length _g103676_)))
            (cond ((##fx= _g103677_ 3)
                   (apply (lambda (_%size-hint103589%_
                                   _%hash103590%_
                                   _%test103591%_)
                            (let ((_%seed103593%_ '0))
                              (_%$%opt-lambda103579103586%_
                               _%size-hint103589%_
                               _%hash103590%_
                               _%test103591%_
                               _%seed103593%_)))
                          _g103676_))
                  ((##fx= _g103677_ 4)
                   (apply _%$%opt-lambda103579103586%_ _g103676_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    make-raw-table/lock
                    _g103676_)))))))
    (define raw-table-length
      (lambda (_%tab103578%_) (&raw-table-count _%tab103578%_)))
    (define raw-table-length/lock
      (lambda (_%tab103551%_)
        (let ((_%lock103553%_ (&raw-table-lock _%tab103551%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again103558%_ ((_%spin103561%_ '0))
              (if (##fx= (##vector-cas! _%lock103553%_ '0 '1 '0) '0)
                  (##vector-set! _%lock103553%_ '1 (current-thread))
                  (if (##fx< _%spin103561%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again103558%_ (##fx+ _%spin103561%_ '1)))
                      (let ((_%owner103567%_ (##vector-ref _%lock103553%_ '1)))
                        (if (eq? _%owner103567%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (not (macro-thread-end-condvar
                                      _%owner103567%_))
                                (##thread-deadlock-action!)
                                (let ()
                                  (##thread-yield!)
                                  (_%again103558%_ '0)))))))))
          (let ((_%$r103573%_ (raw-table-length _%tab103551%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock103553%_ '1 '#f)
                (##vector-cas! _%lock103553%_ '0 '0 '1)))
            _%$r103573%_))))
    (define raw-table-ref
      (lambda (_%tab103503%_ _%key103504%_ _%default103505%_)
        (let ((_%table103507%_ (&raw-table-table _%tab103503%_))
              (_%seed103508%_ (&raw-table-seed _%tab103503%_))
              (_%hash103509%_ (&raw-table-hash _%tab103503%_))
              (_%test103510%_ (&raw-table-test _%tab103503%_)))
          (let* ((_%h103512%_
                  (fxxor (_%hash103509%_ _%key103504%_) _%seed103508%_))
                 (_%size103515%_ (vector-length _%table103507%_))
                 (_%entries103518%_ (fxquotient _%size103515%_ '2))
                 (_%start103521%_
                  (fxarithmetic-shift-left
                   (fxmodulo _%h103512%_ _%entries103518%_)
                   '1)))
            (let _%loop103525%_ ((_%probe103528%_ _%start103521%_)
                                 (_%i103530%_ '1)
                                 (_%deleted103532%_ '#f))
              (let ((_%k103535%_ (vector-ref _%table103507%_ _%probe103528%_)))
                (if (eq? _%k103535%_ (macro-unused-obj))
                    _%default103505%_
                    (if (eq? _%k103535%_ (macro-deleted-obj))
                        (_%loop103525%_
                         (let ((_%next-probe103540%_
                                (fx+ _%start103521%_
                                     _%i103530%_
                                     (fx* _%i103530%_ _%i103530%_))))
                           (fxmodulo _%next-probe103540%_ _%size103515%_))
                         (fx+ _%i103530%_ '1)
                         (let ((_%$e103543%_ _%deleted103532%_))
                           (if _%$e103543%_ _%$e103543%_ _%probe103528%_)))
                        (if (_%test103510%_ _%key103504%_ _%k103535%_)
                            (vector-ref
                             _%table103507%_
                             (fx+ _%probe103528%_ '1))
                            (_%loop103525%_
                             (let ((_%next-probe103548%_
                                    (fx+ _%start103521%_
                                         _%i103530%_
                                         (fx* _%i103530%_ _%i103530%_))))
                               (fxmodulo _%next-probe103548%_ _%size103515%_))
                             (fx+ _%i103530%_ '1)
                             _%deleted103532%_))))))))))
    (define raw-table-ref/lock
      (lambda (_%tab103474%_ _%key103475%_ _%default103476%_)
        (let ((_%lock103478%_ (&raw-table-lock _%tab103474%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again103483%_ ((_%spin103486%_ '0))
              (if (##fx= (##vector-cas! _%lock103478%_ '0 '1 '0) '0)
                  (##vector-set! _%lock103478%_ '1 (current-thread))
                  (if (##fx< _%spin103486%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again103483%_ (##fx+ _%spin103486%_ '1)))
                      (let ((_%owner103492%_ (##vector-ref _%lock103478%_ '1)))
                        (if (eq? _%owner103492%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (not (macro-thread-end-condvar
                                      _%owner103492%_))
                                (##thread-deadlock-action!)
                                (let ()
                                  (##thread-yield!)
                                  (_%again103483%_ '0)))))))))
          (let ((_%$r103498%_
                 (raw-table-ref
                  _%tab103474%_
                  _%key103475%_
                  _%default103476%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock103478%_ '1 '#f)
                (##vector-cas! _%lock103478%_ '0 '0 '1)))
            _%$r103498%_))))
    (define raw-table-set!
      (lambda (_%tab103470%_ _%key103471%_ _%value103472%_)
        (if (fx< (&raw-table-free _%tab103470%_)
                 (fxquotient
                  (vector-length (&raw-table-table _%tab103470%_))
                  '4))
            (__raw-table-rehash! _%tab103470%_)
            '#!void)
        (__raw-table-set! _%tab103470%_ _%key103471%_ _%value103472%_)))
    (define raw-table-set!/lock
      (lambda (_%tab103441%_ _%key103442%_ _%value103443%_)
        (let ((_%lock103445%_ (&raw-table-lock _%tab103441%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again103450%_ ((_%spin103453%_ '0))
              (if (##fx= (##vector-cas! _%lock103445%_ '0 '1 '0) '0)
                  (##vector-set! _%lock103445%_ '1 (current-thread))
                  (if (##fx< _%spin103453%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again103450%_ (##fx+ _%spin103453%_ '1)))
                      (let ((_%owner103459%_ (##vector-ref _%lock103445%_ '1)))
                        (if (eq? _%owner103459%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (not (macro-thread-end-condvar
                                      _%owner103459%_))
                                (##thread-deadlock-action!)
                                (let ()
                                  (##thread-yield!)
                                  (_%again103450%_ '0)))))))))
          (let ((_%$r103465%_
                 (raw-table-set! _%tab103441%_ _%key103442%_ _%value103443%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock103445%_ '1 '#f)
                (##vector-cas! _%lock103445%_ '0 '0 '1)))
            _%$r103465%_))))
    (define raw-table-update!
      (lambda (_%tab103436%_ _%key103437%_ _%update103438%_ _%default103439%_)
        (if (fx< (&raw-table-free _%tab103436%_)
                 (fxquotient
                  (vector-length (&raw-table-table _%tab103436%_))
                  '4))
            (__raw-table-rehash! _%tab103436%_)
            '#!void)
        (__raw-table-update!
         _%tab103436%_
         _%key103437%_
         _%update103438%_
         _%default103439%_)))
    (define raw-table-update!/lock
      (lambda (_%tab103406%_ _%key103407%_ _%update103408%_ _%default103409%_)
        (let ((_%lock103411%_ (&raw-table-lock _%tab103406%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again103416%_ ((_%spin103419%_ '0))
              (if (##fx= (##vector-cas! _%lock103411%_ '0 '1 '0) '0)
                  (##vector-set! _%lock103411%_ '1 (current-thread))
                  (if (##fx< _%spin103419%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again103416%_ (##fx+ _%spin103419%_ '1)))
                      (let ((_%owner103425%_ (##vector-ref _%lock103411%_ '1)))
                        (if (eq? _%owner103425%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (not (macro-thread-end-condvar
                                      _%owner103425%_))
                                (##thread-deadlock-action!)
                                (let ()
                                  (##thread-yield!)
                                  (_%again103416%_ '0)))))))))
          (let ((_%$r103431%_
                 (raw-table-update!
                  _%tab103406%_
                  _%key103407%_
                  _%update103408%_
                  _%default103409%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock103411%_ '1 '#f)
                (##vector-cas! _%lock103411%_ '0 '0 '1)))
            _%$r103431%_))))
    (define raw-table-delete!
      (lambda (_%tab103363%_ _%key103364%_)
        (let ((_%table103366%_ (&raw-table-table _%tab103363%_))
              (_%seed103367%_ (&raw-table-seed _%tab103363%_))
              (_%hash103368%_ (&raw-table-hash _%tab103363%_))
              (_%test103369%_ (&raw-table-test _%tab103363%_)))
          (let* ((_%h103371%_
                  (fxxor (_%hash103368%_ _%key103364%_) _%seed103367%_))
                 (_%size103374%_ (vector-length _%table103366%_))
                 (_%entries103377%_ (fxquotient _%size103374%_ '2))
                 (_%start103380%_
                  (fxarithmetic-shift-left
                   (fxmodulo _%h103371%_ _%entries103377%_)
                   '1)))
            (let _%loop103384%_ ((_%probe103387%_ _%start103380%_)
                                 (_%i103389%_ '1))
              (let ((_%k103392%_ (vector-ref _%table103366%_ _%probe103387%_)))
                (if (eq? _%k103392%_ (macro-unused-obj))
                    (void)
                    (if (eq? _%k103392%_ (macro-deleted-obj))
                        (_%loop103384%_
                         (let ((_%next-probe103397%_
                                (fx+ _%start103380%_
                                     _%i103389%_
                                     (fx* _%i103389%_ _%i103389%_))))
                           (fxmodulo _%next-probe103397%_ _%size103374%_))
                         (fx+ _%i103389%_ '1))
                        (if (_%test103369%_ _%key103364%_ _%k103392%_)
                            (let ()
                              (vector-set!
                               _%table103366%_
                               _%probe103387%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table103366%_
                               (fx+ _%probe103387%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab103363%_
                                  (fx- (&raw-table-count _%tab103363%_) '1)))))
                            (_%loop103384%_
                             (let ((_%next-probe103403%_
                                    (fx+ _%start103380%_
                                         _%i103389%_
                                         (fx* _%i103389%_ _%i103389%_))))
                               (fxmodulo _%next-probe103403%_ _%size103374%_))
                             (fx+ _%i103389%_ '1)))))))))))
    (define raw-table-delete!/lock
      (lambda (_%tab103335%_ _%key103336%_)
        (let ((_%lock103338%_ (&raw-table-lock _%tab103335%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again103343%_ ((_%spin103346%_ '0))
              (if (##fx= (##vector-cas! _%lock103338%_ '0 '1 '0) '0)
                  (##vector-set! _%lock103338%_ '1 (current-thread))
                  (if (##fx< _%spin103346%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again103343%_ (##fx+ _%spin103346%_ '1)))
                      (let ((_%owner103352%_ (##vector-ref _%lock103338%_ '1)))
                        (if (eq? _%owner103352%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (not (macro-thread-end-condvar
                                      _%owner103352%_))
                                (##thread-deadlock-action!)
                                (let ()
                                  (##thread-yield!)
                                  (_%again103343%_ '0)))))))))
          (let ((_%$r103358%_ (raw-table-delete! _%tab103335%_ _%key103336%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock103338%_ '1 '#f)
                (##vector-cas! _%lock103338%_ '0 '0 '1)))
            _%$r103358%_))))
    (define raw-table-for-each
      (lambda (_%tab103319%_ _%proc103320%_)
        (let* ((_%table103322%_ (&raw-table-table _%tab103319%_))
               (_%size103324%_ (vector-length _%table103322%_)))
          (let _%loop103327%_ ((_%i103329%_ '0))
            (if (fx< _%i103329%_ _%size103324%_)
                (begin
                  (let ((_%key103331%_
                         (vector-ref _%table103322%_ _%i103329%_)))
                    (if (and (not (eq? _%key103331%_ (macro-unused-obj)))
                             (not (eq? _%key103331%_ (macro-deleted-obj))))
                        (let ((_%value103333%_
                               (vector-ref
                                _%table103322%_
                                (fx+ _%i103329%_ '1))))
                          (_%proc103320%_ _%key103331%_ _%value103333%_))
                        '#!void))
                  (_%loop103327%_ (fx+ _%i103329%_ '2)))
                '#!void)))))
    (define raw-table-for-each/lock
      (lambda (_%tab103291%_ _%proc103292%_)
        (let ((_%lock103294%_ (&raw-table-lock _%tab103291%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again103299%_ ((_%spin103302%_ '0))
              (if (##fx= (##vector-cas! _%lock103294%_ '0 '1 '0) '0)
                  (##vector-set! _%lock103294%_ '1 (current-thread))
                  (if (##fx< _%spin103302%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again103299%_ (##fx+ _%spin103302%_ '1)))
                      (let ((_%owner103308%_ (##vector-ref _%lock103294%_ '1)))
                        (if (eq? _%owner103308%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (not (macro-thread-end-condvar
                                      _%owner103308%_))
                                (##thread-deadlock-action!)
                                (let ()
                                  (##thread-yield!)
                                  (_%again103299%_ '0)))))))))
          (let ((_%$r103314%_
                 (raw-table-for-each _%tab103291%_ _%proc103292%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock103294%_ '1 '#f)
                (##vector-cas! _%lock103294%_ '0 '0 '1)))
            _%$r103314%_))))
    (define raw-table-copy
      (lambda (_%tab103287%_)
        (let ((_%new-tab103289%_ (##structure-copy _%tab103287%_)))
          (&raw-table-table-set!
           _%new-tab103289%_
           (vector-copy (&raw-table-table _%tab103287%_)))
          _%new-tab103289%_)))
    (define raw-table-copy/lock
      (lambda (_%tab103260%_)
        (let ((_%lock103262%_ (&raw-table-lock _%tab103260%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again103267%_ ((_%spin103270%_ '0))
              (if (##fx= (##vector-cas! _%lock103262%_ '0 '1 '0) '0)
                  (##vector-set! _%lock103262%_ '1 (current-thread))
                  (if (##fx< _%spin103270%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again103267%_ (##fx+ _%spin103270%_ '1)))
                      (let ((_%owner103276%_ (##vector-ref _%lock103262%_ '1)))
                        (if (eq? _%owner103276%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (not (macro-thread-end-condvar
                                      _%owner103276%_))
                                (##thread-deadlock-action!)
                                (let ()
                                  (##thread-yield!)
                                  (_%again103267%_ '0)))))))))
          (let ((_%$r103282%_ (raw-table-copy _%tab103260%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock103262%_ '1 '#f)
                (##vector-cas! _%lock103262%_ '0 '0 '1)))
            _%$r103282%_))))
    (define raw-table-clear!
      (lambda (_%tab103258%_)
        (vector-fill! (&raw-table-table _%tab103258%_) (macro-unused-obj))
        (&raw-table-count-set! _%tab103258%_ '0)
        (&raw-table-free-set!
         _%tab103258%_
         (fxquotient (vector-length (&raw-table-table _%tab103258%_)) '2))))
    (define raw-table-clear!/lock
      (lambda (_%tab103231%_)
        (let ((_%lock103233%_ (&raw-table-lock _%tab103231%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again103238%_ ((_%spin103241%_ '0))
              (if (##fx= (##vector-cas! _%lock103233%_ '0 '1 '0) '0)
                  (##vector-set! _%lock103233%_ '1 (current-thread))
                  (if (##fx< _%spin103241%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again103238%_ (##fx+ _%spin103241%_ '1)))
                      (let ((_%owner103247%_ (##vector-ref _%lock103233%_ '1)))
                        (if (eq? _%owner103247%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (not (macro-thread-end-condvar
                                      _%owner103247%_))
                                (##thread-deadlock-action!)
                                (let ()
                                  (##thread-yield!)
                                  (_%again103238%_ '0)))))))))
          (let ((_%$r103253%_ (raw-table-clear! _%tab103231%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock103233%_ '1 '#f)
                (##vector-cas! _%lock103233%_ '0 '0 '1)))
            _%$r103253%_))))
    (define __raw-table-set!
      (lambda (_%tab103181%_ _%key103182%_ _%value103183%_)
        (let ((_%table103185%_ (&raw-table-table _%tab103181%_))
              (_%seed103186%_ (&raw-table-seed _%tab103181%_))
              (_%hash103187%_ (&raw-table-hash _%tab103181%_))
              (_%test103188%_ (&raw-table-test _%tab103181%_)))
          (let* ((_%h103190%_
                  (fxxor (_%hash103187%_ _%key103182%_) _%seed103186%_))
                 (_%size103193%_ (vector-length _%table103185%_))
                 (_%entries103196%_ (fxquotient _%size103193%_ '2))
                 (_%start103199%_
                  (fxarithmetic-shift-left
                   (fxmodulo _%h103190%_ _%entries103196%_)
                   '1)))
            (let _%loop103203%_ ((_%probe103206%_ _%start103199%_)
                                 (_%i103208%_ '1)
                                 (_%deleted103210%_ '#f))
              (let ((_%k103213%_ (vector-ref _%table103185%_ _%probe103206%_)))
                (if (eq? _%k103213%_ (macro-unused-obj))
                    (if _%deleted103210%_
                        (begin
                          (vector-set!
                           _%table103185%_
                           _%deleted103210%_
                           _%key103182%_)
                          (vector-set!
                           _%table103185%_
                           (fx+ _%deleted103210%_ '1)
                           _%value103183%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab103181%_
                              (fx+ (&raw-table-count _%tab103181%_) '1)))))
                        (begin
                          (vector-set!
                           _%table103185%_
                           _%probe103206%_
                           _%key103182%_)
                          (vector-set!
                           _%table103185%_
                           (fx+ _%probe103206%_ '1)
                           _%value103183%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab103181%_
                              (fx- (&raw-table-free _%tab103181%_) '1))
                             (&raw-table-count-set!
                              _%tab103181%_
                              (fx+ (&raw-table-count _%tab103181%_) '1))))))
                    (if (eq? _%k103213%_ (macro-deleted-obj))
                        (_%loop103203%_
                         (let ((_%next-probe103220%_
                                (fx+ _%start103199%_
                                     _%i103208%_
                                     (fx* _%i103208%_ _%i103208%_))))
                           (fxmodulo _%next-probe103220%_ _%size103193%_))
                         (fx+ _%i103208%_ '1)
                         (let ((_%$e103223%_ _%deleted103210%_))
                           (if _%$e103223%_ _%$e103223%_ _%probe103206%_)))
                        (if (_%test103188%_ _%key103182%_ _%k103213%_)
                            (let ()
                              (vector-set!
                               _%table103185%_
                               _%probe103206%_
                               _%key103182%_)
                              (vector-set!
                               _%table103185%_
                               (fx+ _%probe103206%_ '1)
                               _%value103183%_))
                            (_%loop103203%_
                             (let ((_%next-probe103228%_
                                    (fx+ _%start103199%_
                                         _%i103208%_
                                         (fx* _%i103208%_ _%i103208%_))))
                               (fxmodulo _%next-probe103228%_ _%size103193%_))
                             (fx+ _%i103208%_ '1)
                             _%deleted103210%_))))))))))
    (define __raw-table-update!
      (lambda (_%tab103130%_ _%key103131%_ _%update103132%_ _%default103133%_)
        (let ((_%table103135%_ (&raw-table-table _%tab103130%_))
              (_%seed103136%_ (&raw-table-seed _%tab103130%_))
              (_%hash103137%_ (&raw-table-hash _%tab103130%_))
              (_%test103138%_ (&raw-table-test _%tab103130%_)))
          (let* ((_%h103140%_
                  (fxxor (_%hash103137%_ _%key103131%_) _%seed103136%_))
                 (_%size103143%_ (vector-length _%table103135%_))
                 (_%entries103146%_ (fxquotient _%size103143%_ '2))
                 (_%start103149%_
                  (fxarithmetic-shift-left
                   (fxmodulo _%h103140%_ _%entries103146%_)
                   '1)))
            (let _%loop103153%_ ((_%probe103156%_ _%start103149%_)
                                 (_%i103158%_ '1)
                                 (_%deleted103160%_ '#f))
              (let ((_%k103163%_ (vector-ref _%table103135%_ _%probe103156%_)))
                (if (eq? _%k103163%_ (macro-unused-obj))
                    (if _%deleted103160%_
                        (begin
                          (vector-set!
                           _%table103135%_
                           _%deleted103160%_
                           _%key103131%_)
                          (vector-set!
                           _%table103135%_
                           (fx+ _%deleted103160%_ '1)
                           (_%update103132%_ _%default103133%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab103130%_
                              (fx+ (&raw-table-count _%tab103130%_) '1)))))
                        (begin
                          (vector-set!
                           _%table103135%_
                           _%probe103156%_
                           _%key103131%_)
                          (vector-set!
                           _%table103135%_
                           (fx+ _%probe103156%_ '1)
                           (_%update103132%_ _%default103133%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab103130%_
                              (fx- (&raw-table-free _%tab103130%_) '1))
                             (&raw-table-count-set!
                              _%tab103130%_
                              (fx+ (&raw-table-count _%tab103130%_) '1))))))
                    (if (eq? _%k103163%_ (macro-deleted-obj))
                        (_%loop103153%_
                         (let ((_%next-probe103170%_
                                (fx+ _%start103149%_
                                     _%i103158%_
                                     (fx* _%i103158%_ _%i103158%_))))
                           (fxmodulo _%next-probe103170%_ _%size103143%_))
                         (fx+ _%i103158%_ '1)
                         (let ((_%$e103173%_ _%deleted103160%_))
                           (if _%$e103173%_ _%$e103173%_ _%probe103156%_)))
                        (if (_%test103138%_ _%key103131%_ _%k103163%_)
                            (let ()
                              (vector-set!
                               _%table103135%_
                               _%probe103156%_
                               _%key103131%_)
                              (vector-set!
                               _%table103135%_
                               (fx+ _%probe103156%_ '1)
                               (_%update103132%_
                                (vector-ref
                                 _%table103135%_
                                 (fx+ _%probe103156%_ '1)))))
                            (_%loop103153%_
                             (let ((_%next-probe103178%_
                                    (fx+ _%start103149%_
                                         _%i103158%_
                                         (fx* _%i103158%_ _%i103158%_))))
                               (fxmodulo _%next-probe103178%_ _%size103143%_))
                             (fx+ _%i103158%_ '1)
                             _%deleted103160%_))))))))))
    (define __raw-table-rehash!
      (lambda (_%tab103111%_)
        (let* ((_%old-table103113%_ (&raw-table-table _%tab103111%_))
               (_%old-size103115%_ (vector-length _%old-table103113%_))
               (_%new-size103117%_
                (if (fx< (&raw-table-count _%tab103111%_)
                         (fxquotient _%old-size103115%_ '4))
                    (vector-length _%old-table103113%_)
                    (fx* '2 (vector-length _%old-table103113%_))))
               (_%new-table103119%_
                (make-vector _%new-size103117%_ (macro-unused-obj))))
          (&raw-table-table-set! _%tab103111%_ _%new-table103119%_)
          (&raw-table-count-set! _%tab103111%_ '0)
          (&raw-table-free-set!
           _%tab103111%_
           (fxquotient _%new-size103117%_ '2))
          (let _%lp103122%_ ((_%i103124%_ '0))
            (if (fx< _%i103124%_ _%old-size103115%_)
                (begin
                  (let ((_%key103126%_
                         (vector-ref _%old-table103113%_ _%i103124%_)))
                    (if (and (not (eq? _%key103126%_ (macro-unused-obj)))
                             (not (eq? _%key103126%_ (macro-deleted-obj))))
                        (let ((_%value103128%_
                               (vector-ref
                                _%old-table103113%_
                                (fx+ _%i103124%_ '1))))
                          (__raw-table-set!
                           _%tab103111%_
                           _%key103126%_
                           _%value103128%_))
                        '#!void))
                  (_%lp103122%_ (fx+ _%i103124%_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_%obj103103%_)
        (let ((_%t103105%_ (##type _%obj103103%_)))
          (if (fx= (fxand _%t103105%_ '1) '0)
              (fxand (##type-cast _%obj103103%_ (macro-type-fixnum))
                     (macro-max-fixnum32))
              (if (symbolic? _%obj103103%_)
                  (symbolic-hash _%obj103103%_)
                  (if (procedure? _%obj103103%_)
                      (procedure-hash _%obj103103%_)
                      (fxand (__eq-hash _%obj103103%_)
                             (macro-max-fixnum32))))))))
    (define procedure-hash
      (lambda (_%obj103099%_)
        (let ((_%h103101%_
               (if (##closure? _%obj103099%_)
                   (__eq-hash _%obj103099%_)
                   (##type-cast _%obj103099%_ '0))))
          (fxand _%h103101%_ (macro-max-fixnum32)))))
    (define __eq-hash
      (lambda (_%obj103097%_) (__object->eq-hash _%obj103097%_)))
    (define eqv-hash
      (lambda (_%obj103087%_)
        (letrec ((_%combine103089%_
                  (lambda (_%a103094%_ _%b103095%_)
                    (fxand (fx* (fx+ _%a103094%_
                                     (fxarithmetic-shift-left _%b103095%_ '1))
                                '331804471)
                           (macro-max-fixnum32))))
                 (_%hash103090%_
                  (lambda (_%obj103092%_)
                    (macro-number-dispatch
                     _%obj103092%_
                     (eq-hash _%obj103092%_)
                     (fxand _%obj103092%_ (macro-max-fixnum32))
                     (modulo _%obj103092%_ '331804481)
                     (_%combine103089%_
                      (_%hash103090%_ (macro-ratnum-numerator _%obj103092%_))
                      (_%hash103090%_
                       (macro-ratnum-denominator _%obj103092%_)))
                     (_%combine103089%_
                      (##u16vector-ref _%obj103092%_ '0)
                      (_%combine103089%_
                       (##u16vector-ref _%obj103092%_ '1)
                       (_%combine103089%_
                        (##u16vector-ref _%obj103092%_ '2)
                        (##u16vector-ref _%obj103092%_ '3))))
                     (_%combine103089%_
                      (_%hash103090%_ (macro-cpxnum-real _%obj103092%_))
                      (_%hash103090%_ (macro-cpxnum-imag _%obj103092%_)))))))
          (_%hash103090%_ _%obj103087%_))))
    (define symbolic?
      (lambda (_%obj103082%_)
        (let ((_%$e103084%_ (symbol? _%obj103082%_)))
          (if _%$e103084%_ _%$e103084%_ (keyword? _%obj103082%_)))))
    (define symbolic-hash
      (lambda (_%obj103080%_) (##symbol-hash _%obj103080%_)))
    (define string-hash
      (lambda (_%obj103078%_) (##string=?-hash _%obj103078%_)))
    (define immediate-hash
      (lambda (_%obj103076%_) (##type-cast _%obj103076%_ (macro-type-fixnum))))
    (define make-eq-table
      (let ((_%$%opt-lambda103056103061%_
             (lambda (_%size-hint103058%_ _%seed103059%_)
               (make-raw-table
                _%size-hint103058%_
                eq-hash
                eq?
                _%seed103059%_))))
        (lambda _g103678_
          (let ((_g103679_ (##length _g103678_)))
            (cond ((##fx= _g103679_ 0)
                   (apply (lambda ()
                            (let* ((_%size-hint103065%_ '#f)
                                   (_%seed103067%_ '0))
                              (_%$%opt-lambda103056103061%_
                               _%size-hint103065%_
                               _%seed103067%_)))
                          _g103678_))
                  ((##fx= _g103679_ 1)
                   (apply (lambda (_%size-hint103069%_)
                            (let ((_%seed103071%_ '0))
                              (_%$%opt-lambda103056103061%_
                               _%size-hint103069%_
                               _%seed103071%_)))
                          _g103678_))
                  ((##fx= _g103679_ 2)
                   (apply _%$%opt-lambda103056103061%_ _g103678_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    make-eq-table
                    _g103678_)))))))
    (define make-eq-table/lock
      (let ((_%$%opt-lambda103036103042%_
             (lambda (_%size-hint103038%_ _%seed103040%_)
               (make-raw-table/lock
                _%size-hint103038%_
                eq-hash
                eq?
                _%seed103040%_))))
        (lambda _g103680_
          (let ((_g103681_ (##length _g103680_)))
            (cond ((##fx= _g103681_ 0)
                   (apply (lambda ()
                            (let* ((_%size-hint103046%_ '#f)
                                   (_%seed103048%_ '0))
                              (_%$%opt-lambda103036103042%_
                               _%size-hint103046%_
                               _%seed103048%_)))
                          _g103680_))
                  ((##fx= _g103681_ 1)
                   (apply (lambda (_%size-hint103050%_)
                            (let ((_%seed103052%_ '0))
                              (_%$%opt-lambda103036103042%_
                               _%size-hint103050%_
                               _%seed103052%_)))
                          _g103680_))
                  ((##fx= _g103681_ 2)
                   (apply _%$%opt-lambda103036103042%_ _g103680_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    make-eq-table/lock
                    _g103680_)))))))
    (define eq-table-ref
      (lambda (_%tab102991%_ _%key102992%_ _%default102993%_)
        (let ((_%table102995%_ (&raw-table-table _%tab102991%_))
              (_%seed102996%_ (&raw-table-seed _%tab102991%_)))
          (let* ((_%h102998%_ (fxxor (eq-hash _%key102992%_) _%seed102996%_))
                 (_%size103001%_ (vector-length _%table102995%_))
                 (_%entries103004%_ (fxquotient _%size103001%_ '2))
                 (_%start103007%_
                  (fxarithmetic-shift-left
                   (fxmodulo _%h102998%_ _%entries103004%_)
                   '1)))
            (let _%loop103011%_ ((_%probe103014%_ _%start103007%_)
                                 (_%i103016%_ '1)
                                 (_%deleted103018%_ '#f))
              (let ((_%k103021%_ (vector-ref _%table102995%_ _%probe103014%_)))
                (if (eq? _%k103021%_ (macro-unused-obj))
                    _%default102993%_
                    (if (eq? _%k103021%_ (macro-deleted-obj))
                        (_%loop103011%_
                         (let ((_%next-probe103026%_
                                (fx+ _%start103007%_
                                     _%i103016%_
                                     (fx* _%i103016%_ _%i103016%_))))
                           (fxmodulo _%next-probe103026%_ _%size103001%_))
                         (fx+ _%i103016%_ '1)
                         (let ((_%$e103029%_ _%deleted103018%_))
                           (if _%$e103029%_ _%$e103029%_ _%probe103014%_)))
                        (if (eq? _%key102992%_ _%k103021%_)
                            (vector-ref
                             _%table102995%_
                             (fx+ _%probe103014%_ '1))
                            (_%loop103011%_
                             (let ((_%next-probe103034%_
                                    (fx+ _%start103007%_
                                         _%i103016%_
                                         (fx* _%i103016%_ _%i103016%_))))
                               (fxmodulo _%next-probe103034%_ _%size103001%_))
                             (fx+ _%i103016%_ '1)
                             _%deleted103018%_))))))))))
    (define eq-table-ref/lock
      (lambda (_%tab102962%_ _%key102963%_ _%default102964%_)
        (let ((_%lock102966%_ (&raw-table-lock _%tab102962%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again102971%_ ((_%spin102974%_ '0))
              (if (##fx= (##vector-cas! _%lock102966%_ '0 '1 '0) '0)
                  (##vector-set! _%lock102966%_ '1 (current-thread))
                  (if (##fx< _%spin102974%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again102971%_ (##fx+ _%spin102974%_ '1)))
                      (let ((_%owner102980%_ (##vector-ref _%lock102966%_ '1)))
                        (if (eq? _%owner102980%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (not (macro-thread-end-condvar
                                      _%owner102980%_))
                                (##thread-deadlock-action!)
                                (let ()
                                  (##thread-yield!)
                                  (_%again102971%_ '0)))))))))
          (let ((_%$r102986%_
                 (eq-table-ref _%tab102962%_ _%key102963%_ _%default102964%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock102966%_ '1 '#f)
                (##vector-cas! _%lock102966%_ '0 '0 '1)))
            _%$r102986%_))))
    (define __eq-table-set!
      (lambda (_%tab102914%_ _%key102915%_ _%value102916%_)
        (let ((_%table102918%_ (&raw-table-table _%tab102914%_))
              (_%seed102919%_ (&raw-table-seed _%tab102914%_)))
          (let* ((_%h102921%_ (fxxor (eq-hash _%key102915%_) _%seed102919%_))
                 (_%size102924%_ (vector-length _%table102918%_))
                 (_%entries102927%_ (fxquotient _%size102924%_ '2))
                 (_%start102930%_
                  (fxarithmetic-shift-left
                   (fxmodulo _%h102921%_ _%entries102927%_)
                   '1)))
            (let _%loop102934%_ ((_%probe102937%_ _%start102930%_)
                                 (_%i102939%_ '1)
                                 (_%deleted102941%_ '#f))
              (let ((_%k102944%_ (vector-ref _%table102918%_ _%probe102937%_)))
                (if (eq? _%k102944%_ (macro-unused-obj))
                    (if _%deleted102941%_
                        (begin
                          (vector-set!
                           _%table102918%_
                           _%deleted102941%_
                           _%key102915%_)
                          (vector-set!
                           _%table102918%_
                           (fx+ _%deleted102941%_ '1)
                           _%value102916%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab102914%_
                              (fx+ (&raw-table-count _%tab102914%_) '1)))))
                        (begin
                          (vector-set!
                           _%table102918%_
                           _%probe102937%_
                           _%key102915%_)
                          (vector-set!
                           _%table102918%_
                           (fx+ _%probe102937%_ '1)
                           _%value102916%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab102914%_
                              (fx- (&raw-table-free _%tab102914%_) '1))
                             (&raw-table-count-set!
                              _%tab102914%_
                              (fx+ (&raw-table-count _%tab102914%_) '1))))))
                    (if (eq? _%k102944%_ (macro-deleted-obj))
                        (_%loop102934%_
                         (let ((_%next-probe102951%_
                                (fx+ _%start102930%_
                                     _%i102939%_
                                     (fx* _%i102939%_ _%i102939%_))))
                           (fxmodulo _%next-probe102951%_ _%size102924%_))
                         (fx+ _%i102939%_ '1)
                         (let ((_%$e102954%_ _%deleted102941%_))
                           (if _%$e102954%_ _%$e102954%_ _%probe102937%_)))
                        (if (eq? _%key102915%_ _%k102944%_)
                            (let ()
                              (vector-set!
                               _%table102918%_
                               _%probe102937%_
                               _%key102915%_)
                              (vector-set!
                               _%table102918%_
                               (fx+ _%probe102937%_ '1)
                               _%value102916%_))
                            (_%loop102934%_
                             (let ((_%next-probe102959%_
                                    (fx+ _%start102930%_
                                         _%i102939%_
                                         (fx* _%i102939%_ _%i102939%_))))
                               (fxmodulo _%next-probe102959%_ _%size102924%_))
                             (fx+ _%i102939%_ '1)
                             _%deleted102941%_))))))))))
    (define eq-table-set!
      (lambda (_%tab102910%_ _%key102911%_ _%value102912%_)
        (if (fx< (&raw-table-free _%tab102910%_)
                 (fxquotient
                  (vector-length (&raw-table-table _%tab102910%_))
                  '4))
            (__raw-table-rehash! _%tab102910%_)
            '#!void)
        (__eq-table-set! _%tab102910%_ _%key102911%_ _%value102912%_)))
    (define eq-table-set!/lock
      (lambda (_%tab102880%_ _%key102881%_ _%value102882%_)
        (let ((_%lock102885%_ (&raw-table-lock _%tab102880%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again102890%_ ((_%spin102893%_ '0))
              (if (##fx= (##vector-cas! _%lock102885%_ '0 '1 '0) '0)
                  (##vector-set! _%lock102885%_ '1 (current-thread))
                  (if (##fx< _%spin102893%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again102890%_ (##fx+ _%spin102893%_ '1)))
                      (let ((_%owner102899%_ (##vector-ref _%lock102885%_ '1)))
                        (if (eq? _%owner102899%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (not (macro-thread-end-condvar
                                      _%owner102899%_))
                                (##thread-deadlock-action!)
                                (let ()
                                  (##thread-yield!)
                                  (_%again102890%_ '0)))))))))
          (let ((_%$r102905%_
                 (eq-table-set! _%tab102880%_ _%key102881%_ _%value102882%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock102885%_ '1 '#f)
                (##vector-cas! _%lock102885%_ '0 '0 '1)))
            _%$r102905%_))))
    (define __eq-table-update!
      (lambda (_%tab102831%_
               _%key102832%_
               _%eq-table-update!102833%_
               _%default102834%_)
        (let ((_%table102836%_ (&raw-table-table _%tab102831%_))
              (_%seed102837%_ (&raw-table-seed _%tab102831%_)))
          (let* ((_%h102839%_ (fxxor (eq-hash _%key102832%_) _%seed102837%_))
                 (_%size102842%_ (vector-length _%table102836%_))
                 (_%entries102845%_ (fxquotient _%size102842%_ '2))
                 (_%start102848%_
                  (fxarithmetic-shift-left
                   (fxmodulo _%h102839%_ _%entries102845%_)
                   '1)))
            (let _%loop102852%_ ((_%probe102855%_ _%start102848%_)
                                 (_%i102857%_ '1)
                                 (_%deleted102859%_ '#f))
              (let ((_%k102862%_ (vector-ref _%table102836%_ _%probe102855%_)))
                (if (eq? _%k102862%_ (macro-unused-obj))
                    (if _%deleted102859%_
                        (begin
                          (vector-set!
                           _%table102836%_
                           _%deleted102859%_
                           _%key102832%_)
                          (vector-set!
                           _%table102836%_
                           (fx+ _%deleted102859%_ '1)
                           (_%eq-table-update!102833%_ _%default102834%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab102831%_
                              (fx+ (&raw-table-count _%tab102831%_) '1)))))
                        (begin
                          (vector-set!
                           _%table102836%_
                           _%probe102855%_
                           _%key102832%_)
                          (vector-set!
                           _%table102836%_
                           (fx+ _%probe102855%_ '1)
                           (_%eq-table-update!102833%_ _%default102834%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab102831%_
                              (fx- (&raw-table-free _%tab102831%_) '1))
                             (&raw-table-count-set!
                              _%tab102831%_
                              (fx+ (&raw-table-count _%tab102831%_) '1))))))
                    (if (eq? _%k102862%_ (macro-deleted-obj))
                        (_%loop102852%_
                         (let ((_%next-probe102869%_
                                (fx+ _%start102848%_
                                     _%i102857%_
                                     (fx* _%i102857%_ _%i102857%_))))
                           (fxmodulo _%next-probe102869%_ _%size102842%_))
                         (fx+ _%i102857%_ '1)
                         (let ((_%$e102872%_ _%deleted102859%_))
                           (if _%$e102872%_ _%$e102872%_ _%probe102855%_)))
                        (if (eq? _%key102832%_ _%k102862%_)
                            (let ()
                              (vector-set!
                               _%table102836%_
                               _%probe102855%_
                               _%key102832%_)
                              (vector-set!
                               _%table102836%_
                               (fx+ _%probe102855%_ '1)
                               (_%eq-table-update!102833%_
                                (vector-ref
                                 _%table102836%_
                                 (fx+ _%probe102855%_ '1)))))
                            (_%loop102852%_
                             (let ((_%next-probe102877%_
                                    (fx+ _%start102848%_
                                         _%i102857%_
                                         (fx* _%i102857%_ _%i102857%_))))
                               (fxmodulo _%next-probe102877%_ _%size102842%_))
                             (fx+ _%i102857%_ '1)
                             _%deleted102859%_))))))))))
    (define eq-table-update!
      (lambda (_%tab102826%_
               _%key102827%_
               _%eq-table-update!102828%_
               _%default102829%_)
        (if (fx< (&raw-table-free _%tab102826%_)
                 (fxquotient
                  (vector-length (&raw-table-table _%tab102826%_))
                  '4))
            (__raw-table-rehash! _%tab102826%_)
            '#!void)
        (__eq-table-update!
         _%tab102826%_
         _%key102827%_
         _%eq-table-update!102828%_
         _%default102829%_)))
    (define eq-table-update!/lock
      (lambda (_%tab102795%_
               _%key102796%_
               _%eq-table-update!102797%_
               _%default102798%_)
        (let ((_%lock102801%_ (&raw-table-lock _%tab102795%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again102806%_ ((_%spin102809%_ '0))
              (if (##fx= (##vector-cas! _%lock102801%_ '0 '1 '0) '0)
                  (##vector-set! _%lock102801%_ '1 (current-thread))
                  (if (##fx< _%spin102809%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again102806%_ (##fx+ _%spin102809%_ '1)))
                      (let ((_%owner102815%_ (##vector-ref _%lock102801%_ '1)))
                        (if (eq? _%owner102815%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (not (macro-thread-end-condvar
                                      _%owner102815%_))
                                (##thread-deadlock-action!)
                                (let ()
                                  (##thread-yield!)
                                  (_%again102806%_ '0)))))))))
          (let ((_%$r102821%_
                 (_%eq-table-update!102797%_
                  _%tab102795%_
                  _%key102796%_
                  _%eq-table-update!102797%_
                  _%default102798%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock102801%_ '1 '#f)
                (##vector-cas! _%lock102801%_ '0 '0 '1)))
            _%$r102821%_))))
    (define eq-table-delete!
      (lambda (_%tab102752%_ _%key102753%_)
        (let ((_%table102755%_ (&raw-table-table _%tab102752%_))
              (_%seed102757%_ (&raw-table-seed _%tab102752%_)))
          (let* ((_%h102760%_ (fxxor (eq-hash _%key102753%_) _%seed102757%_))
                 (_%size102763%_ (vector-length _%table102755%_))
                 (_%entries102766%_ (fxquotient _%size102763%_ '2))
                 (_%start102769%_
                  (fxarithmetic-shift-left
                   (fxmodulo _%h102760%_ _%entries102766%_)
                   '1)))
            (let _%loop102773%_ ((_%probe102776%_ _%start102769%_)
                                 (_%i102778%_ '1))
              (let ((_%k102781%_ (vector-ref _%table102755%_ _%probe102776%_)))
                (if (eq? _%k102781%_ (macro-unused-obj))
                    (void)
                    (if (eq? _%k102781%_ (macro-deleted-obj))
                        (_%loop102773%_
                         (let ((_%next-probe102786%_
                                (fx+ _%start102769%_
                                     _%i102778%_
                                     (fx* _%i102778%_ _%i102778%_))))
                           (fxmodulo _%next-probe102786%_ _%size102763%_))
                         (fx+ _%i102778%_ '1))
                        (if (eq? _%key102753%_ _%k102781%_)
                            (let ()
                              (vector-set!
                               _%table102755%_
                               _%probe102776%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table102755%_
                               (fx+ _%probe102776%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab102752%_
                                  (fx- (&raw-table-count _%tab102752%_) '1)))))
                            (_%loop102773%_
                             (let ((_%next-probe102792%_
                                    (fx+ _%start102769%_
                                         _%i102778%_
                                         (fx* _%i102778%_ _%i102778%_))))
                               (fxmodulo _%next-probe102792%_ _%size102763%_))
                             (fx+ _%i102778%_ '1)))))))))))
    (define eq-table-delete!/lock
      (lambda (_%tab102722%_ _%key102724%_)
        (let ((_%lock102727%_ (&raw-table-lock _%tab102722%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again102732%_ ((_%spin102735%_ '0))
              (if (##fx= (##vector-cas! _%lock102727%_ '0 '1 '0) '0)
                  (##vector-set! _%lock102727%_ '1 (current-thread))
                  (if (##fx< _%spin102735%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again102732%_ (##fx+ _%spin102735%_ '1)))
                      (let ((_%owner102741%_ (##vector-ref _%lock102727%_ '1)))
                        (if (eq? _%owner102741%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (not (macro-thread-end-condvar
                                      _%owner102741%_))
                                (##thread-deadlock-action!)
                                (let ()
                                  (##thread-yield!)
                                  (_%again102732%_ '0)))))))))
          (let ((_%$r102747%_ (eq-table-delete! _%tab102722%_ _%key102724%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock102727%_ '1 '#f)
                (##vector-cas! _%lock102727%_ '0 '0 '1)))
            _%$r102747%_))))
    (define make-eqv-table
      (let ((_%$%opt-lambda102702102707%_
             (lambda (_%size-hint102704%_ _%seed102705%_)
               (make-raw-table
                _%size-hint102704%_
                eqv-hash
                eqv?
                _%seed102705%_))))
        (lambda _g103682_
          (let ((_g103683_ (##length _g103682_)))
            (cond ((##fx= _g103683_ 0)
                   (apply (lambda ()
                            (let* ((_%size-hint102711%_ '#f)
                                   (_%seed102713%_ '0))
                              (_%$%opt-lambda102702102707%_
                               _%size-hint102711%_
                               _%seed102713%_)))
                          _g103682_))
                  ((##fx= _g103683_ 1)
                   (apply (lambda (_%size-hint102715%_)
                            (let ((_%seed102717%_ '0))
                              (_%$%opt-lambda102702102707%_
                               _%size-hint102715%_
                               _%seed102717%_)))
                          _g103682_))
                  ((##fx= _g103683_ 2)
                   (apply _%$%opt-lambda102702102707%_ _g103682_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    make-eqv-table
                    _g103682_)))))))
    (define make-eqv-table/lock
      (let ((_%$%opt-lambda102682102688%_
             (lambda (_%size-hint102684%_ _%seed102686%_)
               (make-raw-table/lock
                _%size-hint102684%_
                eqv-hash
                eqv?
                _%seed102686%_))))
        (lambda _g103684_
          (let ((_g103685_ (##length _g103684_)))
            (cond ((##fx= _g103685_ 0)
                   (apply (lambda ()
                            (let* ((_%size-hint102692%_ '#f)
                                   (_%seed102694%_ '0))
                              (_%$%opt-lambda102682102688%_
                               _%size-hint102692%_
                               _%seed102694%_)))
                          _g103684_))
                  ((##fx= _g103685_ 1)
                   (apply (lambda (_%size-hint102696%_)
                            (let ((_%seed102698%_ '0))
                              (_%$%opt-lambda102682102688%_
                               _%size-hint102696%_
                               _%seed102698%_)))
                          _g103684_))
                  ((##fx= _g103685_ 2)
                   (apply _%$%opt-lambda102682102688%_ _g103684_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    make-eqv-table/lock
                    _g103684_)))))))
    (define eqv-table-ref
      (lambda (_%tab102637%_ _%key102638%_ _%default102639%_)
        (let ((_%table102641%_ (&raw-table-table _%tab102637%_))
              (_%seed102642%_ (&raw-table-seed _%tab102637%_)))
          (let* ((_%h102644%_ (fxxor (eqv-hash _%key102638%_) _%seed102642%_))
                 (_%size102647%_ (vector-length _%table102641%_))
                 (_%entries102650%_ (fxquotient _%size102647%_ '2))
                 (_%start102653%_
                  (fxarithmetic-shift-left
                   (fxmodulo _%h102644%_ _%entries102650%_)
                   '1)))
            (let _%loop102657%_ ((_%probe102660%_ _%start102653%_)
                                 (_%i102662%_ '1)
                                 (_%deleted102664%_ '#f))
              (let ((_%k102667%_ (vector-ref _%table102641%_ _%probe102660%_)))
                (if (eq? _%k102667%_ (macro-unused-obj))
                    _%default102639%_
                    (if (eq? _%k102667%_ (macro-deleted-obj))
                        (_%loop102657%_
                         (let ((_%next-probe102672%_
                                (fx+ _%start102653%_
                                     _%i102662%_
                                     (fx* _%i102662%_ _%i102662%_))))
                           (fxmodulo _%next-probe102672%_ _%size102647%_))
                         (fx+ _%i102662%_ '1)
                         (let ((_%$e102675%_ _%deleted102664%_))
                           (if _%$e102675%_ _%$e102675%_ _%probe102660%_)))
                        (if (eqv? _%key102638%_ _%k102667%_)
                            (vector-ref
                             _%table102641%_
                             (fx+ _%probe102660%_ '1))
                            (_%loop102657%_
                             (let ((_%next-probe102680%_
                                    (fx+ _%start102653%_
                                         _%i102662%_
                                         (fx* _%i102662%_ _%i102662%_))))
                               (fxmodulo _%next-probe102680%_ _%size102647%_))
                             (fx+ _%i102662%_ '1)
                             _%deleted102664%_))))))))))
    (define eqv-table-ref/lock
      (lambda (_%tab102608%_ _%key102609%_ _%default102610%_)
        (let ((_%lock102612%_ (&raw-table-lock _%tab102608%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again102617%_ ((_%spin102620%_ '0))
              (if (##fx= (##vector-cas! _%lock102612%_ '0 '1 '0) '0)
                  (##vector-set! _%lock102612%_ '1 (current-thread))
                  (if (##fx< _%spin102620%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again102617%_ (##fx+ _%spin102620%_ '1)))
                      (let ((_%owner102626%_ (##vector-ref _%lock102612%_ '1)))
                        (if (eq? _%owner102626%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (not (macro-thread-end-condvar
                                      _%owner102626%_))
                                (##thread-deadlock-action!)
                                (let ()
                                  (##thread-yield!)
                                  (_%again102617%_ '0)))))))))
          (let ((_%$r102632%_
                 (eqv-table-ref
                  _%tab102608%_
                  _%key102609%_
                  _%default102610%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock102612%_ '1 '#f)
                (##vector-cas! _%lock102612%_ '0 '0 '1)))
            _%$r102632%_))))
    (define __eqv-table-set!
      (lambda (_%tab102560%_ _%key102561%_ _%value102562%_)
        (let ((_%table102564%_ (&raw-table-table _%tab102560%_))
              (_%seed102565%_ (&raw-table-seed _%tab102560%_)))
          (let* ((_%h102567%_ (fxxor (eqv-hash _%key102561%_) _%seed102565%_))
                 (_%size102570%_ (vector-length _%table102564%_))
                 (_%entries102573%_ (fxquotient _%size102570%_ '2))
                 (_%start102576%_
                  (fxarithmetic-shift-left
                   (fxmodulo _%h102567%_ _%entries102573%_)
                   '1)))
            (let _%loop102580%_ ((_%probe102583%_ _%start102576%_)
                                 (_%i102585%_ '1)
                                 (_%deleted102587%_ '#f))
              (let ((_%k102590%_ (vector-ref _%table102564%_ _%probe102583%_)))
                (if (eq? _%k102590%_ (macro-unused-obj))
                    (if _%deleted102587%_
                        (begin
                          (vector-set!
                           _%table102564%_
                           _%deleted102587%_
                           _%key102561%_)
                          (vector-set!
                           _%table102564%_
                           (fx+ _%deleted102587%_ '1)
                           _%value102562%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab102560%_
                              (fx+ (&raw-table-count _%tab102560%_) '1)))))
                        (begin
                          (vector-set!
                           _%table102564%_
                           _%probe102583%_
                           _%key102561%_)
                          (vector-set!
                           _%table102564%_
                           (fx+ _%probe102583%_ '1)
                           _%value102562%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab102560%_
                              (fx- (&raw-table-free _%tab102560%_) '1))
                             (&raw-table-count-set!
                              _%tab102560%_
                              (fx+ (&raw-table-count _%tab102560%_) '1))))))
                    (if (eq? _%k102590%_ (macro-deleted-obj))
                        (_%loop102580%_
                         (let ((_%next-probe102597%_
                                (fx+ _%start102576%_
                                     _%i102585%_
                                     (fx* _%i102585%_ _%i102585%_))))
                           (fxmodulo _%next-probe102597%_ _%size102570%_))
                         (fx+ _%i102585%_ '1)
                         (let ((_%$e102600%_ _%deleted102587%_))
                           (if _%$e102600%_ _%$e102600%_ _%probe102583%_)))
                        (if (eqv? _%key102561%_ _%k102590%_)
                            (let ()
                              (vector-set!
                               _%table102564%_
                               _%probe102583%_
                               _%key102561%_)
                              (vector-set!
                               _%table102564%_
                               (fx+ _%probe102583%_ '1)
                               _%value102562%_))
                            (_%loop102580%_
                             (let ((_%next-probe102605%_
                                    (fx+ _%start102576%_
                                         _%i102585%_
                                         (fx* _%i102585%_ _%i102585%_))))
                               (fxmodulo _%next-probe102605%_ _%size102570%_))
                             (fx+ _%i102585%_ '1)
                             _%deleted102587%_))))))))))
    (define eqv-table-set!
      (lambda (_%tab102556%_ _%key102557%_ _%value102558%_)
        (if (fx< (&raw-table-free _%tab102556%_)
                 (fxquotient
                  (vector-length (&raw-table-table _%tab102556%_))
                  '4))
            (__raw-table-rehash! _%tab102556%_)
            '#!void)
        (__eqv-table-set! _%tab102556%_ _%key102557%_ _%value102558%_)))
    (define eqv-table-set!/lock
      (lambda (_%tab102526%_ _%key102527%_ _%value102528%_)
        (let ((_%lock102531%_ (&raw-table-lock _%tab102526%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again102536%_ ((_%spin102539%_ '0))
              (if (##fx= (##vector-cas! _%lock102531%_ '0 '1 '0) '0)
                  (##vector-set! _%lock102531%_ '1 (current-thread))
                  (if (##fx< _%spin102539%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again102536%_ (##fx+ _%spin102539%_ '1)))
                      (let ((_%owner102545%_ (##vector-ref _%lock102531%_ '1)))
                        (if (eq? _%owner102545%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (not (macro-thread-end-condvar
                                      _%owner102545%_))
                                (##thread-deadlock-action!)
                                (let ()
                                  (##thread-yield!)
                                  (_%again102536%_ '0)))))))))
          (let ((_%$r102551%_
                 (eqv-table-set! _%tab102526%_ _%key102527%_ _%value102528%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock102531%_ '1 '#f)
                (##vector-cas! _%lock102531%_ '0 '0 '1)))
            _%$r102551%_))))
    (define __eqv-table-update!
      (lambda (_%tab102477%_
               _%key102478%_
               _%eqv-table-update!102479%_
               _%default102480%_)
        (let ((_%table102482%_ (&raw-table-table _%tab102477%_))
              (_%seed102483%_ (&raw-table-seed _%tab102477%_)))
          (let* ((_%h102485%_ (fxxor (eqv-hash _%key102478%_) _%seed102483%_))
                 (_%size102488%_ (vector-length _%table102482%_))
                 (_%entries102491%_ (fxquotient _%size102488%_ '2))
                 (_%start102494%_
                  (fxarithmetic-shift-left
                   (fxmodulo _%h102485%_ _%entries102491%_)
                   '1)))
            (let _%loop102498%_ ((_%probe102501%_ _%start102494%_)
                                 (_%i102503%_ '1)
                                 (_%deleted102505%_ '#f))
              (let ((_%k102508%_ (vector-ref _%table102482%_ _%probe102501%_)))
                (if (eq? _%k102508%_ (macro-unused-obj))
                    (if _%deleted102505%_
                        (begin
                          (vector-set!
                           _%table102482%_
                           _%deleted102505%_
                           _%key102478%_)
                          (vector-set!
                           _%table102482%_
                           (fx+ _%deleted102505%_ '1)
                           (_%eqv-table-update!102479%_ _%default102480%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab102477%_
                              (fx+ (&raw-table-count _%tab102477%_) '1)))))
                        (begin
                          (vector-set!
                           _%table102482%_
                           _%probe102501%_
                           _%key102478%_)
                          (vector-set!
                           _%table102482%_
                           (fx+ _%probe102501%_ '1)
                           (_%eqv-table-update!102479%_ _%default102480%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab102477%_
                              (fx- (&raw-table-free _%tab102477%_) '1))
                             (&raw-table-count-set!
                              _%tab102477%_
                              (fx+ (&raw-table-count _%tab102477%_) '1))))))
                    (if (eq? _%k102508%_ (macro-deleted-obj))
                        (_%loop102498%_
                         (let ((_%next-probe102515%_
                                (fx+ _%start102494%_
                                     _%i102503%_
                                     (fx* _%i102503%_ _%i102503%_))))
                           (fxmodulo _%next-probe102515%_ _%size102488%_))
                         (fx+ _%i102503%_ '1)
                         (let ((_%$e102518%_ _%deleted102505%_))
                           (if _%$e102518%_ _%$e102518%_ _%probe102501%_)))
                        (if (eqv? _%key102478%_ _%k102508%_)
                            (let ()
                              (vector-set!
                               _%table102482%_
                               _%probe102501%_
                               _%key102478%_)
                              (vector-set!
                               _%table102482%_
                               (fx+ _%probe102501%_ '1)
                               (_%eqv-table-update!102479%_
                                (vector-ref
                                 _%table102482%_
                                 (fx+ _%probe102501%_ '1)))))
                            (_%loop102498%_
                             (let ((_%next-probe102523%_
                                    (fx+ _%start102494%_
                                         _%i102503%_
                                         (fx* _%i102503%_ _%i102503%_))))
                               (fxmodulo _%next-probe102523%_ _%size102488%_))
                             (fx+ _%i102503%_ '1)
                             _%deleted102505%_))))))))))
    (define eqv-table-update!
      (lambda (_%tab102472%_
               _%key102473%_
               _%eqv-table-update!102474%_
               _%default102475%_)
        (if (fx< (&raw-table-free _%tab102472%_)
                 (fxquotient
                  (vector-length (&raw-table-table _%tab102472%_))
                  '4))
            (__raw-table-rehash! _%tab102472%_)
            '#!void)
        (__eqv-table-update!
         _%tab102472%_
         _%key102473%_
         _%eqv-table-update!102474%_
         _%default102475%_)))
    (define eqv-table-update!/lock
      (lambda (_%tab102441%_
               _%key102442%_
               _%eqv-table-update!102443%_
               _%default102444%_)
        (let ((_%lock102447%_ (&raw-table-lock _%tab102441%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again102452%_ ((_%spin102455%_ '0))
              (if (##fx= (##vector-cas! _%lock102447%_ '0 '1 '0) '0)
                  (##vector-set! _%lock102447%_ '1 (current-thread))
                  (if (##fx< _%spin102455%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again102452%_ (##fx+ _%spin102455%_ '1)))
                      (let ((_%owner102461%_ (##vector-ref _%lock102447%_ '1)))
                        (if (eq? _%owner102461%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (not (macro-thread-end-condvar
                                      _%owner102461%_))
                                (##thread-deadlock-action!)
                                (let ()
                                  (##thread-yield!)
                                  (_%again102452%_ '0)))))))))
          (let ((_%$r102467%_
                 (_%eqv-table-update!102443%_
                  _%tab102441%_
                  _%key102442%_
                  _%eqv-table-update!102443%_
                  _%default102444%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock102447%_ '1 '#f)
                (##vector-cas! _%lock102447%_ '0 '0 '1)))
            _%$r102467%_))))
    (define eqv-table-delete!
      (lambda (_%tab102398%_ _%key102399%_)
        (let ((_%table102401%_ (&raw-table-table _%tab102398%_))
              (_%seed102403%_ (&raw-table-seed _%tab102398%_)))
          (let* ((_%h102406%_ (fxxor (eqv-hash _%key102399%_) _%seed102403%_))
                 (_%size102409%_ (vector-length _%table102401%_))
                 (_%entries102412%_ (fxquotient _%size102409%_ '2))
                 (_%start102415%_
                  (fxarithmetic-shift-left
                   (fxmodulo _%h102406%_ _%entries102412%_)
                   '1)))
            (let _%loop102419%_ ((_%probe102422%_ _%start102415%_)
                                 (_%i102424%_ '1))
              (let ((_%k102427%_ (vector-ref _%table102401%_ _%probe102422%_)))
                (if (eq? _%k102427%_ (macro-unused-obj))
                    (void)
                    (if (eq? _%k102427%_ (macro-deleted-obj))
                        (_%loop102419%_
                         (let ((_%next-probe102432%_
                                (fx+ _%start102415%_
                                     _%i102424%_
                                     (fx* _%i102424%_ _%i102424%_))))
                           (fxmodulo _%next-probe102432%_ _%size102409%_))
                         (fx+ _%i102424%_ '1))
                        (if (eqv? _%key102399%_ _%k102427%_)
                            (let ()
                              (vector-set!
                               _%table102401%_
                               _%probe102422%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table102401%_
                               (fx+ _%probe102422%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab102398%_
                                  (fx- (&raw-table-count _%tab102398%_) '1)))))
                            (_%loop102419%_
                             (let ((_%next-probe102438%_
                                    (fx+ _%start102415%_
                                         _%i102424%_
                                         (fx* _%i102424%_ _%i102424%_))))
                               (fxmodulo _%next-probe102438%_ _%size102409%_))
                             (fx+ _%i102424%_ '1)))))))))))
    (define eqv-table-delete!/lock
      (lambda (_%tab102368%_ _%key102370%_)
        (let ((_%lock102373%_ (&raw-table-lock _%tab102368%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again102378%_ ((_%spin102381%_ '0))
              (if (##fx= (##vector-cas! _%lock102373%_ '0 '1 '0) '0)
                  (##vector-set! _%lock102373%_ '1 (current-thread))
                  (if (##fx< _%spin102381%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again102378%_ (##fx+ _%spin102381%_ '1)))
                      (let ((_%owner102387%_ (##vector-ref _%lock102373%_ '1)))
                        (if (eq? _%owner102387%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (not (macro-thread-end-condvar
                                      _%owner102387%_))
                                (##thread-deadlock-action!)
                                (let ()
                                  (##thread-yield!)
                                  (_%again102378%_ '0)))))))))
          (let ((_%$r102393%_ (eqv-table-delete! _%tab102368%_ _%key102370%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock102373%_ '1 '#f)
                (##vector-cas! _%lock102373%_ '0 '0 '1)))
            _%$r102393%_))))
    (define make-symbolic-table
      (let ((_%$%opt-lambda102348102353%_
             (lambda (_%size-hint102350%_ _%seed102351%_)
               (make-raw-table
                _%size-hint102350%_
                symbolic-hash
                eq?
                _%seed102351%_))))
        (lambda _g103686_
          (let ((_g103687_ (##length _g103686_)))
            (cond ((##fx= _g103687_ 0)
                   (apply (lambda ()
                            (let* ((_%size-hint102357%_ '#f)
                                   (_%seed102359%_ '0))
                              (_%$%opt-lambda102348102353%_
                               _%size-hint102357%_
                               _%seed102359%_)))
                          _g103686_))
                  ((##fx= _g103687_ 1)
                   (apply (lambda (_%size-hint102361%_)
                            (let ((_%seed102363%_ '0))
                              (_%$%opt-lambda102348102353%_
                               _%size-hint102361%_
                               _%seed102363%_)))
                          _g103686_))
                  ((##fx= _g103687_ 2)
                   (apply _%$%opt-lambda102348102353%_ _g103686_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    make-symbolic-table
                    _g103686_)))))))
    (define make-symbolic-table/lock
      (let ((_%$%opt-lambda102328102334%_
             (lambda (_%size-hint102330%_ _%seed102332%_)
               (make-raw-table/lock
                _%size-hint102330%_
                symbolic-hash
                eq?
                _%seed102332%_))))
        (lambda _g103688_
          (let ((_g103689_ (##length _g103688_)))
            (cond ((##fx= _g103689_ 0)
                   (apply (lambda ()
                            (let* ((_%size-hint102338%_ '#f)
                                   (_%seed102340%_ '0))
                              (_%$%opt-lambda102328102334%_
                               _%size-hint102338%_
                               _%seed102340%_)))
                          _g103688_))
                  ((##fx= _g103689_ 1)
                   (apply (lambda (_%size-hint102342%_)
                            (let ((_%seed102344%_ '0))
                              (_%$%opt-lambda102328102334%_
                               _%size-hint102342%_
                               _%seed102344%_)))
                          _g103688_))
                  ((##fx= _g103689_ 2)
                   (apply _%$%opt-lambda102328102334%_ _g103688_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    make-symbolic-table/lock
                    _g103688_)))))))
    (define symbolic-table-ref
      (lambda (_%tab102283%_ _%key102284%_ _%default102285%_)
        (let ((_%table102287%_ (&raw-table-table _%tab102283%_))
              (_%seed102288%_ (&raw-table-seed _%tab102283%_)))
          (let* ((_%h102290%_
                  (fxxor (symbolic-hash _%key102284%_) _%seed102288%_))
                 (_%size102293%_ (vector-length _%table102287%_))
                 (_%entries102296%_ (fxquotient _%size102293%_ '2))
                 (_%start102299%_
                  (fxarithmetic-shift-left
                   (fxmodulo _%h102290%_ _%entries102296%_)
                   '1)))
            (let _%loop102303%_ ((_%probe102306%_ _%start102299%_)
                                 (_%i102308%_ '1)
                                 (_%deleted102310%_ '#f))
              (let ((_%k102313%_ (vector-ref _%table102287%_ _%probe102306%_)))
                (if (eq? _%k102313%_ (macro-unused-obj))
                    _%default102285%_
                    (if (eq? _%k102313%_ (macro-deleted-obj))
                        (_%loop102303%_
                         (let ((_%next-probe102318%_
                                (fx+ _%start102299%_
                                     _%i102308%_
                                     (fx* _%i102308%_ _%i102308%_))))
                           (fxmodulo _%next-probe102318%_ _%size102293%_))
                         (fx+ _%i102308%_ '1)
                         (let ((_%$e102321%_ _%deleted102310%_))
                           (if _%$e102321%_ _%$e102321%_ _%probe102306%_)))
                        (if (eq? _%key102284%_ _%k102313%_)
                            (vector-ref
                             _%table102287%_
                             (fx+ _%probe102306%_ '1))
                            (_%loop102303%_
                             (let ((_%next-probe102326%_
                                    (fx+ _%start102299%_
                                         _%i102308%_
                                         (fx* _%i102308%_ _%i102308%_))))
                               (fxmodulo _%next-probe102326%_ _%size102293%_))
                             (fx+ _%i102308%_ '1)
                             _%deleted102310%_))))))))))
    (define symbolic-table-ref/lock
      (lambda (_%tab102254%_ _%key102255%_ _%default102256%_)
        (let ((_%lock102258%_ (&raw-table-lock _%tab102254%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again102263%_ ((_%spin102266%_ '0))
              (if (##fx= (##vector-cas! _%lock102258%_ '0 '1 '0) '0)
                  (##vector-set! _%lock102258%_ '1 (current-thread))
                  (if (##fx< _%spin102266%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again102263%_ (##fx+ _%spin102266%_ '1)))
                      (let ((_%owner102272%_ (##vector-ref _%lock102258%_ '1)))
                        (if (eq? _%owner102272%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (not (macro-thread-end-condvar
                                      _%owner102272%_))
                                (##thread-deadlock-action!)
                                (let ()
                                  (##thread-yield!)
                                  (_%again102263%_ '0)))))))))
          (let ((_%$r102278%_
                 (symbolic-table-ref
                  _%tab102254%_
                  _%key102255%_
                  _%default102256%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock102258%_ '1 '#f)
                (##vector-cas! _%lock102258%_ '0 '0 '1)))
            _%$r102278%_))))
    (define __symbolic-table-set!
      (lambda (_%tab102206%_ _%key102207%_ _%value102208%_)
        (let ((_%table102210%_ (&raw-table-table _%tab102206%_))
              (_%seed102211%_ (&raw-table-seed _%tab102206%_)))
          (let* ((_%h102213%_
                  (fxxor (symbolic-hash _%key102207%_) _%seed102211%_))
                 (_%size102216%_ (vector-length _%table102210%_))
                 (_%entries102219%_ (fxquotient _%size102216%_ '2))
                 (_%start102222%_
                  (fxarithmetic-shift-left
                   (fxmodulo _%h102213%_ _%entries102219%_)
                   '1)))
            (let _%loop102226%_ ((_%probe102229%_ _%start102222%_)
                                 (_%i102231%_ '1)
                                 (_%deleted102233%_ '#f))
              (let ((_%k102236%_ (vector-ref _%table102210%_ _%probe102229%_)))
                (if (eq? _%k102236%_ (macro-unused-obj))
                    (if _%deleted102233%_
                        (begin
                          (vector-set!
                           _%table102210%_
                           _%deleted102233%_
                           _%key102207%_)
                          (vector-set!
                           _%table102210%_
                           (fx+ _%deleted102233%_ '1)
                           _%value102208%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab102206%_
                              (fx+ (&raw-table-count _%tab102206%_) '1)))))
                        (begin
                          (vector-set!
                           _%table102210%_
                           _%probe102229%_
                           _%key102207%_)
                          (vector-set!
                           _%table102210%_
                           (fx+ _%probe102229%_ '1)
                           _%value102208%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab102206%_
                              (fx- (&raw-table-free _%tab102206%_) '1))
                             (&raw-table-count-set!
                              _%tab102206%_
                              (fx+ (&raw-table-count _%tab102206%_) '1))))))
                    (if (eq? _%k102236%_ (macro-deleted-obj))
                        (_%loop102226%_
                         (let ((_%next-probe102243%_
                                (fx+ _%start102222%_
                                     _%i102231%_
                                     (fx* _%i102231%_ _%i102231%_))))
                           (fxmodulo _%next-probe102243%_ _%size102216%_))
                         (fx+ _%i102231%_ '1)
                         (let ((_%$e102246%_ _%deleted102233%_))
                           (if _%$e102246%_ _%$e102246%_ _%probe102229%_)))
                        (if (eq? _%key102207%_ _%k102236%_)
                            (let ()
                              (vector-set!
                               _%table102210%_
                               _%probe102229%_
                               _%key102207%_)
                              (vector-set!
                               _%table102210%_
                               (fx+ _%probe102229%_ '1)
                               _%value102208%_))
                            (_%loop102226%_
                             (let ((_%next-probe102251%_
                                    (fx+ _%start102222%_
                                         _%i102231%_
                                         (fx* _%i102231%_ _%i102231%_))))
                               (fxmodulo _%next-probe102251%_ _%size102216%_))
                             (fx+ _%i102231%_ '1)
                             _%deleted102233%_))))))))))
    (define symbolic-table-set!
      (lambda (_%tab102202%_ _%key102203%_ _%value102204%_)
        (if (fx< (&raw-table-free _%tab102202%_)
                 (fxquotient
                  (vector-length (&raw-table-table _%tab102202%_))
                  '4))
            (__raw-table-rehash! _%tab102202%_)
            '#!void)
        (__symbolic-table-set! _%tab102202%_ _%key102203%_ _%value102204%_)))
    (define symbolic-table-set!/lock
      (lambda (_%tab102172%_ _%key102173%_ _%value102174%_)
        (let ((_%lock102177%_ (&raw-table-lock _%tab102172%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again102182%_ ((_%spin102185%_ '0))
              (if (##fx= (##vector-cas! _%lock102177%_ '0 '1 '0) '0)
                  (##vector-set! _%lock102177%_ '1 (current-thread))
                  (if (##fx< _%spin102185%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again102182%_ (##fx+ _%spin102185%_ '1)))
                      (let ((_%owner102191%_ (##vector-ref _%lock102177%_ '1)))
                        (if (eq? _%owner102191%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (not (macro-thread-end-condvar
                                      _%owner102191%_))
                                (##thread-deadlock-action!)
                                (let ()
                                  (##thread-yield!)
                                  (_%again102182%_ '0)))))))))
          (let ((_%$r102197%_
                 (symbolic-table-set!
                  _%tab102172%_
                  _%key102173%_
                  _%value102174%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock102177%_ '1 '#f)
                (##vector-cas! _%lock102177%_ '0 '0 '1)))
            _%$r102197%_))))
    (define __symbolic-table-update!
      (lambda (_%tab102123%_
               _%key102124%_
               _%symbolic-table-update!102125%_
               _%default102126%_)
        (let ((_%table102128%_ (&raw-table-table _%tab102123%_))
              (_%seed102129%_ (&raw-table-seed _%tab102123%_)))
          (let* ((_%h102131%_
                  (fxxor (symbolic-hash _%key102124%_) _%seed102129%_))
                 (_%size102134%_ (vector-length _%table102128%_))
                 (_%entries102137%_ (fxquotient _%size102134%_ '2))
                 (_%start102140%_
                  (fxarithmetic-shift-left
                   (fxmodulo _%h102131%_ _%entries102137%_)
                   '1)))
            (let _%loop102144%_ ((_%probe102147%_ _%start102140%_)
                                 (_%i102149%_ '1)
                                 (_%deleted102151%_ '#f))
              (let ((_%k102154%_ (vector-ref _%table102128%_ _%probe102147%_)))
                (if (eq? _%k102154%_ (macro-unused-obj))
                    (if _%deleted102151%_
                        (begin
                          (vector-set!
                           _%table102128%_
                           _%deleted102151%_
                           _%key102124%_)
                          (vector-set!
                           _%table102128%_
                           (fx+ _%deleted102151%_ '1)
                           (_%symbolic-table-update!102125%_
                            _%default102126%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab102123%_
                              (fx+ (&raw-table-count _%tab102123%_) '1)))))
                        (begin
                          (vector-set!
                           _%table102128%_
                           _%probe102147%_
                           _%key102124%_)
                          (vector-set!
                           _%table102128%_
                           (fx+ _%probe102147%_ '1)
                           (_%symbolic-table-update!102125%_
                            _%default102126%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab102123%_
                              (fx- (&raw-table-free _%tab102123%_) '1))
                             (&raw-table-count-set!
                              _%tab102123%_
                              (fx+ (&raw-table-count _%tab102123%_) '1))))))
                    (if (eq? _%k102154%_ (macro-deleted-obj))
                        (_%loop102144%_
                         (let ((_%next-probe102161%_
                                (fx+ _%start102140%_
                                     _%i102149%_
                                     (fx* _%i102149%_ _%i102149%_))))
                           (fxmodulo _%next-probe102161%_ _%size102134%_))
                         (fx+ _%i102149%_ '1)
                         (let ((_%$e102164%_ _%deleted102151%_))
                           (if _%$e102164%_ _%$e102164%_ _%probe102147%_)))
                        (if (eq? _%key102124%_ _%k102154%_)
                            (let ()
                              (vector-set!
                               _%table102128%_
                               _%probe102147%_
                               _%key102124%_)
                              (vector-set!
                               _%table102128%_
                               (fx+ _%probe102147%_ '1)
                               (_%symbolic-table-update!102125%_
                                (vector-ref
                                 _%table102128%_
                                 (fx+ _%probe102147%_ '1)))))
                            (_%loop102144%_
                             (let ((_%next-probe102169%_
                                    (fx+ _%start102140%_
                                         _%i102149%_
                                         (fx* _%i102149%_ _%i102149%_))))
                               (fxmodulo _%next-probe102169%_ _%size102134%_))
                             (fx+ _%i102149%_ '1)
                             _%deleted102151%_))))))))))
    (define symbolic-table-update!
      (lambda (_%tab102118%_
               _%key102119%_
               _%symbolic-table-update!102120%_
               _%default102121%_)
        (if (fx< (&raw-table-free _%tab102118%_)
                 (fxquotient
                  (vector-length (&raw-table-table _%tab102118%_))
                  '4))
            (__raw-table-rehash! _%tab102118%_)
            '#!void)
        (__symbolic-table-update!
         _%tab102118%_
         _%key102119%_
         _%symbolic-table-update!102120%_
         _%default102121%_)))
    (define symbolic-table-update!/lock
      (lambda (_%tab102087%_
               _%key102088%_
               _%symbolic-table-update!102089%_
               _%default102090%_)
        (let ((_%lock102093%_ (&raw-table-lock _%tab102087%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again102098%_ ((_%spin102101%_ '0))
              (if (##fx= (##vector-cas! _%lock102093%_ '0 '1 '0) '0)
                  (##vector-set! _%lock102093%_ '1 (current-thread))
                  (if (##fx< _%spin102101%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again102098%_ (##fx+ _%spin102101%_ '1)))
                      (let ((_%owner102107%_ (##vector-ref _%lock102093%_ '1)))
                        (if (eq? _%owner102107%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (not (macro-thread-end-condvar
                                      _%owner102107%_))
                                (##thread-deadlock-action!)
                                (let ()
                                  (##thread-yield!)
                                  (_%again102098%_ '0)))))))))
          (let ((_%$r102113%_
                 (_%symbolic-table-update!102089%_
                  _%tab102087%_
                  _%key102088%_
                  _%symbolic-table-update!102089%_
                  _%default102090%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock102093%_ '1 '#f)
                (##vector-cas! _%lock102093%_ '0 '0 '1)))
            _%$r102113%_))))
    (define symbolic-table-delete!
      (lambda (_%tab102044%_ _%key102045%_)
        (let ((_%table102047%_ (&raw-table-table _%tab102044%_))
              (_%seed102049%_ (&raw-table-seed _%tab102044%_)))
          (let* ((_%h102052%_
                  (fxxor (symbolic-hash _%key102045%_) _%seed102049%_))
                 (_%size102055%_ (vector-length _%table102047%_))
                 (_%entries102058%_ (fxquotient _%size102055%_ '2))
                 (_%start102061%_
                  (fxarithmetic-shift-left
                   (fxmodulo _%h102052%_ _%entries102058%_)
                   '1)))
            (let _%loop102065%_ ((_%probe102068%_ _%start102061%_)
                                 (_%i102070%_ '1))
              (let ((_%k102073%_ (vector-ref _%table102047%_ _%probe102068%_)))
                (if (eq? _%k102073%_ (macro-unused-obj))
                    (void)
                    (if (eq? _%k102073%_ (macro-deleted-obj))
                        (_%loop102065%_
                         (let ((_%next-probe102078%_
                                (fx+ _%start102061%_
                                     _%i102070%_
                                     (fx* _%i102070%_ _%i102070%_))))
                           (fxmodulo _%next-probe102078%_ _%size102055%_))
                         (fx+ _%i102070%_ '1))
                        (if (eq? _%key102045%_ _%k102073%_)
                            (let ()
                              (vector-set!
                               _%table102047%_
                               _%probe102068%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table102047%_
                               (fx+ _%probe102068%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab102044%_
                                  (fx- (&raw-table-count _%tab102044%_) '1)))))
                            (_%loop102065%_
                             (let ((_%next-probe102084%_
                                    (fx+ _%start102061%_
                                         _%i102070%_
                                         (fx* _%i102070%_ _%i102070%_))))
                               (fxmodulo _%next-probe102084%_ _%size102055%_))
                             (fx+ _%i102070%_ '1)))))))))))
    (define symbolic-table-delete!/lock
      (lambda (_%tab102014%_ _%key102016%_)
        (let ((_%lock102019%_ (&raw-table-lock _%tab102014%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again102024%_ ((_%spin102027%_ '0))
              (if (##fx= (##vector-cas! _%lock102019%_ '0 '1 '0) '0)
                  (##vector-set! _%lock102019%_ '1 (current-thread))
                  (if (##fx< _%spin102027%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again102024%_ (##fx+ _%spin102027%_ '1)))
                      (let ((_%owner102033%_ (##vector-ref _%lock102019%_ '1)))
                        (if (eq? _%owner102033%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (not (macro-thread-end-condvar
                                      _%owner102033%_))
                                (##thread-deadlock-action!)
                                (let ()
                                  (##thread-yield!)
                                  (_%again102024%_ '0)))))))))
          (let ((_%$r102039%_
                 (symbolic-table-delete! _%tab102014%_ _%key102016%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock102019%_ '1 '#f)
                (##vector-cas! _%lock102019%_ '0 '0 '1)))
            _%$r102039%_))))
    (define make-string-table
      (let ((_%$%opt-lambda101994101999%_
             (lambda (_%size-hint101996%_ _%seed101997%_)
               (make-raw-table
                _%size-hint101996%_
                string-hash
                ##string=?
                _%seed101997%_))))
        (lambda _g103690_
          (let ((_g103691_ (##length _g103690_)))
            (cond ((##fx= _g103691_ 0)
                   (apply (lambda ()
                            (let* ((_%size-hint102003%_ '#f)
                                   (_%seed102005%_ '0))
                              (_%$%opt-lambda101994101999%_
                               _%size-hint102003%_
                               _%seed102005%_)))
                          _g103690_))
                  ((##fx= _g103691_ 1)
                   (apply (lambda (_%size-hint102007%_)
                            (let ((_%seed102009%_ '0))
                              (_%$%opt-lambda101994101999%_
                               _%size-hint102007%_
                               _%seed102009%_)))
                          _g103690_))
                  ((##fx= _g103691_ 2)
                   (apply _%$%opt-lambda101994101999%_ _g103690_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    make-string-table
                    _g103690_)))))))
    (define make-string-table/lock
      (let ((_%$%opt-lambda101974101980%_
             (lambda (_%size-hint101976%_ _%seed101978%_)
               (make-raw-table/lock
                _%size-hint101976%_
                string-hash
                ##string=?
                _%seed101978%_))))
        (lambda _g103692_
          (let ((_g103693_ (##length _g103692_)))
            (cond ((##fx= _g103693_ 0)
                   (apply (lambda ()
                            (let* ((_%size-hint101984%_ '#f)
                                   (_%seed101986%_ '0))
                              (_%$%opt-lambda101974101980%_
                               _%size-hint101984%_
                               _%seed101986%_)))
                          _g103692_))
                  ((##fx= _g103693_ 1)
                   (apply (lambda (_%size-hint101988%_)
                            (let ((_%seed101990%_ '0))
                              (_%$%opt-lambda101974101980%_
                               _%size-hint101988%_
                               _%seed101990%_)))
                          _g103692_))
                  ((##fx= _g103693_ 2)
                   (apply _%$%opt-lambda101974101980%_ _g103692_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    make-string-table/lock
                    _g103692_)))))))
    (define string-table-ref
      (lambda (_%tab101929%_ _%key101930%_ _%default101931%_)
        (let ((_%table101933%_ (&raw-table-table _%tab101929%_))
              (_%seed101934%_ (&raw-table-seed _%tab101929%_)))
          (let* ((_%h101936%_
                  (fxxor (string-hash _%key101930%_) _%seed101934%_))
                 (_%size101939%_ (vector-length _%table101933%_))
                 (_%entries101942%_ (fxquotient _%size101939%_ '2))
                 (_%start101945%_
                  (fxarithmetic-shift-left
                   (fxmodulo _%h101936%_ _%entries101942%_)
                   '1)))
            (let _%loop101949%_ ((_%probe101952%_ _%start101945%_)
                                 (_%i101954%_ '1)
                                 (_%deleted101956%_ '#f))
              (let ((_%k101959%_ (vector-ref _%table101933%_ _%probe101952%_)))
                (if (eq? _%k101959%_ (macro-unused-obj))
                    _%default101931%_
                    (if (eq? _%k101959%_ (macro-deleted-obj))
                        (_%loop101949%_
                         (let ((_%next-probe101964%_
                                (fx+ _%start101945%_
                                     _%i101954%_
                                     (fx* _%i101954%_ _%i101954%_))))
                           (fxmodulo _%next-probe101964%_ _%size101939%_))
                         (fx+ _%i101954%_ '1)
                         (let ((_%$e101967%_ _%deleted101956%_))
                           (if _%$e101967%_ _%$e101967%_ _%probe101952%_)))
                        (if (##string=? _%key101930%_ _%k101959%_)
                            (vector-ref
                             _%table101933%_
                             (fx+ _%probe101952%_ '1))
                            (_%loop101949%_
                             (let ((_%next-probe101972%_
                                    (fx+ _%start101945%_
                                         _%i101954%_
                                         (fx* _%i101954%_ _%i101954%_))))
                               (fxmodulo _%next-probe101972%_ _%size101939%_))
                             (fx+ _%i101954%_ '1)
                             _%deleted101956%_))))))))))
    (define string-table-ref/lock
      (lambda (_%tab101900%_ _%key101901%_ _%default101902%_)
        (let ((_%lock101904%_ (&raw-table-lock _%tab101900%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again101909%_ ((_%spin101912%_ '0))
              (if (##fx= (##vector-cas! _%lock101904%_ '0 '1 '0) '0)
                  (##vector-set! _%lock101904%_ '1 (current-thread))
                  (if (##fx< _%spin101912%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again101909%_ (##fx+ _%spin101912%_ '1)))
                      (let ((_%owner101918%_ (##vector-ref _%lock101904%_ '1)))
                        (if (eq? _%owner101918%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (not (macro-thread-end-condvar
                                      _%owner101918%_))
                                (##thread-deadlock-action!)
                                (let ()
                                  (##thread-yield!)
                                  (_%again101909%_ '0)))))))))
          (let ((_%$r101924%_
                 (string-table-ref
                  _%tab101900%_
                  _%key101901%_
                  _%default101902%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock101904%_ '1 '#f)
                (##vector-cas! _%lock101904%_ '0 '0 '1)))
            _%$r101924%_))))
    (define __string-table-set!
      (lambda (_%tab101852%_ _%key101853%_ _%value101854%_)
        (let ((_%table101856%_ (&raw-table-table _%tab101852%_))
              (_%seed101857%_ (&raw-table-seed _%tab101852%_)))
          (let* ((_%h101859%_
                  (fxxor (string-hash _%key101853%_) _%seed101857%_))
                 (_%size101862%_ (vector-length _%table101856%_))
                 (_%entries101865%_ (fxquotient _%size101862%_ '2))
                 (_%start101868%_
                  (fxarithmetic-shift-left
                   (fxmodulo _%h101859%_ _%entries101865%_)
                   '1)))
            (let _%loop101872%_ ((_%probe101875%_ _%start101868%_)
                                 (_%i101877%_ '1)
                                 (_%deleted101879%_ '#f))
              (let ((_%k101882%_ (vector-ref _%table101856%_ _%probe101875%_)))
                (if (eq? _%k101882%_ (macro-unused-obj))
                    (if _%deleted101879%_
                        (begin
                          (vector-set!
                           _%table101856%_
                           _%deleted101879%_
                           _%key101853%_)
                          (vector-set!
                           _%table101856%_
                           (fx+ _%deleted101879%_ '1)
                           _%value101854%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab101852%_
                              (fx+ (&raw-table-count _%tab101852%_) '1)))))
                        (begin
                          (vector-set!
                           _%table101856%_
                           _%probe101875%_
                           _%key101853%_)
                          (vector-set!
                           _%table101856%_
                           (fx+ _%probe101875%_ '1)
                           _%value101854%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab101852%_
                              (fx- (&raw-table-free _%tab101852%_) '1))
                             (&raw-table-count-set!
                              _%tab101852%_
                              (fx+ (&raw-table-count _%tab101852%_) '1))))))
                    (if (eq? _%k101882%_ (macro-deleted-obj))
                        (_%loop101872%_
                         (let ((_%next-probe101889%_
                                (fx+ _%start101868%_
                                     _%i101877%_
                                     (fx* _%i101877%_ _%i101877%_))))
                           (fxmodulo _%next-probe101889%_ _%size101862%_))
                         (fx+ _%i101877%_ '1)
                         (let ((_%$e101892%_ _%deleted101879%_))
                           (if _%$e101892%_ _%$e101892%_ _%probe101875%_)))
                        (if (##string=? _%key101853%_ _%k101882%_)
                            (let ()
                              (vector-set!
                               _%table101856%_
                               _%probe101875%_
                               _%key101853%_)
                              (vector-set!
                               _%table101856%_
                               (fx+ _%probe101875%_ '1)
                               _%value101854%_))
                            (_%loop101872%_
                             (let ((_%next-probe101897%_
                                    (fx+ _%start101868%_
                                         _%i101877%_
                                         (fx* _%i101877%_ _%i101877%_))))
                               (fxmodulo _%next-probe101897%_ _%size101862%_))
                             (fx+ _%i101877%_ '1)
                             _%deleted101879%_))))))))))
    (define string-table-set!
      (lambda (_%tab101848%_ _%key101849%_ _%value101850%_)
        (if (fx< (&raw-table-free _%tab101848%_)
                 (fxquotient
                  (vector-length (&raw-table-table _%tab101848%_))
                  '4))
            (__raw-table-rehash! _%tab101848%_)
            '#!void)
        (__string-table-set! _%tab101848%_ _%key101849%_ _%value101850%_)))
    (define string-table-set!/lock
      (lambda (_%tab101818%_ _%key101819%_ _%value101820%_)
        (let ((_%lock101823%_ (&raw-table-lock _%tab101818%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again101828%_ ((_%spin101831%_ '0))
              (if (##fx= (##vector-cas! _%lock101823%_ '0 '1 '0) '0)
                  (##vector-set! _%lock101823%_ '1 (current-thread))
                  (if (##fx< _%spin101831%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again101828%_ (##fx+ _%spin101831%_ '1)))
                      (let ((_%owner101837%_ (##vector-ref _%lock101823%_ '1)))
                        (if (eq? _%owner101837%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (not (macro-thread-end-condvar
                                      _%owner101837%_))
                                (##thread-deadlock-action!)
                                (let ()
                                  (##thread-yield!)
                                  (_%again101828%_ '0)))))))))
          (let ((_%$r101843%_
                 (string-table-set!
                  _%tab101818%_
                  _%key101819%_
                  _%value101820%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock101823%_ '1 '#f)
                (##vector-cas! _%lock101823%_ '0 '0 '1)))
            _%$r101843%_))))
    (define __string-table-update!
      (lambda (_%tab101769%_
               _%key101770%_
               _%string-table-update!101771%_
               _%default101772%_)
        (let ((_%table101774%_ (&raw-table-table _%tab101769%_))
              (_%seed101775%_ (&raw-table-seed _%tab101769%_)))
          (let* ((_%h101777%_
                  (fxxor (string-hash _%key101770%_) _%seed101775%_))
                 (_%size101780%_ (vector-length _%table101774%_))
                 (_%entries101783%_ (fxquotient _%size101780%_ '2))
                 (_%start101786%_
                  (fxarithmetic-shift-left
                   (fxmodulo _%h101777%_ _%entries101783%_)
                   '1)))
            (let _%loop101790%_ ((_%probe101793%_ _%start101786%_)
                                 (_%i101795%_ '1)
                                 (_%deleted101797%_ '#f))
              (let ((_%k101800%_ (vector-ref _%table101774%_ _%probe101793%_)))
                (if (eq? _%k101800%_ (macro-unused-obj))
                    (if _%deleted101797%_
                        (begin
                          (vector-set!
                           _%table101774%_
                           _%deleted101797%_
                           _%key101770%_)
                          (vector-set!
                           _%table101774%_
                           (fx+ _%deleted101797%_ '1)
                           (_%string-table-update!101771%_ _%default101772%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab101769%_
                              (fx+ (&raw-table-count _%tab101769%_) '1)))))
                        (begin
                          (vector-set!
                           _%table101774%_
                           _%probe101793%_
                           _%key101770%_)
                          (vector-set!
                           _%table101774%_
                           (fx+ _%probe101793%_ '1)
                           (_%string-table-update!101771%_ _%default101772%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab101769%_
                              (fx- (&raw-table-free _%tab101769%_) '1))
                             (&raw-table-count-set!
                              _%tab101769%_
                              (fx+ (&raw-table-count _%tab101769%_) '1))))))
                    (if (eq? _%k101800%_ (macro-deleted-obj))
                        (_%loop101790%_
                         (let ((_%next-probe101807%_
                                (fx+ _%start101786%_
                                     _%i101795%_
                                     (fx* _%i101795%_ _%i101795%_))))
                           (fxmodulo _%next-probe101807%_ _%size101780%_))
                         (fx+ _%i101795%_ '1)
                         (let ((_%$e101810%_ _%deleted101797%_))
                           (if _%$e101810%_ _%$e101810%_ _%probe101793%_)))
                        (if (##string=? _%key101770%_ _%k101800%_)
                            (let ()
                              (vector-set!
                               _%table101774%_
                               _%probe101793%_
                               _%key101770%_)
                              (vector-set!
                               _%table101774%_
                               (fx+ _%probe101793%_ '1)
                               (_%string-table-update!101771%_
                                (vector-ref
                                 _%table101774%_
                                 (fx+ _%probe101793%_ '1)))))
                            (_%loop101790%_
                             (let ((_%next-probe101815%_
                                    (fx+ _%start101786%_
                                         _%i101795%_
                                         (fx* _%i101795%_ _%i101795%_))))
                               (fxmodulo _%next-probe101815%_ _%size101780%_))
                             (fx+ _%i101795%_ '1)
                             _%deleted101797%_))))))))))
    (define string-table-update!
      (lambda (_%tab101764%_
               _%key101765%_
               _%string-table-update!101766%_
               _%default101767%_)
        (if (fx< (&raw-table-free _%tab101764%_)
                 (fxquotient
                  (vector-length (&raw-table-table _%tab101764%_))
                  '4))
            (__raw-table-rehash! _%tab101764%_)
            '#!void)
        (__string-table-update!
         _%tab101764%_
         _%key101765%_
         _%string-table-update!101766%_
         _%default101767%_)))
    (define string-table-update!/lock
      (lambda (_%tab101733%_
               _%key101734%_
               _%string-table-update!101735%_
               _%default101736%_)
        (let ((_%lock101739%_ (&raw-table-lock _%tab101733%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again101744%_ ((_%spin101747%_ '0))
              (if (##fx= (##vector-cas! _%lock101739%_ '0 '1 '0) '0)
                  (##vector-set! _%lock101739%_ '1 (current-thread))
                  (if (##fx< _%spin101747%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again101744%_ (##fx+ _%spin101747%_ '1)))
                      (let ((_%owner101753%_ (##vector-ref _%lock101739%_ '1)))
                        (if (eq? _%owner101753%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (not (macro-thread-end-condvar
                                      _%owner101753%_))
                                (##thread-deadlock-action!)
                                (let ()
                                  (##thread-yield!)
                                  (_%again101744%_ '0)))))))))
          (let ((_%$r101759%_
                 (_%string-table-update!101735%_
                  _%tab101733%_
                  _%key101734%_
                  _%string-table-update!101735%_
                  _%default101736%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock101739%_ '1 '#f)
                (##vector-cas! _%lock101739%_ '0 '0 '1)))
            _%$r101759%_))))
    (define string-table-delete!
      (lambda (_%tab101690%_ _%key101691%_)
        (let ((_%table101693%_ (&raw-table-table _%tab101690%_))
              (_%seed101695%_ (&raw-table-seed _%tab101690%_)))
          (let* ((_%h101698%_
                  (fxxor (string-hash _%key101691%_) _%seed101695%_))
                 (_%size101701%_ (vector-length _%table101693%_))
                 (_%entries101704%_ (fxquotient _%size101701%_ '2))
                 (_%start101707%_
                  (fxarithmetic-shift-left
                   (fxmodulo _%h101698%_ _%entries101704%_)
                   '1)))
            (let _%loop101711%_ ((_%probe101714%_ _%start101707%_)
                                 (_%i101716%_ '1))
              (let ((_%k101719%_ (vector-ref _%table101693%_ _%probe101714%_)))
                (if (eq? _%k101719%_ (macro-unused-obj))
                    (void)
                    (if (eq? _%k101719%_ (macro-deleted-obj))
                        (_%loop101711%_
                         (let ((_%next-probe101724%_
                                (fx+ _%start101707%_
                                     _%i101716%_
                                     (fx* _%i101716%_ _%i101716%_))))
                           (fxmodulo _%next-probe101724%_ _%size101701%_))
                         (fx+ _%i101716%_ '1))
                        (if (##string=? _%key101691%_ _%k101719%_)
                            (let ()
                              (vector-set!
                               _%table101693%_
                               _%probe101714%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table101693%_
                               (fx+ _%probe101714%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab101690%_
                                  (fx- (&raw-table-count _%tab101690%_) '1)))))
                            (_%loop101711%_
                             (let ((_%next-probe101730%_
                                    (fx+ _%start101707%_
                                         _%i101716%_
                                         (fx* _%i101716%_ _%i101716%_))))
                               (fxmodulo _%next-probe101730%_ _%size101701%_))
                             (fx+ _%i101716%_ '1)))))))))))
    (define string-table-delete!/lock
      (lambda (_%tab101660%_ _%key101662%_)
        (let ((_%lock101665%_ (&raw-table-lock _%tab101660%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again101670%_ ((_%spin101673%_ '0))
              (if (##fx= (##vector-cas! _%lock101665%_ '0 '1 '0) '0)
                  (##vector-set! _%lock101665%_ '1 (current-thread))
                  (if (##fx< _%spin101673%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again101670%_ (##fx+ _%spin101673%_ '1)))
                      (let ((_%owner101679%_ (##vector-ref _%lock101665%_ '1)))
                        (if (eq? _%owner101679%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (not (macro-thread-end-condvar
                                      _%owner101679%_))
                                (##thread-deadlock-action!)
                                (let ()
                                  (##thread-yield!)
                                  (_%again101670%_ '0)))))))))
          (let ((_%$r101685%_
                 (string-table-delete! _%tab101660%_ _%key101662%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock101665%_ '1 '#f)
                (##vector-cas! _%lock101665%_ '0 '0 '1)))
            _%$r101685%_))))
    (define make-immediate-table
      (let ((_%$%opt-lambda101640101645%_
             (lambda (_%size-hint101642%_ _%seed101643%_)
               (make-raw-table
                _%size-hint101642%_
                immediate-hash
                eq?
                _%seed101643%_))))
        (lambda _g103694_
          (let ((_g103695_ (##length _g103694_)))
            (cond ((##fx= _g103695_ 0)
                   (apply (lambda ()
                            (let* ((_%size-hint101649%_ '#f)
                                   (_%seed101651%_ '0))
                              (_%$%opt-lambda101640101645%_
                               _%size-hint101649%_
                               _%seed101651%_)))
                          _g103694_))
                  ((##fx= _g103695_ 1)
                   (apply (lambda (_%size-hint101653%_)
                            (let ((_%seed101655%_ '0))
                              (_%$%opt-lambda101640101645%_
                               _%size-hint101653%_
                               _%seed101655%_)))
                          _g103694_))
                  ((##fx= _g103695_ 2)
                   (apply _%$%opt-lambda101640101645%_ _g103694_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    make-immediate-table
                    _g103694_)))))))
    (define make-immediate-table/lock
      (let ((_%$%opt-lambda101620101626%_
             (lambda (_%size-hint101622%_ _%seed101624%_)
               (make-raw-table/lock
                _%size-hint101622%_
                immediate-hash
                eq?
                _%seed101624%_))))
        (lambda _g103696_
          (let ((_g103697_ (##length _g103696_)))
            (cond ((##fx= _g103697_ 0)
                   (apply (lambda ()
                            (let* ((_%size-hint101630%_ '#f)
                                   (_%seed101632%_ '0))
                              (_%$%opt-lambda101620101626%_
                               _%size-hint101630%_
                               _%seed101632%_)))
                          _g103696_))
                  ((##fx= _g103697_ 1)
                   (apply (lambda (_%size-hint101634%_)
                            (let ((_%seed101636%_ '0))
                              (_%$%opt-lambda101620101626%_
                               _%size-hint101634%_
                               _%seed101636%_)))
                          _g103696_))
                  ((##fx= _g103697_ 2)
                   (apply _%$%opt-lambda101620101626%_ _g103696_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    make-immediate-table/lock
                    _g103696_)))))))
    (define immediate-table-ref
      (lambda (_%tab101575%_ _%key101576%_ _%default101577%_)
        (let ((_%table101579%_ (&raw-table-table _%tab101575%_))
              (_%seed101580%_ (&raw-table-seed _%tab101575%_)))
          (let* ((_%h101582%_
                  (fxxor (immediate-hash _%key101576%_) _%seed101580%_))
                 (_%size101585%_ (vector-length _%table101579%_))
                 (_%entries101588%_ (fxquotient _%size101585%_ '2))
                 (_%start101591%_
                  (fxarithmetic-shift-left
                   (fxmodulo _%h101582%_ _%entries101588%_)
                   '1)))
            (let _%loop101595%_ ((_%probe101598%_ _%start101591%_)
                                 (_%i101600%_ '1)
                                 (_%deleted101602%_ '#f))
              (let ((_%k101605%_ (vector-ref _%table101579%_ _%probe101598%_)))
                (if (eq? _%k101605%_ (macro-unused-obj))
                    _%default101577%_
                    (if (eq? _%k101605%_ (macro-deleted-obj))
                        (_%loop101595%_
                         (let ((_%next-probe101610%_
                                (fx+ _%start101591%_
                                     _%i101600%_
                                     (fx* _%i101600%_ _%i101600%_))))
                           (fxmodulo _%next-probe101610%_ _%size101585%_))
                         (fx+ _%i101600%_ '1)
                         (let ((_%$e101613%_ _%deleted101602%_))
                           (if _%$e101613%_ _%$e101613%_ _%probe101598%_)))
                        (if (eq? _%key101576%_ _%k101605%_)
                            (vector-ref
                             _%table101579%_
                             (fx+ _%probe101598%_ '1))
                            (_%loop101595%_
                             (let ((_%next-probe101618%_
                                    (fx+ _%start101591%_
                                         _%i101600%_
                                         (fx* _%i101600%_ _%i101600%_))))
                               (fxmodulo _%next-probe101618%_ _%size101585%_))
                             (fx+ _%i101600%_ '1)
                             _%deleted101602%_))))))))))
    (define immediate-table-ref/lock
      (lambda (_%tab101546%_ _%key101547%_ _%default101548%_)
        (let ((_%lock101550%_ (&raw-table-lock _%tab101546%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again101555%_ ((_%spin101558%_ '0))
              (if (##fx= (##vector-cas! _%lock101550%_ '0 '1 '0) '0)
                  (##vector-set! _%lock101550%_ '1 (current-thread))
                  (if (##fx< _%spin101558%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again101555%_ (##fx+ _%spin101558%_ '1)))
                      (let ((_%owner101564%_ (##vector-ref _%lock101550%_ '1)))
                        (if (eq? _%owner101564%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (not (macro-thread-end-condvar
                                      _%owner101564%_))
                                (##thread-deadlock-action!)
                                (let ()
                                  (##thread-yield!)
                                  (_%again101555%_ '0)))))))))
          (let ((_%$r101570%_
                 (immediate-table-ref
                  _%tab101546%_
                  _%key101547%_
                  _%default101548%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock101550%_ '1 '#f)
                (##vector-cas! _%lock101550%_ '0 '0 '1)))
            _%$r101570%_))))
    (define __immediate-table-set!
      (lambda (_%tab101498%_ _%key101499%_ _%value101500%_)
        (let ((_%table101502%_ (&raw-table-table _%tab101498%_))
              (_%seed101503%_ (&raw-table-seed _%tab101498%_)))
          (let* ((_%h101505%_
                  (fxxor (immediate-hash _%key101499%_) _%seed101503%_))
                 (_%size101508%_ (vector-length _%table101502%_))
                 (_%entries101511%_ (fxquotient _%size101508%_ '2))
                 (_%start101514%_
                  (fxarithmetic-shift-left
                   (fxmodulo _%h101505%_ _%entries101511%_)
                   '1)))
            (let _%loop101518%_ ((_%probe101521%_ _%start101514%_)
                                 (_%i101523%_ '1)
                                 (_%deleted101525%_ '#f))
              (let ((_%k101528%_ (vector-ref _%table101502%_ _%probe101521%_)))
                (if (eq? _%k101528%_ (macro-unused-obj))
                    (if _%deleted101525%_
                        (begin
                          (vector-set!
                           _%table101502%_
                           _%deleted101525%_
                           _%key101499%_)
                          (vector-set!
                           _%table101502%_
                           (fx+ _%deleted101525%_ '1)
                           _%value101500%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab101498%_
                              (fx+ (&raw-table-count _%tab101498%_) '1)))))
                        (begin
                          (vector-set!
                           _%table101502%_
                           _%probe101521%_
                           _%key101499%_)
                          (vector-set!
                           _%table101502%_
                           (fx+ _%probe101521%_ '1)
                           _%value101500%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab101498%_
                              (fx- (&raw-table-free _%tab101498%_) '1))
                             (&raw-table-count-set!
                              _%tab101498%_
                              (fx+ (&raw-table-count _%tab101498%_) '1))))))
                    (if (eq? _%k101528%_ (macro-deleted-obj))
                        (_%loop101518%_
                         (let ((_%next-probe101535%_
                                (fx+ _%start101514%_
                                     _%i101523%_
                                     (fx* _%i101523%_ _%i101523%_))))
                           (fxmodulo _%next-probe101535%_ _%size101508%_))
                         (fx+ _%i101523%_ '1)
                         (let ((_%$e101538%_ _%deleted101525%_))
                           (if _%$e101538%_ _%$e101538%_ _%probe101521%_)))
                        (if (eq? _%key101499%_ _%k101528%_)
                            (let ()
                              (vector-set!
                               _%table101502%_
                               _%probe101521%_
                               _%key101499%_)
                              (vector-set!
                               _%table101502%_
                               (fx+ _%probe101521%_ '1)
                               _%value101500%_))
                            (_%loop101518%_
                             (let ((_%next-probe101543%_
                                    (fx+ _%start101514%_
                                         _%i101523%_
                                         (fx* _%i101523%_ _%i101523%_))))
                               (fxmodulo _%next-probe101543%_ _%size101508%_))
                             (fx+ _%i101523%_ '1)
                             _%deleted101525%_))))))))))
    (define immediate-table-set!
      (lambda (_%tab101494%_ _%key101495%_ _%value101496%_)
        (if (fx< (&raw-table-free _%tab101494%_)
                 (fxquotient
                  (vector-length (&raw-table-table _%tab101494%_))
                  '4))
            (__raw-table-rehash! _%tab101494%_)
            '#!void)
        (__immediate-table-set! _%tab101494%_ _%key101495%_ _%value101496%_)))
    (define immediate-table-set!/lock
      (lambda (_%tab101464%_ _%key101465%_ _%value101466%_)
        (let ((_%lock101469%_ (&raw-table-lock _%tab101464%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again101474%_ ((_%spin101477%_ '0))
              (if (##fx= (##vector-cas! _%lock101469%_ '0 '1 '0) '0)
                  (##vector-set! _%lock101469%_ '1 (current-thread))
                  (if (##fx< _%spin101477%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again101474%_ (##fx+ _%spin101477%_ '1)))
                      (let ((_%owner101483%_ (##vector-ref _%lock101469%_ '1)))
                        (if (eq? _%owner101483%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (not (macro-thread-end-condvar
                                      _%owner101483%_))
                                (##thread-deadlock-action!)
                                (let ()
                                  (##thread-yield!)
                                  (_%again101474%_ '0)))))))))
          (let ((_%$r101489%_
                 (immediate-table-set!
                  _%tab101464%_
                  _%key101465%_
                  _%value101466%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock101469%_ '1 '#f)
                (##vector-cas! _%lock101469%_ '0 '0 '1)))
            _%$r101489%_))))
    (define __immediate-table-update!
      (lambda (_%tab101415%_
               _%key101416%_
               _%immediate-table-update!101417%_
               _%default101418%_)
        (let ((_%table101420%_ (&raw-table-table _%tab101415%_))
              (_%seed101421%_ (&raw-table-seed _%tab101415%_)))
          (let* ((_%h101423%_
                  (fxxor (immediate-hash _%key101416%_) _%seed101421%_))
                 (_%size101426%_ (vector-length _%table101420%_))
                 (_%entries101429%_ (fxquotient _%size101426%_ '2))
                 (_%start101432%_
                  (fxarithmetic-shift-left
                   (fxmodulo _%h101423%_ _%entries101429%_)
                   '1)))
            (let _%loop101436%_ ((_%probe101439%_ _%start101432%_)
                                 (_%i101441%_ '1)
                                 (_%deleted101443%_ '#f))
              (let ((_%k101446%_ (vector-ref _%table101420%_ _%probe101439%_)))
                (if (eq? _%k101446%_ (macro-unused-obj))
                    (if _%deleted101443%_
                        (begin
                          (vector-set!
                           _%table101420%_
                           _%deleted101443%_
                           _%key101416%_)
                          (vector-set!
                           _%table101420%_
                           (fx+ _%deleted101443%_ '1)
                           (_%immediate-table-update!101417%_
                            _%default101418%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab101415%_
                              (fx+ (&raw-table-count _%tab101415%_) '1)))))
                        (begin
                          (vector-set!
                           _%table101420%_
                           _%probe101439%_
                           _%key101416%_)
                          (vector-set!
                           _%table101420%_
                           (fx+ _%probe101439%_ '1)
                           (_%immediate-table-update!101417%_
                            _%default101418%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab101415%_
                              (fx- (&raw-table-free _%tab101415%_) '1))
                             (&raw-table-count-set!
                              _%tab101415%_
                              (fx+ (&raw-table-count _%tab101415%_) '1))))))
                    (if (eq? _%k101446%_ (macro-deleted-obj))
                        (_%loop101436%_
                         (let ((_%next-probe101453%_
                                (fx+ _%start101432%_
                                     _%i101441%_
                                     (fx* _%i101441%_ _%i101441%_))))
                           (fxmodulo _%next-probe101453%_ _%size101426%_))
                         (fx+ _%i101441%_ '1)
                         (let ((_%$e101456%_ _%deleted101443%_))
                           (if _%$e101456%_ _%$e101456%_ _%probe101439%_)))
                        (if (eq? _%key101416%_ _%k101446%_)
                            (let ()
                              (vector-set!
                               _%table101420%_
                               _%probe101439%_
                               _%key101416%_)
                              (vector-set!
                               _%table101420%_
                               (fx+ _%probe101439%_ '1)
                               (_%immediate-table-update!101417%_
                                (vector-ref
                                 _%table101420%_
                                 (fx+ _%probe101439%_ '1)))))
                            (_%loop101436%_
                             (let ((_%next-probe101461%_
                                    (fx+ _%start101432%_
                                         _%i101441%_
                                         (fx* _%i101441%_ _%i101441%_))))
                               (fxmodulo _%next-probe101461%_ _%size101426%_))
                             (fx+ _%i101441%_ '1)
                             _%deleted101443%_))))))))))
    (define immediate-table-update!
      (lambda (_%tab101410%_
               _%key101411%_
               _%immediate-table-update!101412%_
               _%default101413%_)
        (if (fx< (&raw-table-free _%tab101410%_)
                 (fxquotient
                  (vector-length (&raw-table-table _%tab101410%_))
                  '4))
            (__raw-table-rehash! _%tab101410%_)
            '#!void)
        (__immediate-table-update!
         _%tab101410%_
         _%key101411%_
         _%immediate-table-update!101412%_
         _%default101413%_)))
    (define immediate-table-update!/lock
      (lambda (_%tab101379%_
               _%key101380%_
               _%immediate-table-update!101381%_
               _%default101382%_)
        (let ((_%lock101385%_ (&raw-table-lock _%tab101379%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again101390%_ ((_%spin101393%_ '0))
              (if (##fx= (##vector-cas! _%lock101385%_ '0 '1 '0) '0)
                  (##vector-set! _%lock101385%_ '1 (current-thread))
                  (if (##fx< _%spin101393%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again101390%_ (##fx+ _%spin101393%_ '1)))
                      (let ((_%owner101399%_ (##vector-ref _%lock101385%_ '1)))
                        (if (eq? _%owner101399%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (not (macro-thread-end-condvar
                                      _%owner101399%_))
                                (##thread-deadlock-action!)
                                (let ()
                                  (##thread-yield!)
                                  (_%again101390%_ '0)))))))))
          (let ((_%$r101405%_
                 (_%immediate-table-update!101381%_
                  _%tab101379%_
                  _%key101380%_
                  _%immediate-table-update!101381%_
                  _%default101382%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock101385%_ '1 '#f)
                (##vector-cas! _%lock101385%_ '0 '0 '1)))
            _%$r101405%_))))
    (define immediate-table-delete!
      (lambda (_%tab101336%_ _%key101337%_)
        (let ((_%table101339%_ (&raw-table-table _%tab101336%_))
              (_%seed101341%_ (&raw-table-seed _%tab101336%_)))
          (let* ((_%h101344%_
                  (fxxor (immediate-hash _%key101337%_) _%seed101341%_))
                 (_%size101347%_ (vector-length _%table101339%_))
                 (_%entries101350%_ (fxquotient _%size101347%_ '2))
                 (_%start101353%_
                  (fxarithmetic-shift-left
                   (fxmodulo _%h101344%_ _%entries101350%_)
                   '1)))
            (let _%loop101357%_ ((_%probe101360%_ _%start101353%_)
                                 (_%i101362%_ '1))
              (let ((_%k101365%_ (vector-ref _%table101339%_ _%probe101360%_)))
                (if (eq? _%k101365%_ (macro-unused-obj))
                    (void)
                    (if (eq? _%k101365%_ (macro-deleted-obj))
                        (_%loop101357%_
                         (let ((_%next-probe101370%_
                                (fx+ _%start101353%_
                                     _%i101362%_
                                     (fx* _%i101362%_ _%i101362%_))))
                           (fxmodulo _%next-probe101370%_ _%size101347%_))
                         (fx+ _%i101362%_ '1))
                        (if (eq? _%key101337%_ _%k101365%_)
                            (let ()
                              (vector-set!
                               _%table101339%_
                               _%probe101360%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table101339%_
                               (fx+ _%probe101360%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab101336%_
                                  (fx- (&raw-table-count _%tab101336%_) '1)))))
                            (_%loop101357%_
                             (let ((_%next-probe101376%_
                                    (fx+ _%start101353%_
                                         _%i101362%_
                                         (fx* _%i101362%_ _%i101362%_))))
                               (fxmodulo _%next-probe101376%_ _%size101347%_))
                             (fx+ _%i101362%_ '1)))))))))))
    (define immediate-table-delete!/lock
      (lambda (_%tab101306%_ _%key101308%_)
        (let ((_%lock101311%_ (&raw-table-lock _%tab101306%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again101316%_ ((_%spin101319%_ '0))
              (if (##fx= (##vector-cas! _%lock101311%_ '0 '1 '0) '0)
                  (##vector-set! _%lock101311%_ '1 (current-thread))
                  (if (##fx< _%spin101319%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again101316%_ (##fx+ _%spin101319%_ '1)))
                      (let ((_%owner101325%_ (##vector-ref _%lock101311%_ '1)))
                        (if (eq? _%owner101325%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (not (macro-thread-end-condvar
                                      _%owner101325%_))
                                (##thread-deadlock-action!)
                                (let ()
                                  (##thread-yield!)
                                  (_%again101316%_ '0)))))))))
          (let ((_%$r101331%_
                 (immediate-table-delete! _%tab101306%_ _%key101308%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock101311%_ '1 '#f)
                (##vector-cas! _%lock101311%_ '0 '0 '1)))
            _%$r101331%_))))
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
      (lambda (_%tab101304%_)
        (##unchecked-structure-ref
         _%tab101304%_
         '1
         __gc-table::t
         'gc-table-gcht)))
    (define &gc-table-immediate
      (lambda (_%tab101302%_)
        (##unchecked-structure-ref
         _%tab101302%_
         '2
         __gc-table::t
         'gc-table-immediate)))
    (define &gc-table-lock
      (lambda (_%tab101300%_)
        (##unchecked-structure-ref
         _%tab101300%_
         '3
         __gc-table::t
         'gc-table-lock)))
    (define &gc-table-gcht-set!
      (lambda (_%tab101297%_ _%val101298%_)
        (##unchecked-structure-set!
         _%tab101297%_
         _%val101298%_
         '1
         __gc-table::t
         'gc-table-gcht-set!)))
    (define &gc-table-immediate-set!
      (lambda (_%tab101294%_ _%val101295%_)
        (##unchecked-structure-set!
         _%tab101294%_
         _%val101295%_
         '2
         __gc-table::t
         'gc-table-immediate-set!)))
    (define &gc-table-lock-set!
      (lambda (_%tab101291%_ _%val101292%_)
        (##unchecked-structure-set!
         _%tab101291%_
         _%val101292%_
         '3
         __gc-table::t
         'gc-table-lock-set!)))
    (define make-gc-table
      (let ((_%$%opt-lambda101253101262%_
             (lambda (_%size-hint101255%_
                      _%klass101256%_
                      _%flags101257%_
                      _%lock101258%_)
               (let ((_%gcht101260%_
                      (__gc-table-new
                       (if (fixnum? _%size-hint101255%_)
                           _%size-hint101255%_
                           '16)
                       _%flags101257%_)))
                 (##structure
                  _%klass101256%_
                  _%gcht101260%_
                  '#f
                  _%lock101258%_)))))
        (lambda _g103698_
          (let ((_g103699_ (##length _g103698_)))
            (cond ((##fx= _g103699_ 1)
                   (apply (lambda (_%size-hint101265%_)
                            (let* ((_%klass101267%_ __gc-table::t)
                                   (_%flags101269%_ '0)
                                   (_%lock101271%_ '#f))
                              (_%$%opt-lambda101253101262%_
                               _%size-hint101265%_
                               _%klass101267%_
                               _%flags101269%_
                               _%lock101271%_)))
                          _g103698_))
                  ((##fx= _g103699_ 2)
                   (apply (lambda (_%size-hint101273%_ _%klass101274%_)
                            (let* ((_%flags101276%_ '0) (_%lock101278%_ '#f))
                              (_%$%opt-lambda101253101262%_
                               _%size-hint101273%_
                               _%klass101274%_
                               _%flags101276%_
                               _%lock101278%_)))
                          _g103698_))
                  ((##fx= _g103699_ 3)
                   (apply (lambda (_%size-hint101280%_
                                   _%klass101281%_
                                   _%flags101282%_)
                            (let ((_%lock101284%_ '#f))
                              (_%$%opt-lambda101253101262%_
                               _%size-hint101280%_
                               _%klass101281%_
                               _%flags101282%_
                               _%lock101284%_)))
                          _g103698_))
                  ((##fx= _g103699_ 4)
                   (apply _%$%opt-lambda101253101262%_ _g103698_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    make-gc-table
                    _g103698_)))))))
    (define make-gc-table/lock
      (let ((_%$%opt-lambda101230101236%_
             (lambda (_%size-hint101232%_ _%klass101233%_ _%flags101234%_)
               (make-gc-table
                _%size-hint101232%_
                _%klass101233%_
                _%flags101234%_
                (vector '0 '#f)))))
        (lambda _g103700_
          (let ((_g103701_ (##length _g103700_)))
            (cond ((##fx= _g103701_ 1)
                   (apply (lambda (_%size-hint101239%_)
                            (let* ((_%klass101241%_ __gc-table::t)
                                   (_%flags101243%_ '0))
                              (_%$%opt-lambda101230101236%_
                               _%size-hint101239%_
                               _%klass101241%_
                               _%flags101243%_)))
                          _g103700_))
                  ((##fx= _g103701_ 2)
                   (apply (lambda (_%size-hint101245%_ _%klass101246%_)
                            (let ((_%flags101248%_ '0))
                              (_%$%opt-lambda101230101236%_
                               _%size-hint101245%_
                               _%klass101246%_
                               _%flags101248%_)))
                          _g103700_))
                  ((##fx= _g103701_ 3)
                   (apply _%$%opt-lambda101230101236%_ _g103700_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    make-gc-table/lock
                    _g103700_)))))))
    (define __gc-table-immediate
      (lambda (_%tab101223%_)
        (let ((_%$e101225%_ (&gc-table-immediate _%tab101223%_)))
          (if _%$e101225%_
              _%$e101225%_
              (let ((_%immediate101229%_ (make-immediate-table '#f '0)))
                (&gc-table-immediate-set! _%tab101223%_ _%immediate101229%_)
                _%immediate101229%_)))))
    (define __gc-table-new
      (lambda (_%size101213%_ _%flags101214%_)
        (let* ((_%flags101216%_
                (fxand _%flags101214%_
                       (fxnot (macro-gc-hash-table-flag-need-rehash))))
               (_%flags101218%_
                (fxior _%flags101216%_
                       (macro-gc-hash-table-flag-mem-alloc-keys)))
               (_%gcht101220%_
                (##gc-hash-table-allocate
                 _%size101213%_
                 _%flags101218%_
                 __gc-table-loads)))
          _%gcht101220%_)))
    (define __gc-table-e
      (lambda (_%tab101208%_)
        (declare (not interrupts-enabled))
        (let ((_%gcht101211%_ (&gc-table-gcht _%tab101208%_)))
          (if (fx= '0
                   (fxand (macro-gc-hash-table-flags _%gcht101211%_)
                          (macro-gc-hash-table-flag-need-rehash)))
              _%gcht101211%_
              (begin
                (__gc-table-rehash! _%tab101208%_)
                (&gc-table-gcht _%tab101208%_))))))
    (define __gc-table-rehash!
      (lambda (_%tab101199%_)
        (let* ((_%old-table101201%_ (&gc-table-gcht _%tab101199%_))
               (_%new-table101203%_
                (##gc-hash-table-resize! _%old-table101201%_ __gc-table-loads))
               (_%gcht101205%_
                (##gc-hash-table-rehash!
                 _%old-table101201%_
                 _%new-table101203%_)))
          (&gc-table-gcht-set! _%tab101199%_ _%gcht101205%_))))
    (define gc-table-ref
      (lambda (_%tab101183%_ _%key101184%_ _%default101185%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key101184%_)
            (let* ((_%gcht101189%_ (__gc-table-e _%tab101183%_))
                   (_%value101191%_
                    (##gc-hash-table-ref _%gcht101189%_ _%key101184%_)))
              (if (eq? _%value101191%_ (macro-unused-obj))
                  _%default101185%_
                  _%value101191%_))
            (let ((_%$e101193%_ (&gc-table-immediate _%tab101183%_)))
              (if _%$e101193%_
                  ((lambda (_%immediate101196%_)
                     (immediate-table-ref
                      _%immediate101196%_
                      _%key101184%_
                      _%default101185%_))
                   _%$e101193%_)
                  _%default101185%_)))))
    (define gc-table-ref/lock
      (lambda (_%tab101157%_ _%key101158%_ _%default101159%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again101163%_ ((_%spin101166%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab101157%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab101157%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin101166%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again101163%_ (##fx+ _%spin101166%_ '1)))
                    (let ((_%owner101172%_
                           (##vector-ref (&gc-table-lock _%tab101157%_) '1)))
                      (if (eq? _%owner101172%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (not (macro-thread-end-condvar _%owner101172%_))
                              (##thread-deadlock-action!)
                              (let ()
                                (##thread-yield!)
                                (_%again101163%_ '0)))))))))
        (let ((_%$r101178%_
               (gc-table-ref _%tab101157%_ _%key101158%_ _%default101159%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab101157%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab101157%_) '0 '0 '1)))
          _%$r101178%_)))
    (define gc-table-set!
      (lambda (_%tab101150%_ _%key101151%_ _%value101152%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key101151%_)
            (let ((_%gcht101155%_ (__gc-table-e _%tab101150%_)))
              (if (##gc-hash-table-set!
                   _%gcht101155%_
                   _%key101151%_
                   _%value101152%_)
                  (begin
                    (__gc-table-rehash! _%tab101150%_)
                    (gc-table-set!
                     _%tab101150%_
                     _%key101151%_
                     _%value101152%_))
                  '#!void))
            (immediate-table-set!
             (__gc-table-immediate _%tab101150%_)
             _%key101151%_
             _%value101152%_))))
    (define gc-table-set/lock!
      (lambda (_%tab101124%_ _%key101125%_ _%value101126%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again101130%_ ((_%spin101133%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab101124%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab101124%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin101133%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again101130%_ (##fx+ _%spin101133%_ '1)))
                    (let ((_%owner101139%_
                           (##vector-ref (&gc-table-lock _%tab101124%_) '1)))
                      (if (eq? _%owner101139%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (not (macro-thread-end-condvar _%owner101139%_))
                              (##thread-deadlock-action!)
                              (let ()
                                (##thread-yield!)
                                (_%again101130%_ '0)))))))))
        (let ((_%$r101145%_
               (gc-table-set! _%tab101124%_ _%key101125%_ _%value101126%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab101124%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab101124%_) '0 '0 '1)))
          _%$r101145%_)))
    (define gc-table-update!
      (lambda (_%tab101117%_ _%key101118%_ _%update101119%_ _%default101120%_)
        (if (##mem-allocated? _%key101118%_)
            (let ((_%value101122%_
                   (gc-table-ref
                    _%tab101117%_
                    _%key101118%_
                    _%default101120%_)))
              (gc-table-set!
               _%tab101117%_
               _%key101118%_
               (_%update101119%_ _%value101122%_)))
            (immediate-table-update!
             (__gc-table-immediate _%tab101117%_)
             _%key101118%_
             _%update101119%_
             _%default101120%_))))
    (define gc-table-update!/lock
      (lambda (_%tab101090%_ _%key101091%_ _%update101092%_ _%default101093%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again101097%_ ((_%spin101100%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab101090%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab101090%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin101100%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again101097%_ (##fx+ _%spin101100%_ '1)))
                    (let ((_%owner101106%_
                           (##vector-ref (&gc-table-lock _%tab101090%_) '1)))
                      (if (eq? _%owner101106%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (not (macro-thread-end-condvar _%owner101106%_))
                              (##thread-deadlock-action!)
                              (let ()
                                (##thread-yield!)
                                (_%again101097%_ '0)))))))))
        (let ((_%$r101112%_
               (gc-table-update!
                _%tab101090%_
                _%key101091%_
                _%update101092%_
                _%default101093%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab101090%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab101090%_) '0 '0 '1)))
          _%$r101112%_)))
    (define gc-table-delete!
      (lambda (_%tab101078%_ _%key101079%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key101079%_)
            (let ((_%gcht101083%_ (__gc-table-e _%tab101078%_)))
              (if (##gc-hash-table-set!
                   _%gcht101083%_
                   _%key101079%_
                   (macro-absent-obj))
                  (begin
                    (__gc-table-rehash! _%tab101078%_)
                    (gc-table-delete! _%tab101078%_ _%key101079%_))
                  '#!void))
            (let ((_%$e101085%_ (&gc-table-immediate _%tab101078%_)))
              (if _%$e101085%_
                  ((lambda (_%immediate101088%_)
                     (immediate-table-delete!
                      _%immediate101088%_
                      _%key101079%_))
                   _%$e101085%_)
                  '#!void)))))
    (define gc-table-delete!/lock
      (lambda (_%tab101053%_ _%key101054%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again101058%_ ((_%spin101061%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab101053%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab101053%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin101061%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again101058%_ (##fx+ _%spin101061%_ '1)))
                    (let ((_%owner101067%_
                           (##vector-ref (&gc-table-lock _%tab101053%_) '1)))
                      (if (eq? _%owner101067%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (not (macro-thread-end-condvar _%owner101067%_))
                              (##thread-deadlock-action!)
                              (let ()
                                (##thread-yield!)
                                (_%again101058%_ '0)))))))))
        (let ((_%$r101073%_ (gc-table-delete! _%tab101053%_ _%key101054%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab101053%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab101053%_) '0 '0 '1)))
          _%$r101073%_)))
    (define gc-table-for-each
      (lambda (_%tab101042%_ _%proc101043%_)
        (declare (not interrupts-enabled))
        (begin
          (let ((_%gcht101046%_ (__gc-table-e _%tab101042%_)))
            (##gc-hash-table-for-each _%proc101043%_ _%gcht101046%_))
          (let ((_%$e101048%_ (&gc-table-immediate _%tab101042%_)))
            (if _%$e101048%_
                ((lambda (_%immediate101051%_)
                   (raw-table-for-each _%immediate101051%_ _%proc101043%_))
                 _%$e101048%_)
                '#!void)))))
    (define gc-table-for-each/lock
      (lambda (_%tab101017%_ _%proc101018%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again101022%_ ((_%spin101025%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab101017%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab101017%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin101025%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again101022%_ (##fx+ _%spin101025%_ '1)))
                    (let ((_%owner101031%_
                           (##vector-ref (&gc-table-lock _%tab101017%_) '1)))
                      (if (eq? _%owner101031%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (not (macro-thread-end-condvar _%owner101031%_))
                              (##thread-deadlock-action!)
                              (let ()
                                (##thread-yield!)
                                (_%again101022%_ '0)))))))))
        (let ((_%$r101037%_ (gc-table-for-each _%tab101017%_ _%proc101018%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab101017%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab101017%_) '0 '0 '1)))
          _%$r101037%_)))
    (define gc-table-copy
      (lambda (_%tab101005%_)
        (let* ((_%gcht101007%_ (__gc-table-e _%tab101005%_))
               (_%new-table101009%_
                (__gc-table-new
                 (macro-gc-hash-table-count _%gcht101007%_)
                 (macro-gc-hash-table-flags _%gcht101007%_)))
               (_%result101011%_
                (##structure
                 (##structure-type _%tab101005%_)
                 _%new-table101009%_
                 '#f)))
          (gc-table-for-each
           _%tab101005%_
           (lambda (_%k101014%_ _%v101015%_)
             (gc-table-set! _%result101011%_ _%k101014%_ _%v101015%_)))
          _%result101011%_)))
    (define gc-table-copy/lock
      (lambda (_%tab100981%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again100985%_ ((_%spin100988%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab100981%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab100981%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin100988%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again100985%_ (##fx+ _%spin100988%_ '1)))
                    (let ((_%owner100994%_
                           (##vector-ref (&gc-table-lock _%tab100981%_) '1)))
                      (if (eq? _%owner100994%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (not (macro-thread-end-condvar _%owner100994%_))
                              (##thread-deadlock-action!)
                              (let ()
                                (##thread-yield!)
                                (_%again100985%_ '0)))))))))
        (let ((_%$r101000%_ (gc-table-copy _%tab100981%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab100981%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab100981%_) '0 '0 '1)))
          _%$r101000%_)))
    (define gc-table-clear!
      (lambda (_%tab100974%_)
        (let* ((_%gcht100976%_ (__gc-table-e _%tab100974%_))
               (_%new-table100978%_
                (__gc-table-new
                 '16
                 (macro-gc-hash-table-flags _%gcht100976%_))))
          (&gc-table-gcht-set! _%tab100974%_ _%new-table100978%_)
          (&gc-table-immediate-set! _%tab100974%_ '#f))))
    (define gc-table-clear!/lock
      (lambda (_%tab100950%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again100954%_ ((_%spin100957%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab100950%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab100950%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin100957%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again100954%_ (##fx+ _%spin100957%_ '1)))
                    (let ((_%owner100963%_
                           (##vector-ref (&gc-table-lock _%tab100950%_) '1)))
                      (if (eq? _%owner100963%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (not (macro-thread-end-condvar _%owner100963%_))
                              (##thread-deadlock-action!)
                              (let ()
                                (##thread-yield!)
                                (_%again100954%_ '0)))))))))
        (let ((_%$r100969%_ (gc-table-clear! _%tab100950%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab100950%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab100950%_) '0 '0 '1)))
          _%$r100969%_)))
    (define gc-table-length
      (lambda (_%tab100942%_)
        (let ((_%gcht100944%_ (__gc-table-e _%tab100942%_)))
          (fx+ (macro-gc-hash-table-count _%gcht100944%_)
               (let ((_%$e100946%_ (&gc-table-immediate _%tab100942%_)))
                 (if _%$e100946%_ (&raw-table-count _%$e100946%_) '0))))))
    (define gc-table-length/lock
      (lambda (_%tab100918%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again100922%_ ((_%spin100925%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab100918%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab100918%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin100925%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again100922%_ (##fx+ _%spin100925%_ '1)))
                    (let ((_%owner100931%_
                           (##vector-ref (&gc-table-lock _%tab100918%_) '1)))
                      (if (eq? _%owner100931%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (not (macro-thread-end-condvar _%owner100931%_))
                              (##thread-deadlock-action!)
                              (let ()
                                (##thread-yield!)
                                (_%again100922%_ '0)))))))))
        (let ((_%$r100937%_ (gc-table-length _%tab100918%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab100918%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab100918%_) '0 '0 '1)))
          _%$r100937%_)))
    (define __object-eq-hash-lock (vector '0 '#f))
    (define __object-eq-hash-next '0)
    (define __object-eq-hash
      (make-gc-table '1024 __gc-table::t (macro-gc-hash-table-flag-weak-keys)))
    (define __object->eq-hash
      (lambda (_%obj100884%_)
        (declare (not interrupts-enabled))
        (let ((_%val100887%_
               (gc-table-ref __object-eq-hash _%obj100884%_ '#f)))
          (if _%val100887%_
              _%val100887%_
              (begin
                (let ()
                  (declare (not interrupts-enabled))
                  (let _%again100891%_ ((_%spin100894%_ '0))
                    (if (##fx= (##vector-cas! __object-eq-hash-lock '0 '1 '0)
                               '0)
                        (##vector-set!
                         __object-eq-hash-lock
                         '1
                         (current-thread))
                        (if (##fx< _%spin100894%_ '10)
                            (let ()
                              (##thread-yield!)
                              (_%again100891%_ (##fx+ _%spin100894%_ '1)))
                            (let ((_%owner100900%_
                                   (##vector-ref __object-eq-hash-lock '1)))
                              (if (eq? _%owner100900%_ (macro-current-thread))
                                  (##thread-deadlock-action!)
                                  (if (not (macro-thread-end-condvar
                                            _%owner100900%_))
                                      (##thread-deadlock-action!)
                                      (let ()
                                        (##thread-yield!)
                                        (_%again100891%_ '0)))))))))
                (let ((_%$r100913%_
                       (let ((_%val100906%_
                              (gc-table-ref
                               __object-eq-hash
                               _%obj100884%_
                               '#f)))
                         (if _%val100906%_
                             _%val100906%_
                             (let ((_%h100908%_
                                    (fxand __object-eq-hash
                                           (macro-max-fixnum32))))
                               (set! __object-eq-hash-next
                                     (let ((_%$e100910%_
                                            (##fx+? __object-eq-hash-next '1)))
                                       (if _%$e100910%_ _%$e100910%_ '0)))
                               (gc-table-set!
                                __object-eq-hash
                                _%obj100884%_
                                _%h100908%_)
                               _%h100908%_)))))
                  (let ()
                    (declare (not interrupts-enabled))
                    (begin
                      (##vector-set! __object-eq-hash-lock '1 '#f)
                      (##vector-cas! __object-eq-hash-lock '0 '0 '1)))
                  _%$r100913%_))))))))
